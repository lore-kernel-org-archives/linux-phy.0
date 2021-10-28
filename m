Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AD0C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:54:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A28A5610C7
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:54:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A28A5610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B58Vh9DEc3GoX6rtWBopQoF6X4zxHJtMv7eyrQ/UgUs=; b=xLqVhSxgvc7Bs/
	iqHm+NUwUeyHfaE9mBlMRHcoXxs1QLqvW/s/d3pVSPYhxhYDdnIvAjv3IxynbSqWE3/wqA35nEmql
	+bsnpqlVsoFSqyfy6u3AbsTAdVXEDDp8OuWoc//bv6APNi89KeWiNVP9J9zyfKhbDnl5PwCiuGGIB
	3F6qN57fAncPg7pg3NQf9b1qqkbTB31IwP9B2GxxUW6u3TY+Uv7ccEbNnUGZ2I04Ywv6vCae7w2tC
	6W+SP1aflzbVrKbzWBJMF73MBBPxSAM9H6LZVW6KySOQOiIFUGpLhJBl6iIe3SFzj1Chjcj1FI/f4
	5Tm/2qGUzffkVAyfBNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg0F8-007B15-3H; Thu, 28 Oct 2021 07:54:34 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg0Dk-007ANp-R7; Thu, 28 Oct 2021 07:53:10 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 724BB200388;
 Thu, 28 Oct 2021 09:53:07 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3ADE6200389;
 Thu, 28 Oct 2021 09:53:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id ABE95183AC94;
 Thu, 28 Oct 2021 15:53:04 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
 kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v4 4/8] arm64: dts: imx8mm: Add the pcie phy support
Date: Thu, 28 Oct 2021 15:27:13 +0800
Message-Id: <1635406037-20900-5-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
References: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_005309_069394_B479D75C 
X-CRM114-Status: UNSURE (   7.18  )
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
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c2f3f118f82e..0844f3144887 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1135,6 +1135,19 @@ usbmisc2: usbmisc@32e50200 {
 				reg = <0x32e50200 0x200>;
 			};
 
+			pcie_phy: pcie-phy@32f00000 {
+				compatible = "fsl,imx8mm-pcie-phy";
+				reg = <0x32f00000 0x10000>;
+				clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+				clock-names = "ref";
+				assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+				assigned-clock-rates = <100000000>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
+				resets = <&src IMX8MQ_RESET_PCIEPHY>;
+				reset-names = "pciephy";
+				#phy-cells = <0>;
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
