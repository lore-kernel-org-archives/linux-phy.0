Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CDC4C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:07:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA87E61039
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:07:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA87E61039
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4Oq2N4DaSQ+YYb8HY9U9EIdEwJBVM8mhv7dbRRm23M=; b=md5HljcOtkAwAO
	VU7tIhY8IUsRQE4tPX7q8uqJbT7iojsdzxRosHHjr5gu3idpeufxkHaHXC5DxfIDmyYQD52+UNEIb
	7l7sA0+2Z6hNIQCnsEIRlxbH1wQEd/1SrSZDmscXO1MCEFQxwCNKpxjj3sg+cSHqteubwKndfNuSH
	atHggFpZKvbkTlBn8kZqYRb+F43oSVk1FYblMaWizht8Mt8K/2ZpJvkCaHhdUjxdvhnsgfLZPbY1D
	bPMjxS1/uhFqxOHHRnnM9TByqogxwVNkBPJf0/9gFatBmZTkisrcmhrl3QGeOdMlfq1fiqpL+l211
	lDgtAkJenOXSBfRkkWkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDlK-00C9ZE-Ah; Tue, 12 Oct 2021 09:07:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDjf-00C8qZ-Nu; Tue, 12 Oct 2021 09:06:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5DF0B1A1D11;
 Tue, 12 Oct 2021 11:06:10 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 250771A1D2C;
 Tue, 12 Oct 2021 11:06:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 6D108183AD0B;
 Tue, 12 Oct 2021 17:06:08 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy support
Date: Tue, 12 Oct 2021 16:41:13 +0800
Message-Id: <1634028078-2387-5-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_020611_951604_A92DF5E7 
X-CRM114-Status: UNSURE (   8.17  )
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

Add the PCIe PHY support on iMX8MM EVK boards.
And set the default reference clock mode.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index e033d0257b5a..2d0684ac82f6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include <dt-bindings/usb/pd.h>
 #include "imx8mm.dtsi"
 
@@ -289,6 +290,12 @@ pca6416: gpio@20 {
 	};
 };
 
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	clocks = <&clk IMX8MM_CLK_DUMMY>;
+	status = "okay";
+};
+
 &sai3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai3>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
