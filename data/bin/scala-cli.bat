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
SET CMDLINE="%~dp0\.%~n0.aux.exe" %CMD_LINE_ARGS%
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
PK  �m�T             	 META-INF/coursier/info.jsonUT &%�b�S�j�0}�+��mM�U����1�""����$$iuJ�}i,��C�BoN�97��8�N#�ZY��h�t��5_�Q:"�_븃�Q(��2%m�q��Q�� ����Y�ZG
���Z�����+*�h�D�����������%��'�����eItN��>��+�M+����j˾��w����YV��

�<4�+�8r%B�C�u!��r�t���T���2 Z$x����{�.�0����^��qԀ�Y�q�ftF�_4Y���ċ0�C�*��JжR�F���Lx3�wc��yr#��:�m|��9]���������;��^դ��PK[�=}Y  �  PK  �m�T             	 META-INF/coursier/lock-fileUT &%�bEʱ�0 Џqn�GK)lnn&��8iR��"Ưw��o*e��3�i�5//�ǭ��J=d�D�S�M�P��r�i��F�F�?���;��:�l+����v9+�x�Ȧ�&��#�!_��m�c#�uk�PK���{   �   PK  �m�T            " 	 META-INF/coursier/info-source.jsonUT &%�bE��j1D�ŧd�d!���oH.���&�6��4��{�͡'3��}�g$b�1&6[o�3��r�W�1�G��V��j�Ҙ�8oxy��9�ppj�����0�������K�bfA��{�<��O��S�^�� g��Y�-�h����<6���a�1��5l��/���Z��Q��ʶ���&~~PK���     PK   �m�T[�=}Y  �   	               META-INF/coursier/info.jsonUT &%�bPK   �m�T���{   �    	           �  META-INF/coursier/lock-fileUT &%�bPK   �m�T���     " 	           x  META-INF/coursier/info-source.jsonUT &%�bPK      �   �    