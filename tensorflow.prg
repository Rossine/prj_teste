    #include "FiveWin.ch"

// c_api.h faz parte do tensor
// license tambem

    static hDLL

    function Main()

       local hGraph, hOptions, hStatus, hSession

? "hello 2a"

       hDLL = LoadLibrary( "tensorflow.dll" )

       MsgInfo( TF_Version() )

       hGraph = TF_NewGraph()
       hOptions = TF_NewSessionOptions()
       hStatus = TF_NewStatus()
       hSession = TF_NewSession( hGraph, hOptions, hStatus )

       MsgInfo( hSession )

       TF_CloseSession( hSession, hStatus )
       TF_DeleteSession( hSession, hStatus )
       TF_DeleteStatus( hStatus )
       TF_DeleteSessionOptions( hOptions )

       FreeLibrary( hDLL )

    return nil

    DLL FUNCTION TF_Version() AS LPSTR LIB hDLL

    DLL FUNCTION TF_NewGraph() AS LONG LIB hDLL

    DLL FUNCTION TF_NewSessionOptions() AS LONG LIB hDLL

    DLL FUNCTION TF_NewStatus() AS LONG LIB hDLL

    DLL FUNCTION TF_NewSession( hGraph AS LONG, hOptions AS LONG, hStatus AS LONG ) AS LONG LIB hDLL

    DLL FUNCTION TF_CloseSession( hSession AS LONG, hStatus AS LONG ) AS VOID LIB hDLL

    DLL FUNCTION TF_DeleteSession( hSession AS LONG, hStatus AS LONG ) AS VOID LIB hDLL

    DLL FUNCTION TF_DeleteStatus( hStatus AS LONG ) AS VOID LIB hDLL

    DLL FUNCTION TF_DeleteSessionOptions( hOptions AS LONG ) AS VOID LIB hDLL