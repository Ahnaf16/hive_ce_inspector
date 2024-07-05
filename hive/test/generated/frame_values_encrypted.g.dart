import 'dart:typed_data';

final frameValuesBytesEncrypted = [
// 0
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    155,
    148,
    109,
    138,
    118,
    157,
    170,
    18,
    217,
    31,
    31,
    167,
    126,
    0,
    163,
    45,
  ]),
// 555
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    155,
    148,
    109,
    138,
    118,
    157,
    170,
    18,
    217,
    31,
    31,
    167,
    126,
    0,
    163,
    45,
  ]),
// 123
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    155,
    148,
    109,
    138,
    118,
    157,
    170,
    18,
    217,
    31,
    31,
    167,
    126,
    0,
    163,
    45,
  ]),
// 0
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    39,
    52,
    236,
    118,
    160,
    170,
    77,
    53,
    136,
    190,
    175,
    13,
    119,
    91,
    48,
    72,
  ]),
// 1
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    154,
    27,
    49,
    187,
    31,
    92,
    220,
    13,
    154,
    113,
    43,
    85,
    17,
    13,
    147,
    24,
  ]),
// 29
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    93,
    221,
    111,
    93,
    153,
    230,
    104,
    3,
    116,
    177,
    45,
    231,
    102,
    255,
    6,
    109,
  ]),
// Tombstone frame
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    155,
    148,
    109,
    138,
    118,
    157,
    170,
    18,
    217,
    31,
    31,
    167,
    126,
    0,
    163,
    45,
  ]),
// Null frame
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    155,
    148,
    109,
    138,
    118,
    157,
    170,
    18,
    217,
    31,
    31,
    167,
    126,
    0,
    163,
    45,
  ]),
// Int
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    82,
    198,
    151,
    23,
    112,
    174,
    237,
    78,
    222,
    220,
    78,
    115,
    15,
    194,
    219,
    229,
  ]),
// Large int
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    80,
    221,
    135,
    59,
    2,
    74,
    46,
    88,
    85,
    32,
    125,
    127,
    92,
    215,
    26,
    237,
  ]),
// Bool true
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    203,
    6,
    35,
    157,
    211,
    201,
    172,
    60,
    80,
    166,
    35,
    211,
    224,
    91,
    108,
    121,
  ]),
// Bool false
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    255,
    235,
    95,
    200,
    65,
    58,
    194,
    202,
    156,
    255,
    95,
    219,
    140,
    255,
    51,
    40,
  ]),
// Float
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    202,
    28,
    71,
    108,
    114,
    57,
    192,
    220,
    208,
    36,
    166,
    43,
    155,
    145,
    116,
    95,
  ]),
// Unicode string
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    205,
    165,
    174,
    224,
    221,
    138,
    211,
    194,
    194,
    145,
    89,
    6,
    232,
    128,
    23,
    195,
    87,
    96,
    142,
    116,
    239,
    43,
    16,
    145,
    119,
    40,
    210,
    163,
    26,
    54,
    204,
    73,
    193,
    17,
    20,
    128,
    240,
    181,
    6,
    123,
    108,
    176,
    121,
    237,
    54,
    107,
    227,
    222,
    154,
    82,
    182,
    136,
    196,
    49,
    154,
    150,
    70,
    170,
    32,
    49,
    40,
    226,
    2,
    4,
    135,
    180,
    160,
    65,
    83,
    58,
    49,
    0,
    81,
    105,
    142,
    25,
    33,
    179,
    219,
    142,
    158,
    227,
    63,
    251,
    130,
    110,
    255,
    233,
    164,
    193,
    118,
    29,
    227,
    191,
    93,
    11,
  ]),
// Empty list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    199,
    194,
    103,
    243,
    41,
    19,
    66,
    102,
    71,
    203,
    97,
    239,
    11,
    171,
    248,
    209,
  ]),
// Byte list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    169,
    179,
    212,
    241,
    244,
    75,
    236,
    54,
    102,
    149,
    243,
    229,
    135,
    112,
    181,
    125,
  ]),
// Byte list with mask
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    144,
    130,
    119,
    83,
    23,
    134,
    43,
    66,
    68,
    214,
    224,
    19,
    80,
    99,
    100,
    191,
  ]),
// Int list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    64,
    0,
    126,
    245,
    119,
    226,
    220,
    101,
    189,
    12,
    129,
    196,
    196,
    40,
    151,
    100,
    56,
    99,
    82,
    68,
    219,
    64,
    197,
    11,
    17,
    201,
    198,
    181,
    151,
    177,
    58,
    173,
  ]),
// Bool list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    252,
    21,
    80,
    221,
    182,
    107,
    163,
    156,
    97,
    189,
    148,
    86,
    48,
    169,
    77,
    35,
  ]),
// Double list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    213,
    249,
    15,
    61,
    223,
    183,
    56,
    209,
    66,
    16,
    19,
    234,
    62,
    117,
    173,
    12,
    104,
    235,
    232,
    106,
    44,
    164,
    101,
    41,
    61,
    88,
    32,
    110,
    153,
    203,
    242,
    147,
    100,
    241,
    42,
    67,
    170,
    161,
    212,
    186,
    162,
    66,
    224,
    4,
    226,
    27,
    201,
    176,
  ]),
// String list
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    153,
    150,
    253,
    78,
    106,
    101,
    109,
    26,
    206,
    172,
    48,
    41,
    124,
    201,
    248,
    47,
    69,
    93,
    1,
    35,
    207,
    3,
    203,
    213,
    183,
    25,
    62,
    151,
    119,
    159,
    105,
    163,
    32,
    4,
    204,
    87,
    103,
    164,
    36,
    110,
    151,
    251,
    178,
    153,
    145,
    250,
    201,
    153,
    44,
    82,
    73,
    241,
    70,
    157,
    252,
    205,
    207,
    9,
    239,
    149,
    2,
    231,
    0,
    31,
    21,
    224,
    240,
    97,
    211,
    203,
    177,
    85,
    184,
    23,
    191,
    14,
    169,
    104,
    6,
    72,
    200,
    169,
    190,
    201,
    166,
    74,
    169,
    87,
    78,
    130,
    247,
    29,
    95,
    78,
    77,
    110,
    110,
    237,
    93,
    219,
    36,
    157,
    77,
    89,
    21,
    139,
    95,
    140,
    12,
    72,
    176,
    150,
    182,
    115,
    97,
    17,
    106,
    1,
    70,
    143,
    87,
    44,
    136,
    208,
    171,
    82,
    222,
    240,
    252,
    37,
    80,
    158,
    125,
    207,
    248,
    121,
    164,
    224,
    79,
    247,
    122,
    36,
    106,
    109,
    232,
    11,
    10,
    110,
    226,
    2,
    185,
    94,
    35,
    255,
    111,
    93,
    237,
    120,
    1,
    208,
  ]),
// List with null
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    225,
    213,
    185,
    248,
    156,
    156,
    222,
    100,
    44,
    8,
    160,
    172,
    158,
    230,
    229,
    149,
    188,
    123,
    223,
    163,
    122,
    78,
    162,
    202,
    142,
    27,
    253,
    165,
    13,
    140,
    65,
    233,
    29,
    92,
    178,
    164,
    228,
    201,
    211,
    12,
    97,
    236,
    110,
    61,
    135,
    56,
    74,
    178,
  ]),
// List with different types
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    162,
    44,
    10,
    205,
    135,
    89,
    106,
    78,
    241,
    135,
    17,
    15,
    155,
    107,
    162,
    13,
    81,
    31,
    198,
    131,
    84,
    96,
    234,
    9,
    206,
    118,
    3,
    239,
    65,
    220,
    91,
    112,
    77,
    245,
    236,
    56,
    187,
    27,
    196,
    100,
    214,
    161,
    244,
    51,
    115,
    66,
    150,
    32,
    8,
    19,
    182,
    95,
    197,
    126,
    114,
    233,
    248,
    30,
    120,
    37,
    145,
    189,
    231,
    48,
    70,
    127,
    105,
    232,
    197,
    117,
    169,
    30,
    98,
    43,
    197,
    132,
    88,
    251,
    86,
    227,
    41,
    137,
    115,
    219,
    77,
    226,
    111,
    143,
    54,
    34,
    24,
    37,
    220,
    243,
    244,
    183,
  ]),
// Empty set
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    162,
    163,
    178,
    172,
    243,
    92,
    21,
    236,
    253,
    49,
    166,
    197,
    173,
    143,
    207,
    27,
  ]),
// Int set
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    108,
    118,
    174,
    242,
    88,
    247,
    191,
    215,
    84,
    31,
    7,
    156,
    122,
    183,
    205,
    216,
    237,
    134,
    209,
    122,
    198,
    146,
    205,
    77,
    124,
    92,
    70,
    16,
    150,
    189,
    128,
    146,
    59,
    219,
    9,
    53,
    218,
    65,
    175,
    255,
    81,
    244,
    8,
    103,
    131,
    94,
    246,
    151,
  ]),
// Double set
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    86,
    235,
    90,
    38,
    202,
    108,
    87,
    100,
    1,
    164,
    26,
    85,
    126,
    183,
    171,
    165,
    58,
    95,
    152,
    67,
    176,
    57,
    208,
    112,
    7,
    226,
    213,
    248,
    161,
    119,
    133,
    178,
  ]),
// String set
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    134,
    148,
    62,
    36,
    5,
    167,
    167,
    25,
    107,
    2,
    117,
    55,
    20,
    18,
    71,
    210,
    246,
    145,
    14,
    10,
    7,
    177,
    179,
    99,
    232,
    236,
    98,
    131,
    12,
    122,
    37,
    127,
    66,
    141,
    130,
    93,
    209,
    209,
    156,
    139,
    74,
    84,
    11,
    38,
    253,
    216,
    215,
    30,
    99,
    9,
    225,
    22,
    158,
    87,
    173,
    245,
    243,
    91,
    83,
    7,
    170,
    18,
    167,
    218,
    105,
    213,
    21,
    228,
    197,
    126,
    253,
    124,
    12,
    3,
    200,
    115,
    108,
    163,
    167,
    229,
  ]),
// Set with null
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    54,
    194,
    120,
    31,
    209,
    155,
    252,
    95,
    31,
    45,
    94,
    82,
    97,
    102,
    244,
    247,
    206,
    156,
    132,
    164,
    220,
    211,
    246,
    126,
    142,
    47,
    160,
    89,
    107,
    103,
    174,
    20,
    94,
    35,
    68,
    143,
    117,
    179,
    160,
    63,
    10,
    184,
    170,
    145,
    39,
    34,
    229,
    236,
  ]),
// Set with different types
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    102,
    159,
    0,
    123,
    213,
    86,
    137,
    145,
    145,
    152,
    122,
    40,
    59,
    182,
    75,
    229,
    189,
    83,
    0,
    124,
    160,
    241,
    154,
    167,
    235,
    251,
    75,
    98,
    79,
    45,
    55,
    176,
    183,
    70,
    187,
    97,
    88,
    132,
    188,
    66,
    133,
    74,
    145,
    207,
    93,
    44,
    171,
    114,
    190,
    155,
    123,
    183,
    167,
    105,
    131,
    222,
    145,
    36,
    32,
    157,
    201,
    200,
    173,
    87,
    130,
    36,
    254,
    71,
    6,
    11,
    49,
    120,
    12,
    97,
    86,
    89,
    183,
    210,
    35,
    170,
    11,
    84,
    211,
    48,
    192,
    121,
    219,
    102,
    196,
    244,
    137,
    13,
    215,
    204,
    185,
    32,
  ]),
// Map
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    13,
    37,
    197,
    127,
    137,
    83,
    219,
    85,
    165,
    224,
    139,
    227,
    168,
    247,
    122,
    173,
    159,
    125,
    186,
    212,
    237,
    61,
    184,
    146,
    219,
    212,
    193,
    3,
    131,
    71,
    167,
    69,
    72,
    68,
    61,
    110,
    226,
    177,
    245,
    40,
    22,
    64,
    222,
    206,
    18,
    187,
    144,
    52,
    117,
    219,
    163,
    20,
    172,
    147,
    223,
    24,
    196,
    56,
    90,
    185,
    134,
    127,
    233,
    62,
    232,
    152,
    130,
    0,
    225,
    179,
    251,
    62,
    5,
    56,
    18,
    75,
    114,
    254,
    126,
    88,
    228,
    224,
    98,
    166,
    213,
    81,
    26,
    179,
    113,
    106,
    87,
    10,
    251,
    92,
    247,
    98,
    106,
    46,
    28,
    240,
    129,
    41,
    216,
    128,
    131,
    86,
    69,
    158,
    26,
    228,
    162,
    202,
    130,
    44,
    16,
    171,
    34,
    32,
    155,
    91,
    168,
    50,
    50,
    133,
    140,
    234,
    193,
    8,
    136,
    126,
    30,
    138,
    110,
    138,
    143,
    37,
    15,
    129,
    207,
    48,
    14,
    43,
    118,
    118,
    108,
    26,
    182,
    218,
    53,
    118,
    111,
    14,
    23,
    188,
    115,
    229,
    48,
    9,
    121,
    148,
    87,
    176,
    7,
    44,
    97,
    201,
    216,
    31,
    30,
    237,
    69,
    66,
    56,
    123,
    115,
    17,
  ]),
// DateTime test
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    19,
    62,
    168,
    114,
    125,
    176,
    130,
    194,
    17,
    86,
    4,
    198,
    4,
    29,
    159,
    87,
    17,
    136,
    170,
    237,
    15,
    114,
    122,
    224,
    94,
    123,
    86,
    119,
    10,
    105,
    219,
    233,
  ]),
// BigInt Test
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    92,
    197,
    108,
    246,
    190,
    129,
    94,
    5,
    62,
    37,
    237,
    35,
    48,
    69,
    227,
    238,
    46,
    181,
    251,
    153,
    42,
    12,
    188,
    181,
    65,
    254,
    237,
    238,
    144,
    189,
    230,
    159,
    77,
    241,
    22,
    110,
    106,
    204,
    207,
    172,
    102,
    136,
    240,
    71,
    172,
    126,
    39,
    159,
  ]),
// Duration Test
  Uint8List.fromList([
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    169,
    126,
    108,
    3,
    9,
    171,
    165,
    87,
    236,
    57,
    131,
    46,
    53,
    62,
    91,
    125,
  ]),
];
