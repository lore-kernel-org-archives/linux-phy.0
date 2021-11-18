Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B4CC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 02:22:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A521D61ABF
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 02:22:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A521D61ABF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfhO1vOK7hUnLrtmmoyO7nvEeGKIMUUqf+2r8gm2/mU=; b=irIWHX8sOrwpNX
	GD97Hp5iMlb+NWdY9POdZoM83iKb3kIHH0mHnCl2NiS91lu7lz4hNdiSXOJ8nCkVBC/QOeDpK16ew
	rjQzHcrJ2eUK1ECAXuG18Pi4+I8hDrFWH8BerZmcLPmc+eWuqtW14ws8F/Oe/i5QrhhC18jHstFSq
	zywU58lOgq4uOyGemvXda1QcM3AWDp2J2hMdbvigwbuWNL7zhjG3T0i9QJ1x1kyRqFYiO/Ow1mCfw
	yzqQ9NnjpcDa+Q6mXwB64nfiCoeNZ6v7zl1giyJsZC3/T5lsRxBwEL8NOVyyDL/tu95KvA7M6aWX2
	PHpf0lI62A7qnLWBmatQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnX4L-006kE6-4i; Thu, 18 Nov 2021 02:22:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnX3Y-006jzf-4R; Thu, 18 Nov 2021 02:21:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E550020228A;
 Thu, 18 Nov 2021 03:21:42 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AAD1D2031AC;
 Thu, 18 Nov 2021 03:21:42 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id AD112183AD05;
 Thu, 18 Nov 2021 10:21:40 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org
Cc: hongxing.zhu@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: [PATCH v6 3/8] dt-bindings: imx6q-pcie: Add PHY phandles and name
 properties
Date: Thu, 18 Nov 2021 09:54:44 +0800
Message-Id: <1637200489-11855-4-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
References: <1637200489-11855-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_182144_344189_52D252DD 
X-CRM114-Status: UNSURE (   7.68  )
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

i.MX8MM PCIe has the PHY. Add a PHY phandle and name properties
in the binding document.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Tim Harvey <tharvey@gateworks.com>
Tested-by: Tim Harvey <tharvey@gateworks.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
index acea1cd444fd..643a6333b07b 100644
--- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
@@ -127,6 +127,12 @@ properties:
     enum: [1, 2, 3, 4]
     default: 1
 
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: pcie-phy
+
   reset-gpio:
     description: Should specify the GPIO for controlling the PCI bus device
       reset signal. It's not polarity aware and defaults to active-low reset
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
