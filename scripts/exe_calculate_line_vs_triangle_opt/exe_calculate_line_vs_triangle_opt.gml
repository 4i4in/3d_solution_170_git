function exe_calculate_line_vs_triangle_opt(_colision, _cp1, _cp2, _triangle1, _inbuff, _geometry_type) {
    var _tp1 = _triangle1[0], _tp2 = _triangle1[1], _tp3 = _triangle1[2];
    var _tpBC = _triangle1[3], _tpN = _triangle1[4];
    
    var _BC_to_cp1 = [_cp1[0] - _tpBC[0], _cp1[1] - _tpBC[1], _cp1[2] - _tpBC[2]];
    var _BC_to_cp2 = [_cp2[0] - _tpBC[0], _cp2[1] - _tpBC[1], _cp2[2] - _tpBC[2]];
    
    var _Ndist_BC_to_cp1N = dot_product_3d_normalized(_BC_to_cp1[0], _BC_to_cp1[1], _BC_to_cp1[2], _tpN[0], _tpN[1], _tpN[2]);
    var _Ndist_BC_to_cp2N = dot_product_3d_normalized(_BC_to_cp2[0], _BC_to_cp2[1], _BC_to_cp2[2], _tpN[0], _tpN[1], _tpN[2]);

    if sign(_Ndist_BC_to_cp1N) != sign(_Ndist_BC_to_cp2N) {
        var _collision = 0;
        
        // Function to handle collision checks
        function check_collision(_cp,_tp1,_tp2,_tp3) {
            var _coll_to_tp1 = [_tp1[0] - _cp[0], _tp1[1] - _cp[1], _tp1[2] - _cp[2]];
            var _coll_to_tp2 = [_tp2[0] - _cp[0], _tp2[1] - _cp[1], _tp2[2] - _cp[2]];
            var _coll_to_tp3 = [_tp3[0] - _cp[0], _tp3[1] - _cp[1], _tp3[2] - _cp[2]];

            var _dot_tp1_tp2 = dot_product_3d_normalized(_coll_to_tp1[0], _coll_to_tp1[1], _coll_to_tp1[2], _coll_to_tp2[0], _coll_to_tp2[1], _coll_to_tp2[2]);
            var _dot_tp2_tp3 = dot_product_3d_normalized(_coll_to_tp2[0], _coll_to_tp2[1], _coll_to_tp2[2], _coll_to_tp3[0], _coll_to_tp3[1], _coll_to_tp3[2]);
            var _dot_tp3_tp1 = dot_product_3d_normalized(_coll_to_tp3[0], _coll_to_tp3[1], _coll_to_tp3[2], _coll_to_tp1[0], _coll_to_tp1[1], _coll_to_tp1[2]);

            return exe_dotN_sum_angle_triangle(_dot_tp1_tp2, _dot_tp2_tp3, _dot_tp3_tp1) < -4;
        }

        // Check both points for collision
        if (check_collision(_cp1,_tp1,_tp2,_tp3)) _collision++;
        if (check_collision(_cp2,_tp1,_tp2,_tp3)) _collision++;
        
        if (_collision > 0) {
            var _tpHash = _triangle1[5];
            var _colision_type = _triangle1[6];
            
            var _colision_happen = [_cp1, _cp2, _tpN, _tpHash, _inbuff, _geometry_type, _colision_type];
            array_push(_colision, _colision_happen);
        }
    }

    return _colision;
}