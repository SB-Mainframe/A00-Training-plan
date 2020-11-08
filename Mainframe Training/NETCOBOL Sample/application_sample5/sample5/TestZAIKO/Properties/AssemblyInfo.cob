       IDENTIFICATION DIVISION.
       CLASS-ID. ASSEMBLY-INFO AS ".ASSEMBLY" CUSTOM-ATTRIBUTE IS CA-ASSEMBLYTITLE CA-ASSEMBLYDESCRIPTION CA-ASSEMBLYCONFIGURATION CA-ASSEMBLYCOMPANY CA-ASSEMBLYPRODUCT CA-ASSEMBLYCOPYRIGHT CA-ASSEMBLYTRADEMARK CA-ASSEMBLYCULTURE CA-COMVISIBLE 
           CA-GUID CA-ASSEMBLYVERSION CA-ASSEMBLYFILEVERSION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           
           *> �A�Z���u���Ɋւ����ʏ��͈ȉ��̑����Z�b�g���Ƃ����Đ��䂳��܂��B 
           *> �A�Z���u���Ɋ֘A�t�����Ă������ύX����ɂ́A
           *> �����̑����l��ύX���Ă��������B
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOPYRIGHT CLASS CLASS-ASSEMBLYCOPYRIGHT
             USING N"Copyright (C) �x�m�� 2006"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYDESCRIPTION CLASS CLASS-ASSEMBLYDESCRIPTION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-COMVISIBLE CLASS CLASS-COMVISIBLE
             USING B"0"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOMPANY CLASS CLASS-ASSEMBLYCOMPANY
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-GUID CLASS CLASS-GUID
             USING N"63c5c8a9-20bb-430a-bd17-9ed39f73038c"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYFILEVERSION CLASS CLASS-ASSEMBLYFILEVERSION
             USING N"1.0.0.0"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCULTURE CLASS CLASS-ASSEMBLYCULTURE
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCONFIGURATION CLASS CLASS-ASSEMBLYCONFIGURATION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYVERSION CLASS CLASS-ASSEMBLYVERSION
             USING N"1.0.0.0"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTITLE CLASS CLASS-ASSEMBLYTITLE
             USING N"TestZAIKO"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTRADEMARK CLASS CLASS-ASSEMBLYTRADEMARK
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYPRODUCT CLASS CLASS-ASSEMBLYPRODUCT
             USING N"TestZAIKO"
             .
       REPOSITORY.
           CLASS CLASS-CLRUTIL AS "Fujitsu.COBOL.CLRUtil"
           CLASS CLASS-ASSEMBLYCOMPANY AS "System.Reflection.AssemblyCompanyAttribute"
           CLASS CLASS-ASSEMBLYCONFIGURATION AS "System.Reflection.AssemblyConfigurationAttribute"
           CLASS CLASS-ASSEMBLYCOPYRIGHT AS "System.Reflection.AssemblyCopyrightAttribute"
           CLASS CLASS-ASSEMBLYCULTURE AS "System.Reflection.AssemblyCultureAttribute"
           CLASS CLASS-ASSEMBLYDESCRIPTION AS "System.Reflection.AssemblyDescriptionAttribute"
           CLASS CLASS-ASSEMBLYFILEVERSION AS "System.Reflection.AssemblyFileVersionAttribute"
           CLASS CLASS-ASSEMBLYPRODUCT AS "System.Reflection.AssemblyProductAttribute"
           CLASS CLASS-ASSEMBLYTITLE AS "System.Reflection.AssemblyTitleAttribute"
           CLASS CLASS-ASSEMBLYTRADEMARK AS "System.Reflection.AssemblyTrademarkAttribute"
           CLASS CLASS-ASSEMBLYVERSION AS "System.Reflection.AssemblyVersionAttribute"
           CLASS CLASS-COMVISIBLE AS "System.Runtime.InteropServices.ComVisibleAttribute"
           CLASS CLASS-GUID AS "System.Runtime.InteropServices.GuidAttribute"
           PROPERTY PROP-EMPTYSTRING AS "EmptyString"
           .
       END CLASS ASSEMBLY-INFO.