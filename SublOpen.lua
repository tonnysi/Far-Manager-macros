Macro {
  description="Открывает файл, папку или выделенные файлы, папки в редакторе Sublime Text отдельным от Far Manager(Conemu) окне";
  area="Shell Search"; key="F4";
  flags="";
  action=function()
    mf.clip(5,2) -- включает внутренний буфер обмена
    if not CmdLine.Empty then -- очистка командной строки, до запуска
      Keys"CtrlShiftBS"
    end;
    Keys"CtrlAltIns" -- копируем полные пути выделенных файлов или курсора во внутренний буфер обмена
    local str = mf.clip(0)
    mf.print("%PROGRAMFILES%\\\"Sublime Text 3\"\\sublime_text.exe")
    local regxDelimiter = '([^%c]+)' -- разделитель - перевод строки
    for fileToCmd in string.gmatch(str, regxDelimiter) do -- печатает в командную строку по очереди файлы из буфера по разделителю
        mf.print(" \""..fileToCmd.."\"")
    end;
    if APanel.Selected then
      Keys"Enter ShiftSubtract" -- запускает редактор и снимает выделение с файлов
    elseif not APanel.Selected then
      Keys"Enter" -- запускает редактор
    end;
  end;
}
