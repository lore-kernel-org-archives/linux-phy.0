Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D00CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDSu8uB4J1VdHBqUQCmrGOyWp5tTN64n6u8VVLoa5QE=; b=uhmrFiHI5Rz85A
	zqHPN69YUP1mAIiVk4DH0jtfRwZVyHBWWeFWHPg9Q/OHeCJVhlHQXzlN5qHRD7IvgkBjfa290cp11
	pgi6wtqf8aN86J7gCEbFQOP2C1So73688iTlj1z5Bv/GC5OxOXZRmsbociJTcc6bLcWvybze6wbGT
	1KDDwSpOIxmHMrS+Kb/q2zTcquzSE+8NTOx+YmOcK4vM/Me/12QzKckoUXf0DLn2EHdd5xpvRpTR1
	2IfTj0OdD6xL892OOBvpxgakkZGPV905h0nj2wh8iWCZwgjTMlbcJsE//GbEe65UcfLKW2bvYO24q
	YKlEj3oksfNzYe4bjVkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcN3-00000009CDD-0BxC;
	Thu, 11 Jun 2026 10:10:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcN0-00000009CCP-0fmm
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B9xpp1214474
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=; b=b9DAsjtyF6XGUzuh
	7e/d+VvDRiKucG7gUFlZiJk+SNnSc75Y0a2QHcjklMrG62b6qUqqJjxaNABLt2PC
	eVM3tY1Hcordj6fmHzqA5JbH2rRDZlU5pODHDB9J9bnHzyIbAAYiMnsvCC6deVqB
	U/DymwsaN09FrW6lZ5R/KcNuCm5Sf+h/a/ahF+Y8Qva3hSycpUQlbgVXvOaITedi
	+gsfBm0hdckn+MLGOYQNdn5VOBoGXHUUOJ5LyA426nw3emKM11DEku7xhj+F8cJt
	zQNckpfqDgkJUeZYwLnRaFm+Sknhxw43IPdyEk+EHq+5YZxgj1VDyicAbnem2bE9
	d6v2cg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6sjxkw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:41 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c859d79c10eso7795076a12.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781172640; x=1781777440; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=;
        b=W9gcwSJvBIDJRZklf8jY8IiUswlooqQVaZa58RQdJbJ+c4EyveV8UIwlUh2Rp0c3pz
         ny4tk/sp924S3nUM7uorknFEzsIi9uNINHnCRY28IJfRSCTBczbgEINHr5EaswJ1MWme
         Vtvc/6eW4qXldB267IKx//j0bV+GUWvyoFb4DpXw4H3Sixy6uGZvlaeWwOkNxdbiZ+Jp
         eEkmfRb1PY0YEvswlNhQB5J9SpNpKiEIOqsRrgEO3ZFI95JYzLSQ/N/eQox+EQw5QF/s
         ifNfbK88QrvcQRKaR0eAjbyS3SywHou83p2Y9DPtjRT/baVI7+ZIouHFIFh7LaPsBOCS
         4x3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172640; x=1781777440;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=;
        b=F5XsRU9B2dEbBWNXjm6wf/qvJV7E8blTmG79YBssm2rr5oPlZwppZPFi1Qavgjml7O
         UWtp42JoPAwSO9AhvPS7nmBIEvlGBN0o1k9HoWHfvuSWoJwWaS4bu1QrVeeJ3roSFz3s
         LuqrRRUaGj2EscproDe1JkOfv2Ym59uOrMEKhb6hssIHN6+vKNrU9KmSvbIgv6byECML
         SzumSrBSLdjrHlFJnuNbXRMrGoR/WzWwutUX50RLr3IKP36CMW24gGx5Fh6CKv0npKdJ
         t5KksYYcnu0GKzAiicBQbOo2DjN7SIynVUdaJNwL0ERhif/fwaaFb9RSiAR3PdTv6r7q
         wiyA==
X-Forwarded-Encrypted: i=1; AFNElJ/3VRQbmCNuzu/EUAQo/nv3++JdzHpbl4DhinFodcJeaXjo+qbrCUJy1z9E0jqSK2US2/AVHxM28r4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/5vwL7zIzQxblG92BpyIpQw0MNicofXMbH3Ast6AUF93bxJ8i
	F1rneIndWCM9AOJfi0X8C7+LYUFZIQCF7a70a8NW0v/Jpl8GWOnFSbxvFWH+6ObCzVDe67e9EtV
	W/3+Bykxdy5G50VEbMVAwjFjXW3W5zV+eQqxMRYjr0p5VTQq2L0/i9hKqhpC457o/XcGU
X-Gm-Gg: Acq92OGWhDbMOyhGvIxHfGh97lQVKsnS8zY3TSt5rfSWU0rYzHCu7m57dJst5nQH45K
	q8iKTxEeUslPc165n+oVsjDE4Y1DGjgPzOos+1JEPAfoC66Qzna8I1PZ+qXyd3rcqf9YMeI8AL1
	S1Wsp5j2C/YWuEYUqF50HigQvTTKn4H77TrXCEke7vgUBzAGyvKHWTljhcDMhV54t/GSBJkpnvI
	5YB/Gh7nnraDPYaDppYShN2C400p8zZKSjtccqiABQBMI8tz3L7ZLfXOsc3PO9CSdQvWcjGIZ1U
	lh0kz+w7wJg0mXLxN5otrtSljvmYL+xmmODprnAh1piqm/F0h3vrA8845klOn67RsaMHu7qL5SK
	c7Fks1Q3q/v6Dr5zvaBanhqyMdqXGKGQY9BSR28k1xXn8z3Q=
X-Received: by 2002:a05:6a20:2448:b0:3b4:87c0:d90 with SMTP id adf61e73a8af0-3b5e33586femr2423583637.28.1781172640042;
        Thu, 11 Jun 2026 03:10:40 -0700 (PDT)
X-Received: by 2002:a05:6a20:2448:b0:3b4:87c0:d90 with SMTP id adf61e73a8af0-3b5e33586femr2423539637.28.1781172639553;
        Thu, 11 Jun 2026 03:10:39 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865860f3d4sm1279646a12.19.2026.06.11.03.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:10:39 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 15:40:10 +0530
Subject: [PATCH v5 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
MIME-Version: 1.0
Message-Id: <20260611-shikra-dt-v5-3-103ed26a8529@oss.qualcomm.com>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
In-Reply-To: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
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
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781172612; l=4449;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=w1EEpnLR6xXq+MivEnb+PLIzt6dGl5j6KmvIWASlAcs=;
 b=8gVoS30lkuWjAWd86AnwnX/01hSYh8ATXkBrk3/U4Xsku5YpjfWMCzOehMCEqMv9m+Rd/O8b9
 k0O39HTkG/NDhY/ENhEHotPjfmSjEx1HY1vGlNtpnDHdpY35PIfDSJS
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=GbMnWwXL c=1 sm=1 tr=0 ts=6a2a89a1 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=s31jhp6hv9j5UOuNascA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: oE8EDDCLLnyMThw6N9wenoms9WaS4-U4
X-Proofpoint-GUID: oE8EDDCLLnyMThw6N9wenoms9WaS4-U4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfX92egbWMAes0Z
 WMDaPQr2LY600cGXJssQLWqQvTsaQ7AXiVK8FmAtGjp5mLzh5ZYxECuFIE0+qcI3ejxSYmGsy7r
 0/b3eO1O6F2U5ALhIk/IEGzcuMqGJSpomikpzBdhazUUUwoHstRdXDNwWnkfGtZFXuRk72dh0ab
 X6DotTuK80rlonZSq6yVjRotGFTHJZBUcJwNoc8jrEWZ9NJAAkVhsTd0YQC673WcS/C+zV8e1dx
 /YM0gefKZc287MPPvCKC2aST+OGY9vrh3GAXN6N2TWMZX9+4t6zmXSPPF56ttu7Ygsp4pvENTkI
 8Ps14WvpQx7otjLS9pMc7drukaFW3o8cS1HztJ42R4P2WRhUvxwOXSoPw3FR+XdhFSVcTi2wG85
 HUisgmm0tRTaAf2bAtXTh3Q/92iCBtYC07TDBIDlRFMWC2O0lVk79jWVNkgg3FBD5rjrkhyI/Yl
 Ipdmc2Iu3JWSiS9+Xcg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfX4KIbFxDBXg9z
 6VycMqjXHWCA47pOOREbnOgR8VBQv7Zn+KRpLnPii3wuxNEwzMpOCoGzPioGVgdjKlyifehG59r
 a5WMd4oc5uA5TbgGmrHDbiDGRLik+w4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606110101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031042_328196_777F469F 
X-CRM114-Status: GOOD (  12.59  )
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

Add device tree include for the CQ2390M variant of the Shikra
System-on-Module, a compact compute module integrating the Shikra SoC
and PMIC for IoT applications, designed to mount on carrier boards.

  - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)

The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
peripheral definitions specific to this variant. Since PM8005 regulators
are controlled by rpmpd, so disabling the pm8005 regulators.

Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi | 156 +++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
new file mode 100644
index 000000000000..dc3861489f64
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
+#include "shikra.dtsi"
+#include "pm4125.dtsi"
+#include "pm8005.dtsi"
+
+/ {
+	gpio-keys {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+		pinctrl-0 = <&vol_up_n>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume Up";
+			gpios = <&pm4125_gpios 9 GPIO_ACTIVE_LOW>;
+			linux,input-type = <1>;
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+			linux,can-disable;
+		};
+	};
+};
+
+&pm4125_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio9";
+		function = PMIC_GPIO_FUNC_NORMAL;
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+};
+
+&pm4125_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
+&pm8005_regulators {
+	status = "disabled";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm2250-regulators";
+
+		pm4125_s2: s2 {
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1200000>;
+		};
+
+		pm4125_l3: l3 {
+			regulator-min-microvolt = <624000>;
+			regulator-max-microvolt = <650000>;
+		};
+
+		pm4125_l4: l4 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l5: l5 {
+			regulator-min-microvolt = <1232000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm4125_l6: l6 {
+			regulator-min-microvolt = <788000>;
+			regulator-max-microvolt = <1050000>;
+		};
+
+		pm4125_l7: l7 {
+			regulator-min-microvolt = <664000>;
+			regulator-max-microvolt = <664000>;
+		};
+
+		pm4125_l8: l8 {
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm4125_l9: l9 {
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <1000000>;
+		};
+
+		pm4125_l10: l10 {
+			regulator-min-microvolt = <1304000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm4125_l12: l12 {
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <975000>;
+		};
+
+		pm4125_l13: l13 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l14: l14 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l16: l16 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		pm4125_l17: l17 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3544000>;
+		};
+
+		pm4125_l18: l18 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l19: l19 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2960000>;
+		};
+
+		pm4125_l20: l20 {
+			regulator-min-microvolt = <2952000>;
+			regulator-max-microvolt = <2952000>;
+		};
+
+		pm4125_l21: l21 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3056000>;
+		};
+
+		pm4125_l22: l22 {
+			regulator-min-microvolt = <3304000>;
+			regulator-max-microvolt = <3304000>;
+		};
+	};
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
