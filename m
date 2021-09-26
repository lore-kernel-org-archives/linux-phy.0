Return-Path: <SRS0=8nB1=OQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1954C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC7E860F45
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BC7E860F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bR/N90n+IXU9mtpTY24FGBlQZYv3fO4UBjReWFPtGuA=; b=gYkX0uLNF9/OoX
	10WAeellUQy4+hWVUwn9GTizjRMMEpOUbE9tzw9FQgRPq8t+wcC03QiGwHTflnd1xvmdijhbpTpeb
	BiEr393XL7c4ksSa8xsc9D33Mwf6Xoxls81Iu0KNCmy2wqghpnykAtLGJLtIiPue+AyUcIJffywG1
	mWzs2Qo3j1QXPm9ADZ/X+8CbWETwNIyde3dg1AkhK5MGabipAUVAHG78izmM3txlnBSREB+GsKGq9
	YxBJUhlQG2qpOAfHQnGKp9Lf5bgo8W9PucBbbyTtJVu2BkOi9G5YHGSaFhwk+g/ZbGLofQofgT4pU
	sYbf5kTDE0qzTxS5QAcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUP8z-0009gR-AO; Sun, 26 Sep 2021 08:04:17 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUP8R-0009Zj-Rj; Sun, 26 Sep 2021 08:03:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ACAD3201A06;
 Sun, 26 Sep 2021 10:03:40 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 73916200342;
 Sun, 26 Sep 2021 10:03:40 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id D591F183AD07;
 Sun, 26 Sep 2021 16:03:38 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
Date: Sun, 26 Sep 2021 15:39:42 +0800
Message-Id: <1632641983-1455-4-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_010344_050436_46BDA7CB 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add the PCIe PHY support on iMX8MM platforms.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi |  4 ++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index e033d0257b5a..e7f398433486 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -289,6 +289,10 @@ pca6416: gpio@20 {
 	};
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
 &sai3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai3>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index e7648c3b8390..de231d531ba4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -998,6 +998,18 @@ usbmisc2: usbmisc@32e50200 {
 				reg = <0x32e50200 0x200>;
 			};
 
+			pcie_phy: pcie-phy@32f00000 {
+				compatible = "fsl,imx8mm-pcie-phy";
+				reg = <0x32f00000 0x10000>;
+				clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+				clock-names = "phy";
+				assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+				assigned-clock-rates = <100000000>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
+				#phy-cells = <0>;
+				fsl,refclk-pad-mode = <1>;
+				status = "disabled";
+			};
 		};
 
 		dma_apbh: dma-controller@33000000 {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
