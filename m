Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2756CD1A42F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 03:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WhQBzo4p+64LTgRlHj/tNAgaBzTz3W1X+Q0njzddeyY=; b=mCKMNPLZOC9+Db
	VSy+dZ0oq768jiFoGrS1uzmCs6OIhnVVEIjLvESsqi806U8eBkZ+HbjobreLV4p6P8H0hvd0BJjCl
	JxLo5vpBEvWzvExqisQ+Rf9yTn1orTSEIPnGqfrHZAZrCvSFAradDvYN3ddYHtOX8sVR0yuY1btHQ
	q1xfD4mYQ/mlIxsvO5vLQ7FDoWeteo2yqOcK0L5yZLwtCfmCWIc3s8LPVekWoF0X6mibI+d3t/u2h
	LmHyLrIipWTCj+KhtPKt3Cz7c5fm/eKaPABASV9y0Pui7T+XccoERkw+5qybE57Azq+/5TdeCQu3+
	i84WGjeV9cXeiFO/wIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szTAZ-00000000U0Q-2uIa;
	Sat, 12 Oct 2024 03:51:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szT9B-00000000TtD-0FVG;
	Sat, 12 Oct 2024 03:50:30 +0000
X-UUID: 1d5001d4884d11efb3adad29d29602c1-20241011
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=c4LvdEEHLpX8RMbvMLOgpoWf9QYjGh9Wl1Flol3Dlpg=;
	b=f+DeCIvd6hWYZKDgMtH2QyYJSiwXdWwoKcqH2fUDZ7566oEM6EPi3zAvwKv/SUCxcsTztTazWO98jYAZA9rbmRB6pBOnDyIL9dzkLgP5BmFn8attcoSmTs9mY6K2CZFx1w99bK3x42b0tpfYBruL7OdiblKBdc/uUiL9MF65xXw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:5d9fc889-edd1-4cd3-b66a-94f9941bb5e9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:5d4ba906-3d5c-41f6-8d90-a8be388b5b5b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 1d5001d4884d11efb3adad29d29602c1-20241011
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1515619662; Fri, 11 Oct 2024 20:50:25 -0700
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sat, 12 Oct 2024 11:50:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sat, 12 Oct 2024 11:50:22 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>, Macpaul Lin <macpaul@gmail.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v3] dt-bindings: phy: mediatek: tphy: add a property for power-domains
Date: Sat, 12 Oct 2024 11:50:16 +0800
Message-ID: <20241012035016.17667-1-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_205029_136566_1DC06DD0 
X-CRM114-Status: GOOD (  10.30  )
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

Include the MediaTek TPHY in a power domain.  Add the 'power-domains'
property in the Device Tree (DT) Schema and set 'maxItems: 1'.

Also, include a reminder in the description of the 'power-domains'
property.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/mediatek,tphy.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

Changes for v2:
 - Add a reminder in description of 'power-domains' property.
 - Fix commit message from v1.

Changes for v3:
 - Use 'imperative mood' keyword in the prompt of chatGPT to refine the commit
   message.
 - Add 'Acked-by:' tag, thanks for the review and grammer tool sharing.

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 423b7c4e62f2..6be3aa4557e5 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -125,6 +125,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 28
 
+  power-domains:
+    description:
+      The TPHY of MediaTek should exist within a power domain. The
+      developer should be aware that the hardware design of MediaTek TPHY
+      does not require the addition of MTCMOS. If the power to the TPHY
+      is turned off, it will impact other functions. From the current
+      perspective of USB hardware design, even if MTCMOS is added to the
+      TPHY, it should remain always on.
+    maxItems: 1
+
 # Required child node:
 patternProperties:
   "^(usb|pcie|sata)-phy@[0-9a-f]+$":
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
