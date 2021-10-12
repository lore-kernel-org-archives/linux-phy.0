Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147F2C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:06:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5CF3610E5
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:06:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5CF3610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSwaJKruybMS1BBtUYpSI45pFSMh8xFdj0HsWXNQXHM=; b=r/ECoOz/0mVAWt
	sDzn3Bu86jwzLRsJ/HNSQd/AImaks60jrqhI2GZx1ztQRv2zY40FEskI3O9McbR0OPME2g3gvOxyM
	TJJqieweFe7rDq0jwEguI16mIo105XEpVLxsqSerr6Mb5CzxC2I8iLR89WL3t5Uh9GOsbO5edsLDf
	301oPLLp81r6DemHjo4UyXzZysGDJ58MUenicSuP35+w5gsdYHB4iFT5NItl7BhbCZ8ws4TTDjMJQ
	9oEZeDl4TmQPrVlSr2MqCtYBRONcTiSvlwktkzKhGGClHx/67ogThrP8aaFHdgGdnQ9UoV0XBSXSG
	gSQA2sLgjNZh0DL7etDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDk9-00C92x-DQ; Tue, 12 Oct 2021 09:06:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDjc-00C8pB-3D; Tue, 12 Oct 2021 09:06:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AFE061A1D25;
 Tue, 12 Oct 2021 11:06:06 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 75BD11A1D2C;
 Tue, 12 Oct 2021 11:06:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id BD24E183AD0B;
 Tue, 12 Oct 2021 17:06:04 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v3 1/9] dt-bindings: phy: phy-imx8-pcie: Add binding for the
 pad modes of imx8 pcie phy
Date: Tue, 12 Oct 2021 16:41:10 +0800
Message-Id: <1634028078-2387-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_020608_289499_32922F40 
X-CRM114-Status: UNSURE (   9.97  )
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

Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h

diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
new file mode 100644
index 000000000000..2bc7f1b31c6b
--- /dev/null
+++ b/include/dt-bindings/phy/phy-imx8-pcie.h
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * This header provides constants for i.MX8 PCIe.
+ */
+
+#ifndef _DT_BINDINGS_IMX8_PCIE_H
+#define _DT_BINDINGS_IMX8_PCIE_H
+
+/* Reference clock PAD mode */
+#define IMX8_PCIE_REFCLK_PAD_UNUSED	0
+#define IMX8_PCIE_REFCLK_PAD_INPUT	1
+#define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
+
+#endif /* _DT_BINDINGS_IMX8_PCIE_H */
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
