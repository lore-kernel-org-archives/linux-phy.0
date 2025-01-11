Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFDFE7719A
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jan 2025 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUguSoDczZ4Uc8R+tSgffYtOjFoL09cG67+jf0Szoh0=; b=4ZO3LAIQ+3w7uS
	W+jqPNoiLKAIS7oWht5iOsX7H++lb9VHmhji0b/sMNILd/gVbq0t1jS3GAY4qWqTxbc2XKqukBMND
	vHbWjacfGPyNOm7QSHQqx2SFusgZnQ2XAQF3OcIAF4H9ollrqjkd72BuZwsvEtNnCJGnG2Lu53a77
	RHs3pl0+eTZsr8YDaBVy7fHv/ueJqL4Aa/LflSpwplxtTAhlSN4RkWrroik2uGD1aIztrTOTBCh8u
	nTI9f7BYunP7OyT69yQibDRvouW4gTzSaGpFGKKmKe8CN1bonZpy6kALbzvSRM661LtPw0rX76r6j
	WL9kxfOXHlx/TTUed/cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWcHc-00000000trd-3FS9;
	Sat, 11 Jan 2025 14:16:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWcHZ-00000000tqn-3IxW;
	Sat, 11 Jan 2025 14:16:10 +0000
X-UUID: 97bd72e6d02611ef82ff63e91e7eb18c-20250111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Cht/vAGJIZzbEfrDdOm9SBLezLgKDjkDcZWdI0QLLZ8=;
	b=bWHT0Mk9ks1mdLfS2S4+T8zLPxViQpeXzGGcLf0Az7eRagMT+fhJ09MByE1TK73Ytl+gtB4IbzMx7jd8xVh5nWMhpF10SOR41jzdQPu6tF7zRgmMyhEF/aej5ih1X+3BP++vPlTdDpYWelZs6hxxrH0wKHCOzWVivDbcLDyMRsU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:cadd849f-f72a-413c-bcf9-2b5c2d39f264,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:b192bb0e-078a-483b-8929-714244d25c49,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:-3,IP:ni
	l,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,
	LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 97bd72e6d02611ef82ff63e91e7eb18c-20250111
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1822925588; Sat, 11 Jan 2025 07:16:04 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Sat, 11 Jan 2025 22:16:01 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Sat, 11 Jan 2025 22:16:00 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property to set disconnect threshold
Date: Sat, 11 Jan 2025 22:15:41 +0800
Message-ID: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250111_061609_835468_C1CC0067 
X-CRM114-Status: UNSURE (   8.18  )
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

Add a property to tune usb2 phy's disconnect threshold.
And add a compatible for mt8196.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
based on kernel 6.13-rc1

this property is porting from t-phy driver, due to the u2 phy are similar.
---
 Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
index a9e3139fd421..2e012d5e1da1 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
@@ -49,6 +49,7 @@ properties:
       - enum:
           - mediatek,mt3611-xsphy
           - mediatek,mt3612-xsphy
+          - mediatek,mt8196-xsphy
       - const: mediatek,xsphy
 
   reg:
@@ -129,6 +130,13 @@ patternProperties:
         minimum: 1
         maximum: 7
 
+      mediatek,discth:
+        description:
+          The selection of disconnect threshold (U2 phy)
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 1
+        maximum: 15
+
       mediatek,efuse-intr:
         description:
           The selection of Internal Resistor (U2/U3 phy)
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
