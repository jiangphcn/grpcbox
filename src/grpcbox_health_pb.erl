%% -*- coding: utf-8 -*-
%% @private
%% Automatically generated, do not edit
%% Generated by gpb_compile version 4.5.1
-module(grpcbox_health_pb).

-export([encode_msg/2, encode_msg/3]).
-export([decode_msg/2, decode_msg/3]).
-export([merge_msgs/3, merge_msgs/4]).
-export([verify_msg/2, verify_msg/3]).
-export([get_msg_defs/0]).
-export([get_msg_names/0]).
-export([get_group_names/0]).
-export([get_msg_or_group_names/0]).
-export([get_enum_names/0]).
-export([find_msg_def/1, fetch_msg_def/1]).
-export([find_enum_def/1, fetch_enum_def/1]).
-export([enum_symbol_by_value/2, enum_value_by_symbol/2]).
-export(['enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'/1, 'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'/1]).
-export([get_service_names/0]).
-export([get_service_def/1]).
-export([get_rpc_names/1]).
-export([find_rpc_def/2, fetch_rpc_def/2]).
-export([fqbin_to_service_name/1]).
-export([service_name_to_fqbin/1]).
-export([fqbins_to_service_and_rpc_name/2]).
-export([service_and_rpc_name_to_fqbins/2]).
-export([get_package_name/0]).
-export([uses_packages/0]).
-export([gpb_version_as_string/0, gpb_version_as_list/0]).


%% enumerated types
-type 'grpc.health.v1.HealthCheckResponse.ServingStatus'() :: 'UNKNOWN' | 'SERVING' | 'NOT_SERVING' | 'SERVICE_UNKNOWN'.
-export_type(['grpc.health.v1.HealthCheckResponse.ServingStatus'/0]).

%% message types
-type health_check_request() ::
      #{service                 => iodata()         % = 1
       }.

-type health_check_response() ::
      #{status                  => 'UNKNOWN' | 'SERVING' | 'NOT_SERVING' | 'SERVICE_UNKNOWN' | integer() % = 1, enum grpc.health.v1.HealthCheckResponse.ServingStatus
       }.

-export_type(['health_check_request'/0, 'health_check_response'/0]).

-spec encode_msg(health_check_request() | health_check_response(), atom()) -> binary().
encode_msg(Msg, MsgName) when is_atom(MsgName) ->
    encode_msg(Msg, MsgName, []).

-spec encode_msg(health_check_request() | health_check_response(), atom(), list()) -> binary().
encode_msg(Msg, MsgName, Opts) ->
    case proplists:get_bool(verify, Opts) of
      true -> verify_msg(Msg, MsgName, Opts);
      false -> ok
    end,
    TrUserData = proplists:get_value(user_data, Opts),
    case MsgName of
      health_check_request ->
	  encode_msg_health_check_request(id(Msg, TrUserData),
					  TrUserData);
      health_check_response ->
	  encode_msg_health_check_response(id(Msg, TrUserData),
					   TrUserData)
    end.


encode_msg_health_check_request(Msg, TrUserData) ->
    encode_msg_health_check_request(Msg, <<>>, TrUserData).


encode_msg_health_check_request(#{} = M, Bin,
				TrUserData) ->
    case M of
      #{service := F1} ->
	  begin
	    TrF1 = id(F1, TrUserData),
	    case is_empty_string(TrF1) of
	      true -> Bin;
	      false ->
		  e_type_string(TrF1, <<Bin/binary, 10>>, TrUserData)
	    end
	  end;
      _ -> Bin
    end.

encode_msg_health_check_response(Msg, TrUserData) ->
    encode_msg_health_check_response(Msg, <<>>, TrUserData).


encode_msg_health_check_response(#{} = M, Bin,
				 TrUserData) ->
    case M of
      #{status := F1} ->
	  begin
	    TrF1 = id(F1, TrUserData),
	    if TrF1 =:= 'UNKNOWN'; TrF1 =:= 0 -> Bin;
	       true ->
		   'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(TrF1,
									     <<Bin/binary,
									       8>>,
									     'MaybeTrUserData')
	    end
	  end;
      _ -> Bin
    end.

'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('UNKNOWN',
							  Bin, _TrUserData) ->
    <<Bin/binary, 0>>;
'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVING',
							  Bin, _TrUserData) ->
    <<Bin/binary, 1>>;
'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('NOT_SERVING',
							  Bin, _TrUserData) ->
    <<Bin/binary, 2>>;
'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVICE_UNKNOWN',
							  Bin, _TrUserData) ->
    <<Bin/binary, 3>>;
'e_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(V,
							  Bin, _TrUserData) ->
    e_varint(V, Bin).

-compile({nowarn_unused_function,e_type_sint/3}).
e_type_sint(Value, Bin, _TrUserData) when Value >= 0 ->
    e_varint(Value * 2, Bin);
e_type_sint(Value, Bin, _TrUserData) ->
    e_varint(Value * -2 - 1, Bin).

-compile({nowarn_unused_function,e_type_int32/3}).
e_type_int32(Value, Bin, _TrUserData)
    when 0 =< Value, Value =< 127 ->
    <<Bin/binary, Value>>;
e_type_int32(Value, Bin, _TrUserData) ->
    <<N:64/unsigned-native>> = <<Value:64/signed-native>>,
    e_varint(N, Bin).

-compile({nowarn_unused_function,e_type_int64/3}).
e_type_int64(Value, Bin, _TrUserData)
    when 0 =< Value, Value =< 127 ->
    <<Bin/binary, Value>>;
e_type_int64(Value, Bin, _TrUserData) ->
    <<N:64/unsigned-native>> = <<Value:64/signed-native>>,
    e_varint(N, Bin).

-compile({nowarn_unused_function,e_type_bool/3}).
e_type_bool(true, Bin, _TrUserData) ->
    <<Bin/binary, 1>>;
e_type_bool(false, Bin, _TrUserData) ->
    <<Bin/binary, 0>>;
e_type_bool(1, Bin, _TrUserData) -> <<Bin/binary, 1>>;
e_type_bool(0, Bin, _TrUserData) -> <<Bin/binary, 0>>.

-compile({nowarn_unused_function,e_type_string/3}).
e_type_string(S, Bin, _TrUserData) ->
    Utf8 = unicode:characters_to_binary(S),
    Bin2 = e_varint(byte_size(Utf8), Bin),
    <<Bin2/binary, Utf8/binary>>.

-compile({nowarn_unused_function,e_type_bytes/3}).
e_type_bytes(Bytes, Bin, _TrUserData)
    when is_binary(Bytes) ->
    Bin2 = e_varint(byte_size(Bytes), Bin),
    <<Bin2/binary, Bytes/binary>>;
e_type_bytes(Bytes, Bin, _TrUserData)
    when is_list(Bytes) ->
    BytesBin = iolist_to_binary(Bytes),
    Bin2 = e_varint(byte_size(BytesBin), Bin),
    <<Bin2/binary, BytesBin/binary>>.

-compile({nowarn_unused_function,e_type_fixed32/3}).
e_type_fixed32(Value, Bin, _TrUserData) ->
    <<Bin/binary, Value:32/little>>.

-compile({nowarn_unused_function,e_type_sfixed32/3}).
e_type_sfixed32(Value, Bin, _TrUserData) ->
    <<Bin/binary, Value:32/little-signed>>.

-compile({nowarn_unused_function,e_type_fixed64/3}).
e_type_fixed64(Value, Bin, _TrUserData) ->
    <<Bin/binary, Value:64/little>>.

-compile({nowarn_unused_function,e_type_sfixed64/3}).
e_type_sfixed64(Value, Bin, _TrUserData) ->
    <<Bin/binary, Value:64/little-signed>>.

-compile({nowarn_unused_function,e_type_float/3}).
e_type_float(V, Bin, _) when is_number(V) ->
    <<Bin/binary, V:32/little-float>>;
e_type_float(infinity, Bin, _) ->
    <<Bin/binary, 0:16, 128, 127>>;
e_type_float('-infinity', Bin, _) ->
    <<Bin/binary, 0:16, 128, 255>>;
e_type_float(nan, Bin, _) ->
    <<Bin/binary, 0:16, 192, 127>>.

-compile({nowarn_unused_function,e_type_double/3}).
e_type_double(V, Bin, _) when is_number(V) ->
    <<Bin/binary, V:64/little-float>>;
e_type_double(infinity, Bin, _) ->
    <<Bin/binary, 0:48, 240, 127>>;
e_type_double('-infinity', Bin, _) ->
    <<Bin/binary, 0:48, 240, 255>>;
e_type_double(nan, Bin, _) ->
    <<Bin/binary, 0:48, 248, 127>>.

-compile({nowarn_unused_function,e_varint/3}).
e_varint(N, Bin, _TrUserData) -> e_varint(N, Bin).

-compile({nowarn_unused_function,e_varint/2}).
e_varint(N, Bin) when N =< 127 -> <<Bin/binary, N>>;
e_varint(N, Bin) ->
    Bin2 = <<Bin/binary, (N band 127 bor 128)>>,
    e_varint(N bsr 7, Bin2).

is_empty_string("") -> true;
is_empty_string(<<>>) -> true;
is_empty_string(L) when is_list(L) ->
    not string_has_chars(L);
is_empty_string(B) when is_binary(B) -> false.

string_has_chars([C | _]) when is_integer(C) -> true;
string_has_chars([H | T]) ->
    case string_has_chars(H) of
      true -> true;
      false -> string_has_chars(T)
    end;
string_has_chars(B)
    when is_binary(B), byte_size(B) =/= 0 ->
    true;
string_has_chars(C) when is_integer(C) -> true;
string_has_chars(<<>>) -> false;
string_has_chars([]) -> false.


decode_msg(Bin, MsgName) when is_binary(Bin) ->
    decode_msg(Bin, MsgName, []).

decode_msg(Bin, MsgName, Opts) when is_binary(Bin) ->
    TrUserData = proplists:get_value(user_data, Opts),
    decode_msg_1_catch(Bin, MsgName, TrUserData).

-ifdef('OTP_RELEASE').
decode_msg_1_catch(Bin, MsgName, TrUserData) ->
    try decode_msg_2_doit(MsgName, Bin, TrUserData)
    catch Class:Reason:StackTrace -> error({gpb_error,{decoding_failure, {Bin, MsgName, {Class, Reason, StackTrace}}}})
    end.
-else.
decode_msg_1_catch(Bin, MsgName, TrUserData) ->
    try decode_msg_2_doit(MsgName, Bin, TrUserData)
    catch Class:Reason ->
        StackTrace = erlang:get_stacktrace(),
        error({gpb_error,{decoding_failure, {Bin, MsgName, {Class, Reason, StackTrace}}}})
    end.
-endif.

decode_msg_2_doit(health_check_request, Bin,
		  TrUserData) ->
    id(decode_msg_health_check_request(Bin, TrUserData),
       TrUserData);
decode_msg_2_doit(health_check_response, Bin,
		  TrUserData) ->
    id(decode_msg_health_check_response(Bin, TrUserData),
       TrUserData).



decode_msg_health_check_request(Bin, TrUserData) ->
    dfp_read_field_def_health_check_request(Bin, 0, 0,
					    id(<<>>, TrUserData), TrUserData).

dfp_read_field_def_health_check_request(<<10,
					  Rest/binary>>,
					Z1, Z2, F@_1, TrUserData) ->
    d_field_health_check_request_service(Rest, Z1, Z2, F@_1,
					 TrUserData);
dfp_read_field_def_health_check_request(<<>>, 0, 0,
					F@_1, _) ->
    #{service => F@_1};
dfp_read_field_def_health_check_request(Other, Z1, Z2,
					F@_1, TrUserData) ->
    dg_read_field_def_health_check_request(Other, Z1, Z2,
					   F@_1, TrUserData).

dg_read_field_def_health_check_request(<<1:1, X:7,
					 Rest/binary>>,
				       N, Acc, F@_1, TrUserData)
    when N < 32 - 7 ->
    dg_read_field_def_health_check_request(Rest, N + 7,
					   X bsl N + Acc, F@_1, TrUserData);
dg_read_field_def_health_check_request(<<0:1, X:7,
					 Rest/binary>>,
				       N, Acc, F@_1, TrUserData) ->
    Key = X bsl N + Acc,
    case Key of
      10 ->
	  d_field_health_check_request_service(Rest, 0, 0, F@_1,
					       TrUserData);
      _ ->
	  case Key band 7 of
	    0 ->
		skip_varint_health_check_request(Rest, 0, 0, F@_1,
						 TrUserData);
	    1 ->
		skip_64_health_check_request(Rest, 0, 0, F@_1,
					     TrUserData);
	    2 ->
		skip_length_delimited_health_check_request(Rest, 0, 0,
							   F@_1, TrUserData);
	    3 ->
		skip_group_health_check_request(Rest, Key bsr 3, 0,
						F@_1, TrUserData);
	    5 ->
		skip_32_health_check_request(Rest, 0, 0, F@_1,
					     TrUserData)
	  end
    end;
dg_read_field_def_health_check_request(<<>>, 0, 0, F@_1,
				       _) ->
    #{service => F@_1}.

d_field_health_check_request_service(<<1:1, X:7,
				       Rest/binary>>,
				     N, Acc, F@_1, TrUserData)
    when N < 57 ->
    d_field_health_check_request_service(Rest, N + 7,
					 X bsl N + Acc, F@_1, TrUserData);
d_field_health_check_request_service(<<0:1, X:7,
				       Rest/binary>>,
				     N, Acc, _, TrUserData) ->
    {NewFValue, RestF} = begin
			   Len = X bsl N + Acc,
			   <<Bytes:Len/binary, Rest2/binary>> = Rest,
			   {id(binary:copy(Bytes), TrUserData), Rest2}
			 end,
    dfp_read_field_def_health_check_request(RestF, 0, 0,
					    NewFValue, TrUserData).

skip_varint_health_check_request(<<1:1, _:7,
				   Rest/binary>>,
				 Z1, Z2, F@_1, TrUserData) ->
    skip_varint_health_check_request(Rest, Z1, Z2, F@_1,
				     TrUserData);
skip_varint_health_check_request(<<0:1, _:7,
				   Rest/binary>>,
				 Z1, Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_request(Rest, Z1, Z2,
					    F@_1, TrUserData).

skip_length_delimited_health_check_request(<<1:1, X:7,
					     Rest/binary>>,
					   N, Acc, F@_1, TrUserData)
    when N < 57 ->
    skip_length_delimited_health_check_request(Rest, N + 7,
					       X bsl N + Acc, F@_1, TrUserData);
skip_length_delimited_health_check_request(<<0:1, X:7,
					     Rest/binary>>,
					   N, Acc, F@_1, TrUserData) ->
    Length = X bsl N + Acc,
    <<_:Length/binary, Rest2/binary>> = Rest,
    dfp_read_field_def_health_check_request(Rest2, 0, 0,
					    F@_1, TrUserData).

skip_group_health_check_request(Bin, FNum, Z2, F@_1,
				TrUserData) ->
    {_, Rest} = read_group(Bin, FNum),
    dfp_read_field_def_health_check_request(Rest, 0, Z2,
					    F@_1, TrUserData).

skip_32_health_check_request(<<_:32, Rest/binary>>, Z1,
			     Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_request(Rest, Z1, Z2,
					    F@_1, TrUserData).

skip_64_health_check_request(<<_:64, Rest/binary>>, Z1,
			     Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_request(Rest, Z1, Z2,
					    F@_1, TrUserData).

decode_msg_health_check_response(Bin, TrUserData) ->
    dfp_read_field_def_health_check_response(Bin, 0, 0,
					     id('UNKNOWN', TrUserData),
					     TrUserData).

dfp_read_field_def_health_check_response(<<8,
					   Rest/binary>>,
					 Z1, Z2, F@_1, TrUserData) ->
    d_field_health_check_response_status(Rest, Z1, Z2, F@_1,
					 TrUserData);
dfp_read_field_def_health_check_response(<<>>, 0, 0,
					 F@_1, _) ->
    #{status => F@_1};
dfp_read_field_def_health_check_response(Other, Z1, Z2,
					 F@_1, TrUserData) ->
    dg_read_field_def_health_check_response(Other, Z1, Z2,
					    F@_1, TrUserData).

dg_read_field_def_health_check_response(<<1:1, X:7,
					  Rest/binary>>,
					N, Acc, F@_1, TrUserData)
    when N < 32 - 7 ->
    dg_read_field_def_health_check_response(Rest, N + 7,
					    X bsl N + Acc, F@_1, TrUserData);
dg_read_field_def_health_check_response(<<0:1, X:7,
					  Rest/binary>>,
					N, Acc, F@_1, TrUserData) ->
    Key = X bsl N + Acc,
    case Key of
      8 ->
	  d_field_health_check_response_status(Rest, 0, 0, F@_1,
					       TrUserData);
      _ ->
	  case Key band 7 of
	    0 ->
		skip_varint_health_check_response(Rest, 0, 0, F@_1,
						  TrUserData);
	    1 ->
		skip_64_health_check_response(Rest, 0, 0, F@_1,
					      TrUserData);
	    2 ->
		skip_length_delimited_health_check_response(Rest, 0, 0,
							    F@_1, TrUserData);
	    3 ->
		skip_group_health_check_response(Rest, Key bsr 3, 0,
						 F@_1, TrUserData);
	    5 ->
		skip_32_health_check_response(Rest, 0, 0, F@_1,
					      TrUserData)
	  end
    end;
dg_read_field_def_health_check_response(<<>>, 0, 0,
					F@_1, _) ->
    #{status => F@_1}.

d_field_health_check_response_status(<<1:1, X:7,
				       Rest/binary>>,
				     N, Acc, F@_1, TrUserData)
    when N < 57 ->
    d_field_health_check_response_status(Rest, N + 7,
					 X bsl N + Acc, F@_1, TrUserData);
d_field_health_check_response_status(<<0:1, X:7,
				       Rest/binary>>,
				     N, Acc, _, TrUserData) ->
    {NewFValue, RestF} =
	{id('d_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(begin
									<<Res:32/signed-native>> =
									    <<(X
										 bsl
										 N
										 +
										 Acc):32/unsigned-native>>,
									id(Res,
									   TrUserData)
								      end),
	    TrUserData),
	 Rest},
    dfp_read_field_def_health_check_response(RestF, 0, 0,
					     NewFValue, TrUserData).

skip_varint_health_check_response(<<1:1, _:7,
				    Rest/binary>>,
				  Z1, Z2, F@_1, TrUserData) ->
    skip_varint_health_check_response(Rest, Z1, Z2, F@_1,
				      TrUserData);
skip_varint_health_check_response(<<0:1, _:7,
				    Rest/binary>>,
				  Z1, Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_response(Rest, Z1, Z2,
					     F@_1, TrUserData).

skip_length_delimited_health_check_response(<<1:1, X:7,
					      Rest/binary>>,
					    N, Acc, F@_1, TrUserData)
    when N < 57 ->
    skip_length_delimited_health_check_response(Rest, N + 7,
						X bsl N + Acc, F@_1,
						TrUserData);
skip_length_delimited_health_check_response(<<0:1, X:7,
					      Rest/binary>>,
					    N, Acc, F@_1, TrUserData) ->
    Length = X bsl N + Acc,
    <<_:Length/binary, Rest2/binary>> = Rest,
    dfp_read_field_def_health_check_response(Rest2, 0, 0,
					     F@_1, TrUserData).

skip_group_health_check_response(Bin, FNum, Z2, F@_1,
				 TrUserData) ->
    {_, Rest} = read_group(Bin, FNum),
    dfp_read_field_def_health_check_response(Rest, 0, Z2,
					     F@_1, TrUserData).

skip_32_health_check_response(<<_:32, Rest/binary>>, Z1,
			      Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_response(Rest, Z1, Z2,
					     F@_1, TrUserData).

skip_64_health_check_response(<<_:64, Rest/binary>>, Z1,
			      Z2, F@_1, TrUserData) ->
    dfp_read_field_def_health_check_response(Rest, Z1, Z2,
					     F@_1, TrUserData).

'd_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(0) ->
    'UNKNOWN';
'd_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(1) ->
    'SERVING';
'd_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(2) ->
    'NOT_SERVING';
'd_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(3) ->
    'SERVICE_UNKNOWN';
'd_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(V) ->
    V.

read_group(Bin, FieldNum) ->
    {NumBytes, EndTagLen} = read_gr_b(Bin, 0, 0, 0, 0, FieldNum),
    <<Group:NumBytes/binary, _:EndTagLen/binary, Rest/binary>> = Bin,
    {Group, Rest}.

%% Like skipping over fields, but record the total length,
%% Each field is <(FieldNum bsl 3) bor FieldType> ++ <FieldValue>
%% Record the length because varints may be non-optimally encoded.
%%
%% Groups can be nested, but assume the same FieldNum cannot be nested
%% because group field numbers are shared with the rest of the fields
%% numbers. Thus we can search just for an group-end with the same
%% field number.
%%
%% (The only time the same group field number could occur would
%% be in a nested sub message, but then it would be inside a
%% length-delimited entry, which we skip-read by length.)
read_gr_b(<<1:1, X:7, Tl/binary>>, N, Acc, NumBytes, TagLen, FieldNum)
  when N < (32-7) ->
    read_gr_b(Tl, N+7, X bsl N + Acc, NumBytes, TagLen+1, FieldNum);
read_gr_b(<<0:1, X:7, Tl/binary>>, N, Acc, NumBytes, TagLen,
          FieldNum) ->
    Key = X bsl N + Acc,
    TagLen1 = TagLen + 1,
    case {Key bsr 3, Key band 7} of
        {FieldNum, 4} -> % 4 = group_end
            {NumBytes, TagLen1};
        {_, 0} -> % 0 = varint
            read_gr_vi(Tl, 0, NumBytes + TagLen1, FieldNum);
        {_, 1} -> % 1 = bits64
            <<_:64, Tl2/binary>> = Tl,
            read_gr_b(Tl2, 0, 0, NumBytes + TagLen1 + 8, 0, FieldNum);
        {_, 2} -> % 2 = length_delimited
            read_gr_ld(Tl, 0, 0, NumBytes + TagLen1, FieldNum);
        {_, 3} -> % 3 = group_start
            read_gr_b(Tl, 0, 0, NumBytes + TagLen1, 0, FieldNum);
        {_, 4} -> % 4 = group_end
            read_gr_b(Tl, 0, 0, NumBytes + TagLen1, 0, FieldNum);
        {_, 5} -> % 5 = bits32
            <<_:32, Tl2/binary>> = Tl,
            read_gr_b(Tl2, 0, 0, NumBytes + TagLen1 + 4, 0, FieldNum)
    end.

read_gr_vi(<<1:1, _:7, Tl/binary>>, N, NumBytes, FieldNum)
  when N < (64-7) ->
    read_gr_vi(Tl, N+7, NumBytes+1, FieldNum);
read_gr_vi(<<0:1, _:7, Tl/binary>>, _, NumBytes, FieldNum) ->
    read_gr_b(Tl, 0, 0, NumBytes+1, 0, FieldNum).

read_gr_ld(<<1:1, X:7, Tl/binary>>, N, Acc, NumBytes, FieldNum)
  when N < (64-7) ->
    read_gr_ld(Tl, N+7, X bsl N + Acc, NumBytes+1, FieldNum);
read_gr_ld(<<0:1, X:7, Tl/binary>>, N, Acc, NumBytes, FieldNum) ->
    Len = X bsl N + Acc,
    NumBytes1 = NumBytes + 1,
    <<_:Len/binary, Tl2/binary>> = Tl,
    read_gr_b(Tl2, 0, 0, NumBytes1 + Len, 0, FieldNum).

merge_msgs(Prev, New, MsgName) when is_atom(MsgName) ->
    merge_msgs(Prev, New, MsgName, []).

merge_msgs(Prev, New, MsgName, Opts) ->
    TrUserData = proplists:get_value(user_data, Opts),
    case MsgName of
      health_check_request ->
	  merge_msg_health_check_request(Prev, New, TrUserData);
      health_check_response ->
	  merge_msg_health_check_response(Prev, New, TrUserData)
    end.

-compile({nowarn_unused_function,merge_msg_health_check_request/3}).
merge_msg_health_check_request(PMsg, NMsg, _) ->
    S1 = #{},
    case {PMsg, NMsg} of
      {_, #{service := NFservice}} ->
	  S1#{service => NFservice};
      {#{service := PFservice}, _} ->
	  S1#{service => PFservice};
      _ -> S1
    end.

-compile({nowarn_unused_function,merge_msg_health_check_response/3}).
merge_msg_health_check_response(PMsg, NMsg, _) ->
    S1 = #{},
    case {PMsg, NMsg} of
      {_, #{status := NFstatus}} -> S1#{status => NFstatus};
      {#{status := PFstatus}, _} -> S1#{status => PFstatus};
      _ -> S1
    end.


verify_msg(Msg, MsgName) when is_atom(MsgName) ->
    verify_msg(Msg, MsgName, []).

verify_msg(Msg, MsgName, Opts) ->
    TrUserData = proplists:get_value(user_data, Opts),
    case MsgName of
      health_check_request ->
	  v_msg_health_check_request(Msg, [MsgName], TrUserData);
      health_check_response ->
	  v_msg_health_check_response(Msg, [MsgName], TrUserData);
      _ -> mk_type_error(not_a_known_message, Msg, [])
    end.


-compile({nowarn_unused_function,v_msg_health_check_request/3}).
-dialyzer({nowarn_function,v_msg_health_check_request/3}).
v_msg_health_check_request(#{} = M, Path, TrUserData) ->
    case M of
      #{service := F1} ->
	  v_type_string(F1, [service | Path], TrUserData);
      _ -> ok
    end,
    lists:foreach(fun (service) -> ok;
		      (OtherKey) ->
			  mk_type_error({extraneous_key, OtherKey}, M, Path)
		  end,
		  maps:keys(M)),
    ok;
v_msg_health_check_request(M, Path, _TrUserData)
    when is_map(M) ->
    mk_type_error({missing_fields, [] -- maps:keys(M),
		   health_check_request},
		  M, Path);
v_msg_health_check_request(X, Path, _TrUserData) ->
    mk_type_error({expected_msg, health_check_request}, X,
		  Path).

-compile({nowarn_unused_function,v_msg_health_check_response/3}).
-dialyzer({nowarn_function,v_msg_health_check_response/3}).
v_msg_health_check_response(#{} = M, Path,
			    TrUserData) ->
    case M of
      #{status := F1} ->
	  'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(F1,
								    [status
								     | Path],
								    TrUserData);
      _ -> ok
    end,
    lists:foreach(fun (status) -> ok;
		      (OtherKey) ->
			  mk_type_error({extraneous_key, OtherKey}, M, Path)
		  end,
		  maps:keys(M)),
    ok;
v_msg_health_check_response(M, Path, _TrUserData)
    when is_map(M) ->
    mk_type_error({missing_fields, [] -- maps:keys(M),
		   health_check_response},
		  M, Path);
v_msg_health_check_response(X, Path, _TrUserData) ->
    mk_type_error({expected_msg, health_check_response}, X,
		  Path).

-compile({nowarn_unused_function,'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'/3}).
-dialyzer({nowarn_function,'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'/3}).
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('UNKNOWN',
							  _Path, _TrUserData) ->
    ok;
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVING',
							  _Path, _TrUserData) ->
    ok;
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('NOT_SERVING',
							  _Path, _TrUserData) ->
    ok;
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVICE_UNKNOWN',
							  _Path, _TrUserData) ->
    ok;
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(V,
							  Path, TrUserData)
    when is_integer(V) ->
    v_type_sint32(V, Path, TrUserData);
'v_enum_grpc.health.v1.HealthCheckResponse.ServingStatus'(X,
							  Path, _TrUserData) ->
    mk_type_error({invalid_enum,
		   'grpc.health.v1.HealthCheckResponse.ServingStatus'},
		  X, Path).

-compile({nowarn_unused_function,v_type_sint32/3}).
-dialyzer({nowarn_function,v_type_sint32/3}).
v_type_sint32(N, _Path, _TrUserData)
    when -2147483648 =< N, N =< 2147483647 ->
    ok;
v_type_sint32(N, Path, _TrUserData)
    when is_integer(N) ->
    mk_type_error({value_out_of_range, sint32, signed, 32},
		  N, Path);
v_type_sint32(X, Path, _TrUserData) ->
    mk_type_error({bad_integer, sint32, signed, 32}, X,
		  Path).

-compile({nowarn_unused_function,v_type_string/3}).
-dialyzer({nowarn_function,v_type_string/3}).
v_type_string(S, Path, _TrUserData)
    when is_list(S); is_binary(S) ->
    try unicode:characters_to_binary(S) of
      B when is_binary(B) -> ok;
      {error, _, _} ->
	  mk_type_error(bad_unicode_string, S, Path)
    catch
      error:badarg ->
	  mk_type_error(bad_unicode_string, S, Path)
    end;
v_type_string(X, Path, _TrUserData) ->
    mk_type_error(bad_unicode_string, X, Path).

-compile({nowarn_unused_function,mk_type_error/3}).
-spec mk_type_error(_, _, list()) -> no_return().
mk_type_error(Error, ValueSeen, Path) ->
    Path2 = prettify_path(Path),
    erlang:error({gpb_type_error,
		  {Error, [{value, ValueSeen}, {path, Path2}]}}).


-compile({nowarn_unused_function,prettify_path/1}).
-dialyzer({nowarn_function,prettify_path/1}).
prettify_path([]) -> top_level;
prettify_path(PathR) ->
    list_to_atom(lists:append(lists:join(".",
					 lists:map(fun atom_to_list/1,
						   lists:reverse(PathR))))).


-compile({nowarn_unused_function,id/2}).
-compile({inline,id/2}).
id(X, _TrUserData) -> X.

-compile({nowarn_unused_function,v_ok/3}).
-compile({inline,v_ok/3}).
v_ok(_Value, _Path, _TrUserData) -> ok.

-compile({nowarn_unused_function,m_overwrite/3}).
-compile({inline,m_overwrite/3}).
m_overwrite(_Prev, New, _TrUserData) -> New.

-compile({nowarn_unused_function,cons/3}).
-compile({inline,cons/3}).
cons(Elem, Acc, _TrUserData) -> [Elem | Acc].

-compile({nowarn_unused_function,lists_reverse/2}).
-compile({inline,lists_reverse/2}).
'lists_reverse'(L, _TrUserData) -> lists:reverse(L).
-compile({nowarn_unused_function,'erlang_++'/3}).
-compile({inline,'erlang_++'/3}).
'erlang_++'(A, B, _TrUserData) -> A ++ B.

get_msg_defs() ->
    [{{enum,
       'grpc.health.v1.HealthCheckResponse.ServingStatus'},
      [{'UNKNOWN', 0}, {'SERVING', 1}, {'NOT_SERVING', 2},
       {'SERVICE_UNKNOWN', 3}]},
     {{msg, health_check_request},
      [#{name => service, fnum => 1, rnum => 2,
	 type => string, occurrence => optional, opts => []}]},
     {{msg, health_check_response},
      [#{name => status, fnum => 1, rnum => 2,
	 type =>
	     {enum,
	      'grpc.health.v1.HealthCheckResponse.ServingStatus'},
	 occurrence => optional, opts => []}]}].


get_msg_names() ->
    [health_check_request, health_check_response].


get_group_names() -> [].


get_msg_or_group_names() ->
    [health_check_request, health_check_response].


get_enum_names() ->
    ['grpc.health.v1.HealthCheckResponse.ServingStatus'].


fetch_msg_def(MsgName) ->
    case find_msg_def(MsgName) of
      Fs when is_list(Fs) -> Fs;
      error -> erlang:error({no_such_msg, MsgName})
    end.


fetch_enum_def(EnumName) ->
    case find_enum_def(EnumName) of
      Es when is_list(Es) -> Es;
      error -> erlang:error({no_such_enum, EnumName})
    end.


find_msg_def(health_check_request) ->
    [#{name => service, fnum => 1, rnum => 2,
       type => string, occurrence => optional, opts => []}];
find_msg_def(health_check_response) ->
    [#{name => status, fnum => 1, rnum => 2,
       type =>
	   {enum,
	    'grpc.health.v1.HealthCheckResponse.ServingStatus'},
       occurrence => optional, opts => []}];
find_msg_def(_) -> error.


find_enum_def('grpc.health.v1.HealthCheckResponse.ServingStatus') ->
    [{'UNKNOWN', 0}, {'SERVING', 1}, {'NOT_SERVING', 2},
     {'SERVICE_UNKNOWN', 3}];
find_enum_def(_) -> error.


enum_symbol_by_value('grpc.health.v1.HealthCheckResponse.ServingStatus',
		     Value) ->
    'enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'(Value).


enum_value_by_symbol('grpc.health.v1.HealthCheckResponse.ServingStatus',
		     Sym) ->
    'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'(Sym).


'enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'(0) ->
    'UNKNOWN';
'enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'(1) ->
    'SERVING';
'enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'(2) ->
    'NOT_SERVING';
'enum_symbol_by_value_grpc.health.v1.HealthCheckResponse.ServingStatus'(3) ->
    'SERVICE_UNKNOWN'.


'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'('UNKNOWN') ->
    0;
'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVING') ->
    1;
'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'('NOT_SERVING') ->
    2;
'enum_value_by_symbol_grpc.health.v1.HealthCheckResponse.ServingStatus'('SERVICE_UNKNOWN') ->
    3.


get_service_names() -> ['grpc.health.v1.Health'].


get_service_def('grpc.health.v1.Health') ->
    {{service, 'grpc.health.v1.Health'},
     [#{name => 'Check', input => health_check_request,
	output => health_check_response, input_stream => false,
	output_stream => false, opts => []},
      #{name => 'Watch', input => health_check_request,
	output => health_check_response, input_stream => false,
	output_stream => true, opts => []}]};
get_service_def(_) -> error.


get_rpc_names('grpc.health.v1.Health') ->
    ['Check', 'Watch'];
get_rpc_names(_) -> error.


find_rpc_def('grpc.health.v1.Health', RpcName) ->
    'find_rpc_def_grpc.health.v1.Health'(RpcName);
find_rpc_def(_, _) -> error.


'find_rpc_def_grpc.health.v1.Health'('Check') ->
    #{name => 'Check', input => health_check_request,
      output => health_check_response, input_stream => false,
      output_stream => false, opts => []};
'find_rpc_def_grpc.health.v1.Health'('Watch') ->
    #{name => 'Watch', input => health_check_request,
      output => health_check_response, input_stream => false,
      output_stream => true, opts => []};
'find_rpc_def_grpc.health.v1.Health'(_) -> error.


fetch_rpc_def(ServiceName, RpcName) ->
    case find_rpc_def(ServiceName, RpcName) of
      Def when is_map(Def) -> Def;
      error ->
	  erlang:error({no_such_rpc, ServiceName, RpcName})
    end.


%% Convert a a fully qualified (ie with package name) service name
%% as a binary to a service name as an atom.
fqbin_to_service_name(<<"grpc.health.v1.Health">>) ->
    'grpc.health.v1.Health';
fqbin_to_service_name(X) ->
    error({gpb_error, {badservice, X}}).


%% Convert a service name as an atom to a fully qualified
%% (ie with package name) name as a binary.
service_name_to_fqbin('grpc.health.v1.Health') ->
    <<"grpc.health.v1.Health">>;
service_name_to_fqbin(X) ->
    error({gpb_error, {badservice, X}}).


%% Convert a a fully qualified (ie with package name) service name
%% and an rpc name, both as binaries to a service name and an rpc
%% name, as atoms.
fqbins_to_service_and_rpc_name(<<"grpc.health.v1.Health">>, <<"Check">>) ->
    {'grpc.health.v1.Health', 'Check'};
fqbins_to_service_and_rpc_name(<<"grpc.health.v1.Health">>, <<"Watch">>) ->
    {'grpc.health.v1.Health', 'Watch'};
fqbins_to_service_and_rpc_name(S, R) ->
    error({gpb_error, {badservice_or_rpc, {S, R}}}).


%% Convert a service name and an rpc name, both as atoms,
%% to a fully qualified (ie with package name) service name and
%% an rpc name as binaries.
service_and_rpc_name_to_fqbins('grpc.health.v1.Health',
			       'Check') ->
    {<<"grpc.health.v1.Health">>, <<"Check">>};
service_and_rpc_name_to_fqbins('grpc.health.v1.Health',
			       'Watch') ->
    {<<"grpc.health.v1.Health">>, <<"Watch">>};
service_and_rpc_name_to_fqbins(S, R) ->
    error({gpb_error, {badservice_or_rpc, {S, R}}}).


get_package_name() -> 'grpc.health.v1'.


%% Whether or not the message names
%% are prepended with package name or not.
uses_packages() -> true.



gpb_version_as_string() ->
    "4.5.1".

gpb_version_as_list() ->
    [4,5,1].
