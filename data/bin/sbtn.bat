@echo off



@REM set %HOME% to equivalent of $HOME
if "%HOME%" == "" (set HOME=%HOMEDRIVE%%HOMEPATH%)

set ERROR_CODE=0

@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" @setlocal

@REM Decide how to startup depending on the version of windows

@REM -- Win98ME
if NOT "%OS%"=="Windows_NT" goto Win9xArg

@REM -- 4NT shell
if "%@eval[2+2]" == "4" goto 4NTArgs

@REM -- Regular WinNT shell
set CMD_LINE_ARGS=%*
goto endInit

@REM The 4NT Shell from jp software
:4NTArgs
set CMD_LINE_ARGS=%$
goto endInit

:Win9xArg
@REM Slurp the command line arguments.  This loop allows for an unlimited number
@REM of arguments (up to the command line limit, anyway).
set CMD_LINE_ARGS=
:Win9xApp
if %1a==a goto endInit
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto Win9xApp

@REM Reaching here means variables are defined and arguments have been captured
:endInit


@REM Start program
:runm2
SET CMDLINE="C:\Users\0019652\AppData\Local\Coursier\cache\arc\https\github.com\sbt\sbt\releases\download\v1.7.1\sbt-1.7.1.zip\sbt\bin\sbtn-x86_64-pc-win32.exe" %CMD_LINE_ARGS%
%CMDLINE%
if ERRORLEVEL 1 goto error
goto end

:error
if "%OS%"=="Windows_NT" @endlocal
set ERROR_CODE=1

:end
@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" goto endNT

@REM For old DOS remove the set variables from ENV - we assume they were not set
@REM before we started - at least we don't leave any baggage around
set CMD_LINE_ARGS=
set CMDLINE=
goto postExec

:endNT
@endlocal

:postExec
exit /B %ERROR_CODE%
PK  �m�T             	 META-INF/coursier/info.jsonUT +%�bU��n�0Dw�+tkm���lAJfm2%���$�W�t�pw�H>��w�%+YBuS�^u#�	$W��w�f,�3r��eYF��`�`S��j����z���r��u�@:������6Xн�"vJ֨��լ���B��a�y���k���9�8e����<P�2���r��>Z)��kV곿Y��ug�PK��ƥ�     PK  �m�T             	 META-INF/coursier/lock-fileUT +%�b�1�0@��0�7){O`b� ��$N���'���5w �L�ф�<��M�$�%��������9�z}�Z��Ҵ
O�X���8Y��r�;� PK">�g   p   PK  �m�T            " 	 META-INF/coursier/info-source.jsonUT +%�bE�Aj1E���+h����Ƙ�L4�����	�w�:]t��_��]pr��^�t�R([��_H�S�wa�[tjUXkg���f��#�A��v������r�0C�����kIo�|ϔ`�x�����oӱ��U��_��l�"v�'M�6NEx6մ������$ �Z��*�L`M�K�?PK�)m�   �   PK   �m�T��ƥ�      	               META-INF/coursier/info.jsonUT +%�bPK   �m�T">�g   p    	           	  META-INF/coursier/lock-fileUT +%�bPK   �m�T�)m�   �   " 	           �  META-INF/coursier/info-source.jsonUT +%�bPK      �   �    