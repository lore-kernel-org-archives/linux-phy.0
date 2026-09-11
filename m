Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B57C88E4C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 09:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yno95HOPWPy2pDq79gcEMYjTvtEFp2jkX6CP1lZxShQ=; b=tGMMdVER5W08UN
	KyNdExW7rics/J6IW7JHXGXOORtcT+rCISvXrO6grWRpFaWCRkLs35pgtdlZcw6aZaBnk+f73BqiJ
	zbWQY7g59MXSm39lBoZ7xVc6nZM/5pMWa6qhlCY9Zw6ONZ8oMUoKjYAYnCWL0i+o3ef9qflm0ehJ1
	p6PXiD3jQkkRxBBjQUnuipQIQlh6nyE/QNhHGGtli+vfSSBwasib8m4QoogzoVkJrIiinInPItUhR
	XbgWT/jaQGwN5ptn8lzG61nimEFVT+ja5iU26JetaobQ07rEu+MQA0suisyTaOvqxS1cW4ZHWsHjk
	M5g0x+7fzHI5DB/LeE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjq-0000000GI67-2u8r;
	Fri, 11 Sep 2026 09:40:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjn-0000000GI5c-3fKR
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 09:40:05 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68B7kve04046300
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:40:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FzFT6kXhpHl
	ikCbZq7Ay1pC0UHtIg5fj9LyUX6GW0CI=; b=BBSh9Y9ZsLZwvAKdZwo7IrLpNVr
	YfFJuhv1aiH4arfu68Pz+LCjEC4h+XBzHCaEYXiXFJ+ruu/w4oatrSu/eSsqajFl
	+TaNgEJzOsOzvFLqMsuzUYxGR/5znCR8cqrSDKIV9kgnSLJAv6HCVUbY1Gb27/Qw
	VR7zlHuDki9UBfd7TWi6Ylydt/dsNUaIkK0ct0dQuNME+LqL06odnFfEfM2o4Urm
	EciunPeIBRbGHlg1wXK4aMbG2FIy9cK9O0T2IMStO9J2sbzvwsxGXXh/Kf8/LOCn
	S2+9RM8R0DVIv3ikYbP56ziH9FTL9z9XXnbr4/JGoxI8P+QlmX9f3PoGMkQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm2q12u2j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:40:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39af92138f9so1431724a91.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 02:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789119602; x=1789724402; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FzFT6kXhpHlikCbZq7Ay1pC0UHtIg5fj9LyUX6GW0CI=;
        b=JpHu5/tJ1klXH8vj1dpo+ur70S3P9P3uSew4nmouQls++8C+fookIb6BsXoI6NnY9d
         0HfmdAx5krMpJsmMSkKGxBYIYDoF557Bm0NBRO4jf5/cdavHj6cCu4T7dxKFaGpzpViz
         p8vXuriaDE/dKfcJpHnIxD/zBSlYEhlHGQ4xPPuoSmPmjBfKMY0qtcoG63v66eV0f3BA
         IUeHicWPYr4chbKcFrH5MAWG91DA8YCg5UNeMShkT8g19laWxltr0You/ivTeUXnb7dS
         qZtZ+2slzWQ4zjgHCf8BToq/UoVXP2IrwTj7VDCGo3shL9gSqQnOY1WawmWnSta5aeui
         AfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789119602; x=1789724402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FzFT6kXhpHlikCbZq7Ay1pC0UHtIg5fj9LyUX6GW0CI=;
        b=AXrxS68Mg83OzcZySIP3guZZYkAZFVPsdI/b0w4ZCibo7yiZo0TKh/rYoSK5UqjkEd
         04wzeDviWrnUkpaorN/7BgA+0PHV2b0EkpXFsNhhSIgqPAZOlQKXaZiY+MjUrgXPxFdJ
         ggiCQWUzJyLXHe3vAA+IHOrF3aSYVT7qo4SFtAXeKyC9EKi5JWiXVG/+POtqjIVJkxsC
         FgudS1j8EmJ549tHmV4Dvmm/CaSc0hLLf/rBd7fGlBVw0G6maT/3WiSC9+BnUDjS5OPr
         tgM/NWrY0mxtgyhLHUzfgsfoV7JbY5UXJN4ZWvkRLlIHa7Z9Wh8SVFEjI3ml0pPG4d28
         7w0w==
X-Forwarded-Encrypted: i=1; AKwUvBz7y6FUjtyU+BZPH2Wbx3yF1gBamwfFzDQTtAUj2Mj6rMcMV/brFbf3j2gpxgOTsExYk7SoAc0I7wE=@lists.infradead.org
X-Gm-Message-State: AFuF++nGylJeTvb54ZB4mQn0HmwsvjxFQSqiDtUnNjIKziA2ocCWeTEh
	Kxa9HkGMtyyHGkxvsAuSI29b9gwXWZBJ47VD8icE8zNCYqF2ZrqopkMt7HZLmG2BZ3E+iyK/eeH
	075G0WkRzVDPcoGZWdzbUIGxOuJzr5vqO0W9/rs85vA+fb+3LAdey0LdkmsGReXmEJgN9
X-Gm-Gg: AYBFou1OPcYOBaP0KJq8gA5wB4OKEa8S66ShUqgzGrLdNHhUlXUJ9iW5PC6wJy2hTQX
	ROkHCnVxO7vxxJvD9S2iA3yrmyTH1SGhB7KYwKUmlenr4HMAMQG/plp0019n2Wi9oE0PcshEliE
	rTYDdExCaaWbcuENaRVEzNZ3rCnXS3FTy2f9qABbU6nNzNojyArcjPUTiNSCsxJT9YALINUr43f
	e85VF9TOieE0mltRUDugYX4aT2tO7jRkU76JDbFAwDyj9Sydi+j71EqyTG8EVgMqnncpszV8Sq0
	HbabTj/VQ87mi191Ky1Bf0LgzCla7yyaeGLicSuuidN5D5nGVy9oO31hFmOgXqZ0l61fziKKZde
	zOrTDvAqdbr3u3bdJ2NhyoejXVrV/uSiB6yY=
X-Received: by 2002:a17:90b:544b:b0:394:ed5c:ff9f with SMTP id 98e67ed59e1d1-39d77b1d022mr6555539a91.17.1789119601600;
        Fri, 11 Sep 2026 02:40:01 -0700 (PDT)
X-Received: by 2002:a17:90b:544b:b0:394:ed5c:ff9f with SMTP id 98e67ed59e1d1-39d77b1d022mr6555487a91.17.1789119601027;
        Fri, 11 Sep 2026 02:40:01 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4f55735sm5549984eec.24.2026.09.11.02.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 02:40:00 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: Enable SD card for Shikra EVK
Date: Fri, 11 Sep 2026 15:09:32 +0530
Message-Id: <20260911093932.2376058-3-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=d6lgWhjE c=1 sm=1 tr=0 ts=6aa3cc72 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=lpphfDA4Acmd_1yfjz8A:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfX6jh0ldRlfSCW
 0awE8FGSsUkv0T2zmOR9GzxErtDPoI1wT29ba5dZu/Gjd0vtpGFCUs6YOZH4FTiWesvdiIFdxhz
 KbniUbQ6DtxC+0Nu/iexfFRkMLZqava7UkMD33EyPWrr3Xj6LVBCspCS19cJygtUoJ3SfKp1rEf
 OVbVcIB/lYzY7SfzfYiUcLKODyDfx5r7dZDKwDtiCiV7fblOqsIIetD5OTci6gIZBRVNsUMt4hB
 MVrZHSXrR47sPvrt2Q2IgtntRX8Brx1v9NbarvMI0dd0jIzna00OcbsgalLcz/D1F96mGqB60n+
 6aaChjDwU8RXePt9pH+9NB+c5VuvkxQLhYnbLxDZDRHWx8eIDsexgeVbrnODt8RUfnKREAlxmif
 og+98PEYjbEN51CppvkgrE//frN/YjCu44Z+lUPz2C882S4w58K8PZo3IRhkX7igR8SwPfZE37V
 +b0Ci0r2xJJBxh7Jodw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfXzRUru3KT3SNs
 Itd2S77cK6lF2ECH8xBr4VPVwPtm+03u9Zi5/ABM0ROsNOVD2V+vTAqvyuDxXk6ILI+G47uPWIi
 HWletVDqPnYrKcXhU3mCwE8sgQwxTqg=
X-Proofpoint-GUID: kyl7NrU_1Iv0-daJyjJgiJqlR1S0F7CN
X-Proofpoint-ORIG-GUID: kyl7NrU_1Iv0-daJyjJgiJqlR1S0F7CN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_03,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_024004_035314_6B1CB1C0 
X-CRM114-Status: GOOD (  12.89  )
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

Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
vmmc/vqmmc regulators and gpio-based card detection for each board
variant.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts |  8 ++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts |  8 ++++++++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 13 +++++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts |  8 ++++++++
 4 files changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 286ea46d0c36..2d81b39cc9c1 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -66,6 +67,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	dr_mode = "otg";
 };
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index 01400612d147..570e77e6d1cc 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -66,6 +67,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	status = "okay";
+};
+
 &usb_1 {
 	dr_mode = "otg";
 };
diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
index 7cdbd257e9c9..620c9956d5e6 100644
--- a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 &gpu {
 	status = "okay";
 };
@@ -17,6 +19,17 @@ &qupv3_0 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	no-sdio;
+	no-mmc;
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index 543d769125ef..a1757e24d1cd 100644
--- a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 	};
 
@@ -58,6 +59,13 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm8150_l10>;
+	vqmmc-supply = <&pm8150_l2>;
+
+	status = "okay";
+};
+
 &usb_1_hsphy {
 	vdd-supply = <&pm8150_l4>;
 	vdda-pll-supply = <&pm8150_l12>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
