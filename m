Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA8CECAAD2
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 08:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm+UMBaTC7JifBu7jPz/FbeL2zVE6hVMcq6YNiOeYuM=; b=AU4C34445ggEBl
	JcZDdN53XflxTtQZnfCaODgfQCte5N9j4SgiBbC0TQrW4Scb4FW2HFtV8yY0RyVrd4HX+42AmO+Q1
	kXun6wB5o60OkPfmRWMkxsDJXYan0StI2B1JjktYvHPFe4w5y8aAcOgHUVLKDehWhxCjh/d49e68I
	a4E16suIeIfHocOukz6Ce1qExB5BUEjmwTymWavsS6QcRlU+bIZhCiKHRE9zFQb3D3d22vWNFicAV
	KVF81B3TOBY92eXkykIns+l4hvxQpXrbhjp9xBPXR9qSQDtO51WPcn7MjLcit13zbez+FtGwvUjch
	U+CcM8jydNaiunEi/xNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSZtK-0062wC-GQ; Mon, 29 Aug 2022 08:13:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSZtH-0062gi-0n; Mon, 29 Aug 2022 08:13:04 +0000
X-UUID: 389976b32250450cb85fee253d32e84a-20220829
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=VAHJFqQzhRn88m6R3tZ7/zsDUdAQj7nWEaWhRpKIxCM=;
	b=eBt+rjTUl2qnYAJXI76Y04aHoqsZk2EvrZBojYPRdOpjMhTe2LieAGtLk47inWGaXRoaKYjJV7ZanewssW/XC4Qlrgit3k78UIRE4JIL42EGnfbG+P61ce4DrhT7hfDMBAgZ5TNJPWtkC2dVAOBxa3pbj3heqOspxRtAZS9+R28=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.10,REQID:579247cb-48ec-4994-8de3-2ad84c378956,OB:0,L
	OB:0,IP:0,URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_
	Ham,ACTION:release,TS:0
X-CID-META: VersionHash:84eae18,CLOUDID:eb74df55-e800-47dc-8adf-0c936acf4f1b,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:
	nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 389976b32250450cb85fee253d32e84a-20220829
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 732792521; Mon, 29 Aug 2022 01:09:36 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Mon, 29 Aug 2022 16:08:36 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 29 Aug 2022 16:08:36 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski@canonical.com>, Eddie Hung <eddie.hung@mediatek.com>
Subject: [PATCH v2 6/7] phy: phy-mtk-tphy: set utmi 0 register in init() ops
Date: Mon, 29 Aug 2022 16:08:29 +0800
Message-ID: <20220829080830.5378-6-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220829080830.5378-1-chunfeng.yun@mediatek.com>
References: <20220829080830.5378-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_011303_090531_934B59F2 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

No need repeat to clear utmi 0 register in ->power_on() and
->power_off(), just do it in ->init()

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: no changes
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 79920c066e59..e0f227a0d3cc 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -522,8 +522,8 @@ static void u2_phy_instance_init(struct mtk_tphy *tphy,
 	/* switch to USB function, and enable usb pll */
 	mtk_phy_clear_bits(com + U3P_U2PHYDTM0, P2C_FORCE_UART_EN | P2C_FORCE_SUSPENDM);
 
-	mtk_phy_update_bits(com + U3P_U2PHYDTM0, P2C_RG_XCVRSEL | P2C_RG_DATAIN,
-			    P2C_RG_XCVRSEL_VAL(1) | P2C_RG_DATAIN_VAL(0));
+	mtk_phy_clear_bits(com + U3P_U2PHYDTM0,
+			   P2C_RG_XCVRSEL | P2C_RG_DATAIN | P2C_DTM0_PART_MASK);
 
 	mtk_phy_clear_bits(com + U3P_U2PHYDTM1, P2C_RG_UART_EN);
 
@@ -565,9 +565,6 @@ static void u2_phy_instance_power_on(struct mtk_tphy *tphy,
 	void __iomem *com = u2_banks->com;
 	u32 index = instance->index;
 
-	mtk_phy_clear_bits(com + U3P_U2PHYDTM0,
-			   P2C_RG_XCVRSEL | P2C_RG_DATAIN | P2C_DTM0_PART_MASK);
-
 	/* OTG Enable */
 	mtk_phy_set_bits(com + U3P_USBPHYACR6, PA6_RG_U2_OTG_VBUSCMP_EN);
 
@@ -590,8 +587,6 @@ static void u2_phy_instance_power_off(struct mtk_tphy *tphy,
 	void __iomem *com = u2_banks->com;
 	u32 index = instance->index;
 
-	mtk_phy_clear_bits(com + U3P_U2PHYDTM0, P2C_RG_XCVRSEL | P2C_RG_DATAIN);
-
 	/* OTG Disable */
 	mtk_phy_clear_bits(com + U3P_USBPHYACR6, PA6_RG_U2_OTG_VBUSCMP_EN);
 
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
