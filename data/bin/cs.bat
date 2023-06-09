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
PK  �m�T             	 META-INF/coursier/info.jsonUT %�b���j�0E��
c�(4�۴��e�P�+�L�= KB����W~�4��dey����6�(�-��kK��4��P��/�W0�`�)�fQ"���u'�%TJh��,xĹ�u�x��Q	9�Vq�U�J����9z&te�M��Ą�T�G���=Q�=M���X�T$�;)�i����g�ʌ`�T��G<>��&IN��6\�2���ôl�青���75��Vm"����q�4 +�{a/�ϸ�D`�D��ݑ�������0W��,;���/�7����C���Q�����|)8)>A�}rK�ğW�q�B�^u��o�Ѽ1!�[m�6�)m��Y;�PK�-��G  �  PK  �m�T             	 META-INF/coursier/lock-fileUT %�bE�1�  �Ǥ>���.]�Ty@�#�h���)��N���^�1���E(/ʱ���8GWc�C9���A�Q(��� F�6d�$C�ӓ4�μ�(�y�<nWP=�׎�F��F��<mtt&$�y�c�PK���   �   PK  �m�T            " 	 META-INF/coursier/info-source.jsonUT %�bE���1�ߥ��F\�W�a�R�Ě�@mK��w�:��?����4|6�D1&^1gJ}�b/��X�M���Z_�j�Ҙ�8ox~��988�j��v���v6B*��.�YP�� �V��D��~��{��AN�˓�W������Q)xl�F��Ǆ"<uհ��~4t۫j���Δm7�%�&��PK���b�   �   PK   �m�T�-��G  �   	               META-INF/coursier/info.jsonUT %�bPK   �m�T���   �    	           �  META-INF/coursier/lock-fileUT %�bPK   �m�T���b�   �   " 	           j  META-INF/coursier/info-source.jsonUT %�bPK      �       