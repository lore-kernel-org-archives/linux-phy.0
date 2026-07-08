Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AFD7C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXdRUh3PYzee+xS1qtU5koqFDAs6QEw0StZpimPbrhs=; b=KN4Vx01Fb9NxTu
	BVMQ1gB6n6dxyGdtzeB0yU5F4eH/vkVEMgRZXn1RFbpvwfgUBTF6y6QBEWVlPIB6CtCf6yftboFd9
	bQ7z6gbO0Zn1CzdVXyR2thiQdDXWvplFKijxWzyarKj1JM94UqfU3tSFz0oglnaS5FmnlHmWhbJN2
	hvygzNzDW8F2YR5gbXFSDP59eFURFjFcrgdHBGR1tD1Al2QK9JxzvzlfYGzIJU7qn2uwBtwp+ffvl
	1ryvr9p4T+tJEEJ11b65XYd+HC5WA+Ls/zZsHR097nurLyauHab3fpp2vNbeMT1qGYRrY5T/FWRPX
	hDd0nVV6evTxVtb658Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whREB-0000000H6I7-0VFu;
	Wed, 08 Jul 2026 12:18:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whRE8-0000000H6Gx-1gPr
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 12:18:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3s7W2751523
	for <linux-phy@lists.infradead.org>; Wed, 8 Jul 2026 12:18:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rbr3DHNWkoFlkU1mt2/bnOyZPiDytRF3snlyP313oIw=; b=F/nyxWqAFEuFMyzf
	m46Vvyrkq5P0iH5pv7wZRpd59wBnIjMcBdJqS/uinPeXX7zyc4Kgy6YkrUAw8PjM
	t7WRlUVHxQClzH6MH2Avf183oqCJNetYOHZcqzzOGF1qak+0VQ/Drmx2WgId9aV3
	Kkq+fyKZ5m81Woqi1R4J8+isJQboNUnU0zUgDP2ED7bzJgV5nVlqXH+8dMmWSR5m
	RRGrWudEsKJ4oCoCNoYNGTCB/Gh7qAyEV+d5EHZjZmDv+URS7mSKixDrcxb60s6a
	RWJ/F/lXDUU3XNm1kofnXp5m37oOcwYfIGeASCzRUN8NPgVybc/vdwv3PzYnUOdS
	m4uCeQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9csstc07-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 12:18:07 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8484b57b98bso467305b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 05:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783513086; x=1784117886; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rbr3DHNWkoFlkU1mt2/bnOyZPiDytRF3snlyP313oIw=;
        b=c+uYlMagbYzP/AJOpFV8K/53jbCUM10Pc3jYg9oGl0LGrC6AiMgXr13qNLN+MUwBRW
         mTwNs4w5BnkYWQXFTmy/Al3g/d8cXdt31DXwteMkGXRcpxlsF0uUMCtoCQktMMxMuMWK
         AeJipj4SNQkb58G1S2o6v2djpoueptsPGcq8s3b8WQAT9frXsNggNd20uQvGJmHapRXG
         A36qONJ2op4QgX58a/mTWgBOc7cQrpFPZgvAIAo31WrPVDdbCifPrCOQa7enXN4HeEhp
         4L65cS8kJ5JfmJp2EeBda568+6JR78GzRp570hs9t1qy4uqdZnl4C7hjhDH6WmPP3fB9
         xsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783513086; x=1784117886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rbr3DHNWkoFlkU1mt2/bnOyZPiDytRF3snlyP313oIw=;
        b=erIR2nhkGEh0alslQkqcVNNCx45nLKxUY6rGCbJ4eCG9oHPoIWiMmsySIxmKJLJyo9
         sOMR0dLS33jMaNzU7/aW2CEgjaoPJL3+kZOBplZPRf8yh/R/6yJ32n1LzVx1gboCX+Ys
         m6oaQUTdjkr7kvwimtiddw49LGi7Suag9+Mkz9q3ngPZVynI2c75o5auZrzpY7TfsksU
         eiQVwIHvSpbAFY1sAVuedxwDGvIwusliRUu6n1xu1hKYL/KcTczlt5D7eRAixu2um/ls
         6reqwAVO+dB+gHi+6zv8WWR3vy/AXUIqJVG9kgBqEJZ7fg6+kelFz2bVns5dfFsCBRm5
         pfuQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpfuvrt5qKT2d2pHDZmaxkwx/8TYEVeUuVjBh/OrGsCB9WG4PQgc7swsetfJkocmlvuSnkFR+ZO2QE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6jScgcHNkusRxagYCI67R6TuZp+AETqJTDCB1hN8FYfha8gZ8
	W2MikuO3q0dRL4/tpA6eqkRipsyAsDhSQLEM7fIEx7+eSSu8CeIUJfvUt9Apwcy2MjkzQy+wPG5
	RKcWNp9ayvzTidpcISrd6qQCErXxuVtCQma53N6o1gPnieQ7XrNSUT23pZl9TlaXSIlrf
X-Gm-Gg: AfdE7clVSwjg9VoFnYy21zzuI/7koMzSueK36I0mN0nZAKSANfJUtV1umBPNNSHtdB2
	MmIFiIWkWE+Aj/9ZjqYNoP6t/bS/jPUs8/k/SyaI2V9IpMWSFXy/2WutPVmUH0/SaE9GNmkohD1
	NA+bwVM+zxajUPDotlCttXsDDX2uZAsioA/9b41FkQxuwbAoMQlpLpV9+9ijvWjdZkw66sbmm7M
	iAo6m5tmhgIOR24qfXetY1ggrPmh5YJdCt01UD6mFMokIb5Cf8nTuj5tiJhHEurKIwgQYphUQ2x
	7V+A4voc4JGtfqZRyp4j6/flsVl/uoAb84qtKKXsO+0dUDT/BIePK6PtGA4E0rtTvaGMQzo8Rfy
	ni/+QqLTSoH6RY6AqlyZ8IrJoLg==
X-Received: by 2002:a05:6a00:94ed:b0:847:8c4e:1d5e with SMTP id d2e1a72fcca58-8484344e473mr2230810b3a.56.1783513084782;
        Wed, 08 Jul 2026 05:18:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:94ed:b0:847:8c4e:1d5e with SMTP id d2e1a72fcca58-8484344e473mr2230778b3a.56.1783513084292;
        Wed, 08 Jul 2026 05:18:04 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-848337d12ccsm2367474b3a.48.2026.07.08.05.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 05:18:03 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 08 Jul 2026 17:47:32 +0530
Subject: [PATCH v7 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
MIME-Version: 1.0
Message-Id: <20260708-shikra-dt-v7-3-977b65a300c1@oss.qualcomm.com>
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
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783513058; l=4577;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=2+T3//RkEzgk5/MnGTs6J4ytHBN70iZHVgNVdIr24Oo=;
 b=OOv4AiabeVE2flsoUuzCizOjiHH1s5lY7jrgD2PR22FTRPGQXsY9zvh90m851nq5W+DTCD42Y
 KjFcCAvXBnPAZeW2dtiMytCceWkt7U0QO0PO0sCbI/g0TgRwhiiafrF
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=EtziaycA c=1 sm=1 tr=0 ts=6a4e3fff cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=s31jhp6hv9j5UOuNascA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfX/s8wvf9UWb4U
 Uc2SPP5tbmmMRQtl7xrPGel0NMCVOIIuboHKrc9AUDHbkaqvYleFcx2dFziKV8EBa/YYbOz9ppp
 5ye6OAg9y9drNp97p5Wpe4hJfN7DBAhbtsspR2zYiOHEMWdbwjiTeV7G/Wr4aBUL1lR09DY198g
 ygbhGtkJXJGRk7rkb6zUDgB2sf6K9WLkoyFfz3U9H0b86g7LqZUmPUAdgWwAYDmMxLovRildIxi
 nbevcfrGC9RF8rrCX4ulfd+rsZkv6AATBiwyHEA0N7v8ITnxnA3YcOG/4Re6tUOPGtQq8C3X0f4
 67j+vDYlIhyyagkqCd/E2fDO6Hy+f9uYQA3/BzTBGxc0bjv/GE8bIBY34cKXFbDTMm9jGSUvMw/
 kwNsTowx1YEa533uzdJdr7fmCVxVG4SEUZZCBzwx77AKvSF6/JZnwWluuUm5CxCqSuu7KjDB1ul
 YNnxLn13xbb5zcnizxw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDEyMCBTYWx0ZWRfXzq5FdsrlOmYk
 jqg+z7X8ncHq5EEn80btwpF8KadfO2d+CIMfqiw31VU1BFep3Y21KFJ+PpCnKF0O1LKcak6liIt
 cxaPo7TFs5OCSgzpATeKbA7mnpsvHgs=
X-Proofpoint-GUID: R1ilPFr5k4ytJvRYwfJt8VdQvk65_s2T
X-Proofpoint-ORIG-GUID: R1ilPFr5k4ytJvRYwfJt8VdQvk65_s2T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607080120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_051808_565254_E140C164 
X-CRM114-Status: GOOD (  13.69  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
