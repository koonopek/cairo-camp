// SPDX-License-Identifier: MIT

%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin, SignatureBuiltin
from starkware.cairo.common.uint256 import Uint256

from openzeppelin.security.safemath.library import SafeUint256

@view
func uint256_add{range_check_ptr}(a: Uint256, b: Uint256) -> (c: Uint256) {
    return SafeUint256.add(a, b);
}

@view
func uint256_sub_le{range_check_ptr}(a: Uint256, b: Uint256) -> (c: Uint256) {
    return SafeUint256.sub_le(a, b);
}

@view
func uint256_sub_lt{range_check_ptr}(a: Uint256, b: Uint256) -> (c: Uint256) {
    return SafeUint256.sub_lt(a, b);
}

@view
func uint256_mul{range_check_ptr}(a: Uint256, b: Uint256) -> (c: Uint256) {
    return SafeUint256.mul(a, b);
}

@view
func uint256_div{range_check_ptr}(a: Uint256, b: Uint256) -> (c: Uint256, rem: Uint256) {
    return SafeUint256.div_rem(a, b);
}
