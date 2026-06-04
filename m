Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61494CD6E6B
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNW4LCqmTESTDidYPDf00xje2Vry4z9wVx6nTyCHU7M=; b=aCdKejz9Y63kKT
	evPWWc5bAK4OyKtNDVez1IdpUlr9YI2YcIXBDVngeRofulSKmBxT4IZtZCpP1WFesmIRCHwB5QqW8
	bEDp+lu+oVlsNlw7XFFCyScunZKFEA817KpWAFC0KvMrDjyT9ns66HYbQ7+WugcXFtSpMaxm+odgY
	ZQMMkmp5Xpir7BOJjBU6CQiFfTt2m0LSbG87xX1BkoZA8QpqX9XJDfD5z8nu/d+QB/2h+Jd30exVz
	edzx1jFCGX3CSkQNRyISadXAk2AMnuq8lpy9VWMru4egiZLOSFdiexCRNaPFm/PeGTkU2hpHxiwZv
	gxuAuXfGRSfkEnl/fy4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74W-0000000Gi7h-0QIa;
	Thu, 04 Jun 2026 12:21:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74T-0000000Gi6z-0sM1
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 12:21:14 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 654BJsSX944530
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 12:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=N1a0zVA1H38
	h2GIyEe6nGYiHzDUyiFxiJj0Sqb5Bfp0=; b=Lbh1XYPwVSYg75VxrUvuGfeqknq
	dMh5Y9CNj/bKSlu0fGl/B+jnyz4PjhG0PoU9nEvlXzmUzLWkSOZDUD6jmchfhVnO
	rPCA2TaLnUhuXHO19mraIIGSMDwF0T+dZp7QZa+lBTrjbsV7lr2G0r58Kfx3+uVo
	R8QrzsWMFrSBRMKQ+V7d5179gkD6KtzIBDDGAsopqeKSfsFpVNPoJueHtit3tDGN
	106PUWwPxg2C0RJM4pyShW3wAqtf61tvcGRZ1yUg3aMGl3Z3CEpD2Ey6pLXZsFq5
	IjY7j2R4QFs35SYtTi8bYzF3To6hDMsRAz3SkBMVt6p4tzf+6xsyDkaCTqw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ek8d507du-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 12:21:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-36d99629fd6so1174990a91.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 05:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780575672; x=1781180472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N1a0zVA1H38h2GIyEe6nGYiHzDUyiFxiJj0Sqb5Bfp0=;
        b=Z7L5jMYERUDAWD9xGDSWN1htIfKDySPqnW+WdiIm+Gc8KrkM22KYR9v85itOwf1kll
         qxYQPQt5kkTc4qZ7h9VIA195QpphArOIriVYw0OFmwmK4KCXquBvFyJp4SS43hWBbjcK
         YUsZSOYLzsIwXkl3PaoHUMgQkEPEAVHiT9BRYR9Iyn6Qu8nCa7GVrNh8pe27g81JaxcK
         EceUSofAzsAdHwmZ9Jz9alL9yChaLspagOQuofQ6s+SMB6qNHjuidKzv6Z3Gnz1qUsM2
         kMIaFPUJQ5XtdlW1+R6nk3k0bb35M3BtBbIJwxE0CgUjR9ByXn+UfH+/MxkSQTxS4oFr
         eZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780575672; x=1781180472;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N1a0zVA1H38h2GIyEe6nGYiHzDUyiFxiJj0Sqb5Bfp0=;
        b=G4bGIsPQzk+0eurI3fgHkm6kNwPkRunCjqHaKR7D5zI5cWapfci5S2QNPjNKgEzbOh
         OvOoyWpyGfoFuVmwBcYtJ6J+5UxqvcgK5ETFlxOKksCSwvXrTWmQWsCCHRkx1Z1SgO2P
         ZsCYVHFX/LDMa6Rtb/uscvy0fFMoVVwndCbpbd0XSLT3O6Jy/I/Mf2PO3nzcEPdPpuqr
         WyooJecJtpriVx5ZZ3mG55tM9MEi7nYcmEpfyTk0TNKq76WSfL/7nAYQlKAJYE/VYeO9
         2ssTo79ArLXltD0CONTE5I70aAia7PQ3JERFXcU6J7ueUIczxQyS9qI5YAQE2AqR1Tuz
         g41A==
X-Forwarded-Encrypted: i=1; AFNElJ8mqfJkgx+ccznDFroR8fKmnxHOgxPcsevy6c7Xd8Ic959O/3w9LBmNFU3lfc7i0TsISgZnJmJYq7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyM9dZKbBdfaibz8nSXTbgd8+EDUISN4G4OWX2MaD/a5+dL/0r2
	3dy7hQWH+Fzt1QFB9JxlOPAs2w35RI5q6ea8LUiow0VV+0yleoM3m3Ly+SGYClAAx1CbVtVGnYX
	3nQKoPGIeQd2eESaNvkSRP3alhetbN1SDANlulf32dsir5jWvdE8pyxVXr6+Rq1lWW3fk9wabCD
	ip
X-Gm-Gg: Acq92OGrQtjqgRCpdAIxUj8ktbNPJE/VTZort9wnertJBzKLViVEBXIFz193PzvDKui
	Bv9saYKDrRF3qGDyShC0KTRTud6qvlM2KkpShzvNbYBXC1PT4MoDt/4Z/mYLUt5OKm2/N6H8XrZ
	vLjMuUFfusBzFFM7ARBFCl8waH50RXPVyzSShG2pXn731I59KEs9qgIRS+7fKim99nZc6Bh2Ny+
	zZ6pptoTdXwDQPmalG5akUTcjYLp/lc2qCQXFQXY7wKxIzLyBbsx0XjqJVVTKobYCv1za1m8bh2
	F2u6w+/F7CfjpZpRwwwNM3EAg1JOaTNsuhCXhUH6uONEcID1+Me5zN1Szly+SgfyH3mOUx14UP2
	FwX/WbO4KqOHG52nbWOy6GfyYqaMR24gp5KUSJHdfLNczj00qDPWY46ZTEE8JCHuqwm0=
X-Received: by 2002:a05:6a21:330e:b0:3b4:931c:3c7c with SMTP id adf61e73a8af0-3b4979857f8mr9268694637.44.1780575671980;
        Thu, 04 Jun 2026 05:21:11 -0700 (PDT)
X-Received: by 2002:a05:6a21:330e:b0:3b4:931c:3c7c with SMTP id adf61e73a8af0-3b4979857f8mr9268652637.44.1780575671523;
        Thu, 04 Jun 2026 05:21:11 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df045c2csm4796903a12.12.2026.06.04.05.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 05:21:11 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
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
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V1 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
Date: Thu,  4 Jun 2026 17:50:45 +0530
Message-Id: <20260604122045.494712-3-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: zY2rAGNWLO9AbzvQ4k1qpcFHzPrg-EpO
X-Authority-Analysis: v=2.4 cv=IZG3n2qa c=1 sm=1 tr=0 ts=6a216db8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=lMopsKi7mrnni1fC4lMA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDExOSBTYWx0ZWRfXxSXhmfe2rIq2
 +SNUAeioxf4L/LvQRTPZhh5DX6qnimZdaB26+2bQhcZS9sRy7wVk9ESupRKGzpudILp+2eSv1/l
 NXnok1QG9/jcxS+jAor/FDlEAMjtVPgycaOSCXASOrktk7OR9MfzFyEu0pfzE2OrXSbU6vRDZNY
 rZN2HaIbAC/AAWhGf46MGwWdcS4QOhFEa4vC7xxHY7lzhvi8/9QpwW7xvMuf0mt5gViLbyHnLom
 pBzOjHuBbLN+Dl3VHDtGP4gJkbPmTl3t8f7XoGuo6MsLY/ahF3hf6vVh7+iCp8ua+1/coljPdvI
 kulQSEmv1hgH/HzYaD8bh326NoHkHi9yOz1oAg1mJYplsBLvX6u0N/w/L0lC6hYyPMOcDnO8jNZ
 1tnknnyPrQDm+yLpXk+mK+XljZRmA3AiCpx9e5pIFd/qc3Nu24lRfFmw4m7E0CjRGP9jGtblFfB
 GUgHFV8z+88ovlY73Sg==
X-Proofpoint-GUID: zY2rAGNWLO9AbzvQ4k1qpcFHzPrg-EpO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_03,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606040119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_052113_247527_69BD0B65 
X-CRM114-Status: GOOD (  11.59  )
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

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index c2ed0396533a..53d8569a7c65 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQM EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -95,6 +97,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index 3bfd0050064f..a461c5a03d63 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-cqm-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -95,6 +97,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm4125_l21>;
+	vqmmc-supply = <&pm4125_l4>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index 95bd797d009d..ede4dca3e7c0 100644
--- a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -7,6 +7,7 @@
 
 #include "shikra-iqs-som.dtsi"
 #include "shikra-evk.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "Qualcomm Technologies, Inc. Shikra IQS EVK";
@@ -15,6 +16,7 @@ / {
 
 	aliases {
 		mmc0 = &sdhc_1;
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 		serial0 = &uart0;
 		serial1 = &uart8;
 	};
@@ -103,6 +105,22 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	vmmc-supply = <&pm8150_l10>;
+	vqmmc-supply = <&pm8150_l2>;
+
+	no-sdio;
+	no-mmc;
+
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+
+	cd-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &uart8 {
 	status = "okay";
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
