Macro {
  description="Go to file or path using windows clipboard. Macro check extension in last word and appends slash if needed. Can use windows system path variables";
  area="Shell"; key="AltF";
  flags="";
  action=function()
    Keys"CtrlY" -- очистить командную строку
    local windows_clip = mf.trim(mf.clip(0)) -- скопировать буфер windows и убрать пробельные символы
    local f_p_exist = mf.fexist(windows_clip) -- существует ли файл или папка
    exst_in_path = mf.fsplit(windows_clip, 0x00000008) -- имеется ли в пути файл с расширением

    function is_path_contain_extension()
        if exst_in_path == "" then
          mf.print("goto:"..windows_clip.."\\") -- доб. \ чтобы войти в папку
        else
          mf.print("goto:"..windows_clip) -- иначе к файлу
        end
    end;

    function is_system_variable()
        local first_path_symbol = mf.substr(windows_clip, 0, 1) -- путь нач. с символа %, это систем. перемен.
        if first_path_symbol == "%" then
          local first_index = mf.index(windows_clip, "%"); -- систем. перемен. содержат 2 % в пути
          del_first_symbol = mf.replace(windows_clip, "%", "", 1) -- удал. 1 вхож.
          local second_index = mf.rindex(del_first_symbol, "%") -- наход. 2 вхож.
          if first_index ~= -1 and second_index ~= -1 then -- если сущ. 1 и 2 вхож.
            is_path_contain_extension()
            Keys"Enter"
          end
        elseif first_path_symbol ~= "%" then
          broken_path()
        else
          mf.msgbox('Unknown error with path', windows_clip)
        end
    end;

    function broken_path()
      local notExist = mf.msgbox("Path not exist:", "\n"..windows_clip.."\nYes - close\nNo - edit path in cmd", 0x00040001)
      if notExist == 2 then -- 2 номер кнопки связан с Нет
        is_path_contain_extension()
      end
    end;

    if f_p_exist == true then
      is_path_contain_extension()
      Keys"Enter"
    elseif f_p_exist == false then
      is_system_variable()
    end

  end;
}
