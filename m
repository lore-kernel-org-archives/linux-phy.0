Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D745EC369D0
	for <linux-phy@archiver.kernel.org>; Fri, 18 Apr 2025 07:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I50FM5sytX3YLHoFR5VbOOHo5LzATHLQCy/hOxyl/8A=; b=Ri7urYTlCRov0z
	YfrB66A8z7ldPtvNeE06AB0EhurX9csEup6im/D+9UK/KZ1dZt8bHxYmmrMzwQtyxELtnCxTs090c
	j8vv5z2onztTrvCFTWiLcGniHHM6lkuoqmvzs01pDba0p1Wl3Km8D09dQ/2eiouATCHXiwKFrok1Q
	QKH/xqE0/pW/S77bqmAIviece420kg7C2NbjXBthCPKjTCF160v3ngEaT3mBPkUsY4RLliG61s4J1
	tss5GemR+b8V2Bk5oOkrvTeM0F6h95ZZ7qrOuhBMG76U5GfyduRb2R3qZzYuRlvumkSZXJiR0BZ+X
	GGPA7TcLO18W7WTIRBdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5fnC-0000000FPsY-2b0T;
	Fri, 18 Apr 2025 07:05:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5fbN-0000000FLbk-2FPz;
	Fri, 18 Apr 2025 06:53:31 +0000
X-UUID: d176d2421c2111f083f2a1c9db70dae0-20250417
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=vP/pmjYB/UEc9jBjVVzZ4eruBcoBstw0sXKps7+hEW0=;
	b=JETgk1bOq9I+bfN0qa37MTkSaYf8vRtD+HneZIQNFOPrbb0SVErqT7nssAaiVwQ42xPhV6ojtSn8MgaaJdxdAm0VmvqqZAnTxfF35r6bzzb2sszr2M/l0c+sgiw/+MZ52zxb0mQrkAASOzgyXjJj8wcAB3NZEhPMvQICM30B8Iw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:4070580c-a044-44e8-b82c-ff38061bd7ca,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:91883aa6-c619-47e3-a41b-90eedbf5b947,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:-3,IP:ni
	l,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: d176d2421c2111f083f2a1c9db70dae0-20250417
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <bincai.liu@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1137643636; Thu, 17 Apr 2025 23:53:22 -0700
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Fri, 18 Apr 2025 14:53:19 +0800
Received: from mszsdhlt06.gcn.mediatek.inc (10.16.6.206) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Fri, 18 Apr 2025 14:53:18 +0800
From: Bincai Liu <bincai.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chunfeng Yun
	<chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Jitao shi <jitao.shi@mediatek.com>, CK Hu
	<ck.hu@mediatek.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	Bincai Liu <bincai.liu@mediatek.com>
Subject: [PATCH 0/5] eDP driver for mt8196
Date: Fri, 18 Apr 2025 14:52:27 +0800
Message-ID: <20250418065313.8972-1-bincai.liu@mediatek.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_235329_574016_C139F5D4 
X-CRM114-Status: UNSURE (   7.96  )
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


Bincai Liu (5):
  dt-bindings: eDP: mediatek: add eDP yaml for mt8196
  dt-bindings: dvo: mediatek: add dvo yaml for mt8196
  drm/mediatek: Add dvo driver for mt8196
  drm/mediatek: Add eDP driver for mt8196
  drm/mediatek: Add eDP phy driver for mt8196

 .../display/mediatek/mediatek,dp.yaml         |   2 +
 .../display/mediatek/mediatek,dpi.yaml        |   1 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c       |   5 +-
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h       |   1 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 484 +++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         | 126 +++++
 drivers/gpu/drm/mediatek/mtk_dpi.c            | 240 +++++++--
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |  66 +++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   5 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   1 +
 drivers/phy/mediatek/Makefile                 |   1 +
 drivers/phy/mediatek/phy-mtk-edp.c            | 262 ++++++++++
 12 files changed, 1100 insertions(+), 94 deletions(-)
 create mode 100644 drivers/phy/mediatek/phy-mtk-edp.c

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
