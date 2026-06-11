Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5118DCD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxEWZgnkbE2Bz9JfrVEo9iufXNn2CajY7bYhv1GfIb4=; b=REufNwSTDpmSxQ
	HcaEeKz2MKkqK2GWtk3M0bSL2gGz+RmyjGB9nPghAR9g/sWoME6LNO2vCHA8XRpfH4/LTeymtaJ03
	e7TJ+liA272tHcLYqIwwOJf6h5s0y4jJfA80AxrRAPILBVGLYt2+m7GYU8OXbdiUGvOAIklajYtZz
	nvUU5iId6wO275rDIAQgZp6JU+1sSovP2I7O7txHmURFdO3vUtU3PXicr3zqBaTdillVPmKCVULgx
	0N5fDloXsM5x5nxFdQZE4yQ9RFCg27O3QbPGeUzv5pGi39gm02xXn5wVzyjFN8XwiqQrga158DFdt
	5dkHUjmU6gM9CzVE/pWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcN8-00000009CEV-0Nsb;
	Thu, 11 Jun 2026 10:10:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcN5-00000009CDp-2nwo
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:49 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BA1nxD271404
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=; b=EoOO/R5RnvBtfg1n
	QXzYmMvB027F4rAa5DkSbBDUMbliK3XkfpH/do0Ke112SQyqpw9dBj88gDpGT9RH
	W4PfDb8/Lopd3C+cRyx6ypfNkfknhyVPIoysu1kOtNJyd3YeSP0GnrHSgweH+VW6
	ZgnfyQ0uXTl1B/xiC5iopePT4kjcWVEIPoZa6wR0dB1Ye+ydb1lO6/rN/xTkEEL5
	Z07XbTkoEDGFddR0fDqCBrM6szDbq38WngiljN/LgGbVuzBX83bcbprDXry/eh+e
	ygo8XRmDoHPofMGhuNlG1AFhmunoCXOmt2FwH/YYBb7CnTIQpAJlTkjy6gNRfgJm
	2G4ehw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe71jy6k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:46 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c8628dc1802so4702402a12.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781172645; x=1781777445; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=RTGfAMkkuCvHvMDcOBpPEtOucjQARQSIUecOnrK8nwuEnLSl7Hw2kfMOqAFx4Bz+3H
         Ea9OEEKP4uTAEScrHE6h03QbRuyev89kum/ifZxYlBl6zTYODUKpMjC8bw3LKaMrC5G1
         eyx2flFhTrf7uODXtgVeb60KKrrkJTzSRKNYQl3EJ0z1lsPcd13zpXRmwy/FarsFDDxD
         ysIF9XLLN2JClbsiVRErIkrX9EuDeHIQbwCibIOBhZA7uy6aaHxdTs0v942i3fG/kUOX
         qqGBEMqDwlo6AKtdo7HpnabEabx4IZ0rYt4Lf+DOOYDllkJNSa7VzQ4v6HnUZkQgS28c
         nfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172645; x=1781777445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=IuNDoNC3tLtdWxJ6RatSTsWdnno5nKjy5CGbxRpAvzoTeBWMAQ2tm3PkluEho/Q9jh
         lAY4sgtXXBQXVn+mb7Z6mJ6QvAwfyWk9JFPuOHp0749rbOKg/gzPkn65kPBALHf9qqOD
         auwBKiAAX3NaDHdeM+5Lp8SpftASJnjuovozlI/piait6YkzyTp2yjI0ZSs8KLgL4+E+
         mWVznAlcE+tFUHzOu5k4SnMVwpWTEAMJj3HINVS/WTNkPBjC3VpoW8wXqFSAXxAjKxEc
         iPdnHeKIUhXOhsVhWVZwBoaVwsABvhjM1078UN0Vvt/DR3A9hpR8QOs0s2EcDv7UHSxn
         c1yQ==
X-Forwarded-Encrypted: i=1; AFNElJ++SIfLEPXQzSi5rbayuVaUXYLRus5Rdy826UMMua6dAIHdynC1fF8SZMie9RqLfjtN+RcFsVo9oqE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9HX5L937+iTVlmDePJ6/QNhRM8Y1PabU0JmSylmMz/puOp5od
	+ILA8/hBKqGDZYucS7z9Hq1a5qarYAgS8TKxCaIRhFggg29N5bxCI0Zd4Ns+KPLRdoIYAJxBZjJ
	ar5Ye3ZEh5t9Mh3OBEeYBAofegwvRqmYaYj1pbRgpYvhO0VXyC9MsU4JeJizNAHPG54Xr
X-Gm-Gg: Acq92OFfTXBbRuhsU1JVtv9d+BEofnbhpACtotxVdV9mmlkEJMVCIZMLiaN4CNcn7We
	LgibNZhOkEH8cYrudCBjI2srnY/pK4hR5acWAx+ViQCLtQyGI19DFcpQmha8kcb095h3wGauXBn
	lQlRaQVQllCJZtMpSSRaOaFQdMH/CU/7F6szzBWg5xJntxAbIxGB/UXq4Ye6YsTz0BYDFsEq3BJ
	yN1od+XKRPpgskrqL9sxIZS5BefpUgslyz75bJ+sOYApIYc72yqAivnoQSwPhNRGY7cSY4lhBJE
	oUECEonhoGUD7vn/eUYAc6UuPtH0y/lg0Xf5BJi305Qjg54vkgeNarVZ66uXDZSKbOeAEj9DyN0
	ZhfHCLx1TkYmweRamFxwwQd8Pt10+g65K8OOtcPTQa67b6oo=
X-Received: by 2002:a05:6a20:9f46:b0:398:89b6:1b41 with SMTP id adf61e73a8af0-3b5e33a3a05mr2479885637.32.1781172645536;
        Thu, 11 Jun 2026 03:10:45 -0700 (PDT)
X-Received: by 2002:a05:6a20:9f46:b0:398:89b6:1b41 with SMTP id adf61e73a8af0-3b5e33a3a05mr2479842637.32.1781172645121;
        Thu, 11 Jun 2026 03:10:45 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865860f3d4sm1279646a12.19.2026.06.11.03.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:10:44 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 15:40:11 +0530
Subject: [PATCH v5 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260611-shikra-dt-v5-4-103ed26a8529@oss.qualcomm.com>
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
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781172612; l=4539;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ODfMe8YwpE9zm6WOKy1yvRuBsZs9KnzIUkMMO4tFT3E=;
 b=H7Hx3kKkmjdEfTng4u6WtvNRij8kmTccmMfcIe9Mwde5R36N4hRU22QeBBeGc05uBLniO8l3D
 h0jkcbjNRvFCYME/XH8xkIvBxqrSVfBSJzzRrwVcKafu00YSsnL/F/m
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: Vq3VRV6lqdKQcHdxGMWjJDCqU5p4bZ1Q
X-Proofpoint-GUID: Vq3VRV6lqdKQcHdxGMWjJDCqU5p4bZ1Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfXyjqwzgNgzffl
 DkTgboSsSY0Q75ezGbDpW9OaJHjI+pnCNsoBHvlfESN5Z9bj6SQn8z+e+YOqqLq/2N8P4AQuJ6q
 21xVNs/51rED3ocZ+wPN9/hUvn6y/CjxHcUjx5cq9rVHc6VmbhZ398QAGbZUh1e/kEtH+CtJutU
 jBEk080UY+aEdYKda84FNOO/2zaYcM3GyKjO0QqYFt4flO8GZ1dBWoRbuiKr/r17YeeZjZWqiP1
 Aseq4x9fjM77uTKfIvUPUEUpXwISFYppmZzYrRksi4j8svqAFSJH4IOmrqlolo/6F307Xwoursz
 r+XoNZD3ARMU/k5hIZ3JvuqZAc6SCbFl+cyjQm+7yUkxE0fEGYeyY9DqObbG3EnSQRWUFrduDQX
 eMRmIs8W3AuKqcTZd1MTyLrDpQ0dgfy6iA0JE0MAST2EgzMLSJRwKCgOXCM2payY+OVCTFqYHyG
 SiswemjfyKgKM4SUJOQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfX/uXEjXEelHHV
 G+H+xLjyNhLrIUtMWutKoYIK/Z/OzEcRNQWfU1UDYnzmvDz6gGNfKPVoTOihglN5q2PAi1p0/FD
 mvdcW/rpYPP3CHmGz2oQHu2yJHWP5l8=
X-Authority-Analysis: v=2.4 cv=Lf0MLDfi c=1 sm=1 tr=0 ts=6a2a89a6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=IZjsGcCFCfEoDLf82CEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 phishscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031048_152885_0D240F23 
X-CRM114-Status: GOOD (  12.65  )
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
