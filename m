Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93169CD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Atnx7L/tjm6C2/rWmeUAdn4Uo5s+c/fO1wHqva+F0A=; b=3Ykzg5h00XW8hW
	GXOxia03Bu1Ct1fKPgYPVW8dhbkhepRK7jw4RTKRIpME6qV0u+gmldPJsQi1mlN2A7J2B4+9oFJXU
	jKUz0Rhxi7Yp5vcm+4owOM/Qv+V55IkF+CV7mWTKjnJuUofLWVyfHJON0S/kSFTkrC88D79kCMI9C
	4Rn/SrkcD51HrTIZNWdPFNt0rMinHJW/BJMJWCZakr4ncmDppG6W9YI2+5VUql3eiAUWc4tix9sjr
	3w6n01R80+0r+rsJQCC15xYFtC8E/3ogp2JQOg4pxHDskBoQbMORiWja623XIOrNth5wpHf8jgQkb
	ipZ8lkorKP3UiciBSl5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5fv-0000000BLkA-1VSO;
	Fri, 12 Jun 2026 17:28:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5ft-0000000BLjA-1HVN
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:28:10 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65CGVsPg4113493
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:28:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GFFH/l4yzzszeD6f98GXq04InE6HvyOJJIVeeITfwk4=; b=EAvhOre3Q7CCEsa1
	2DPq5tVrOWgRi/uvGABZTdGo1GeIinbfNrIm4WwRrsFulv3At+ZpwDldSeXJp5ie
	BDTZytENTGORf7HYXmIls2xQ2b6EW9/sqbHgLPIDCEoPolyzKFSXYwi75fCea7FE
	GPNj8k5DCkNPC6zL/jjQOXLAww74kj7TCS148zX23B+isP+FUjvVT1JkvOIOjfjl
	CVQ7JYWd3PthPa111EqzKxMFG8fgiwgVEfUPC5jZToX8iqmZGVPQUsfzscFqagQ6
	l6ZrlbwUUIzz+Fns9EGAtrPTI13H5PvEHRLcH0W8KncS5BjChgdDWYkFCWczIWbi
	3lqbyg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er30gbuwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:28:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2beff6b6e74so16359865ad.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 10:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781285287; x=1781890087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFFH/l4yzzszeD6f98GXq04InE6HvyOJJIVeeITfwk4=;
        b=S0PcFItNFH5l9zbHC2BvrbtmVvSkr3B/YmLI+VstxnG6KPeLDsD2oFFcRIxwuDQF41
         t9Hwax4mxfu5/zq/km/yo3nyPqCpOLWk3G+xJEtJXorjYMFLjH7DT1L4f5uovjAluN5r
         QBqedaFCrwOhhKBV00VJSoVW85OljgjjEgzxk8VhINPsagsUQrJFWusm57piknXvdwaD
         FOiTSrB1Fo72WA8C/oLkL0uNh/s2wCYcaBMC+gCQWg78Vn2FZX3hw0HRwbjTdcKyenfA
         KNYRPqP65+jU5Ipvo+ieuaeNU26xkq7+doS8vlgWLL3WPYSn8NVvKGjLsU6b/DIfslU8
         DklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781285287; x=1781890087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GFFH/l4yzzszeD6f98GXq04InE6HvyOJJIVeeITfwk4=;
        b=jI+kIPAXnAS0Wh8kdHxd6Q8C4/SOHr4Q+Mwg0tDhGBTJH4gaD6XsOgowdRxKd2TIb9
         xykgd/Qtb3bdIIqPvrUZbVWDVpG2p5kCCndjx7u1OBejwBGu7GJrsjffR4Enpu2QJUnR
         jgDLgO1T9u1ZmmOOoyl+szPPEK98YNcOtA7BSnGtaaSdb197vx9TqX7te1Vifdq96t2y
         RZXQLUI/rmirUze/leTOTGv1w/1LWrC0BCTfKQb2iXANKdQexpUrVITuBbbxeYgf0V4A
         hv2ENe/w/giLWLPwONVzQJRbKEOCIUTTkUiSlTlk+d1OHJatI7GuVNe6Kp8tHTb5igeC
         +vcg==
X-Forwarded-Encrypted: i=1; AFNElJ/kuw4TuhQ8SSxikggOj10fQM9m+OTMu2lVWZhTLVV/WamXyYzLvQXY9XSThPZ/v4zbvXv6okWzzho=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8n6ss8sh/0uF80V4u5xen9lm4c6VGlFOgoDmUmQzCE9G8CELC
	11MBMLBajWv+Xv5HNq8GBo1bkEn3nxx6p0jJuHtkwbmzzSYQHnUTt15FNUIkGhOuaCjUQptJ1Ka
	WAUyq1y1epFz8ewpOWzi6GSGUwc/iJaWoL2DygljFEKXl3ogFIsv799S4FnA5z8caxkz/
X-Gm-Gg: Acq92OGvgEV4wztQVeoeLgtPSJWdTXmAjNiXWu3CMfkBYGGyNGXEg3tfapkjwBWh329
	dlSTll4FK5fnRIcQwfHatJa3+MjFqQ+a3JwP9BWn5gz+eQMqyli1WUaIDNb2XCXiwX3LBFbSmLw
	lyaObJXVei7b9uoVF5BNdmKe3dIZZ3VIkm5vCtWLbxC+FPFU8OCw/akxkO6RcdM5Fv9m2aUpGBf
	FELfSW1pdYz2tsvjb6v8PILCkhtpJNbUhTs4Vja13+BBAT8hgKj1n2VXdY3cKUuo3UVp7YVvEE6
	uv31g/mW6rzmiflDyCSxzqxNy3cwD+m0dB/vDSIO6exfqKYVFT9LM4fZjsoHz3DdXPIjJKrINcv
	pMOY3XJP5fZNkv1sq15d2TYMRrQ+0wOnkwb3y
X-Received: by 2002:a17:902:e78e:b0:2c4:358:db32 with SMTP id d9443c01a7336-2c4111aea32mr45052525ad.13.1781285286938;
        Fri, 12 Jun 2026 10:28:06 -0700 (PDT)
X-Received: by 2002:a17:902:e78e:b0:2c4:358:db32 with SMTP id d9443c01a7336-2c4111aea32mr45051855ad.13.1781285286365;
        Fri, 12 Jun 2026 10:28:06 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327acae2sm24278105ad.52.2026.06.12.10.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 10:28:06 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 22:57:39 +0530
Subject: [PATCH v6 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
MIME-Version: 1.0
Message-Id: <20260612-shikra-dt-v6-3-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
In-Reply-To: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781285260; l=4516;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=eslOA9Cm586MnIpbe4Ehxfiu6FCtCf33ffQvBFXd7Sw=;
 b=xwgP40emI6oahWjbQJWv/JXBJtcRbdjGZ2sszGEteya9vySe5zQOOQc63QM/VY+oYuHLlmieK
 anrNSERpBVnBn230Y3g7i1ojdqopFFPXNaL73IdMuY0juxBfTX2LNiG
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE2MyBTYWx0ZWRfXweF3MUfyzCBB
 OxS9YaGGZUrImda896///efCkkRlmD+pt/zIyNVye+NZWh0Ej99ro+ALSYq+rVJ2zSxgq4C95N1
 U7bIqMGzmnx1g9yJaejba0NkVIaMJj8=
X-Proofpoint-GUID: hNvnmtkvf-Wiah2PUK9U9_l_WxC5YeN0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE2MyBTYWx0ZWRfXz3auU3l9aXiG
 1xNRV5Z4WEpDrtfDEp6FFROKF9xGYxHDLT4i60GCDWk7tePN9cyAnvi2Y90V9uQLs4S+sRXLqQc
 71A6VgztOqNcQCIOwnprRDdGNuZZYAQyKVmpxgUHZH/fg8qWSqlcXdiPIc+p6anQbyP+4RDULb/
 FmMOXpIBYAnzPMPUSFZpyNlPlmPEApGZMWLEqfo14m7/478aSfi3jwgtYlh6YLPBSvEYB0rZaeM
 2k11AU5caIamb8uwbggZ8/XUPUm2ZF9Pqa4yv1x8ci7SbhKCV2McMigvgSJrrhFoCNIGc0UUkv9
 Dv6xTJy0ZnWq1SiyFpwuO5oMYehLbHfDv2DSIuuDfnjnDztNYw/DUBkdzQ9NlxniWd7CTh6OY6i
 sesgX5qu6MfBDW93y/08UF5kswX9HQYTVmSQMTubD0rFQZlFHP36olMsEkj3MlLsOi4b4SVkg9E
 S3x7fqE8ahZa95xLHxQ==
X-Authority-Analysis: v=2.4 cv=evnvCIpX c=1 sm=1 tr=0 ts=6a2c41a8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=s31jhp6hv9j5UOuNascA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: hNvnmtkvf-Wiah2PUK9U9_l_WxC5YeN0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_102809_471117_A9C99A40 
X-CRM114-Status: GOOD (  13.12  )
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
