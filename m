Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E8BCC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBuOXBVsyr77gYnAzde+CDLW4rFQalni/QxFpvv/fEI=; b=4KULhmVETOtV4d
	vmFC+ZvNWuuGNxKwFfbkfbUxwsZsuZC+Sv3KB/FThn/gz5tlLiHfBrswUg0+hrzxSCCWPO1Gtpwiv
	DpDiyz7+MvlDzKx5OrawYlUfHWoTsOiCfaAfT5H8LntuarCK77WItW1aMDcYey385E+HAQ2V8nZVH
	pwlIik/DLRHqc0KzdU6AB975BrBjGbJDzN7nZ6KxCCiF/LfzTlK0I6vbsTEtysMYkqDN6LMkNQw4e
	1VbEWBjKzQthbrFAoGMhdAUhmMBq54EziUIewOYgcNtzSd8v7csNsKiq0xMBdMk67RvNtUt3TiDhb
	Y0pTAp7lBE8P1pE0YbQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRE6-0000000H6GQ-49YI;
	Wed, 08 Jul 2026 12:18:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRE1-0000000H6Dk-0hRX
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:18:06 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3PMC2667189
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lwsIp/myDG/w4Mfkwf6fYT6eW8wAXDUyrskN2e0eScY=; b=U4yUautTb5Bft5yw
	+kQ4DUyXCzSq5Ev2BOxOmp1JgEM0+XH5bZR0YiW4iE6DSC3NSUKpGaS9HM/AoV9k
	PPbfrKmJnt0Q4nShRhINUg0wJ2KHaGWv2cFLOtZvwjNYMBUhMJ7a2T7+FLvEcvRW
	zpAZ6ltuLEynnUbG63T51zoJzcKoqifrDRkXpEd3SAsCIeizKsdaQ9BCTUlEAOvy
	68ZRmj+Jp7Ty4CM4J2P7boJeH3knvO0hJebWNtI8Ur27RhQ4f9wnjC8KBpPvrQlu
	FDTrttKqbKdIsgn/KmuM5B4ErS5kSsorD0Fkn2Zj68h98V+753V/aUkCSB7EsSCk
	hVt2Dg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f99hgu3d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:18:00 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-846f50381a6so641377b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513079; x=1784117879; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lwsIp/myDG/w4Mfkwf6fYT6eW8wAXDUyrskN2e0eScY=;
        b=YZjgC9MFk4Vx1CPdgH++HOzeBxVZMguU7w/ZyrpUT5tTgYbNweuSjMSinw9hWLh5YW
         k3JIavx8JOQPj9GlckwxRPANabzSyep+2Sg6i2YcVsGwsZ36xgnpo/IsHHfB5zdC0zkO
         kYD9SQsPWxeSM2AL0Jbe3UbJDCd32+/hiJSzY5erBvMZeq7bvQhV9zdEp9hULKAHOWjX
         oAjSoZz2HEJHosQytN5hWDIXCUfLEHPeLsFWg3CT2qult9tf+t8xoR1YBQ3EIvcIoLbU
         MwDtKLsK85W5d/UXebzCiKkpNgsOeV2lQjKdLnWGL1+d4+NPZ84gKleNUFFgnrObu3tu
         j7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513079; x=1784117879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lwsIp/myDG/w4Mfkwf6fYT6eW8wAXDUyrskN2e0eScY=;
        b=NRADLPYMiTzqjU/tY2Okk4H6kMHoxRsnZLSR7ErueuRRvBbW+dxTzgjoVB1CMsCP1K
         6Ho1BFcat6MB23f0hD90qDvYo6OoPXMzjcFPiF7ixq3tae32m40NbVU+N3LdC5SZ8ASj
         YaG828MJEG5QIvbIFnLcyYJZPjerBe9q6z3woqQHF889XOLAxDMa0qzbNjcuYz63/SGU
         oWJH6klQtxP0Gp/DJQgarNYNv2hU2f9R1lwj3PVAJtnm/1f5KcIZL/E7IpG6ZQKRvsi1
         jDgcJ3wSzghk0/OxpbvRMMAoPVSPVy4bX6rGmAu5WYMb8PSiG/snfZ7J+5fCfG2PGPwW
         7PJg==
X-Forwarded-Encrypted: i=1; AHgh+Ro7VyeI10vXFS+TxPHKoh/WDSigv5hW1CRt5gYDpZfNHCikBZgU2+B+sRF3yAFTsvKAsA4msWCzOmE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPv0n0ZglZrN94IRdN4ldEzVhA8jq4LkO5ZGhw/Ytr+bWgntr3
	YFRTY9ZvfJeY460JwA7n+rBYEAgQOaJLk4sEv/iUcJhQh8uFPhj05UKUYM/UtfmGWlgOtV9GEN0
	98QQ1DKE983RqNsHuvGrGAbNAkekL9ua+1x1yxsE3J817CPHoTMOrFEKSaw6yPxXJdeaX
X-Gm-Gg: AfdE7cm+v+EjT248edv7FGRrQT0QHtT2v+9eMFaFzUuvaW3IfKubjCQFuYLyD9uBTYm
	mLEBZKSyOpmHQjmae8ALYCD9D4Ybwy1W/1HcxFDBJ38AbTPOZh9lXLXDpHG+77jl7pPj8ybnjtY
	vI2WbLHSEygjbCusXkqwQfdyYG+c35fKXGat+AAYtzY0WAKlyDYc7Vuz48Px7H+6nRqjiZcJ3Xf
	0RcEruGBfca0TAe0sVDTpuhDXrt1sD9qDz7ENo+JEooHK0ZETs/FAoq4vzBZ6lqkTRwW8zl8H/6
	JXFLvXkTUQdhRLBgJfrGpCkt2Fr1Z59dqycuqH5NNaSAGnA5fl1JU+Ps8vib1pumfhedHvCjZ6s
	9uq4Gh27tuNyYPRPHG7l0hfBqlQ==
X-Received: by 2002:a05:6a00:1826:b0:846:2f3d:6259 with SMTP id d2e1a72fcca58-848436758c9mr2413841b3a.57.1783513078863;
        Wed, 08 Jul 2026 05:17:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:1826:b0:846:2f3d:6259 with SMTP id d2e1a72fcca58-848436758c9mr2413801b3a.57.1783513078200;
        Wed, 08 Jul 2026 05:17:58 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:17:57 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 17:47:31 +0530
Subject: [PATCH v7 2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
MIME-Version: 1.0
Message-Id: <20260708-shikra-dt-v7-2-977b65a300c1@oss.qualcomm.com>
References: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
In-Reply-To: <20260708-shikra-dt-v7-0-977b65a300c1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513058; l=23629;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=vTT9js0dPynLTNdhb63LqCEc9S79C4AxFHOjxxFX2dc=;
 b=46DavQ3oqiRm964KdJFLS4sc5ALxTDgGqmZPrB4I6xEpD3A+E62UfppsiareSbz27bNuSoF2o
 sIK0eezpliQBFyVX3GzmJ6SAnKiBfbFNjuXViKg9ijn8NAiQULOrHPf
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: YXHyRW1ASu95jeNlifp3yHHt8K7eJdoY
X-Authority-Analysis: v=2.4 cv=CviPtH4D c=1 sm=1 tr=0 ts=6a4e3ff8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=6UBnnb2_QDgcJB-b6ocA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: YXHyRW1ASu95jeNlifp3yHHt8K7eJdoY
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfXwhGXL5l/nA8q
 lU0NUum1OSQwtce/i5ZfwenISsBhdR8LYt0lV8gr6yr5MmUHcP91vKqM6v3/WJMNG/XqafSKXtZ
 0jQVi5JjQr/WdRXykgTSaUKaSbsaCJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX4r87lLh8c7ux
 Iz9PKSxan5sydW24lupV+EqphazCT/M2lYhCtGPBTxjN86Y+RUVfrOykgITcqpV7l/qgOA8Qhe4
 eTGzlYT+3jBF3JBT9cFSw8d0DvKoSp0pga5VBBKOrsmfJehVZGovF9qCdtvMZPbJZ9/bX+Wgrhd
 Zpc3/Y8KIYToZ592QEOIBrZmUDsoO1AnW6ZANQcEvUDq7DrCYsprYXsEcTHwd2mg2ELtfOiOoEr
 qIpBRHi6lPsuFXoKnftLAnu4CZ/+haWElygK4AexM8GZKa2RXr1fbxkCwftIia7LJQ62+wpFeo5
 bbs7vFsdAfieA7VKFkdiw5AU7a+VHMZyBmPH2tN8uctnYQG3VO8kzJ8A0PCE8G3cE1oHhvJbgzf
 A9jwjaA6gFLVVdR+mRui68kPf/YyHxwE79p34Uf86iuIMITJ97iPQephtbUtkwcNAH61uCqimF3
 Jt/k0f552qf4AEBpiFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051801_358863_F23F02CC 
X-CRM114-Status: GOOD (  14.32  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add initial device tree support for the Qualcomm Shikra SoC,
an IoT-focused platform built around a heterogeneous CPU cluster
(Cortex-A55 + Cortex-A78C) with RPM-based power and clock management.

Enable support for the following peripherals:
  - CPU nodes
  - Global Clock Controller (GCC)
  - RPM-based clock controller (RPMCC) and power domains (RPMPD)
  - Interrupt controller
  - Top Level Mode Multiplexer (TLMM)
  - Debug UART
  - eMMC host controller
  - System timer and watchdog

Co-developed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Co-developed-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Signed-off-by: Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Co-developed-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Co-developed-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Signed-off-by: Xueyao An <xueyao.an@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 842 +++++++++++++++++++++++++++++++++++
 1 file changed, 842 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
new file mode 100644
index 000000000000..4e5bc9e17c8e
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -0,0 +1,842 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/clock/qcom,rpmcc.h>
+#include <dt-bindings/clock/qcom,shikra-gcc.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,rpm-icc.h>
+#include <dt-bindings/interconnect/qcom,shikra.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/qcom-rpmpd.h>
+
+/ {
+	interrupt-parent = <&intc>;
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	clocks {
+		xo_board: xo-board {
+			compatible = "fixed-clock";
+			clock-frequency = <38400000>;
+			#clock-cells = <0>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <32764>;
+			#clock-cells = <0>;
+		};
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
+		};
+
+		cpu1: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x100>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
+		};
+
+		cpu2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x200>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
+		};
+
+		cpu3: cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a78c";
+			reg = <0x0 0x300>;
+			enable-method = "psci";
+			next-level-cache = <&l2_3>;
+			capacity-dmips-mhz = <1946>;
+			dynamic-power-coefficient = <489>;
+
+			l2_3: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&l3>;
+				cache-size = <0x40000>;
+			};
+		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+
+				core2 {
+					cpu = <&cpu2>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&cpu3>;
+				};
+			};
+		};
+
+		l3: l3-cache {
+			compatible = "cache";
+			cache-level = <3>;
+			cache-unified;
+			cache-size = <0x80000>;
+		};
+	};
+
+	firmware {
+		scm {
+			compatible = "qcom,scm-shikra", "qcom,scm";
+			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
+			clock-names = "core";
+			qcom,dload-mode = <&tcsr_regs 0x13000>;
+			#reset-cells = <1>;
+			interconnects = <&system_noc MASTER_CRYPTO_CORE0 RPM_ALWAYS_TAG
+					 &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the size */
+		reg = <0x0 0x80000000 0x0 0x0>;
+	};
+
+	pmu-a55 {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH &ppi_cluster0>;
+	};
+
+	pmu-a78c {
+		compatible = "arm,cortex-a78-pmu";
+		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH &ppi_cluster1>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	rpm: remoteproc {
+		compatible = "qcom,shikra-rpm-proc", "qcom,rpm-proc";
+
+		glink-edge {
+			compatible = "qcom,glink-rpm";
+			interrupts = <GIC_SPI 194 IRQ_TYPE_EDGE_RISING 0>;
+			qcom,rpm-msg-ram = <&rpm_msg_ram>;
+			mboxes = <&apcs_glb 0>;
+
+			rpm_requests: rpm-requests {
+				compatible = "qcom,rpm-shikra", "qcom,glink-smd-rpm";
+				qcom,glink-channels = "rpm_requests";
+
+				rpmcc: clock-controller {
+					compatible = "qcom,rpmcc-shikra", "qcom,rpmcc-qcm2290", "qcom,rpmcc";
+					clocks = <&xo_board>;
+					clock-names = "xo";
+					#clock-cells = <1>;
+				};
+
+				rpmpd: power-controller {
+					compatible = "qcom,shikra-rpmpd";
+					#power-domain-cells = <1>;
+					operating-points-v2 = <&rpmpd_opp_table>;
+
+					rpmpd_opp_table: opp-table {
+						compatible = "operating-points-v2";
+
+						rpmpd_opp_min_svs: opp1 {
+							opp-level = <RPM_SMD_LEVEL_MIN_SVS>;
+						};
+
+						rpmpd_opp_low_svs: opp2 {
+							opp-level = <RPM_SMD_LEVEL_LOW_SVS>;
+						};
+
+						rpmpd_opp_svs: opp3 {
+							opp-level = <RPM_SMD_LEVEL_SVS>;
+						};
+
+						rpmpd_opp_svs_plus: opp4 {
+							opp-level = <RPM_SMD_LEVEL_SVS_PLUS>;
+						};
+
+						rpmpd_opp_nom: opp5 {
+							opp-level = <RPM_SMD_LEVEL_NOM>;
+						};
+
+						rpmpd_opp_nom_plus: opp6 {
+							opp-level = <RPM_SMD_LEVEL_NOM_PLUS>;
+						};
+
+						rpmpd_opp_turbo: opp7 {
+							opp-level = <RPM_SMD_LEVEL_TURBO>;
+						};
+
+						rpmpd_opp_turbo_plus: opp8 {
+							opp-level = <RPM_SMD_LEVEL_TURBO_NO_CPR>;
+						};
+					};
+				};
+			};
+		};
+
+		mpm: interrupt-controller {
+			compatible = "qcom,mpm";
+			qcom,rpm-msg-ram = <&apss_mpm>;
+			interrupts = <GIC_SPI 197 IRQ_TYPE_EDGE_RISING 0>;
+			mboxes = <&apcs_glb 1>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			#power-domain-cells = <0>;
+			interrupt-parent = <&intc>;
+			qcom,mpm-pin-count = <96>;
+			qcom,mpm-pin-map = <2 275>,  /* TSENS0 uplow */
+					   <12 422>, /* DWC3 ss_phy_irq */
+					   <58 272>, /* QUSB2_PHY dmse_hv_vddmx */
+					   <59 273>, /* QUSB2_PHY dpse_hv_vddmx */
+					   <86 183>, /* MPM wake, SPMI */
+					   <90 157>, /* QUSB2_PHY DM */
+					   <91 158>; /* QUSB2_PHY DP */
+		};
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		hyp_mem: hyp@80000000 {
+			reg = <0x0 0x80000000 0x0 0x1600000>;
+			no-map;
+		};
+
+		xblboot_mem: xblboot@85e00000 {
+			reg = <0x0 0x85e00000 0x0 0x100000>;
+			no-map;
+		};
+
+		secdata_apss_mem: secdata-apss@85fff000 {
+			reg = <0x0 0x85fff000 0x0 0x1000>;
+			no-map;
+		};
+
+		smem_mem: smem@86000000 {
+			compatible = "qcom,smem";
+			reg = <0x0 0x86000000 0x0 0x200000>;
+			no-map;
+
+			hwlocks = <&tcsr_mutex 3>;
+		};
+
+		audio_heap_mem: audio-heap@86200000 {
+			reg = <0x0 0x86200000 0x0 0x100000>;
+			no-map;
+		};
+
+		tz_stat_mem: tz-stat@a0000000 {
+			reg = <0x0 0xa0000000 0x0 0x100000>;
+			no-map;
+		};
+
+		qtee_mem: qtee@a1300000 {
+			reg = <0x0 0xa1300000 0x0 0x500000>;
+			no-map;
+		};
+
+		tz_apps_mem: tz-apps@a1800000 {
+			reg = <0x0 0xa1800000 0x0 0x2100000>;
+			no-map;
+		};
+
+		mpss_wlan_mem: mpss-wlan@ab000000 {
+			reg = <0x0 0xab000000 0x0 0x6e00000>;
+			no-map;
+		};
+
+		wlan_mem: wlan@b2300000 {
+			reg = <0x0 0xb2300000 0x0 0x100000>;
+			no-map;
+		};
+
+		cdsp_mem: cdsp@b2400000 {
+			reg = <0x0 0xb2400000 0x0 0x1900000>;
+			no-map;
+		};
+
+		gpu_micro_code_mem: gpu-micro-code@b3d00000 {
+			reg = <0x0 0xb3d00000 0x0 0x2000>;
+			no-map;
+		};
+
+		video_mem: video@b3d02000 {
+			reg = <0x0 0xb3d02000 0x0 0x700000>;
+			no-map;
+		};
+
+		lmcu_mem: lmcu@b4402000 {
+			reg = <0x0 0xb4402000 0x0 0x300000>;
+			no-map;
+		};
+
+		lmcu_dtb_mem: lmcu-dtb@b4702000 {
+			reg = <0x0 0xb4702000 0x0 0x40000>;
+			no-map;
+		};
+	};
+
+	soc: soc@0 {
+		compatible = "simple-bus";
+
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dma-ranges = <0x0 0x0 0x0 0x0 0x10 0x0>;
+		ranges = <0x0 0x0 0x0 0x0 0x10 0x0>;
+
+		tcsr_mutex: syscon@340000 {
+			compatible = "qcom,tcsr-mutex";
+			reg = <0x0 0x00340000 0x0 0x20000>;
+			#hwlock-cells = <1>;
+		};
+
+		tcsr_regs: syscon@3c0000 {
+			compatible = "qcom,shikra-tcsr", "syscon";
+			reg = <0x0 0x003c0000 0x0 0x40000>;
+		};
+
+		tlmm: pinctrl@500000 {
+			compatible = "qcom,shikra-tlmm";
+			reg = <0x0 0x00500000 0x0 0x700000>;
+
+			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+
+			gpio-ranges = <&tlmm 0 0 165>;
+			wakeup-parent = <&mpm>;
+
+			qup_uart0_default: qup-uart0-default-state {
+				pins = "gpio0", "gpio1";
+				function = "qup0_se0";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			sdc1_state_on: sdc1-on-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <6>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <6>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <6>;
+					bias-pull-up;
+				};
+
+				rclk-pins {
+					pins = "sdc1_rclk";
+					bias-pull-down;
+				};
+			};
+
+			sdc1_state_off: sdc1-off-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <2>;
+					bias-bus-hold;
+				};
+
+				rclk-pins {
+					pins = "sdc1_rclk";
+					bias-bus-hold;
+				};
+			};
+		};
+
+		mem_noc: interconnect@d00000 {
+			compatible = "qcom,shikra-mem-noc-core";
+			reg = <0x0 0x00d00000 0x0 0x43080>;
+			clocks = <&gcc GCC_DDRSS_GPU_AXI_CLK>;
+			clock-names = "gpu_axi";
+			#interconnect-cells = <2>;
+		};
+
+		llcc: system-cache-controller@e00000 {
+			compatible = "qcom,shikra-llcc";
+			reg = <0x0 0x00e00000 0x0 0x80000>,
+			      <0x0 0x00f00000 0x0 0x80000>,
+			      <0x0 0x01000000 0x0 0x80000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc_broadcast_base";
+			interrupts = <GIC_SPI 539 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
+		gcc: clock-controller@1400000 {
+			compatible = "qcom,shikra-gcc";
+			reg = <0x0 0x01400000 0x0 0x1f0000>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&sleep_clk>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			power-domains = <&rpmpd RPMPD_VDDCX>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		system_noc: interconnect@1880000 {
+			compatible = "qcom,shikra-sys-noc";
+			reg = <0x0 0x01880000 0x0 0x6a080>;
+			clocks = <&gcc GCC_EMAC0_AXI_SYS_NOC_CLK>,
+				 <&gcc GCC_EMAC1_AXI_SYS_NOC_CLK>,
+				 <&gcc GCC_SYS_NOC_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_SYS_NOC_USB3_PRIM_AXI_CLK>;
+			clock-names = "emac0_axi",
+				      "emac1_axi",
+				      "usb2_axi",
+				      "usb3_axi";
+			#interconnect-cells = <2>;
+
+			clk_virt: interconnect-clk {
+				compatible = "qcom,shikra-clk-virt";
+				#interconnect-cells = <2>;
+			};
+
+			mc_virt: interconnect-mc {
+				compatible = "qcom,shikra-mc-virt";
+				#interconnect-cells = <2>;
+			};
+
+			mmrt_virt: interconnect-mmrt {
+				compatible = "qcom,shikra-mmrt-virt";
+				#interconnect-cells = <2>;
+			};
+
+			mmnrt_virt: interconnect-mmnrt {
+				compatible = "qcom,shikra-mmnrt-virt";
+				#interconnect-cells = <2>;
+			};
+		};
+
+		config_noc: interconnect@1900000 {
+			compatible = "qcom,shikra-config-noc";
+			reg = <0x0 0x01900000 0x0 0x8080>;
+			#interconnect-cells = <2>;
+		};
+
+		qfprom: efuse@1b44000 {
+			compatible = "qcom,shikra-qfprom", "qcom,qfprom";
+			reg = <0x0 0x01b44000 0x0 0x3000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qusb2_hstx_trim_1: hstx-trim@25b {
+				reg = <0x25b 0x1>;
+				bits = <1 4>;
+			};
+
+			gpu_speed_bin: gpu-speed-bin@2006 {
+				reg = <0x2006 0x2>;
+				bits = <5 8>;
+			};
+		};
+
+		spmi_bus: spmi@1c40000 {
+			compatible = "qcom,spmi-pmic-arb";
+			reg = <0x0 0x01c40000 0x0 0x1100>,
+			      <0x0 0x01e00000 0x0 0x2000000>,
+			      <0x0 0x03e00000 0x0 0x100000>,
+			      <0x0 0x03f00000 0x0 0xa0000>,
+			      <0x0 0x01c0a000 0x0 0x26000>;
+			reg-names = "core",
+				    "chnls",
+				    "obsrvr",
+				    "intr",
+				    "cnfg";
+			interrupts-extended = <&mpm 86 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "periph_irq";
+			interrupt-controller;
+			#interrupt-cells = <4>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+			qcom,channel = <0>;
+			qcom,ee = <0>;
+		};
+
+		rpm_msg_ram: sram@45f0000 {
+			compatible = "qcom,rpm-msg-ram", "mmio-sram";
+			reg = <0x0 0x045f0000 0x0 0x7000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x0 0x045f0000 0x7000>;
+
+			apss_mpm: sram@1b8 {
+				reg = <0x1b8 0x48>;
+			};
+		};
+
+		sram@4690000 {
+			compatible = "qcom,rpm-stats";
+			reg = <0x0 0x04690000 0x0 0x14000>;
+		};
+
+		sdhc_1: mmc@4744000 {
+			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
+
+			reg = <0x0 0x04744000 0x0 0x1000>,
+			      <0x0 0x04745000 0x0 0x1000>;
+			reg-names = "hc",
+				    "cqhci";
+
+			iommus = <&apps_smmu 0xc0 0x0>;
+
+			interrupts = <GIC_SPI 348 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
+				 <&gcc GCC_SDCC1_APPS_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "iface",
+				      "core",
+				      "xo";
+
+			interconnects = <&system_noc MASTER_SDCC_1 RPM_ALWAYS_TAG
+					 &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+					 &config_noc SLAVE_SDCC_1 RPM_ACTIVE_TAG>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			power-domains = <&rpmpd RPMPD_VDDCX>;
+			operating-points-v2 = <&sdhc1_opp_table>;
+
+			qcom,dll-config = <0x000f642c>;
+			qcom,ddr-config = <0x80040868>;
+
+			bus-width = <8>;
+
+			mmc-ddr-1_8v;
+			mmc-hs200-1_8v;
+			mmc-hs400-1_8v;
+			mmc-hs400-enhanced-strobe;
+
+			resets = <&gcc GCC_SDCC1_BCR>;
+
+			status = "disabled";
+
+			sdhc1_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+					opp-peak-kBps = <250000 133320>;
+					opp-avg-kBps = <104000 0>;
+				};
+
+				opp-384000000 {
+					opp-hz = /bits/ 64 <384000000>;
+					required-opps = <&rpmpd_opp_nom>;
+					opp-peak-kBps = <800000 300000>;
+					opp-avg-kBps = <400000 0>;
+				};
+			};
+		};
+
+		qupv3_0: geniqup@4ac0000 {
+			compatible = "qcom,geni-se-qup";
+			reg = <0x0 0x04ac0000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
+				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
+			clock-names = "m-ahb",
+				      "s-ahb";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			uart0: serial@4a80000 {
+				compatible = "qcom,geni-debug-uart";
+				reg = <0x0 0x04a80000 0x0 0x4000>;
+
+				interrupts = <GIC_SPI 527 IRQ_TYPE_LEVEL_HIGH 0>;
+
+				clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
+				clock-names = "se";
+
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+						 &clk_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+						<&mem_noc MASTER_AMPSS_M0 RPM_ALWAYS_TAG
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+
+				pinctrl-0 = <&qup_uart0_default>;
+				pinctrl-names = "default";
+
+				status = "disabled";
+			};
+		};
+
+		sram@c11e000 {
+			compatible = "qcom,shikra-imem", "mmio-sram";
+			reg = <0x0 0x0c11e000 0x0 0x1000>;
+			ranges = <0x0 0x0 0x0c11e000 0x1000>;
+
+			no-memory-wc;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			pil-sram@94c {
+				compatible = "qcom,pil-reloc-info";
+				reg = <0x94c 0xc8>;
+			};
+		};
+
+		apps_smmu: iommu@c600000 {
+			compatible = "qcom,shikra-smmu-500", "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x0c600000 0x0 0x80000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
+		intc: interrupt-controller@f200000 {
+			compatible = "arm,gic-v3";
+			reg = <0x0 0xf200000 0x0 0x10000>,
+			      <0x0 0xf240000 0x0 0x80000>;
+
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
+
+			#interrupt-cells = <4>;
+			interrupt-controller;
+
+			#redistributor-regions = <1>;
+			redistributor-stride = <0x0 0x20000>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1 &cpu2>;
+				};
+
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu3>;
+				};
+			};
+		};
+
+		apcs_glb: mailbox@f400000 {
+			compatible = "qcom,shikra-apss-shared", "qcom,sdm845-apss-shared";
+			reg = <0x0 0x0f400000 0x0 0x1000>;
+			#mbox-cells = <1>;
+		};
+
+		watchdog@f410000 {
+			compatible = "qcom,apss-wdt-shikra", "qcom,kpss-wdt";
+			reg = <0x0 0x0f410000 0x0 0x1000>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&sleep_clk>;
+		};
+
+		timer@f420000 {
+			compatible = "arm,armv7-timer-mem";
+			reg = <0x0 0x0f420000  0x0 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x0 0x0 0x10000000>;
+
+			frame@f421000 {
+				reg = <0x0f421000 0x1000>,
+				      <0x0f422000 0x1000>;
+				frame-number = <0>;
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH 0>,
+					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH 0>;
+			};
+
+			frame@f423000 {
+				reg = <0x0f423000 0x1000>;
+				frame-number = <1>;
+				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+
+			frame@f425000 {
+				reg = <0x0f425000 0x1000>;
+				frame-number = <2>;
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+
+			frame@f427000 {
+				reg = <0x0f427000 0x1000>;
+				frame-number = <3>;
+				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+
+			frame@f429000 {
+				reg = <0x0f429000 0x1000>;
+				frame-number = <4>;
+				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+
+			frame@f42b000 {
+				reg = <0x0f42b000 0x1000>;
+				frame-number = <5>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+
+			frame@f42d000 {
+				reg = <0x0f42d000 0x1000>;
+				frame-number = <6>;
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
+				status = "disabled";
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+
+		interrupts = <GIC_PPI 1 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 2 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 3 IRQ_TYPE_LEVEL_LOW 0>,
+			     <GIC_PPI 0 IRQ_TYPE_LEVEL_LOW 0>;
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
