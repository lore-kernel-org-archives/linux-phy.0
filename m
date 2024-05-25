Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F141CC25B7F
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSZHc43v/hEbO6jv9769R5/VBx+/41fp5tTRE/5IN8I=; b=q1INceekJKPtZ7
	SdIWoPNUz5S6Sqb+I3V+ecG4bQ4YUvnGx8OPrVii51RbxRc4c/Hm26h1TsWc5TAuJvvMXaMweUqGF
	BrzDEXE1E2ER2XNZzeUWRU+5qH6Ij3uGhKqf/jDy6kBK6KzEdOAv1Msd/irVPUqqbMTnUKm8qx7Or
	yosGOLbra/URYiFPi8Tk3mVCA9P6L2sKtU9amHgzoKlrDc/rPQp6dUC+otSAnIrP7RAHFmVGL2RdK
	dheDbYK0eEu6lOMhs2Q3lILnLkiZRH6Yjiy9YOjxYWJNLx1S5A+gVdSgI31Xz7Ic8fOafbemZRlRe
	k22dtv2DrSLdWbQgcJyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfu-0000000BSs1-2hfj;
	Sat, 25 May 2024 17:59:22 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfs-0000000BSpY-0551
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D5E12CE0A23;
	Sat, 25 May 2024 17:59:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB09C4AF0F;
	Sat, 25 May 2024 17:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659957;
	bh=o4kiKhxOwZs1Pl6joEEPNnwVtYuLg7fy0zk+ZBo5jEg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NKxe4zYFCCM18q8ezxq5LJm8ltvq9pVyC+UFQ54t0Gy0AYKXPaYt2sgYq9SMk+BOG
	 fgC/iwzOYTjunK9p7YGl1xoMnXOkm3glEfie8UIHXjCnbv9iEcuRjr/MMHlzLuTMhs
	 yYgyci4SDd/jyU1TAGuyn8N8vB2tWBmmvN0pyqDq8zLR6Zmuwdkdm2+3abEMqj4jkA
	 1HeBsrRF5/BCxz70eCT/jBH057BzaQySLbebrl9Yd1QjERLm8io9XoUh8SYzIP/njv
	 8nYbWflp74GnXk77AvOi5pyqWG7ghAwF/cU2VJRZRW+4FKUEa3F6Ofidsa9VDY5Ftd
	 qV+a/U+mhRLLw==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:03:59 -0700
Subject: [PATCH 06/10] arm64: dts: qcom: sc8180x-pmics: Add second PMC8180
 GPIO
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-6-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=Fz7ILqf97xUvsYbsDXAR0+z9Xlwkl6S2Ykmd3P7Brak=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMTRCju33i/vPFcthH2BUPrpcbaeiyCTtom
 b7DoTuGRkKJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcX0PRAA1Ad557RN9sy4ojGO8VytMOeFuvBiPoYLB6mqF+/
 j24eHnPnr7vewgEWItHxNaxwF3ToG1WaTQb5B8KiXX6bus2T0H3XG/ypjVBG1hfNciXtGx5bomR
 e8YY4wc2zjBudbNwD1KgsXVVpVO4em7BpkGGtRlYYht8bgIUFM6AHbpShovwqcbVjQJz+qLFtVa
 DM6QyWmDqoPf0SV9EI08bx3AehOUAPwOJt48yl/IBPdnYM4DQ24P2G/fMxyDsgCz93TYzccV3VB
 4NVTRgPjz1cCRGYJMnQgEn/svDOTJrO1I8BYvedv8PL/2lmx3Y0UPPav3iAtHh125KYnq2pKWar
 oZ7KEWjn8qO56VURK6m6Y0avvzBqA4R7dx/nGGywQSLJ9AaHFXjwkKByNQjO4LHbBQKD16r0R7Y
 IlUHiP7H5PIhOpetEV1uq7NUm7z0jOPjSBfYV5Pr6wviO027GixTZhJPCWcP8/Da886tSmMfg5H
 +U1k0wyUCO+7QXi+ZLvNXOLOYdS/Ni6qgfEn12yOWXNcnXiJf74gs72JOZL0ZEf3CtKydmizQMi
 618YU3mOS1PdSQPJdIDVvk+MekE8A3KIih4hpSXO7YnVNa88Vzx1OSF4yjT5MpE48JhukZHcytl
 1QK9WdYaYNBBaMraanRHO0/jkPPWr1VMgtEnuvGkG/Gk=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105920_459252_EF531A62 
X-CRM114-Status: GOOD (  10.34  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The SC8180X comes with two PMC8180 PMICs, with the GPIO block being used
to control VBUS supply of the second USB multiport port.

Rename the GPIO controller in the first PMC8180 to match the schematics
and define this second controller.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
index ddc84282f142..95656b5ed481 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
@@ -141,11 +141,11 @@ rtc@6000 {
 			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
 		};
 
-		pmc8180_gpios: gpio@c000 {
+		pmc8180_1_gpios: gpio@c000 {
 			compatible = "qcom,pmc8180-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
 			gpio-controller;
-			gpio-ranges = <&pmc8180_gpios 0 0 10>;
+			gpio-ranges = <&pmc8180_1_gpios 0 0 10>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -200,11 +200,21 @@ pmic@6 {
 		#size-cells = <0>;
 	};
 
-	pmic@8 {
+	pmc8180_2: pmic@8 {
 		compatible = "qcom,pm8150", "qcom,spmi-pmic";
 		reg = <0x8 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pmc8180_2_gpios: gpio@c000 {
+			compatible = "qcom,pmc8180-gpio", "qcom,spmi-gpio";
+			reg = <0xc000>;
+			gpio-controller;
+			gpio-ranges = <&pmc8180_2_gpios 0 0 10>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	pmic@a {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
