'use strict';

let __inner = null;
let __upper = null;
let __callee = null;
let __parent = null;
let __root = new Map();
let __self = __root;

__root.set('__do', __root);
__root.set('__assign', __root);
__root.set('__write', __root);
// console.log("__root")
// console.log(__root)

const func_4 = () => {
    console.log("Calling func_4()")
    __upper = __self;
    __upper = __upper.get('__parent');
    __parent = __upper.get('__do');
    __inner = new Map();
    __inner.__func = func_10;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __upper = __self;
    __upper = __upper.get('__parent');
    __parent = __upper.get('__assign');
    __inner = new Map();
    __inner.__func = func_5;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __callee.set('b', "hello");
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_4_12;
    __callee.__func();
};

const func_4_12 = () => {
    console.log("Calling func_4_12()")
    __callee = __self;
    __self = __callee.__caller;
    __upper = __self;
    __upper.set('a', __callee.get('a'));
    __callee.set('__argument_0', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __upper = __self;
    __upper = __upper.get('__parent');
    __parent = __upper.get('__assign');
    __inner = new Map();
    __inner.__func = func_6;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __callee.set('b', __self);
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_4_35;
    __callee.__func();
};

const func_4_35 = () => {
    console.log("Calling func_4_35()")
    __callee = __self;
    __self = __callee.__caller;
    __upper = __self;
    __upper.set('b', __callee.get('a'));
    __callee.set('__argument_1', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __upper = __self;
    __parent = __upper.get('b');
    __inner = new Map();
    __inner.__func = func_7;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __callee.set('x', "hello, world");
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_4_57;
    __callee.__func();
};

const func_4_57 = () => {
    console.log("Calling func_4_57()")
    __callee = __self;
    __self = __callee.__caller;
    __callee.set('__argument_2', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __upper = __self;
    __upper = __upper.get('__parent');
    __parent = __upper.get('__write');
    __inner = new Map();
    __inner.__func = func_9;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __upper = __self;
    __callee.set('a', __upper.get('a'));
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_4_78;
    __callee.__func();
};

const func_4_78 = () => {
    console.log("Calling func_4_78()")
    __callee = __self;
    __self = __callee.__caller;
    __callee.set('__argument_3', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_4_4;
    __callee.__func();
};

const func_4_4 = () => {
    console.log("Calling func_4_4()")
    __callee = __self;
    __self = __callee.__caller;
    __self.set('__return', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __self.__func = null;
    __self.__caller.__func();
};

const func_5 = () => {
    console.log("Calling func_5()")
    __self.set('a', __self.get('b'));
    __self.__func = null;
    __self.__caller.__func();
};

const func_6 = () => {
    console.log("Calling func_6()")
    __self.set('a', __self.get('b'));
    __self.__func = null;
    __self.__caller.__func();
};

const func_7 = () => {
    console.log("Calling func_7()")
    __upper = __self;
    __upper = __upper.get('__parent');
    __upper = __upper.get('__parent');
    __parent = __upper.get('__assign');
    __inner = new Map();
    __inner.__func = func_8;
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    __callee = __inner;
    __upper = __self;
    __callee.set('b', __upper.get('x'));
    __callee.__caller = __self;
    __self = __callee;
    __callee.__caller.__func = func_7_5;
    __callee.__func();
};

const func_7_5 = () => {
    console.log("Calling func_7_5()")
    __callee = __self;
    __self = __callee.__caller;
    __upper = __self;
    __upper = __upper.get('__parent');
    __upper.set('a', __callee.get('a'));
    __self.set('__return', __callee.get('__return'));
    __inner = __callee;
    __callee = __inner.__outer;
    __self.__func = null;
    __self.__caller.__func();
};

const func_8 = () => {
    console.log("Calling func_8()")
    __self.set('a', __self.get('b'));
    __self.__func = null;
    __self.__caller.__func();
};

const func_9 = () => {
    console.log("Calling func_9()")
    console.log(__self.get('a'));
    __self.__func = null;
    __self.__caller.__func();
};

const func_10 = () => {
    console.log("Calling func_10()")
    __self.__func = null;
    __self.__caller.__func();
};

const main = () => {
    console.log("Calling main()")
    __parent = __self;
    // console.log(__parent);
    __inner = new Map();
    __inner.__func = func_4;
    // console.log(__inner);
    __inner.set('__parent', __parent);
    __inner.__outer = __callee;
    // console.log(__inner);
    __callee = __inner;
    __callee.__caller = __self;
    // console.log(__callee);
    __self = __callee;
    __callee.__caller.__func = main_2;
    // console.log(__callee);
    __callee.__func();
};

const main_2 = () => {
    console.log("Calling main_2()")
    __callee = __self;
    __self = __callee.__caller;
    __callee.get('__return');
    __inner = __callee;
    __callee = __inner.__outer;
};

main();
