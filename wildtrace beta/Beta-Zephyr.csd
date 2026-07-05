;macOS签名：sudo xattr -rd com.apple.quarantine /Library/Audio/Plug-Ins/VST3/Wildtrace-Zephyr.vst3 

<Cabbage>
form caption("Beta-Zephyr") size(380, 415), guiMode("queue"), pluginId("zzzz") colour(15, 23, 42, 255)
image bounds(0, 0, 380, 390) channel("bg") colour(15, 23, 42, 255) file("zephyr_back.png")


; --- 1. 严格正方形自制雷达网格 ---
image bounds(100, 42, 180, 180) colour(28, 76, 115, 220) outlineThickness(7) channel("image7") corners(7) outlineColour(101, 217, 184, 105)
image bounds(190, 42, 1, 180) colour(201, 213, 195, 100) channel("image43")
image bounds(100, 132, 180, 1) colour(201, 213, 195, 100) channel("image44")

; --- 2. 动态自制游标小球 ---
image bounds(182, 124, 16, 16) shape("circle")  channel("visualBall") colour(200, 70, 160, 255) outlineColour(0, 0, 0, 255) file("Zephyr_target.png")

; --- 四声道视觉反馈 (环绕四周) ---
vmeter bounds(106, 34, 20, 28), channel("m1"), text("FL"), outlineColour(0, 0, 0, 255), overlayColour(0, 0, 0, 255), rotate(2.3561, 0, 0) meterColour:0(20, 30, 20, 255) meterColour:1(255, 50, 224, 255) meterColour:2(255, 255, 255, 255)
vmeter bounds(288, 48, 20, 28), channel("m2"), text("FR"), outlineColour(0, 0, 0, 255), overlayColour(0, 0, 0, 255), rotate(3.9269, 0, 0) meterColour:0(0, 30, 0, 255) meterColour:1(255, 50, 224, 255) meterColour:2(255, 255, 255, 255)
vmeter bounds(92, 216, 20, 28), channel("m3"), text("RL"), outlineColour(0, 0, 0, 255), overlayColour(0, 0, 0, 255), rotate(0.7853, 0, 0) meterColour:0(30, 0, 0, 255) meterColour:1(255, 50, 224, 255) meterColour:2(255, 255, 255, 255)
vmeter bounds(274, 230, 20, 28), channel("m4"), text("RR"), outlineColour(0, 0, 0, 255), overlayColour(0, 0, 0, 255), rotate(5.4977, 0, 0) meterColour:0(0, 30, 30, 255) meterColour:1(255, 50, 224, 255) meterColour:2(255, 255, 255, 255)

groupbox bounds(0, 280, 190, 114) channel("groupbox10016") text("TRAJECTORY") fontColour(200, 77, 162, 205) outlineColour(51, 144, 156, 255) colour(28, 76, 115, 255)

rslider bounds(0, 310, 70, 70), channel("fallTime"), range(0.1, 600, 2, 0.25, 0.01), text("Fall Time(s)"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)
rslider bounds(66, 310, 70, 70), channel("angle"), range(0, 360, 90, 1, 1), text("Angle:°"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)
rslider bounds(130, 310, 70, 70), channel("radius"), range(0, 0.5, 0.353, 1, 0.001), text("Radius"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)

groupbox bounds(190, 280, 190, 114) channel("groupbox10018") text("TURBULENCE") fontColour(200, 77, 162, 205) outlineColour(51, 144, 156, 255) colour(28, 76, 115, 255)

rslider bounds(190, 310, 70, 70), channel("drift"), range(0, 0.5, 0.1, 1, 0.001), text("Drift"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)
rslider bounds(256, 310, 70, 70), channel("dfreq"), range(0.01, 10, 0.2, 1, 0.01), text("DriftFrq:Hz"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)
rslider bounds(320, 310, 70, 70), channel("jitter"), range(0, 0.2, 0.02, 1, 0.001), text("Jitter"), fontColour(101, 217, 184, 205), trackerColour(201, 217, 184, 255), valueTextBox(1)textColour(101, 217, 184, 205) colour(28, 76, 115, 255)markerColour(200, 77, 162, 255) outlineColour(58, 58, 58, 0)



button bounds(0, 259, 190, 20) channel("Loop") value(1)  colour:0(144,164,162, 255) colour:1(201, 217, 184, 255) corners(7) fontColour:0(28, 76, 115, 255) fontColour:1(200, 77, 162, 255) text("LOOP ON", "LOOP OFF") 
button bounds(191, 259, 190, 20) channel("Start") value(1) latched(1) colour:0(144,164,162, 255) colour:1(201, 217, 184, 255) corners(7) fontColour:0(28, 76, 115, 255) fontColour:1(200, 77, 162, 255) text("Start", "Stop")

image bounds(0, 395, 380, 20) colour(28, 76, 115, 255) channel("image30") corners(7)
; --- 底部控制装饰栏 ---
label bounds(0, 400, 377, 16), text("WILDTRACE SERIES"), fontColour(200, 77, 162, 255), align("right") channel("label31")


</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL
</CsOptions>
<CsInstruments>

ksmps = 64
nchnls = 4
0dbfs = 1

; =========================================================
; [UDO 核心渲染引擎]
; =========================================================
opcode QuadRender, aaaa, aaaa
    aInL, aInR, aX, aY xin
    
    aL = sqrt(1 - aX)
    aR = sqrt(aX)
    aF = sqrt(aY)
    aB = sqrt(1 - aY)

    aMono = (aInL + aInR) * 0.5
    aMono limit aMono, -1, 1

    aFL = aMono * aL * aF
    aFR = aMono * aR * aF
    aRL = aMono * aL * aB
    aRR = aMono * aR * aB
    
    xout aFL, aFR, aRL, aRR
endop

instr 1
    ; --- 1. 获取 UI 参数 ---
    kFallTime cabbageGetValue "fallTime"
    kRawAngle cabbageGetValue "angle"
    kRad      cabbageGetValue "radius"
    kDrift    cabbageGetValue "drift"
    kDfreq    cabbageGetValue "dfreq"
    kJitAmt   cabbageGetValue "jitter"
    
    kLoop     cabbageGetValue "Loop"
    kStart    cabbageGetValue "Start"

    ; 【后端保护】：防止宿主外部包络把角度画出圈，强制将值锁定在 0-360 的圆内！
    kAngle wrap kRawAngle, 0, 360

    ; --- 2. 核心状态初始化与相位累加器 ---
    kPhase init 0
    kFreq = 1 / max(kFallTime, 0.001)

    kStartTrig trigger kStart, 0.5, 0
    if kStartTrig == 1 then
        kPhase = 0
    endif

    if kStart == 1 then
        kPhase = kPhase + (kFreq / kr)
        if kPhase >= 1 then
            if kLoop == 1 then
                kPhase = kPhase - 1 
            else
                kPhase = 1          
                kStart = 0          
                cabbageSetValue "Start", 0, 1 
            endif
        endif
    else
        if kLoop == 0 then
            kPhase = 0 
        endif
    endif

; --- 3. 风场流体运动计算 ---
    kMaxRad = kRad * 1.4142
    kAmpEnv = sin(kPhase * 3.14159265)
    
    kSmoothAmp portk (kStart == 1 ? kAmpEnv : 0), 0.015
    aAmp interp kSmoothAmp
    
    kRadAng = kAngle * 0.0174532925
    kMovement = (kPhase - 0.5) * kMaxRad * 2

    ; 【修复】：获取一个平滑的启停状态门限 (15ms 缓冲)
    kMoveGate portk kStart, 0.015

    ; 振荡器在后台正常运行，不干扰内部状态
    kLFO lfo kDrift, kDfreq, 0        
    kJit jitter kJitAmt, 8, 28        
    
    ; 【核心修正】：用门限约束侧向偏移。
    ; 当 Stop 时，kMoveGate 在 15ms 内降为 0，小球平滑归正，停止发抖。
    kLateral = (kLFO + kJit) * kMoveGate

    kX_raw = 0.5 + (cos(kRadAng) * kMovement) - (sin(kRadAng) * kLateral)
    kY_raw = 0.5 + (sin(kRadAng) * kMovement) + (cos(kRadAng) * kLateral)

        aX interp limit(kX_raw, 0, 1)

        aY interp limit(kY_raw, 0, 1)

    kX downsamp aX
    kY downsamp aY

    ; --- 4. 硬件捕获与公共引擎渲染 ---
    aInL, aInR inch 1, 2
    
    aInL = aInL * aAmp
    aInR = aInR * aAmp

    aFL, aFR, aRL, aRR QuadRender aInL, aInR, aX, aY

    outq aFL, aFR, aRL, aRR

    ; --- 5. UI 视讯刷新 ---
    kBallX = 100 + (kX * 180) - 8
    kBallY = 42 + ((1 - kY) * 180) - 8
    
    kUIMetro metro 30
    S_Bounds sprintfk "bounds(%d, %d, 16, 16)", kBallX, kBallY
    cabbageSet kUIMetro, "visualBall", S_Bounds
    
    kP1 max_k abs(aFL), kUIMetro, 1
    kP2 max_k abs(aFR), kUIMetro, 1
    kP3 max_k abs(aRL), kUIMetro, 1
    kP4 max_k abs(aRR), kUIMetro, 1

    cabbageSetValue "m1", portk(kP1, .05), kUIMetro
    cabbageSetValue "m2", portk(kP2, .05), kUIMetro
    cabbageSetValue "m3", portk(kP3, .05), kUIMetro
    cabbageSetValue "m4", portk(kP4, .05), kUIMetro
endin

</CsInstruments>
<CsScore>
f 0 z
i 1 0 -1
</CsScore>
</CsoundSynthesizer>