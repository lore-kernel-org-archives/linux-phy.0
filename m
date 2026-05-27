Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59409CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 15:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDSu8uB4J1VdHBqUQCmrGOyWp5tTN64n6u8VVLoa5QE=; b=g2Kceo2PK+QDnw
	MmYvjUHIOSoGJc7ZeyCkp2Lc5e7KQjPNxScf22q3KjHyoGKnVNPjtcnDFdU3MPvR5bOTAwrLybrKy
	du8VkIKHlxh2dXiF1D00f1fycazmuh9BileuAnRkIBbmQkmvX/J9oQcDpWi63pTmbjUm7ijb46GU+
	SiVPtfi6HeKWv1EfGARjFHjLOJ80Rtnv37vk7wXJzOI3ZKskCo1q8x891s0pNTg7xO+QeRMVbdH65
	MOadIQTDYljxqgbSFdyCkDH+fcu7yK7CyxVLs/AkxI3TSTXPg0lA2wqUSrz6I65PW+AVA93BDKL+o
	UPgYNM+7ZWCY14W3UAVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbe-00000004SD6-0Nuz;
	Wed, 27 May 2026 15:55:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSGbb-00000004SCR-3PRr
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 15:55:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64RFOFbT2282516
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=; b=fTNAv7/U0s06ofwW
	nAzjM0I+zLtA/oNDghX7Dblbt6yJMLIOOEfju9QfkUWoyDv87OhK5diURuWhyGwW
	AdZDGy5Pey+FIW/VLNZ2P36U/Pgv7NCqaemC2ioXWO8AnMtHCMeJ/8FCSh77qV1l
	NoCxj8f45iz9g0sPLpZnDlz5fRiNqgzy6dIuAS8BKB4Kz3QvCzGsQQVRRAt++Ox2
	FBUKwJnzLsDIsE48DHO6bqzlsgOGxYE5MKlKskHDKeAZMUFvQ++y4t2tJdiNdFeH
	7mRTWhY33jWgLn5w7RioOp5LgbGX73N2tYeno9hH7X2znQjI8yGlWK80jheAk+x6
	V0lLTw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edtvct9d4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 15:55:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b99eb06178so25945525ad.2
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 08:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779897338; x=1780502138; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=;
        b=hHEqIHbUeKjHahLKN/pRGYd4sfJJqREhTrfGgCbLBiF7N8CtBOfvn2IeHljHUemlPr
         celsdyz4Vb5ldA9PhB6Qef/S9SbX+W6FNx228ZjqD1dkEhzj1pVpMTal9Oeo4fyeG7rA
         ogVnhb28+1l/Tm9RojSEHdBN8MNEOaWii/BZhy2nN6d6TAWnDQ0dIUvfXFPMbJAQBuVW
         ibMyOD63efBIC2oKNPeg0tx2mc6s5ll/7kQbWLIg18nPbYoWnHIigOdtkMOs/A0l5nHD
         tZ/nx8rJWpKOd+uAF0m8oaNy/8Npvy47B6ghLa53FBcqKWs0ATfis2ngE1A1e54ftvWh
         fZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779897338; x=1780502138;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bgj6PUY7ZZ+fmCMVs+mu7PkuSkqWbqfaZ9Grtyv48EA=;
        b=KBeQ8DJKx+Oxum6mLf4KA434lVdthNcw1lfEvn9EF7/l7IUfPJXSBFuEmeX2ZV5Zh6
         g5kJpwOWiytUuYHkY/NZO60BsFessACRR48tI8HrUf0erHgSWtb+HUFqGe/CmR3eSBPy
         JGJ+D8Q5xDrSDZsZ2O3Emu8n6apeuUwddtTXnpBdkWbrh4+iTImTN5ehKYs4G6/woRsH
         ajzf0VxO7dQM9IYkdyvDNrmeJRSerTeuTxQ3dPLKFWVCYjOSRB2axKhvumgFSVQNIYxL
         K2sPgVAAu3EAUzryt5qD9WQ39GeKvPNFq0ZzdvdDcIO7wRCRp8Z2QX066i7DZiLzuL6I
         QLTQ==
X-Forwarded-Encrypted: i=1; AFNElJ/cCxZdfJVjiwMweL+WAIFOTHxGA3U/aA/iOLGs2HGmAD8z6YdTwroIqgNghQcc1LxG5OdWkQKJWJI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYTtFsdtDFXyF11XaDdjq9OBVkXuHEPzLr1fjkLWbt20BptLQ9
	VkoXnIwruteNaE1vcSbjQEPZQuL7N3qUMVM1PGU4LTKn5eNirbtd2hYJFJEi+FGU0tC0oWGGSrz
	tM4fnRjmsNmBX1rlqxOB+6AEaeQIrLTdafMRhzjQM012VXW7q6iolNyNuyzom6e/2Bwzw
X-Gm-Gg: Acq92OHeTjh65JBLqkCBH2G5cwLAN07GgOseWBOoX09Ntm7NFkD8uQga3FnpCcPh2d9
	bNQXXfpmfjyWwsH5gKIhO7rnV+tEpl2sNrTvYs624AzK5iqUCGfU3xvGRnHjRkORKcJ0ndbEG11
	gEN3zdJd5wpwP7h1TZ7Gtr8zKEQr+24/Tn+ngoB1S75i6D4pI2+CXI21l0dwRVbWDULtkgbHlot
	PKqBVhj03GtuD/0Mdad8Ho5wIiqdieLniBlhDrMM+SOwr5e5lmcCnbcECyndtQceTb4rDiQ3Np6
	PH0JkyYFnIfxxoPdnVkDC5AGAj+3G0HkERzca83TzAzbg6mjE0/sF2Lhf2ZSheDvHwkAjHMgc5q
	ggMhEE/+wTHr/ztK+RGMitPu7rzsNjXSSKwAn
X-Received: by 2002:a17:903:3c2d:b0:2bc:7d4d:3520 with SMTP id d9443c01a7336-2beb067ac30mr244530615ad.40.1779897338310;
        Wed, 27 May 2026 08:55:38 -0700 (PDT)
X-Received: by 2002:a17:903:3c2d:b0:2bc:7d4d:3520 with SMTP id d9443c01a7336-2beb067ac30mr244530175ad.40.1779897337822;
        Wed, 27 May 2026 08:55:37 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beff36894dsm1264135ad.37.2026.05.27.08.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 08:55:37 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Wed, 27 May 2026 21:23:53 +0530
Subject: [PATCH v4 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
MIME-Version: 1.0
Message-Id: <20260527-shikra-dt-v4-3-b5ca1fa0b392@oss.qualcomm.com>
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
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779897312; l=4449;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=w1EEpnLR6xXq+MivEnb+PLIzt6dGl5j6KmvIWASlAcs=;
 b=SSYZK9Rpr8hJBNsTGlg+BunartDZMb3yNPpKUlyA82S0mBXZMa23IXdgyJb41W+mRevsEm892
 ENdJhXTBgQRDuq2fsR1i5Mzwp0HyEBfauCiXgMQXXxXPPrulLgpig4L
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-GUID: Gz3H2YTYukYNokJZ_81b4E8u90ZYkpgN
X-Authority-Analysis: v=2.4 cv=CY84Irrl c=1 sm=1 tr=0 ts=6a1713fb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=s31jhp6hv9j5UOuNascA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDE1OSBTYWx0ZWRfX2tJa9tgIKLyr
 h/71YDGbbudpSgV9kz7/XuZMXHJbxFkSewLK494b590XTczRZiy6WJdJfCAEJpZAyev1IfNQCjp
 ByZ8nlUSYBqTrzLxD6BEB7FgW4iy+ZjnkJwT9CAy81P1njY6oxa6hBoTOkWKQ2rM62Unvh3SxmA
 6yeAIVD+3pyoE0InHVHAhteS8NDK++pkDwd/E/PwIQtIcUEDKIu+R2fOafLNOA4dAr0Q+KANx2f
 L7gdD+Pwdo8MJWPTcKetlIXYRxBuTjGZxp2ZBgY3ZLGxYatkEZZ/GmQVQDpAIaZugkQyW2hgx8c
 pzIdHzIMMNhxACzr2zaHKVQxayZI+D+P3AZLXJxGZRUlKwKPksBkE72hKefMZzQwXhzSyaMXLKt
 xieuPLd+xPF2UlQupLVY6InGEuEertuN6xauBI9jQ/ExididqJ1UxqXFGz2OoHUVrtvlrZeDWXq
 LTLT64BN9FztBTI/iKA==
X-Proofpoint-ORIG-GUID: Gz3H2YTYukYNokJZ_81b4E8u90ZYkpgN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_085539_861288_A5D91150 
X-CRM114-Status: GOOD (  13.19  )
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
