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
SET CMDLINE="C:\Users\0019652\AppData\Local\Coursier\cache\arc\https\github.com\sbt\sbt\releases\download\v1.7.1\sbt-1.7.1.zip\sbt\bin\sbt.bat" %CMD_LINE_ARGS%
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
PK  �m�T             	 META-INF/coursier/info.jsonUT )%�b]P�N�0��W���T q�p��	qp[Ӧ�q;E�j��� 8X�c<����4*b �B�"��yɽ��K�r�z,����Fq2<�ͽt9��䇹s �bX�w��m�L(z��b4�;1y���Ώr�0J�=W��Y���$#}���=��8�[<O|*[Jb�/;�<��w+J?�|{��c�s�U�e[+���2��
»��^1>��>�"��V�A�ڮ0�s��uRP�6��"�����̩7�m~�#�ř#����a��KA���d����[_F�p9|PKFQx@  �  PK  �m�T             	 META-INF/coursier/lock-fileUT )%�b�K� F��8��>��3�]��jb�IW���I�䬵�b��[]?N�����݁��PH�{O6��b���-��r�X���+�DDԾ�T<����U��ԅPK;\S;g   p   PK  �m�T            " 	 META-INF/coursier/info-source.jsonUT )%�bE�Aj1E���+h����Ƙ�L4�����	�w�:]t���$x_��.89�{q�K�l;W!�N�ޅ�lM�S��Z;��/�0s� B]`�ۿ��������b�,,�\K�x��{���c\ǧ}�x3���'��b���r�g�$�+�8i�q�(³������d�W�&��z�o�P�fk]��PK=U%�   �   PK   �m�TFQx@  �   	               META-INF/coursier/info.jsonUT )%�bPK   �m�T;\S;g   p    	           p  META-INF/coursier/lock-fileUT )%�bPK   �m�T=U%�   �   " 	           )  META-INF/coursier/info-source.jsonUT )%�bPK      �   ?    