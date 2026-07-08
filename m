Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65E3FC43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkK7M4zSwFmpC/sbMrbbNegE5kOW8xP8aQkUkBHeTz0=; b=cWzrvJZIRD7AY1
	EkDAaDgRvbeiQAOFmos5YwDwd+D32jdGNGPYOt5H3eZMX+9VsUVxhUhszXi3Uyp8B5irqsUKeCnB/
	W8zgLVMnzyEQS2NBKPabtAVLAScgqD76pvUyWQGSHvOjidZgNfwk4HvzI51QMPFjdSnGzcKyM3873
	q70/VsEF7KfWqzDX2pIbPt6s/lqUesY6Oi1GgHn0LVildZ0beLX+tjp4tmvVQQSt52eBneoSMANC8
	2E0f7d88Id39+6Jlpzk/UPhzC2tG0ac0rl5mQ0HD665CYUwcWij0xEiw0J6dnet9S0e07RSqmMX52
	e9DsYJcwN0EygVE5lDkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whREG-0000000H6K7-0hZn;
	Wed, 08 Jul 2026 12:18:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whREC-0000000H6Ib-2RcE
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:18:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C40rk2759993
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LtyVAmWN4f3TIqof37EPSTRIN6h1TXFrEzrycroYe/g=; b=aZyyFRQnAV2yNo6+
	YCqX2aMadCo3DykmCnaVYkCChqNK/etTIskBXrxz9wfOQv6eNKFhAQb7tkivKBbK
	cjVzd3z3IWbs2kdaDyjbLWW0RiMIDMIZ7/oGXqEP6DiAAx5H0cEwFvBQ9HmRxRIH
	5wgvmcAIc3dsR03S9pQ0ny6DvRbCjPXT6+GeVPxGDjapLmWeHt1Sl9Qw4HcuNxZx
	ys9kSlKzJdRuRf79xe0CmtxCooOVTh+mBZ0YnWJG8Zez8laA3a5Bbo5Vk/hWr/3e
	dFpe3knAlilEqzeiSf6NTlZnucWUZ66IU+bAYtliLzISJmF5m30kJpDPuY3Kjnd5
	sxN0Ow==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f95e5vbgk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:18:11 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8478a1ec69fso1181300b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513091; x=1784117891; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LtyVAmWN4f3TIqof37EPSTRIN6h1TXFrEzrycroYe/g=;
        b=afpQyRF/BcYnRqRiVmFaw3dtQxcjd9dUVQDdWYdEh2G4fsJdWXEIzXgXhlZFUDyTIq
         S5c7Qc1VxX9sR3FRpHU21ps+Bl0pJImbDVdYAkQbJl+jlsHOykCBpJJEhb9zf9OWFZTE
         dFgTt8Z6u+f165AhSQ6zwv3kM/sQ/+2ZbxYSWsCBSE/80h4FDFhcy5N5AzCo1k/EXJsY
         yby+IhjwqZ4JcDIjOhhX9FvjrJNapoHtMbrTf1kYi1/J+gSjywXpg4bWF0j7MNomfjl+
         mDBzv30z3oqpDEPz0/7xSLJFVgl2sLp8m33XDBSFL0oNb71hHgNjNwB497NuAEppOomI
         K9Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513091; x=1784117891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LtyVAmWN4f3TIqof37EPSTRIN6h1TXFrEzrycroYe/g=;
        b=ctFhZ6u4Ru2SbcygFyDmo21NghUg0JUTTzZkRyDC5iY91OnQFMJh7zgB6GFpu6Mn2n
         4i/M4COZCuupE7dMo1ltV0/o/G3HZpNiCUZsRFLh3C/j99c0BqY8OylN7p4FmWTR7FdD
         2XAwwDd2S6p2Rnq3s7qknXS1OsIxzfSL1OPOkS2tfMF3V8UdMX5aGUqB1kxj3pGBcEOS
         A7Syg1zpI9ll5DYlX4oGaCYTFnVIM6uSVZSObgU9z+nYBn6Yfal6hhDTs54N8YT0Uu8D
         0jV4O95xwGHL55H3KQqHFV2x+S0CMhb1g8gW/ZoO6r8lQ9r6LjlAcDjToWR1roFOLH/O
         FBrQ==
X-Forwarded-Encrypted: i=1; AHgh+RoQNodt2UqJtUS9VvCYpmH444uGktNrMRdAlL0dD5iothsd3c6LN8P2z+RlITYHJEXqPuMwDvkWhK8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKbL0TZXhFeVVq8SMIKEAmO6GlBgabC1PSlW57+OOobZ/axhrz
	y5/DLIvyZft8NBMAeyBNqSQNqbUaupxz/zzThSiBo5lNCmBmsaocr5gAkdXxeylK/flqAVgMfBR
	feJcsPoZmkgUq2NieMQuj7GBSPtGlqJrT4/kfstFuZqXaGp7lCdX0t7yA+uR9AremTSoZ
X-Gm-Gg: AfdE7cmTyALTLM8w2XqCIjaxmF2FOhu70roefS958TXO2RIik6Y2lGYaWYV+g3RTyF1
	0e9xC1pHBgQ218xQci+ZR+xyCjjR45zdCIFSQl/e84vQD7pv4TyvRJ2RkdFUXqpmfEayZoShdur
	WuMthaXrCQ7HdhQmQ9ItqNfYGd4aXq+kiFftutrFzoNVVTffwVISRUtQDyKVI90a9i2KNGrDewu
	LhiWiJ25v/WLUUQivUYpXX2+3VyW7NYaYv1TTK4LqaqLkkiPIoVSLZBkfrD2lslDgt6EgUynuoD
	M63YSUqXEVQeVzIf4CNkr2a0wG0Pt53YwmSuilMlXlhE7mz7VliuVCJQTPJGbMFiw6Zvm/zXgsd
	k5iIZSCulxq46lNTAwraY2L2pYw==
X-Received: by 2002:a05:6a00:3a1a:b0:845:e41f:9696 with SMTP id d2e1a72fcca58-84842efc60amr2344167b3a.25.1783513090480;
        Wed, 08 Jul 2026 05:18:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:3a1a:b0:845:e41f:9696 with SMTP id d2e1a72fcca58-84842efc60amr2344124b3a.25.1783513089953;
        Wed, 08 Jul 2026 05:18:09 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:18:09 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 17:47:33 +0530
Subject: [PATCH v7 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260708-shikra-dt-v7-4-977b65a300c1@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513058; l=4667;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=JKX5E70My+XVRb8vy3rdWNaWfMYpHPcqDmprlGqm6Uc=;
 b=RU3wvT0LYgQ5pv/gjeo2egvywfcFhq1D5piWQdQc5qMXUgwSwcp6KTHL1k5iTElQDvkIeVBri
 FQ0UX24I72ICfEZS/Uq9fiUMGBp8Gfjgg5bwpdemUYOkx/VMpB+qrRo
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: _A2Br56RN6f3jNL50BqYGls5ZhjftaAS
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX7S/nFvChPTAs
 4WqjojZNePjJR4shqpPnD/MQIHVBddCeqaAlcWTvablIhbNA6RGum+83B/q5wuwUslvw4qop6J7
 hIpLGdNLBs/OwofjGEy9vvbOV521KB0=
X-Authority-Analysis: v=2.4 cv=CNoamxrD c=1 sm=1 tr=0 ts=6a4e4003 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=IZjsGcCFCfEoDLf82CEA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: _A2Br56RN6f3jNL50BqYGls5ZhjftaAS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX992KWp2CFaFF
 ATa3UBF//kVM2tFbCA3CmQrSzk1t0g6kfbd7ORezX7NcPeNF2+9kAS35qk7MgqnG3VyNFCh/bzS
 9uNl3ZYoFCgLzOVvJIFs0N71fTxWj3IR/2Dxz8SIfHlBmmLBQAUHwPUlCo1sQaHV/rlCD/8KoIy
 ekJBmnKuRfK+vt8nlcAPhgXXFpmZEyLo3sHS2GwbwIElSpMtF4FUOCX2eyRIGaI/4UD9KQ/Ktdx
 0y78E1/dBO/zr0K6mcfA4fKQEOG3OntVf5DYr3uvTRzpNpq+/378/eERrXk0a3dDm/fVX4Mlq0B
 p95Ucvy62K5XOVRk0mn1+LUq/iUj97N1iZfadAdHmImypjjObLJvjDQmOt2ycccjKs89DAgJy3w
 FQNht2fyiC1j4GQCkBGWRgcNLpTRsuBc/sPMvtqnrSoOgcpfIRi+mm0no1SIAZcmssZRDb8fw0F
 0tz9rTI9JmMEiHOO6vQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051813_945130_BAD65FE4 
X-CRM114-Status: GOOD (  13.93  )
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

Add device tree include for the IQ2390S variant of the Shikra
System-on-Module, an industrial compute module integrating the Shikra
SoC and PMIC for industrial IoT applications, designed to mount on
carrier boards.

  - shikra-iqs-som.dtsi: Industrial SoM without modem (PM8150 PMIC)

The DTSI includes the common shikra.dtsi and adds PM8150 PMIC regulator
definitions specific to this variant.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi | 170 +++++++++++++++++++++++++++
 1 file changed, 170 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
new file mode 100644
index 000000000000..73945bf42112
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-som.dtsi
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
+#include "shikra.dtsi"
+#include "pm8150.dtsi"
+
+/ {
+	gpio-key {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vol_up_n>;
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&pm8150_gpios 6 GPIO_ACTIVE_LOW>;
+			linux,input-type = <1>;
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+			linux,can-disable;
+		};
+	};
+};
+
+&pm8150_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm8150-regulators";
+
+		pm8150_s4: s4 {
+			regulator-min-microvolt = <1080000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s5: s5 {
+			regulator-min-microvolt = <1574000>;
+			regulator-max-microvolt = <2040000>;
+		};
+
+		pm8150_s6: s6 {
+			regulator-min-microvolt = <382000>;
+			regulator-max-microvolt = <1352000>;
+		};
+
+		pm8150_s7: s7 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1200000>;
+		};
+
+		pm8150_s8: s8 {
+			regulator-min-microvolt = <570000>;
+			regulator-max-microvolt = <650000>;
+		};
+
+		pm8150_l1: l1 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l2: l2 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+		pm8150_l3: l3 {
+			regulator-min-microvolt = <312000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l4: l4 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <975000>;
+		};
+
+		pm8150_l5: l5 {
+			regulator-min-microvolt = <788000>;
+			regulator-max-microvolt = <1050000>;
+		};
+
+		pm8150_l6: l6 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l7: l7 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <2000000>;
+		};
+
+		pm8150_l8: l8 {
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l9: l9 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm8150_l10: l10 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l11: l11 {
+			regulator-min-microvolt = <1100000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm8150_l12: l12 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <1950000>;
+		};
+
+		pm8150_l13: l13 {
+			regulator-min-microvolt = <2921000>;
+			regulator-max-microvolt = <3230000>;
+		};
+
+		pm8150_l14: l14 {
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <1910000>;
+		};
+
+		pm8150_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+		};
+
+		pm8150_l16: l16 {
+			regulator-min-microvolt = <1504000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l17: l17 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm8150_l18: l18 {
+			regulator-min-microvolt = <400000>;
+			regulator-max-microvolt = <728000>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
