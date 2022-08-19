Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C916C28B2B
	for <linux-phy@archiver.kernel.org>; Fri, 19 Aug 2022 09:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FXASHC5lF582fd/gF9HG3ZHdKnQsLf3TQsrlpNl2B8=; b=XuBwmmUqmYpPC/
	VaII1UwNVxdCcxTgZen5MCSf4KQWWCLTeIU5fN80bLHE7LMBNIdKwRYnnEsEFRCIdsMvNW7/WlMH5
	mr+I6mhu3pw0vDBp6o/Hnkm0F7n6/pXe81gqrH5Qux8EVhabFFAMR+0r0kXWCMAnmxyywnFAGL2DI
	0CX3sxc6qnqlbgUw5IPL/68R+2/E9C5OP1V5mlc36+lZLeAB6gNostQyoiEae49yNKuzv/WOM4rW8
	46+3iiiPXTiHhQgzHk34tg3pVcwmM0G/oel6RABlHgg4eIhH/ODJLRUO722crTFHKzhg6hhwsxkCr
	e/7vmLVYlulqIw9OrQZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOy5W-004jP3-KJ; Fri, 19 Aug 2022 09:14:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOy5B-004j3u-Fj; Fri, 19 Aug 2022 09:14:26 +0000
X-UUID: d5e8cc1ab357475ab24e32bfaa73317f-20220819
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=w8qy4e70fA8fi5hbYN1bbBy3SRJLsnHUumQc0DFXM8w=;
	b=Hd86rLwRpBnNr/wVBh3RhAICyqbAP1asLKnbOX/sRYbAGaQyO/RQzWmYLo1G2nfTwGnr4HbFPZG05Z8zpwNSvlCEBp5oQJtEBcaap00JtVcAmTXywcBi1bmiXKGeLNox3cP1ZjNWCSaNB8iQeFhwpeVg1x3eG2qiX9n7w3900Y0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.10,REQID:fba0dd71-d61b-44fb-a55b-3d64467c227e,OB:0,L
	OB:0,IP:0,URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_
	Ham,ACTION:release,TS:0
X-CID-META: VersionHash:84eae18,CLOUDID:7b0b04cf-20bd-4e5e-ace8-00692b7ab380,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:
	nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: d5e8cc1ab357475ab24e32bfaa73317f-20220819
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1529091677; Fri, 19 Aug 2022 02:14:22 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3;
 Fri, 19 Aug 2022 17:13:50 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Aug 2022 17:13:49 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Eddie Hung <eddie.hung@mediatek.com>
Subject: [PATCH 7/7] phy: phy-mtk-tphy: fix the phy type setting issue
Date: Fri, 19 Aug 2022 17:13:44 +0800
Message-ID: <20220819091344.2274-7-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_021425_575506_6562AC0E 
X-CRM114-Status: UNSURE (   9.65  )
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

The PHY type is not set if the index is non zero, prepare type
value according to the index, like as mask value.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index e0f227a0d3cc..cc10298bc70d 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -915,7 +915,7 @@ static int phy_type_syscon_get(struct mtk_phy_instance *instance,
 static int phy_type_set(struct mtk_phy_instance *instance)
 {
 	int type;
-	u32 mask;
+	u32 offset;
 
 	if (!instance->type_sw)
 		return 0;
@@ -938,8 +938,9 @@ static int phy_type_set(struct mtk_phy_instance *instance)
 		return 0;
 	}
 
-	mask = RG_PHY_SW_TYPE << (instance->type_sw_index * BITS_PER_BYTE);
-	regmap_update_bits(instance->type_sw, instance->type_sw_reg, mask, type);
+	offset = instance->type_sw_index * BITS_PER_BYTE;
+	regmap_update_bits(instance->type_sw, instance->type_sw_reg,
+			   RG_PHY_SW_TYPE << offset, type << offset);
 
 	return 0;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
