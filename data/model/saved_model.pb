ŗó	
’(Ó(
:
Add
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResourceGather
resource
indices"Tindices
output"dtype"
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
Į
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.13.12b'v1.13.1-0-g6612da8951'å	
g
userPlaceholder*
shape:’’’’’’’’’*
dtype0*'
_output_shapes
:’’’’’’’’’
q
 embedding_1/random_uniform/shapeConst*
valueB"¾o  2   *
dtype0*
_output_shapes
:
c
embedding_1/random_uniform/minConst*
valueB
 *ĶĢL½*
dtype0*
_output_shapes
: 
c
embedding_1/random_uniform/maxConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
²
(embedding_1/random_uniform/RandomUniformRandomUniform embedding_1/random_uniform/shape*
seed±’å)*
T0*
dtype0* 
_output_shapes
:
¾ß2*
seed2¬Ź

embedding_1/random_uniform/subSubembedding_1/random_uniform/maxembedding_1/random_uniform/min*
T0*
_output_shapes
: 

embedding_1/random_uniform/mulMul(embedding_1/random_uniform/RandomUniformembedding_1/random_uniform/sub*
T0* 
_output_shapes
:
¾ß2

embedding_1/random_uniformAddembedding_1/random_uniform/mulembedding_1/random_uniform/min*
T0* 
_output_shapes
:
¾ß2
Ę
embedding_1/embeddingsVarHandleOp*'
shared_nameembedding_1/embeddings*)
_class
loc:@embedding_1/embeddings*
	container *
shape:
¾ß2*
dtype0*
_output_shapes
: 
}
7embedding_1/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding_1/embeddings*
_output_shapes
: 

embedding_1/embeddings/AssignAssignVariableOpembedding_1/embeddingsembedding_1/random_uniform*)
_class
loc:@embedding_1/embeddings*
dtype0
®
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings* 
_output_shapes
:
¾ß2*)
_class
loc:@embedding_1/embeddings*
dtype0
o
embedding_1/CastCastuser*

SrcT0*
Truncate( *'
_output_shapes
:’’’’’’’’’*

DstT0
å
embedding_1/embedding_lookupResourceGatherembedding_1/embeddingsembedding_1/Cast*
validate_indices(*)
_class
loc:@embedding_1/embeddings*
dtype0*+
_output_shapes
:’’’’’’’’’2*
Tindices0
°
%embedding_1/embedding_lookup/IdentityIdentityembedding_1/embedding_lookup*
T0*)
_class
loc:@embedding_1/embeddings*+
_output_shapes
:’’’’’’’’’2

'embedding_1/embedding_lookup/Identity_1Identity%embedding_1/embedding_lookup/Identity*
T0*+
_output_shapes
:’’’’’’’’’2
v
reshape_1/ShapeShape'embedding_1/embedding_lookup/Identity_1*
out_type0*
_output_shapes
:*
T0
g
reshape_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
reshape_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
reshape_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
«
reshape_1/strided_sliceStridedSlicereshape_1/Shapereshape_1/strided_slice/stackreshape_1/strided_slice/stack_1reshape_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
[
reshape_1/Reshape/shape/1Const*
value	B :2*
dtype0*
_output_shapes
: 

reshape_1/Reshape/shapePackreshape_1/strided_slicereshape_1/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

reshape_1/ReshapeReshape'embedding_1/embedding_lookup/Identity_1reshape_1/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’2
j
productPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
q
 embedding_2/random_uniform/shapeConst*
_output_shapes
:*
valueB",  2   *
dtype0
c
embedding_2/random_uniform/minConst*
valueB
 *ĶĢL½*
dtype0*
_output_shapes
: 
c
embedding_2/random_uniform/maxConst*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
±
(embedding_2/random_uniform/RandomUniformRandomUniform embedding_2/random_uniform/shape*
dtype0*
_output_shapes
:	¬2*
seed2©Ż*
seed±’å)*
T0

embedding_2/random_uniform/subSubembedding_2/random_uniform/maxembedding_2/random_uniform/min*
_output_shapes
: *
T0

embedding_2/random_uniform/mulMul(embedding_2/random_uniform/RandomUniformembedding_2/random_uniform/sub*
T0*
_output_shapes
:	¬2

embedding_2/random_uniformAddembedding_2/random_uniform/mulembedding_2/random_uniform/min*
T0*
_output_shapes
:	¬2
Å
embedding_2/embeddingsVarHandleOp*
	container *
shape:	¬2*
dtype0*
_output_shapes
: *'
shared_nameembedding_2/embeddings*)
_class
loc:@embedding_2/embeddings
}
7embedding_2/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding_2/embeddings*
_output_shapes
: 

embedding_2/embeddings/AssignAssignVariableOpembedding_2/embeddingsembedding_2/random_uniform*
dtype0*)
_class
loc:@embedding_2/embeddings
­
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
dtype0*
_output_shapes
:	¬2*)
_class
loc:@embedding_2/embeddings
r
embedding_2/CastCastproduct*

SrcT0*
Truncate( *'
_output_shapes
:’’’’’’’’’*

DstT0
å
embedding_2/embedding_lookupResourceGatherembedding_2/embeddingsembedding_2/Cast*
Tindices0*
validate_indices(*)
_class
loc:@embedding_2/embeddings*
dtype0*+
_output_shapes
:’’’’’’’’’2
°
%embedding_2/embedding_lookup/IdentityIdentityembedding_2/embedding_lookup*+
_output_shapes
:’’’’’’’’’2*
T0*)
_class
loc:@embedding_2/embeddings

'embedding_2/embedding_lookup/Identity_1Identity%embedding_2/embedding_lookup/Identity*+
_output_shapes
:’’’’’’’’’2*
T0
v
reshape_2/ShapeShape'embedding_2/embedding_lookup/Identity_1*
T0*
out_type0*
_output_shapes
:
g
reshape_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
reshape_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
«
reshape_2/strided_sliceStridedSlicereshape_2/Shapereshape_2/strided_slice/stackreshape_2/strided_slice/stack_1reshape_2/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
[
reshape_2/Reshape/shape/1Const*
value	B :2*
dtype0*
_output_shapes
: 

reshape_2/Reshape/shapePackreshape_2/strided_slicereshape_2/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N

reshape_2/ReshapeReshape'embedding_2/embedding_lookup/Identity_1reshape_2/Reshape/shape*'
_output_shapes
:’’’’’’’’’2*
T0*
Tshape0
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ø
concatenate_1/concatConcatV2reshape_1/Reshapereshape_2/Reshapeconcatenate_1/concat/axis*
T0*
N*'
_output_shapes
:’’’’’’’’’d*

Tidx0
[
dropout_1/dropout/rateConst*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 
k
dropout_1/dropout/ShapeShapeconcatenate_1/concat*
T0*
out_type0*
_output_shapes
:
\
dropout_1/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
n
dropout_1/dropout/subSubdropout_1/dropout/sub/xdropout_1/dropout/rate*
_output_shapes
: *
T0
i
$dropout_1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
i
$dropout_1/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*
seed±’å)*
T0*
dtype0*'
_output_shapes
:’’’’’’’’’d*
seed2ā¤Ć

$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
³
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*'
_output_shapes
:’’’’’’’’’d*
T0
„
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’d

dropout_1/dropout/addAdddropout_1/dropout/sub dropout_1/dropout/random_uniform*'
_output_shapes
:’’’’’’’’’d*
T0
i
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*'
_output_shapes
:’’’’’’’’’d

dropout_1/dropout/truedivRealDivconcatenate_1/concatdropout_1/dropout/sub*
T0*'
_output_shapes
:’’’’’’’’’d

dropout_1/dropout/mulMuldropout_1/dropout/truedivdropout_1/dropout/Floor*
T0*'
_output_shapes
:’’’’’’’’’d
m
dense_1/random_uniform/shapeConst*
valueB"d   2   *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *ĶĢL¾*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 
Ø
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed±’å)*
T0*
dtype0*
_output_shapes

:d2*
seed2£Ó§
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

:d2
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

:d2
¬
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:d2*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:d2
Z
dense_1/ConstConst*
valueB2*    *
dtype0*
_output_shapes
:2
¢
dense_1/biasVarHandleOp*
shape:2*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
r
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/Const*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:2
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:d2
¦
dense_1/MatMulMatMuldropout_1/dropout/muldense_1/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’2*
transpose_a( *
transpose_b( *
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:2

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’2*
T0
\
activation_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’2
[
dropout_2/dropout/rateConst*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 
h
dropout_2/dropout/ShapeShapeactivation_1/Relu*
_output_shapes
:*
T0*
out_type0
\
dropout_2/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
n
dropout_2/dropout/subSubdropout_2/dropout/sub/xdropout_2/dropout/rate*
T0*
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
i
$dropout_2/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*'
_output_shapes
:’’’’’’’’’2*
seed2§äō*
seed±’å)*
T0*
dtype0

$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
³
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’2
„
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’2

dropout_2/dropout/addAdddropout_2/dropout/sub dropout_2/dropout/random_uniform*'
_output_shapes
:’’’’’’’’’2*
T0
i
dropout_2/dropout/FloorFloordropout_2/dropout/add*
T0*'
_output_shapes
:’’’’’’’’’2

dropout_2/dropout/truedivRealDivactivation_1/Reludropout_2/dropout/sub*'
_output_shapes
:’’’’’’’’’2*
T0

dropout_2/dropout/mulMuldropout_2/dropout/truedivdropout_2/dropout/Floor*
T0*'
_output_shapes
:’’’’’’’’’2
m
dense_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"2      
_
dense_2/random_uniform/minConst*
_output_shapes
: *
valueB
 *SÆ¾*
dtype0
_
dense_2/random_uniform/maxConst*
valueB
 *SÆ>*
dtype0*
_output_shapes
: 
Ø
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
_output_shapes

:2*
seed2Ŗ*
seed±’å)*
T0
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
_output_shapes
: *
T0

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes

:2*
T0
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:2
¬
dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
	container *
shape
:2*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kerneldense_2/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:2
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
¢
dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
r
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/Const*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:2*
dtype0
¦
dense_2/MatMulMatMuldropout_2/dropout/muldense_2/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

)Adam/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R *"
_class
loc:@Adam/iterations
§
Adam/iterationsVarHandleOp*
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

,Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
°
Adam/learning_rateVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
£
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0

&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *%
_class
loc:@Adam/learning_rate*
dtype0

%Adam/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam/decay


Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
q
dense_2_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

Hloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum/yConst*
valueB
 *  *
dtype0*
_output_shapes
: 
Ž
Floss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/MinimumMinimumdense_2/BiasAddHloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum/y*
T0*'
_output_shapes
:’’’’’’’’’

@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0

>loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_valueMaximumFloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/y*
T0*'
_output_shapes
:’’’’’’’’’
{
6loss/dense_2_loss/mean_squared_logarithmic_error/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
å
4loss/dense_2_loss/mean_squared_logarithmic_error/addAdd>loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value6loss/dense_2_loss/mean_squared_logarithmic_error/add/y*'
_output_shapes
:’’’’’’’’’*
T0
£
4loss/dense_2_loss/mean_squared_logarithmic_error/LogLog4loss/dense_2_loss/mean_squared_logarithmic_error/add*'
_output_shapes
:’’’’’’’’’*
T0

Jloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
valueB
 *  *
dtype0
ź
Hloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/MinimumMinimumdense_2_targetJloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/Minimum/y*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

Bloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1MaximumHloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/MinimumBloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_1/y*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
}
8loss/dense_2_loss/mean_squared_logarithmic_error/add_1/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ō
6loss/dense_2_loss/mean_squared_logarithmic_error/add_1Add@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_18loss/dense_2_loss/mean_squared_logarithmic_error/add_1/y*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
°
6loss/dense_2_loss/mean_squared_logarithmic_error/Log_1Log6loss/dense_2_loss/mean_squared_logarithmic_error/add_1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ä
4loss/dense_2_loss/mean_squared_logarithmic_error/subSub4loss/dense_2_loss/mean_squared_logarithmic_error/Log6loss/dense_2_loss/mean_squared_logarithmic_error/Log_1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
²
7loss/dense_2_loss/mean_squared_logarithmic_error/SquareSquare4loss/dense_2_loss/mean_squared_logarithmic_error/sub*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

Gloss/dense_2_loss/mean_squared_logarithmic_error/Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

5loss/dense_2_loss/mean_squared_logarithmic_error/MeanMean7loss/dense_2_loss/mean_squared_logarithmic_error/SquareGloss/dense_2_loss/mean_squared_logarithmic_error/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
Ę
Bloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mulMuldense_2_sample_weights5loss/dense_2_loss/mean_squared_logarithmic_error/Mean*#
_output_shapes
:’’’’’’’’’*
T0

Dloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Bloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/SumSumBloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mulDloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ķ
Ploss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/SizeSizeBloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
ź
Ploss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/CastCastPloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Floss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truedivRealDivBloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/SumPloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

loss/mulMul
loss/mul/xFloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
T0*
_output_shapes
: 
H
ConstConst*
dtype0*
_output_shapes
: *
valueB 
[
MeanMeanloss/mulConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
y
training/Adam/gradients/ShapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
²
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*

index_type0*
_class
	loc:@Mean*
_output_shapes
: *
T0

/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
Ė
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_class
	loc:@Mean*
_output_shapes
: 

'training/Adam/gradients/Mean_grad/ConstConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
Ī
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*

Tmultiples0*
T0*
_class
	loc:@Mean*
_output_shapes
: 

)training/Adam/gradients/Mean_grad/Const_1Const*
valueB
 *  ?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
Į
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
_class
	loc:@Mean
į
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivFloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: *
T0*
_class
loc:@loss/mul
§
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/ShapeConst*
valueB *Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
dtype0*
_output_shapes
: 

ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Shape_1Const*
valueB *Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
dtype0*
_output_shapes
: 

ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Shapektraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Shape_1*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ń
ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Ploss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/Cast*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: 
ļ
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/SumSumktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDivytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv
Ō
ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/ReshapeReshapegtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Sumitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Shape*
Tshape0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: *
T0
®
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/NegNegBloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum*
_output_shapes
: *
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv
Æ
mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDiv_1RealDivgtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/NegPloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/Cast*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: 
µ
mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDiv_2RealDivmtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDiv_1Ploss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/num_elements/Cast*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: 

gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv
ļ
itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Sum_1Sumgtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/mul{training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/BroadcastGradientArgs:1*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ś
mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Reshape_1Reshapeitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Sum_1ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv*
_output_shapes
: 

mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum
Ų
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/ReshapeReshapektraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/truediv_grad/Reshapemtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum*
_output_shapes
:
¾
etraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/ShapeShapeBloss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*
T0*
out_type0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum*
_output_shapes
:
Ó
dtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/TileTilegtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Reshapeetraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Shape*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum

etraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/ShapeShapedense_2_sample_weights*
T0*
out_type0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*
_output_shapes
:
³
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Shape_1Shape5loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:*
T0*
out_type0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul
ņ
utraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsetraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Shapegtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Shape_1*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/MulMuldtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Tile5loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
Ż
ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/SumSumctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Mulutraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ń
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/ReshapeReshapectraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Sumetraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Shape*
T0*
Tshape0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ļ
etraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Mul_1Muldense_2_sample_weightsdtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/Sum_grad/Tile*#
_output_shapes
:’’’’’’’’’*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul
ć
etraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Sum_1Sumetraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Mul_1wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
×
itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Reshape_1Reshapeetraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Sum_1gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Shape_1*
Tshape0*U
_classK
IGloc:@loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’*
T0

Xtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ShapeShape7loss/dense_2_loss/mean_squared_logarithmic_error/Square*
out_type0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:*
T0
ć
Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/SizeConst*
value	B :*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 
ź
Vtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/addAddGloss/dense_2_loss/mean_squared_logarithmic_error/Mean/reduction_indicesWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Size*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: 
ž
Vtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/modFloorModVtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/addWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Size*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: 
ē
Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_1Const*
valueB *H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 
ź
^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/range/startConst*
value	B : *H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 
ź
^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/range/deltaConst*
value	B :*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 
ģ
Xtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/rangeRange^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/range/startWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Size^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/range/delta*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:*

Tidx0
é
]training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Fill/valueConst*
value	B :*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 

Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/FillFillZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_1]training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean
Ī
`training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/DynamicStitchDynamicStitchXtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/rangeVtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/modXtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ShapeWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Fill*
N*
_output_shapes
:*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean
č
\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum/yConst*
value	B :*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
: 

Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/MaximumMaximum`training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/DynamicStitch\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum/y*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:

[training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/floordivFloorDivXtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ShapeZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:*
T0
Å
Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ReshapeReshapeitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/weighted_loss/mul_grad/Reshape_1`training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/DynamicStitch*
T0*
Tshape0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Æ
Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/TileTileZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Reshape[training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/floordiv*

Tmultiples0*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_2Shape7loss/dense_2_loss/mean_squared_logarithmic_error/Square*
T0*
out_type0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:

Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_3Shape5loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
:*
T0*
out_type0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean
ģ
Xtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ConstConst*
valueB: *H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
:

Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/ProdProdZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_2Xtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Const*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
ī
Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Const_1Const*
valueB: *H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
dtype0*
_output_shapes
:
”
Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Prod_1ProdZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Shape_3Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Const_1*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
ź
^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean

\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum_1MaximumYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Prod_1^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum_1/y*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: 

]training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/floordiv_1FloorDivWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Prod\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Maximum_1*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
_output_shapes
: 
Č
Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/CastCast]training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/floordiv_1*

SrcT0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean*
Truncate( *
_output_shapes
: *

DstT0

Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/truedivRealDivWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/TileWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/Cast*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0*H
_class>
<:loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Mean
Č
Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/ConstConst[^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/truediv*
valueB
 *   @*J
_class@
><loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Square*
dtype0*
_output_shapes
: 
ų
Xtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/MulMul4loss/dense_2_loss/mean_squared_logarithmic_error/subZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/Const*
T0*J
_class@
><loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Square*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Ztraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/Mul_1MulZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Mean_grad/truedivXtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/Mul*
T0*J
_class@
><loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Square*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/ShapeShape4loss/dense_2_loss/mean_squared_logarithmic_error/Log*
T0*
out_type0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*
_output_shapes
:

Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Shape_1Shape6loss/dense_2_loss/mean_squared_logarithmic_error/Log_1*
out_type0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*
_output_shapes
:*
T0
ŗ
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/BroadcastGradientArgsBroadcastGradientArgsWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/ShapeYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub
Ŗ
Utraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/SumSumZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/Mul_1gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*
_output_shapes
:

Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/ReshapeReshapeUtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/SumWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Shape*
T0*
Tshape0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*'
_output_shapes
:’’’’’’’’’
®
Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Sum_1SumZtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Square_grad/Mul_1itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*
_output_shapes
:
”
Utraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/NegNegWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Sum_1*
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*
_output_shapes
:
Ŗ
[training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Reshape_1ReshapeUtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/NegYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Shape_1*
T0*
Tshape0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/sub*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
÷
\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Log_grad/Reciprocal
Reciprocal4loss/dense_2_loss/mean_squared_logarithmic_error/addZ^training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Reshape*
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Log*'
_output_shapes
:’’’’’’’’’

Utraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Log_grad/mulMulYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/sub_grad/Reshape\training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Log_grad/Reciprocal*'
_output_shapes
:’’’’’’’’’*
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/Log

Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/ShapeShape>loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
T0*
out_type0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add*
_output_shapes
:
å
Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Shape_1Const*
valueB *G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add*
dtype0*
_output_shapes
: 
ŗ
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/BroadcastGradientArgsBroadcastGradientArgsWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/ShapeYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Shape_1*
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
„
Utraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/SumSumUtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Log_grad/mulgtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add*
_output_shapes
:

Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/ReshapeReshapeUtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/SumWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Shape*
T0*
Tshape0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add*'
_output_shapes
:’’’’’’’’’
©
Wtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Sum_1SumUtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/Log_grad/mulitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add

[training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Reshape_1ReshapeWtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Sum_1Ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*G
_class=
;9loc:@loss/dense_2_loss/mean_squared_logarithmic_error/add
ŗ
atraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/ShapeShapeFloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value
ł
ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape_1Const*
valueB *Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
dtype0*
_output_shapes
: 
Ļ
ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape_2ShapeYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Reshape*
_output_shapes
:*
T0*
out_type0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value
’
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
dtype0*
_output_shapes
: 
Ī
atraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/zerosFillctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape_2gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/zeros/Const*
T0*

index_type0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*'
_output_shapes
:’’’’’’’’’

htraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/GreaterEqualGreaterEqualFloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/y*'
_output_shapes
:’’’’’’’’’*
T0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value
ā
qtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsatraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shapectraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape_1*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

btraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/SelectSelecthtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/GreaterEqualYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Reshapeatraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/zeros*
T0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*'
_output_shapes
:’’’’’’’’’

dtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Select_1Selecthtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/GreaterEqualatraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/zerosYtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/add_grad/Reshape*
T0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*'
_output_shapes
:’’’’’’’’’
Š
_training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/SumSumbtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Selectqtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
_output_shapes
:
Å
ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/ReshapeReshape_training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Sumatraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape*
T0*
Tshape0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*'
_output_shapes
:’’’’’’’’’
Ö
atraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Sum_1Sumdtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Select_1straining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/BroadcastGradientArgs:1*
T0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
ŗ
etraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Reshape_1Reshapeatraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Sum_1ctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Shape_1*
T0*
Tshape0*Q
_classG
ECloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value*
_output_shapes
: 

itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/ShapeShapedense_2/BiasAdd*
out_type0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
:*
T0

ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape_1Const*
valueB *Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
é
ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape_2Shapectraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Reshape*
T0*
out_type0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
:

otraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ī
itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/zerosFillktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape_2otraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
ā
mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/BiasAddHloss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum/y*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shapektraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape_1*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ą
jtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/SelectSelectmtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/LessEqualctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Reshapeitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/zeros*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
Ā
ltraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Select_1Selectmtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/LessEqualitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/zerosctraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value_grad/Reshape*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
š
gtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/SumSumjtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Selectytraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/BroadcastGradientArgs*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
å
ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/ReshapeReshapegtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Sumitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
ö
itraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Sum_1Sumltraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Select_1{training/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ś
mtraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Reshape_1Reshapeitraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Sum_1ktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*Y
_classO
MKloc:@loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum*
_output_shapes
: 

8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0*"
_class
loc:@dense_2/BiasAdd
Ć
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMulktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Reshapedense_2/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’2*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
“
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mulktraining/Adam/gradients/loss/dense_2_loss/mean_squared_logarithmic_error/clip_by_value/Minimum_grad/Reshape*
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes

:2*
transpose_a(*
transpose_b( 
»
8training/Adam/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/truediv*
T0*
out_type0*(
_class
loc:@dropout_2/dropout/mul*
_output_shapes
:
»
:training/Adam/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
T0*
out_type0*(
_class
loc:@dropout_2/dropout/mul*
_output_shapes
:
¾
Htraining/Adam/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/dropout_2/dropout/mul_grad/Shape:training/Adam/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*(
_class
loc:@dropout_2/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ę
6training/Adam/gradients/dropout_2/dropout/mul_grad/MulMul2training/Adam/gradients/dense_2/MatMul_grad/MatMuldropout_2/dropout/Floor*
T0*(
_class
loc:@dropout_2/dropout/mul*'
_output_shapes
:’’’’’’’’’2
©
6training/Adam/gradients/dropout_2/dropout/mul_grad/SumSum6training/Adam/gradients/dropout_2/dropout/mul_grad/MulHtraining/Adam/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@dropout_2/dropout/mul
”
:training/Adam/gradients/dropout_2/dropout/mul_grad/ReshapeReshape6training/Adam/gradients/dropout_2/dropout/mul_grad/Sum8training/Adam/gradients/dropout_2/dropout/mul_grad/Shape*'
_output_shapes
:’’’’’’’’’2*
T0*
Tshape0*(
_class
loc:@dropout_2/dropout/mul
ź
8training/Adam/gradients/dropout_2/dropout/mul_grad/Mul_1Muldropout_2/dropout/truediv2training/Adam/gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’2*
T0*(
_class
loc:@dropout_2/dropout/mul
Æ
8training/Adam/gradients/dropout_2/dropout/mul_grad/Sum_1Sum8training/Adam/gradients/dropout_2/dropout/mul_grad/Mul_1Jtraining/Adam/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*(
_class
loc:@dropout_2/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
§
<training/Adam/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape8training/Adam/gradients/dropout_2/dropout/mul_grad/Sum_1:training/Adam/gradients/dropout_2/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@dropout_2/dropout/mul*'
_output_shapes
:’’’’’’’’’2
»
<training/Adam/gradients/dropout_2/dropout/truediv_grad/ShapeShapeactivation_1/Relu*
T0*
out_type0*,
_class"
 loc:@dropout_2/dropout/truediv*
_output_shapes
:
Æ
>training/Adam/gradients/dropout_2/dropout/truediv_grad/Shape_1Const*
valueB *,
_class"
 loc:@dropout_2/dropout/truediv*
dtype0*
_output_shapes
: 
Ī
Ltraining/Adam/gradients/dropout_2/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/dropout_2/dropout/truediv_grad/Shape>training/Adam/gradients/dropout_2/dropout/truediv_grad/Shape_1*,
_class"
 loc:@dropout_2/dropout/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ü
>training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDivRealDiv:training/Adam/gradients/dropout_2/dropout/mul_grad/Reshapedropout_2/dropout/sub*
T0*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2
½
:training/Adam/gradients/dropout_2/dropout/truediv_grad/SumSum>training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDivLtraining/Adam/gradients/dropout_2/dropout/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@dropout_2/dropout/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
±
>training/Adam/gradients/dropout_2/dropout/truediv_grad/ReshapeReshape:training/Adam/gradients/dropout_2/dropout/truediv_grad/Sum<training/Adam/gradients/dropout_2/dropout/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2
“
:training/Adam/gradients/dropout_2/dropout/truediv_grad/NegNegactivation_1/Relu*
T0*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2
ž
@training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/dropout_2/dropout/truediv_grad/Negdropout_2/dropout/sub*
T0*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2

@training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDiv_1dropout_2/dropout/sub*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2*
T0

:training/Adam/gradients/dropout_2/dropout/truediv_grad/mulMul:training/Adam/gradients/dropout_2/dropout/mul_grad/Reshape@training/Adam/gradients/dropout_2/dropout/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@dropout_2/dropout/truediv*'
_output_shapes
:’’’’’’’’’2
½
<training/Adam/gradients/dropout_2/dropout/truediv_grad/Sum_1Sum:training/Adam/gradients/dropout_2/dropout/truediv_grad/mulNtraining/Adam/gradients/dropout_2/dropout/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@dropout_2/dropout/truediv
¦
@training/Adam/gradients/dropout_2/dropout/truediv_grad/Reshape_1Reshape<training/Adam/gradients/dropout_2/dropout/truediv_grad/Sum_1>training/Adam/gradients/dropout_2/dropout/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*,
_class"
 loc:@dropout_2/dropout/truediv
ī
7training/Adam/gradients/activation_1/Relu_grad/ReluGradReluGrad>training/Adam/gradients/dropout_2/dropout/truediv_grad/Reshapeactivation_1/Relu*
T0*$
_class
loc:@activation_1/Relu*'
_output_shapes
:’’’’’’’’’2
ą
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/Adam/gradients/activation_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:2

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul7training/Adam/gradients/activation_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:’’’’’’’’’d*
transpose_a( *
transpose_b(

4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout_1/dropout/mul7training/Adam/gradients/activation_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes

:d2*
transpose_a(*
transpose_b( 
»
8training/Adam/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/truediv*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@dropout_1/dropout/mul
»
:training/Adam/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
out_type0*(
_class
loc:@dropout_1/dropout/mul*
_output_shapes
:*
T0
¾
Htraining/Adam/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/dropout_1/dropout/mul_grad/Shape:training/Adam/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*(
_class
loc:@dropout_1/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ę
6training/Adam/gradients/dropout_1/dropout/mul_grad/MulMul2training/Adam/gradients/dense_1/MatMul_grad/MatMuldropout_1/dropout/Floor*'
_output_shapes
:’’’’’’’’’d*
T0*(
_class
loc:@dropout_1/dropout/mul
©
6training/Adam/gradients/dropout_1/dropout/mul_grad/SumSum6training/Adam/gradients/dropout_1/dropout/mul_grad/MulHtraining/Adam/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@dropout_1/dropout/mul*
_output_shapes
:
”
:training/Adam/gradients/dropout_1/dropout/mul_grad/ReshapeReshape6training/Adam/gradients/dropout_1/dropout/mul_grad/Sum8training/Adam/gradients/dropout_1/dropout/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@dropout_1/dropout/mul*'
_output_shapes
:’’’’’’’’’d
ź
8training/Adam/gradients/dropout_1/dropout/mul_grad/Mul_1Muldropout_1/dropout/truediv2training/Adam/gradients/dense_1/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’d*
T0*(
_class
loc:@dropout_1/dropout/mul
Æ
8training/Adam/gradients/dropout_1/dropout/mul_grad/Sum_1Sum8training/Adam/gradients/dropout_1/dropout/mul_grad/Mul_1Jtraining/Adam/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@dropout_1/dropout/mul*
_output_shapes
:
§
<training/Adam/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape8training/Adam/gradients/dropout_1/dropout/mul_grad/Sum_1:training/Adam/gradients/dropout_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@dropout_1/dropout/mul*'
_output_shapes
:’’’’’’’’’d
¾
<training/Adam/gradients/dropout_1/dropout/truediv_grad/ShapeShapeconcatenate_1/concat*
_output_shapes
:*
T0*
out_type0*,
_class"
 loc:@dropout_1/dropout/truediv
Æ
>training/Adam/gradients/dropout_1/dropout/truediv_grad/Shape_1Const*
valueB *,
_class"
 loc:@dropout_1/dropout/truediv*
dtype0*
_output_shapes
: 
Ī
Ltraining/Adam/gradients/dropout_1/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/dropout_1/dropout/truediv_grad/Shape>training/Adam/gradients/dropout_1/dropout/truediv_grad/Shape_1*
T0*,
_class"
 loc:@dropout_1/dropout/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ü
>training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDivRealDiv:training/Adam/gradients/dropout_1/dropout/mul_grad/Reshapedropout_1/dropout/sub*
T0*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d
½
:training/Adam/gradients/dropout_1/dropout/truediv_grad/SumSum>training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDivLtraining/Adam/gradients/dropout_1/dropout/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@dropout_1/dropout/truediv
±
>training/Adam/gradients/dropout_1/dropout/truediv_grad/ReshapeReshape:training/Adam/gradients/dropout_1/dropout/truediv_grad/Sum<training/Adam/gradients/dropout_1/dropout/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d
·
:training/Adam/gradients/dropout_1/dropout/truediv_grad/NegNegconcatenate_1/concat*
T0*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d
ž
@training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/dropout_1/dropout/truediv_grad/Negdropout_1/dropout/sub*
T0*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d

@training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDiv_1dropout_1/dropout/sub*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d*
T0

:training/Adam/gradients/dropout_1/dropout/truediv_grad/mulMul:training/Adam/gradients/dropout_1/dropout/mul_grad/Reshape@training/Adam/gradients/dropout_1/dropout/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@dropout_1/dropout/truediv*'
_output_shapes
:’’’’’’’’’d
½
<training/Adam/gradients/dropout_1/dropout/truediv_grad/Sum_1Sum:training/Adam/gradients/dropout_1/dropout/truediv_grad/mulNtraining/Adam/gradients/dropout_1/dropout/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*,
_class"
 loc:@dropout_1/dropout/truediv
¦
@training/Adam/gradients/dropout_1/dropout/truediv_grad/Reshape_1Reshape<training/Adam/gradients/dropout_1/dropout/truediv_grad/Sum_1>training/Adam/gradients/dropout_1/dropout/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@dropout_1/dropout/truediv*
_output_shapes
: 
”
6training/Adam/gradients/concatenate_1/concat_grad/RankConst*
value	B :*'
_class
loc:@concatenate_1/concat*
dtype0*
_output_shapes
: 
Ž
5training/Adam/gradients/concatenate_1/concat_grad/modFloorModconcatenate_1/concat/axis6training/Adam/gradients/concatenate_1/concat_grad/Rank*
_output_shapes
: *
T0*'
_class
loc:@concatenate_1/concat
±
7training/Adam/gradients/concatenate_1/concat_grad/ShapeShapereshape_1/Reshape*
out_type0*'
_class
loc:@concatenate_1/concat*
_output_shapes
:*
T0
Õ
8training/Adam/gradients/concatenate_1/concat_grad/ShapeNShapeNreshape_1/Reshapereshape_2/Reshape*
T0*
out_type0*'
_class
loc:@concatenate_1/concat*
N* 
_output_shapes
::
Ļ
>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffsetConcatOffset5training/Adam/gradients/concatenate_1/concat_grad/mod8training/Adam/gradients/concatenate_1/concat_grad/ShapeN:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1* 
_output_shapes
::*'
_class
loc:@concatenate_1/concat*
N
ā
7training/Adam/gradients/concatenate_1/concat_grad/SliceSlice>training/Adam/gradients/dropout_1/dropout/truediv_grad/Reshape>training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset8training/Adam/gradients/concatenate_1/concat_grad/ShapeN*
T0*
Index0*'
_class
loc:@concatenate_1/concat*'
_output_shapes
:’’’’’’’’’2
č
9training/Adam/gradients/concatenate_1/concat_grad/Slice_1Slice>training/Adam/gradients/dropout_1/dropout/truediv_grad/Reshape@training/Adam/gradients/concatenate_1/concat_grad/ConcatOffset:1:training/Adam/gradients/concatenate_1/concat_grad/ShapeN:1*'
_output_shapes
:’’’’’’’’’2*
T0*
Index0*'
_class
loc:@concatenate_1/concat
Į
4training/Adam/gradients/reshape_1/Reshape_grad/ShapeShape'embedding_1/embedding_lookup/Identity_1*
_output_shapes
:*
T0*
out_type0*$
_class
loc:@reshape_1/Reshape

6training/Adam/gradients/reshape_1/Reshape_grad/ReshapeReshape7training/Adam/gradients/concatenate_1/concat_grad/Slice4training/Adam/gradients/reshape_1/Reshape_grad/Shape*
T0*
Tshape0*$
_class
loc:@reshape_1/Reshape*+
_output_shapes
:’’’’’’’’’2
Į
4training/Adam/gradients/reshape_2/Reshape_grad/ShapeShape'embedding_2/embedding_lookup/Identity_1*
T0*
out_type0*$
_class
loc:@reshape_2/Reshape*
_output_shapes
:

6training/Adam/gradients/reshape_2/Reshape_grad/ReshapeReshape9training/Adam/gradients/concatenate_1/concat_grad/Slice_14training/Adam/gradients/reshape_2/Reshape_grad/Shape*+
_output_shapes
:’’’’’’’’’2*
T0*
Tshape0*$
_class
loc:@reshape_2/Reshape
»
?training/Adam/gradients/embedding_1/embedding_lookup_grad/ConstConst*
valueB"¾o  2   *)
_class
loc:@embedding_1/embeddings*
dtype0*
_output_shapes
:
“
>training/Adam/gradients/embedding_1/embedding_lookup_grad/SizeSizeembedding_1/Cast*
T0*
out_type0*)
_class
loc:@embedding_1/embeddings*
_output_shapes
: 
µ
Htraining/Adam/gradients/embedding_1/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *)
_class
loc:@embedding_1/embeddings*
dtype0*
_output_shapes
: 
ø
Dtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ExpandDims
ExpandDims>training/Adam/gradients/embedding_1/embedding_lookup_grad/SizeHtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0*)
_class
loc:@embedding_1/embeddings
Ā
Mtraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:*)
_class
loc:@embedding_1/embeddings
Ä
Otraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *)
_class
loc:@embedding_1/embeddings*
dtype0*
_output_shapes
:
Ä
Otraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*)
_class
loc:@embedding_1/embeddings*
dtype0*
_output_shapes
:
Ź
Gtraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_sliceStridedSlice?training/Adam/gradients/embedding_1/embedding_lookup_grad/ConstMtraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stackOtraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stack_1Otraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_slice/stack_2*
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*)
_class
loc:@embedding_1/embeddings*
shrink_axis_mask *
ellipsis_mask *

begin_mask 
²
Etraining/Adam/gradients/embedding_1/embedding_lookup_grad/concat/axisConst*
value	B : *)
_class
loc:@embedding_1/embeddings*
dtype0*
_output_shapes
: 

@training/Adam/gradients/embedding_1/embedding_lookup_grad/concatConcatV2Dtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ExpandDimsGtraining/Adam/gradients/embedding_1/embedding_lookup_grad/strided_sliceEtraining/Adam/gradients/embedding_1/embedding_lookup_grad/concat/axis*
_output_shapes
:*

Tidx0*
T0*)
_class
loc:@embedding_1/embeddings*
N
±
Atraining/Adam/gradients/embedding_1/embedding_lookup_grad/ReshapeReshape6training/Adam/gradients/reshape_1/Reshape_grad/Reshape@training/Adam/gradients/embedding_1/embedding_lookup_grad/concat*
T0*
Tshape0*)
_class
loc:@embedding_1/embeddings*'
_output_shapes
:’’’’’’’’’2

Ctraining/Adam/gradients/embedding_1/embedding_lookup_grad/Reshape_1Reshapeembedding_1/CastDtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ExpandDims*
Tshape0*)
_class
loc:@embedding_1/embeddings*#
_output_shapes
:’’’’’’’’’*
T0
»
?training/Adam/gradients/embedding_2/embedding_lookup_grad/ConstConst*
valueB",  2   *)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
:
“
>training/Adam/gradients/embedding_2/embedding_lookup_grad/SizeSizeembedding_2/Cast*
_output_shapes
: *
T0*
out_type0*)
_class
loc:@embedding_2/embeddings
µ
Htraining/Adam/gradients/embedding_2/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
: 
ø
Dtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ExpandDims
ExpandDims>training/Adam/gradients/embedding_2/embedding_lookup_grad/SizeHtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0*)
_class
loc:@embedding_2/embeddings*
_output_shapes
:
Ā
Mtraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stackConst*
valueB:*)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
:
Ä
Otraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
:
Ä
Otraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
:
Ź
Gtraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_sliceStridedSlice?training/Adam/gradients/embedding_2/embedding_lookup_grad/ConstMtraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stackOtraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stack_1Otraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0*)
_class
loc:@embedding_2/embeddings
²
Etraining/Adam/gradients/embedding_2/embedding_lookup_grad/concat/axisConst*
value	B : *)
_class
loc:@embedding_2/embeddings*
dtype0*
_output_shapes
: 

@training/Adam/gradients/embedding_2/embedding_lookup_grad/concatConcatV2Dtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ExpandDimsGtraining/Adam/gradients/embedding_2/embedding_lookup_grad/strided_sliceEtraining/Adam/gradients/embedding_2/embedding_lookup_grad/concat/axis*
T0*)
_class
loc:@embedding_2/embeddings*
N*
_output_shapes
:*

Tidx0
±
Atraining/Adam/gradients/embedding_2/embedding_lookup_grad/ReshapeReshape6training/Adam/gradients/reshape_2/Reshape_grad/Reshape@training/Adam/gradients/embedding_2/embedding_lookup_grad/concat*
T0*
Tshape0*)
_class
loc:@embedding_2/embeddings*'
_output_shapes
:’’’’’’’’’2

Ctraining/Adam/gradients/embedding_2/embedding_lookup_grad/Reshape_1Reshapeembedding_2/CastDtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ExpandDims*
T0*
Tshape0*)
_class
loc:@embedding_2/embeddings*#
_output_shapes
:’’’’’’’’’
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
i
training/Adam/ReadVariableOp_1ReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
r
!training/Adam/m_0/shape_as_tensorConst*
valueB"¾o  2   *
dtype0*
_output_shapes
:
\
training/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const* 
_output_shapes
:
¾ß2*
T0*

index_type0
½
training/Adam/m_0_1VarHandleOp*
shape:
¾ß2*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
	container 
w
4training/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 

training/Adam/m_0_1/AssignAssignVariableOptraining/Adam/m_0_1training/Adam/m_0*&
_class
loc:@training/Adam/m_0_1*
dtype0
„
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
dtype0* 
_output_shapes
:
¾ß2
r
!training/Adam/m_1/shape_as_tensorConst*
valueB",  2   *
dtype0*
_output_shapes
:
\
training/Adam/m_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/m_1Fill!training/Adam/m_1/shape_as_tensortraining/Adam/m_1/Const*
T0*

index_type0*
_output_shapes
:	¬2
¼
training/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
	container *
shape:	¬2
w
4training/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 

training/Adam/m_1_1/AssignAssignVariableOptraining/Adam/m_1_1training/Adam/m_1*
dtype0*&
_class
loc:@training/Adam/m_1_1
¤
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes
:	¬2*&
_class
loc:@training/Adam/m_1_1
r
!training/Adam/m_2/shape_as_tensorConst*
valueB"d   2   *
dtype0*
_output_shapes
:
\
training/Adam/m_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*

index_type0*
_output_shapes

:d2*
T0
»
training/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape
:d2
w
4training/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 

training/Adam/m_2_1/AssignAssignVariableOptraining/Adam/m_2_1training/Adam/m_2*&
_class
loc:@training/Adam/m_2_1*
dtype0
£
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes

:d2
^
training/Adam/m_3Const*
valueB2*    *
dtype0*
_output_shapes
:2
·
training/Adam/m_3_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
	container *
shape:2
w
4training/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 

training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*&
_class
loc:@training/Adam/m_3_1*
dtype0

'training/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
dtype0*
_output_shapes
:2
f
training/Adam/m_4Const*
valueB2*    *
dtype0*
_output_shapes

:2
»
training/Adam/m_4_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
	container *
shape
:2
w
4training/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 

training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
£
'training/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
dtype0*
_output_shapes

:2*&
_class
loc:@training/Adam/m_4_1
^
training/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
·
training/Adam/m_5_1VarHandleOp*&
_class
loc:@training/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1
w
4training/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 

training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*&
_class
loc:@training/Adam/m_5_1*
dtype0

'training/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
dtype0*
_output_shapes
:
r
!training/Adam/v_0/shape_as_tensorConst*
_output_shapes
:*
valueB"¾o  2   *
dtype0
\
training/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:
¾ß2
½
training/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
¾ß2
w
4training/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 

training/Adam/v_0_1/AssignAssignVariableOptraining/Adam/v_0_1training/Adam/v_0*&
_class
loc:@training/Adam/v_0_1*
dtype0
„
'training/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_0_1* 
_output_shapes
:
¾ß2*&
_class
loc:@training/Adam/v_0_1*
dtype0
r
!training/Adam/v_1/shape_as_tensorConst*
valueB",  2   *
dtype0*
_output_shapes
:
\
training/Adam/v_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_1Fill!training/Adam/v_1/shape_as_tensortraining/Adam/v_1/Const*
_output_shapes
:	¬2*
T0*

index_type0
¼
training/Adam/v_1_1VarHandleOp*$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:	¬2*
dtype0*
_output_shapes
: 
w
4training/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 

training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
¤
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes
:	¬2*&
_class
loc:@training/Adam/v_1_1
r
!training/Adam/v_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"d   2   
\
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
T0*

index_type0*
_output_shapes

:d2
»
training/Adam/v_2_1VarHandleOp*$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container *
shape
:d2*
dtype0*
_output_shapes
: 
w
4training/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 

training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*
dtype0*&
_class
loc:@training/Adam/v_2_1
£
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
dtype0*
_output_shapes

:d2
^
training/Adam/v_3Const*
valueB2*    *
dtype0*
_output_shapes
:2
·
training/Adam/v_3_1VarHandleOp*&
_class
loc:@training/Adam/v_3_1*
	container *
shape:2*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_3_1
w
4training/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 

training/Adam/v_3_1/AssignAssignVariableOptraining/Adam/v_3_1training/Adam/v_3*&
_class
loc:@training/Adam/v_3_1*
dtype0

'training/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
dtype0*
_output_shapes
:2
f
training/Adam/v_4Const*
valueB2*    *
dtype0*
_output_shapes

:2
»
training/Adam/v_4_1VarHandleOp*&
_class
loc:@training/Adam/v_4_1*
	container *
shape
:2*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_4_1
w
4training/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 

training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*&
_class
loc:@training/Adam/v_4_1*
dtype0
£
'training/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
dtype0*
_output_shapes

:2
^
training/Adam/v_5Const*
_output_shapes
:*
valueB*    *
dtype0
·
training/Adam/v_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
	container 
w
4training/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 

training/Adam/v_5_1/AssignAssignVariableOptraining/Adam/v_5_1training/Adam/v_5*&
_class
loc:@training/Adam/v_5_1*
dtype0

'training/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
_output_shapes
:*
T0*

index_type0
Ą
training/Adam/vhat_0_1VarHandleOp*)
_class
loc:@training/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_0_1
}
7training/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 

training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*
dtype0*)
_class
loc:@training/Adam/vhat_0_1
Ø
*training/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_1_1VarHandleOp*'
shared_nametraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 

training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
Ø
*training/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_1_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_1_1
n
$training/Adam/vhat_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ą
training/Adam/vhat_2_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1
}
7training/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 

training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
Ø
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_3/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_3_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1
}
7training/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 

training/Adam/vhat_3_1/AssignAssignVariableOptraining/Adam/vhat_3_1training/Adam/vhat_3*)
_class
loc:@training/Adam/vhat_3_1*
dtype0
Ø
*training/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_4_1VarHandleOp*'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 

training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
Ø
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_5_1VarHandleOp*'
shared_nametraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 

training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
Ø
*training/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/m_0_1*
dtype0* 
_output_shapes
:
¾ß2

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
¾ß2*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
q
'training/Adam/mul_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)training/Adam/mul_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)training/Adam/mul_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

!training/Adam/mul_2/strided_sliceStridedSlice?training/Adam/gradients/embedding_1/embedding_lookup_grad/Const'training/Adam/mul_2/strided_slice/stack)training/Adam/mul_2/strided_slice/stack_1)training/Adam/mul_2/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
„
training/Adam/mul_2/yUnsortedSegmentSumAtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ReshapeCtraining/Adam/gradients/embedding_1/embedding_lookup_grad/Reshape_1!training/Adam/mul_2/strided_slice*
Tnumsegments0*
Tindices0*
T0* 
_output_shapes
:
¾ß2
q
training/Adam/mul_2Multraining/Adam/sub_2training/Adam/mul_2/y*
T0* 
_output_shapes
:
¾ß2
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0* 
_output_shapes
:
¾ß2
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/v_0_1*
dtype0* 
_output_shapes
:
¾ß2

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
¾ß2*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
r
(training/Adam/Square/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
t
*training/Adam/Square/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*training/Adam/Square/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

"training/Adam/Square/strided_sliceStridedSlice?training/Adam/gradients/embedding_1/embedding_lookup_grad/Const(training/Adam/Square/strided_slice/stack*training/Adam/Square/strided_slice/stack_1*training/Adam/Square/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
§
training/Adam/Square/xUnsortedSegmentSumAtraining/Adam/gradients/embedding_1/embedding_lookup_grad/ReshapeCtraining/Adam/gradients/embedding_1/embedding_lookup_grad/Reshape_1"training/Adam/Square/strided_slice* 
_output_shapes
:
¾ß2*
Tnumsegments0*
Tindices0*
T0
a
training/Adam/SquareSquaretraining/Adam/Square/x*
T0* 
_output_shapes
:
¾ß2
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0* 
_output_shapes
:
¾ß2
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:
¾ß2
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0* 
_output_shapes
:
¾ß2
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0* 
_output_shapes
:
¾ß2

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3* 
_output_shapes
:
¾ß2*
T0
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0* 
_output_shapes
:
¾ß2
Z
training/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y* 
_output_shapes
:
¾ß2*
T0
w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3* 
_output_shapes
:
¾ß2*
T0
w
training/Adam/ReadVariableOp_6ReadVariableOpembedding_1/embeddings*
dtype0* 
_output_shapes
:
¾ß2
~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1* 
_output_shapes
:
¾ß2*
T0
i
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/m_0_1training/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/m_0_1^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:
¾ß2
k
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/v_0_1training/Adam/add_2*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/v_0_1!^training/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:
¾ß2
n
 training/Adam/AssignVariableOp_2AssignVariableOpembedding_1/embeddingstraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpembedding_1/embeddings!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:
¾ß2
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes
:	¬2

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:	¬2
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
q
'training/Adam/mul_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)training/Adam/mul_7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)training/Adam/mul_7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

!training/Adam/mul_7/strided_sliceStridedSlice?training/Adam/gradients/embedding_2/embedding_lookup_grad/Const'training/Adam/mul_7/strided_slice/stack)training/Adam/mul_7/strided_slice/stack_1)training/Adam/mul_7/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
¤
training/Adam/mul_7/yUnsortedSegmentSumAtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ReshapeCtraining/Adam/gradients/embedding_2/embedding_lookup_grad/Reshape_1!training/Adam/mul_7/strided_slice*
_output_shapes
:	¬2*
Tnumsegments0*
Tindices0*
T0
p
training/Adam/mul_7Multraining/Adam/sub_5training/Adam/mul_7/y*
T0*
_output_shapes
:	¬2
n
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:	¬2
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes
:	¬2

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
:	¬2
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
t
*training/Adam/Square_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,training/Adam/Square_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,training/Adam/Square_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

$training/Adam/Square_1/strided_sliceStridedSlice?training/Adam/gradients/embedding_2/embedding_lookup_grad/Const*training/Adam/Square_1/strided_slice/stack,training/Adam/Square_1/strided_slice/stack_1,training/Adam/Square_1/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ŗ
training/Adam/Square_1/xUnsortedSegmentSumAtraining/Adam/gradients/embedding_2/embedding_lookup_grad/ReshapeCtraining/Adam/gradients/embedding_2/embedding_lookup_grad/Reshape_1$training/Adam/Square_1/strided_slice*
_output_shapes
:	¬2*
Tnumsegments0*
Tindices0*
T0
d
training/Adam/Square_1Squaretraining/Adam/Square_1/x*
_output_shapes
:	¬2*
T0
q
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
:	¬2*
T0
n
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:	¬2
m
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:	¬2
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
_output_shapes
:	¬2*
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:	¬2
e
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:	¬2
Z
training/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:	¬2
w
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:	¬2
w
training/Adam/ReadVariableOp_14ReadVariableOpembedding_2/embeddings*
_output_shapes
:	¬2*
dtype0
~
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:	¬2
k
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/m_1_1training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/m_1_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:	¬2
k
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/v_1_1training/Adam/add_5*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/v_1_1!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:	¬2
n
 training/Adam/AssignVariableOp_5AssignVariableOpembedding_2/embeddingstraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpembedding_2/embeddings!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:	¬2
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes

:d2

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes

:d2
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d2
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:d2
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/v_2_1*
dtype0*
_output_shapes

:d2

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes

:d2
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0

training/Adam/Square_2Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:d2
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:d2*
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

:d2*
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:d2
Z
training/Adam/Const_7Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
_output_shapes

:d2*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes

:d2
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

:d2
Z
training/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes

:d2*
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

:d2*
T0
n
training/Adam/ReadVariableOp_22ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:d2
~
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes

:d2
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes

:d2
k
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/v_2_1training/Adam/add_8*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/v_2_1!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes

:d2
g
 training/Adam/AssignVariableOp_8AssignVariableOpdense_1/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpdense_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:d2
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/m_3_1*
dtype0*
_output_shapes
:2

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:2
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:2
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:2
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/v_3_1*
dtype0*
_output_shapes
:2

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:2
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:2
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:2
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:2
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:2*
T0
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
:2

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
_output_shapes
:2*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:2
[
training/Adam/add_12/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:2
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:2*
T0
h
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:2
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes
:2
l
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/m_3_1training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:2
m
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/v_3_1training/Adam/add_11*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:2
f
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:2
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
_output_shapes

:2*
dtype0

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
_output_shapes

:2*
T0
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:2
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:2
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
dtype0*
_output_shapes

:2

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:2
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:2
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes

:2*
T0
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:2
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:2*
T0
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:2

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes

:2
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes

:2*
T0
[
training/Adam/add_15/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes

:2*
T0
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
_output_shapes

:2*
T0
n
training/Adam/ReadVariableOp_38ReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:2
~
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
_output_shapes

:2*
T0
m
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/m_4_1training/Adam/add_13*
dtype0

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/m_4_1"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:2
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:2
h
!training/Adam/AssignVariableOp_14AssignVariableOpdense_2/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpdense_2/kernel"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:2
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
dtype0*
_output_shapes
:

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
dtype0*
_output_shapes
:

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

training/Adam/Square_5Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:*
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
_output_shapes
:*
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
_output_shapes
:*
T0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:
[
training/Adam/add_18/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:*
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
:
h
training/Adam/ReadVariableOp_46ReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/m_5_1training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/v_5_1training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
f
!training/Adam/AssignVariableOp_17AssignVariableOpdense_2/biastraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpdense_2/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
a
training/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
`
training/VarIsInitializedOp_1VarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
c
training/VarIsInitializedOp_2VarIsInitializedOpembedding_1/embeddings*
_output_shapes
: 
c
training/VarIsInitializedOp_3VarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
c
training/VarIsInitializedOp_4VarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
`
training/VarIsInitializedOp_5VarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
[
training/VarIsInitializedOp_6VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
c
training/VarIsInitializedOp_7VarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
`
training/VarIsInitializedOp_8VarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
c
training/VarIsInitializedOp_9VarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
d
training/VarIsInitializedOp_10VarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
a
training/VarIsInitializedOp_11VarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_12VarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
a
training/VarIsInitializedOp_13VarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
d
training/VarIsInitializedOp_14VarIsInitializedOpembedding_2/embeddings*
_output_shapes
: 
Y
training/VarIsInitializedOp_15VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
\
training/VarIsInitializedOp_16VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_17VarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
X
training/VarIsInitializedOp_18VarIsInitializedOp
Adam/decay*
_output_shapes
: 
a
training/VarIsInitializedOp_19VarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
`
training/VarIsInitializedOp_20VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
Z
training/VarIsInitializedOp_21VarIsInitializedOpdense_2/bias*
_output_shapes
: 
Y
training/VarIsInitializedOp_22VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
a
training/VarIsInitializedOp_23VarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
Z
training/VarIsInitializedOp_24VarIsInitializedOpdense_1/bias*
_output_shapes
: 
]
training/VarIsInitializedOp_25VarIsInitializedOpAdam/iterations*
_output_shapes
: 
a
training/VarIsInitializedOp_26VarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
a
training/VarIsInitializedOp_27VarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
a
training/VarIsInitializedOp_28VarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
Ą
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^embedding_1/embeddings/Assign^embedding_2/embeddings/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign
¢
training/group_depsNoOp^Mean^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9


group_depsNoOp^Mean

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_4730491f770a4f0088904a9705f5f918/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
“
save/SaveV2/tensor_namesConst"/device:CPU:0*Ų
valueĪBĖBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/learning_rateBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembedding_1/embeddingsBembedding_2/embeddingsBtraining/Adam/m_0_1Btraining/Adam/m_1_1Btraining/Adam/m_2_1Btraining/Adam/m_3_1Btraining/Adam/m_4_1Btraining/Adam/m_5_1Btraining/Adam/v_0_1Btraining/Adam/v_1_1Btraining/Adam/v_2_1Btraining/Adam/v_3_1Btraining/Adam/v_4_1Btraining/Adam/v_5_1Btraining/Adam/vhat_0_1Btraining/Adam/vhat_1_1Btraining/Adam/vhat_2_1Btraining/Adam/vhat_3_1Btraining/Adam/vhat_4_1Btraining/Adam/vhat_5_1*
dtype0*
_output_shapes
:
¬
save/SaveV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
¦

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp*embedding_2/embeddings/Read/ReadVariableOp'training/Adam/m_0_1/Read/ReadVariableOp'training/Adam/m_1_1/Read/ReadVariableOp'training/Adam/m_2_1/Read/ReadVariableOp'training/Adam/m_3_1/Read/ReadVariableOp'training/Adam/m_4_1/Read/ReadVariableOp'training/Adam/m_5_1/Read/ReadVariableOp'training/Adam/v_0_1/Read/ReadVariableOp'training/Adam/v_1_1/Read/ReadVariableOp'training/Adam/v_2_1/Read/ReadVariableOp'training/Adam/v_3_1/Read/ReadVariableOp'training/Adam/v_4_1/Read/ReadVariableOp'training/Adam/v_5_1/Read/ReadVariableOp*training/Adam/vhat_0_1/Read/ReadVariableOp*training/Adam/vhat_1_1/Read/ReadVariableOp*training/Adam/vhat_2_1/Read/ReadVariableOp*training/Adam/vhat_3_1/Read/ReadVariableOp*training/Adam/vhat_4_1/Read/ReadVariableOp*training/Adam/vhat_5_1/Read/ReadVariableOp"/device:CPU:0*+
dtypes!
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
·
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ų
valueĪBĖBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/learning_rateBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBembedding_1/embeddingsBembedding_2/embeddingsBtraining/Adam/m_0_1Btraining/Adam/m_1_1Btraining/Adam/m_2_1Btraining/Adam/m_3_1Btraining/Adam/m_4_1Btraining/Adam/m_5_1Btraining/Adam/v_0_1Btraining/Adam/v_1_1Btraining/Adam/v_2_1Btraining/Adam/v_3_1Btraining/Adam/v_4_1Btraining/Adam/v_5_1Btraining/Adam/vhat_0_1Btraining/Adam/vhat_1_1Btraining/Adam/vhat_2_1Btraining/Adam/vhat_3_1Btraining/Adam/vhat_4_1Btraining/Adam/vhat_5_1*
dtype0*
_output_shapes
:
Æ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
¬
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
]
save/AssignVariableOp_4AssignVariableOpAdam/learning_ratesave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense_1/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Y
save/AssignVariableOp_6AssignVariableOpdense_1/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense_2/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Y
save/AssignVariableOp_8AssignVariableOpdense_2/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
b
save/AssignVariableOp_9AssignVariableOpembedding_1/embeddingssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
c
save/AssignVariableOp_10AssignVariableOpembedding_2/embeddingssave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
`
save/AssignVariableOp_11AssignVariableOptraining/Adam/m_0_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
`
save/AssignVariableOp_12AssignVariableOptraining/Adam/m_1_1save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
`
save/AssignVariableOp_13AssignVariableOptraining/Adam/m_2_1save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
`
save/AssignVariableOp_14AssignVariableOptraining/Adam/m_3_1save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
`
save/AssignVariableOp_15AssignVariableOptraining/Adam/m_4_1save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
`
save/AssignVariableOp_16AssignVariableOptraining/Adam/m_5_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
_output_shapes
:*
T0
`
save/AssignVariableOp_17AssignVariableOptraining/Adam/v_0_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
`
save/AssignVariableOp_18AssignVariableOptraining/Adam/v_1_1save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
`
save/AssignVariableOp_19AssignVariableOptraining/Adam/v_2_1save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
`
save/AssignVariableOp_20AssignVariableOptraining/Adam/v_3_1save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
`
save/AssignVariableOp_21AssignVariableOptraining/Adam/v_4_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
`
save/AssignVariableOp_22AssignVariableOptraining/Adam/v_5_1save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
c
save/AssignVariableOp_23AssignVariableOptraining/Adam/vhat_0_1save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
c
save/AssignVariableOp_24AssignVariableOptraining/Adam/vhat_1_1save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
c
save/AssignVariableOp_25AssignVariableOptraining/Adam/vhat_2_1save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
c
save/AssignVariableOp_26AssignVariableOptraining/Adam/vhat_3_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
c
save/AssignVariableOp_27AssignVariableOptraining/Adam/vhat_4_1save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
c
save/AssignVariableOp_28AssignVariableOptraining/Adam/vhat_5_1save/Identity_29*
dtype0

save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variablesüł

embedding_1/embeddings:0embedding_1/embeddings/Assign,embedding_1/embeddings/Read/ReadVariableOp:0(2embedding_1/random_uniform:08

embedding_2/embeddings:0embedding_2/embeddings/Assign,embedding_2/embeddings/Read/ReadVariableOp:0(2embedding_2/random_uniform:08
m
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2dense_1/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2dense_1/Const:08
m
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2dense_2/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2dense_2/Const:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08

Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
w
training/Adam/m_0_1:0training/Adam/m_0_1/Assign)training/Adam/m_0_1/Read/ReadVariableOp:0(2training/Adam/m_0:08
w
training/Adam/m_1_1:0training/Adam/m_1_1/Assign)training/Adam/m_1_1/Read/ReadVariableOp:0(2training/Adam/m_1:08
w
training/Adam/m_2_1:0training/Adam/m_2_1/Assign)training/Adam/m_2_1/Read/ReadVariableOp:0(2training/Adam/m_2:08
w
training/Adam/m_3_1:0training/Adam/m_3_1/Assign)training/Adam/m_3_1/Read/ReadVariableOp:0(2training/Adam/m_3:08
w
training/Adam/m_4_1:0training/Adam/m_4_1/Assign)training/Adam/m_4_1/Read/ReadVariableOp:0(2training/Adam/m_4:08
w
training/Adam/m_5_1:0training/Adam/m_5_1/Assign)training/Adam/m_5_1/Read/ReadVariableOp:0(2training/Adam/m_5:08
w
training/Adam/v_0_1:0training/Adam/v_0_1/Assign)training/Adam/v_0_1/Read/ReadVariableOp:0(2training/Adam/v_0:08
w
training/Adam/v_1_1:0training/Adam/v_1_1/Assign)training/Adam/v_1_1/Read/ReadVariableOp:0(2training/Adam/v_1:08
w
training/Adam/v_2_1:0training/Adam/v_2_1/Assign)training/Adam/v_2_1/Read/ReadVariableOp:0(2training/Adam/v_2:08
w
training/Adam/v_3_1:0training/Adam/v_3_1/Assign)training/Adam/v_3_1/Read/ReadVariableOp:0(2training/Adam/v_3:08
w
training/Adam/v_4_1:0training/Adam/v_4_1/Assign)training/Adam/v_4_1/Read/ReadVariableOp:0(2training/Adam/v_4:08
w
training/Adam/v_5_1:0training/Adam/v_5_1/Assign)training/Adam/v_5_1/Read/ReadVariableOp:0(2training/Adam/v_5:08

training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08

training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08

training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08

training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08

training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08

training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08"
	variablesüł

embedding_1/embeddings:0embedding_1/embeddings/Assign,embedding_1/embeddings/Read/ReadVariableOp:0(2embedding_1/random_uniform:08

embedding_2/embeddings:0embedding_2/embeddings/Assign,embedding_2/embeddings/Read/ReadVariableOp:0(2embedding_2/random_uniform:08
m
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2dense_1/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2dense_1/Const:08
m
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2dense_2/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2dense_2/Const:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08

Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
w
training/Adam/m_0_1:0training/Adam/m_0_1/Assign)training/Adam/m_0_1/Read/ReadVariableOp:0(2training/Adam/m_0:08
w
training/Adam/m_1_1:0training/Adam/m_1_1/Assign)training/Adam/m_1_1/Read/ReadVariableOp:0(2training/Adam/m_1:08
w
training/Adam/m_2_1:0training/Adam/m_2_1/Assign)training/Adam/m_2_1/Read/ReadVariableOp:0(2training/Adam/m_2:08
w
training/Adam/m_3_1:0training/Adam/m_3_1/Assign)training/Adam/m_3_1/Read/ReadVariableOp:0(2training/Adam/m_3:08
w
training/Adam/m_4_1:0training/Adam/m_4_1/Assign)training/Adam/m_4_1/Read/ReadVariableOp:0(2training/Adam/m_4:08
w
training/Adam/m_5_1:0training/Adam/m_5_1/Assign)training/Adam/m_5_1/Read/ReadVariableOp:0(2training/Adam/m_5:08
w
training/Adam/v_0_1:0training/Adam/v_0_1/Assign)training/Adam/v_0_1/Read/ReadVariableOp:0(2training/Adam/v_0:08
w
training/Adam/v_1_1:0training/Adam/v_1_1/Assign)training/Adam/v_1_1/Read/ReadVariableOp:0(2training/Adam/v_1:08
w
training/Adam/v_2_1:0training/Adam/v_2_1/Assign)training/Adam/v_2_1/Read/ReadVariableOp:0(2training/Adam/v_2:08
w
training/Adam/v_3_1:0training/Adam/v_3_1/Assign)training/Adam/v_3_1/Read/ReadVariableOp:0(2training/Adam/v_3:08
w
training/Adam/v_4_1:0training/Adam/v_4_1/Assign)training/Adam/v_4_1/Read/ReadVariableOp:0(2training/Adam/v_4:08
w
training/Adam/v_5_1:0training/Adam/v_5_1/Assign)training/Adam/v_5_1/Read/ReadVariableOp:0(2training/Adam/v_5:08

training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08

training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08

training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08

training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08

training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08

training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08")
saved_model_main_op

legacy_init_op*æ
serving_default«
,
products 
	product:0’’’’’’’’’
&
users
user:0’’’’’’’’’7
predictions(
dense_2/BiasAdd:0’’’’’’’’’tensorflow/serving/predict