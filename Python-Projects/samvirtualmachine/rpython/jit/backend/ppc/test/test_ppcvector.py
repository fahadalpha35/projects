import py
from rpython.jit.backend.ppc.test import test_basic
from rpython.jit.metainterp.test import test_vector
from rpython.jit.backend.ppc.detect_feature import detect_vsx


class TestBasic(test_basic.JitPPCMixin, test_vector.VectorizeTests):
    # for the individual tests see
    # ====> ../../../metainterp/test/test_basic.py
    def setup_method(self, method):
        clazz = self.CPUClass
        def init(*args, **kwargs):
            cpu = clazz(*args, **kwargs)
            # > 95% can be executed, thus let's cheat here a little
            cpu.supports_guard_gc_type = True
            return cpu
        self.CPUClass = init

    def supports_vector_ext(self):
        return detect_vsx()

    def test_list_vectorize(self):
        pass # needs support_guard_gc_type, disable for now

    enable_opts = 'intbounds:rewrite:virtualize:string:earlyforce:pure:heap:unroll'

