Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9EDC32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 09:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SPVQP/zV3b0At5Sfi8fCbr9Y596bz5U2SEyZd5hlMPg=; b=mq9UavD9v/Npps
	122DqJ6bvjVSVs9i3RdKZNiHicB18ISSIAzBnzoPsF0K2MhG7mz8KABt224o61KlLB/dfZYpxpyQX
	tzjnsH5MIgM/LjDA5sSp9x+LC0Omp0by5UH4l5YPDNVhmRh/QDwqJmln4DTGHV3KIOrpZ5jjWpaZ5
	yDBikmOk2M5JzTiI6C4p00IjCKyuo8P1232lvGT4I1BUANMW56LBtbDEvu0GT6llj0CsYDcfv3U51
	6Oju5//5yijOB/vgWh07PECXF6uekuO/CJqARasMh/dvahzf2cFf3s0wMXdn7nHpMl//YkE2FbqPm
	ef4I7KJEGe4XDBoPIblg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ock2s-003RaP-Tn; Mon, 26 Sep 2022 09:04:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ock2i-003RTi-8K; Mon, 26 Sep 2022 09:04:49 +0000
X-UUID: 8b7327b2e9054a2ea19db6d04303ebae-20220926
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=bdR8OUDzVQJToNmX1fUPcVXOFrLojkV2bDF6mIGArXw=;
	b=k5kpffY/WdWA49i6/gJ+3QNu7vnNYOZgY+i5dc65ufscmF/19nalF4BDyq/x5jb5IzHHQAGnDvRrLwGGUJGBoTXMMKWqoxFsu+zAzE8wFM3rSLNv07kOfUWVeSwMP5v8vi0fgZGUqJ0ORKObhfi2JjTILGojeFuTshlI3Sggd1Y=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.11,REQID:d558ee5e-3058-432b-9455-e48102105ab5,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:39a5ff1,CLOUDID:e4790707-1cee-4c38-b21b-a45f9682fdc0,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 8b7327b2e9054a2ea19db6d04303ebae-20220926
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <xinlei.lee@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 343957152; Mon, 26 Sep 2022 02:04:45 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Mon, 26 Sep 2022 16:14:08 +0800
Received: from mszsdaap41.gcn.mediatek.inc (10.16.6.141) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Mon, 26 Sep 2022 16:14:06 +0800
From: <xinlei.lee@mediatek.com>
To: <chunfeng.yun@mediatek.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<matthias.bgg@gmail.com>, <chunkuang.hu@kernel.org>, <p.zabel@pengutronix.de>
CC: <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, xinlei lee
	<xinlei.lee@mediatek.com>
Subject: [PATCH] dt-bindings: phy: Add compatible for Mediatek MT8188
Date: Mon, 26 Sep 2022 16:14:05 +0800
Message-ID: <1664180045-19095-1-git-send-email-xinlei.lee@mediatek.com>
X-Mailer: git-send-email 2.6.4
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_020448_349209_39055975 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: xinlei lee <xinlei.lee@mediatek.com>

Add dt-binding documentation of dsi-phy for MediaTek MT8188 SoC.

Signed-off-by: xinlei lee <xinlei.lee@mediatek.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index 9c2a734..beba633 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8365-mipi-tx
+              - mediatek,mt8188-mipi-tx
           - const: mediatek,mt8183-mipi-tx
       - const: mediatek,mt2701-mipi-tx
       - const: mediatek,mt8173-mipi-tx
-- 
2.6.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
