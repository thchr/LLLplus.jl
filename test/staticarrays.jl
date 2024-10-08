using StaticArrays, Test

@testset "Compatibility with StaticArrays/immutable arrays" begin
    H = [0.9628813734720784 0.23481870903463398 0.09437229281315995; 
         0.6398958697159318 0.19228011953230373 0.7960518809701681; 
         0.9766849678971312 0.6302875815478448 0.4788314270985644]
    sH = SMatrix{3, 3, Float64, 9}(H)
    @test lll(H) ≈ lll(sH)
    @test l2(H) ≈ l2(sH)
    @test brun(H) ≈ brun(sH)
    @test seysen(H) ≈ seysen(sH)
end