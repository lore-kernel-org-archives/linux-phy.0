Return-Path: <SRS0=iBXI=P2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD827C433EF
	for <linux-phy@archiver.kernel.org>; Sun,  7 Nov 2021 07:57:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71A7C60E97
	for <linux-phy@archiver.kernel.org>; Sun,  7 Nov 2021 07:57:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71A7C60E97
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CVGTUi7Iuusbt2tkB/p+WzRq7e0hO8a1ff6zvpIpKM=; b=Xm+9V3h93WkkAP
	UANjY0jpNSDC6qdwA7VgfOFSV2WAfYqxfeZbNrEvwhxlMtXwP3N+oKqr/gh4GAIH2iVbfydWPsdRo
	MkJTeNjBa4L0dfYd5asSnRfbYCailGd+AjFcMEGEugPOMQow7zB93hO0rD6K8viEMSfNDIZMhnYyA
	BrgPWLKA+EV2jW2vKCWc/rjfdFYMMVx376ZR/krkuRdLR2ktUSq2hGuwL4QOLdwmnWdW2cbwhWjz4
	3jrjX7qSiNx7ILdc+j4noddA+kC3IwaUfYIy1dL5A3a+S8eejHun7LSSi48y8cxBYsXXpd9+Ms6UR
	+oNehLFJsf9tLuaGTHhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjd3V-00E5ok-UY; Sun, 07 Nov 2021 07:57:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjd2x-00E5et-NQ; Sun, 07 Nov 2021 07:57:01 +0000
X-UUID: b73c127ec01a460fb50ae1fb2f060d77-20211107
X-UUID: b73c127ec01a460fb50ae1fb2f060d77-20211107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1796607745; Sun, 07 Nov 2021 00:56:53 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 7 Nov 2021 00:56:52 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Sun, 7 Nov 2021 15:56:51 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkmbs10n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Sun, 7 Nov 2021 15:56:50 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Eddie Hung <eddie.hung@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Yz Wu <yz.wu@mediatek.com>
Subject: [PATCH 4/6] dt-bindings: phy: mediatek: tphy: support software efuse
 load
Date: Sun, 7 Nov 2021 15:56:44 +0800
Message-ID: <20211107075646.4366-4-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_005659_805928_A337432E 
X-CRM114-Status: GOOD (  10.35  )
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

Add optional property nvmem-cells and nvmem-cell-names to support
software efuse load, this helps to fix the efuse bit shift issue
on mt8195 etc.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 .../devicetree/bindings/phy/mediatek,tphy.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 9e6c0f43f1c6..05ee274b4b71 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -160,6 +160,24 @@ patternProperties:
                 - PHY_TYPE_PCIE
                 - PHY_TYPE_SATA
 
+      nvmem-cells:
+        items:
+          - description: internal R efuse for U2 PHY or U3/PCIe PHY
+          - description: rx_imp_sel efuse for U3/PCIe PHY
+          - description: tx_imp_sel efuse for U3/PCIe PHY
+        description: |
+          Phandles to nvmem cell that contains the efuse data;
+          Available only for U2 PHY or U3/PCIe PHY of version 2/3, these
+          three items should be provided at the same time for U3/PCIe PHY,
+          when use software to load efuse;
+          If unspecified, will use hardware auto-load efuse.
+
+      nvmem-cell-names:
+        items:
+          - const: intr
+          - const: rx_imp
+          - const: tx_imp
+
       # The following optional vendor properties are only for debug or HQA test
       mediatek,eye-src:
         description:
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
