function GTAVSpawn ( pPlayer , pPosition ) {

    pPlayer.Immune = true;
    pPlayer.Frozen = true;

    pPlayer.Pos = pPosition;
    
    SetGTAVSpawnCameraHigh ( pPlayer );
    
}

function SetCameraAbovePlayer ( pPlayer , fDistance ) {

    SetCameraMatrix ( pPlayer , Vector ( pPlayer.Pos.x , pPlayer.Pos.y , pPlayer.Pos.z + fDistance ) , pPlayer.Pos );
    
    return;

}

function SetGTAVSpawnCameraHigh ( pPlayer ) {

    SetCameraAbovePlayer ( pPlayer , 1000.0 );
    
    NewTimer ( "SetGTAVSpawnCameraMedium" , 3000 , 1 , pPlayer );
    
}

function SetGTAVSpawnCameraMedium ( pPlayer ) {

    SetCameraAbovePlayer ( pPlayer , 400.0 );
    
    NewTimer ( "SetGTAVSpawnCameraLow" , 3000 , 1 , pPlayer );
    
}

function SetGTAVSpawnCameraLow ( pPlayer ) {

    SetCameraAbovePlayer ( pPlayer , 50.0 );
    
    NewTimer ( "SetGTAVSpawnCameraRestore" , 3000 , 1 , pPlayer );
    
}

function SetGTAVSpawnCameraRestore ( pPlayer ) {

    RestoreCamera ( pPlayer );
    
    pPlayer.Frozen = false;
    pPlayer.Immune = false;

}
