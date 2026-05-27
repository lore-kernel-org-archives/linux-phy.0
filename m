Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 677C7CD5BD0
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 15:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxEWZgnkbE2Bz9JfrVEo9iufXNn2CajY7bYhv1GfIb4=; b=WQGaD2i+nIpp6+
	cL/jPc+ORlFa2CypGkfs9TCVWw4Qr/eR0H4wmm5qa8tsLC+/36zwVwdZ11T9Gx9YV18HGsWlCoTob
	qyXvNtPyJCYkjU/e7SEa0xNON/GHIMg+7ToNk6VLYZyy7JTPfpPPd2lAnKdMUFJxmUBzywAt/yZE0
	pgTUMPPpXpkPCq6SuDiQ4HjPUbbk8+d/6aTUXxq6l+RSQgbdExbUwEyvLAgCkfwwuGmwX86GSDA57
	JRxxjFn3IrpvoaeZVQOwr5wYAcUJzYN8ZfBw5ImHdHo8vkBkr0q5ozw1GEJnjPKQyYthBqVcZ+mBE
	tBRqTmeYdBv2uROncA+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbk-00000004SF2-0eIh;
	Wed, 27 May 2026 15:55:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbh-00000004SDv-34Ge
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 15:55:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RC4uGN1477930
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=; b=WU9qjH8r9ZMfZOvn
	xGk4nGQujRa2iT6mIbQ1Cn30NtUcnlZJ4X6H7BwmDPOLLg1uSujPOw2DN41JtqUF
	lO9O1qTO8PBGkt/5Jop84u9pmUu9JxqBEBGagBdU/1RkvM9f/YH5VAlQSzS0VGaL
	pFItSV3y2fheiBIWirki7YqVNv7lWVw5wfPNnhG8RleKhxGgIBWpBRm3ZSHZggxG
	KZUD2X97IV4J/3zvXOfY5j4jExBArQ9dVPZzTMBH+IHCfmMvMUdXi0OBXsQWDJTM
	ysohmQUHK6micIWZ+R0Twtb4bIXMtygv9LJS6nwAg23zBejgsoP7GlskgNpXwHQW
	zDsCnA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ee0a88w44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:44 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b2ecc96a9aso133219255ad.1
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 08:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779897344; x=1780502144; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=FGIcKC72mbpopFg9qH0/Qn/lq9q36XVCZ0sO4XZOPUEvuZ75IGm1tegQ1vYkWMRa4z
         CwA9jgjzsQTMZ/mxhZEJa5Hu5N4Xoo0FfSZ82TVF+6CcWCu/AXgMWimuqd4lcLw1Ws4Q
         Xh0gdi1yRr16UuUBzPnwekPWzZmrt85ELbyoHaptyLzirWrtR+yGeoB+wQ6CbzadwAud
         zpkmAhQgupzfLVSrkwkKxPYki5982t/eJnEiPrv4q+Wr11IfU/OzBdoh1HiGeUixVsOM
         fMJF/NVhQlUpaleizXa6kIccGUtM9nSfa4Clo9jTfOncufCNlxEahV/ZJI4P2qUHkhNv
         dyEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779897344; x=1780502144;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IlhEybdLwbReB9UAd0lx67zdA/XyQhjGmwbRzt5Ttzg=;
        b=n+sUfY8q90VsT0MtY6cp9TNFOXBU2X3GoMMRPa86XHfeUDuoXrPhC2ebRBAfSQ3LCg
         rcCTL3sXGjRV1U424mk/rzPpUMECYFYgiTEhOPz6bay6XKP0uJ94uWj843iCtOxfVifW
         XPV5d98GJwlxOQmiRQYA6yDY+DzdMzEnZDibfC49ysqeTO8iIuwGbzTKjTAduOADzZsx
         MMwBJ+UXGRlzJ9WeOUtsrRyfPN3GZY3ZNm9sM+fzJh6g6NUD8JpLmqrEBTZTLBhdfOaV
         2LH67wfK6OImMJ75enhTDFZeAP2y71JzlRlhjDTBv2eLoR8xIXlL3VW2aTR3P/azmO0L
         uiHQ==
X-Forwarded-Encrypted: i=1; AFNElJ8hvReL/IEw0ccKmHYEhtMoVn4GUE8MORaT0CR+Pn1j/natGFeaDjpa6LLIdFnX8xiBDrH2EpaPVWE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmYcj8VA3BOhCiFwRv7hbUSq+aVFJqTmjNg5eZFjGXhxEph1mK
	A9D0utO+ti8BDBGMIj3n4zBTnub/lJ+vWXcoSBNGt3IWTyHv5kC9f0pPpdwG9WWFcuJRxdYCgId
	dJBjb8iKCw0rKXAR10qtwpK+CSS1mF/JrdGWrQckK7cNYaIwdiLN0vTgc/RLPNQypzDAu
X-Gm-Gg: Acq92OHoRJiime1Hykx9mHjFDvlOiIfosGRbWbKr8gBEzdtQVKxJK/L1oQ5VHEtb2fW
	TR3ctr6dGtbCEkPqPTTeFqW5eYNy0aVqBkMsuIz5bjM3e+QejYieqJ4CAanU267jsUxAdMf+IbM
	saeoEUeu7OcIC1zDq8zCb8LHvETRFfYtoJ4q4TQIUZNg8E7AQygX/Kjzz9xVeVWNFeIokNo+bCN
	DFhoTvErhNSy0GIRlsJ6yCx6KzxYDDrUter8RejtdP8sM0TdqNlmP29KzWn3lK6PGqrK+iGuUdB
	++4aLblG+C/JxjwhRhiK2ZRo9IiAGJbnmqiC8aZYcD4jyk6RZDS8E3zwIP5C774m2CHZkCtHksp
	5Fpv5L7EXsBFyhz2Gw/+0uW4EHyVITQyv5PJL
X-Received: by 2002:a17:902:ce92:b0:2bc:a52c:c8fa with SMTP id d9443c01a7336-2beb076ead2mr253425305ad.26.1779897343615;
        Wed, 27 May 2026 08:55:43 -0700 (PDT)
X-Received: by 2002:a17:902:ce92:b0:2bc:a52c:c8fa with SMTP id d9443c01a7336-2beb076ead2mr253424805ad.26.1779897343045;
        Wed, 27 May 2026 08:55:43 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beff36894dsm1264135ad.37.2026.05.27.08.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 08:55:42 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 27 May 2026 21:23:54 +0530
Subject: [PATCH v4 4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
MIME-Version: 1.0
Message-Id: <20260527-shikra-dt-v4-4-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
In-Reply-To: <20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779897312; l=4539;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=ODfMe8YwpE9zm6WOKy1yvRuBsZs9KnzIUkMMO4tFT3E=;
 b=jyYeXsEL0Bq3VtQJhwc4rgTZTSMqWvMGcrLs8kjWOWBSArHZoDD/7m3I9UTqNjdmpgWOTDU9J
 Xt6s/sxjLkABhszm5a2pHyGBWlTP2T7No2xluZ5mUuWi5bjuNwhXpy3
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=XrrK/1F9 c=1 sm=1 tr=0 ts=6a171400 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=IZjsGcCFCfEoDLf82CEA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: rKc_4ayLMjBoPw5OPGAXoAw7M7b4ghn-
X-Proofpoint-ORIG-GUID: rKc_4ayLMjBoPw5OPGAXoAw7M7b4ghn-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE1OSBTYWx0ZWRfX81Yg0oYL5hob
 i3UprkiXiVBANIw4MI25S9xRuvxtnNQsShzxmZcR3K6T3uBtjmVrighV5VB1CZeNlN+TcL48+b/
 awZtIIn9NX4rkYixKuYHHquJhVKlX7IE/lnzr+Y3kxCUStFrC35/NI0ICPE47yo+IXHxdg0y9LY
 9ZaJeSumxeIA6Xv9SheAQUJUexbG6L2KLYPqv+dhii0dRgQCa400UPtoakYcy/SjBqY1udpYgX4
 P+pPM9sgupfswsdupwp8IRXdc7i661demcaPJPJ7Ml6vqMT6CacsIx7b9JOa8MnRsKCfSYLWz3c
 o8JVhQ4FTyH5oRPRUJQFkwFal9cvbkH9/qc1Pnu/dYllcz6VV0U+mr6f0RIQOFQRLW+JpfGHb0u
 jnnOqVNRAA0JGTVxLJ+vGLId88kzToEJlozo8x/w4tnz+rQs3F1vXJaIdo/Zd48OxsBTFfo4kw4
 cCHv0psDhFSa1Q8udJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_085545_896191_47231399 
X-CRM114-Status: GOOD (  13.25  )
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
