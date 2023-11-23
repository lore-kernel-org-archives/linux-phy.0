Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD5CC624B4
	for <linux-phy@archiver.kernel.org>; Thu, 23 Nov 2023 13:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCY/VR20YkmDlOolHPIgYvuH4VvaOMNEFt+SrwjIJYs=; b=MQPVmijTuGJUOM
	Y8tSdgd9rSr0Bp9Y4E4plZkpT3MTKufHyex66M4ywspGVHFvIKFo6MOziUstDSBrcTotN6Bnpa8hp
	HpJa+Kwt4k3T1xIlMfFJ8vepJIzCPPqQBC+OaOfmvyXZQOctBvDUQN0lswr3iabSFfOV/lqIop2WM
	gihPwGd1MP4uGwgQKEdXeVOHwvj5cR7KJwM0o72cdvHCrnnOXVZ1iraAKCZHieRbozujEH3jXAjny
	0zBBqcTu1Jn0aAE5L/hZAJ0Jak70PZA2dxGClQW/qRomWB3TLiFLc6HW6nGDBehdjzX7IMZM/B7SH
	r9EfDQ8FC3jBsJqaadFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r69uc-004uUa-18;
	Thu, 23 Nov 2023 13:38:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r69uP-004uMT-20;
	Thu, 23 Nov 2023 13:38:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF9D462121;
	Thu, 23 Nov 2023 13:38:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33F67C433C9;
	Thu, 23 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700746700;
	bh=yp3tKEvY3IVCFEhD0Bxg/Hw6hTrEBgQxqiXCTK5PONg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iI/CzRx+LbYWI9WFQv0WzBDR0lAxkkzVvtOC7DAQgaylWVB0Kb9xobuPy+A/9V4ys
	 6EslE2vM1ydHw9XSW/FFipkTg5V7FHnrQ8hXY0FQmsfiw/DCnn+sxbq4jQDfh3NGQZ
	 FfZIzYVSg6nfy8/MYy4wpZT/XpLDcGftkMMaI7NtZDw7O6uqShHYJi8m+B1H7QbZ/g
	 4EN6pgFy2ZjJ50Hb89pELrKVU9RH+xLr7c4AyeilrWYswiHLSHySDwRMk/b6RTClXO
	 GF5KDC6eMbJ29r+vPueyY2a0DTT8oR3aKBDczeLj7/BRLSQCqj5w8upiJRaVbsIxN6
	 4M9pqlxxp0tLA==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 4/4] drm/mediatek: support the DSI0 output on the MT8195 VDOSYS0
Date: Thu, 23 Nov 2023 14:37:49 +0100
Message-Id: <20231123133749.2030661-5-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123133749.2030661-1-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_053821_699020_4A9104A9 
X-CRM114-Status: GOOD (  12.26  )
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

With the latest dynamic selection of the output component, we can now
support different outputs. Move current output component into the
dynamic routes array and add the new DSI0 output.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 2b0c35cacbc6..6fa88976376e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -222,7 +222,11 @@ static const unsigned int mt8195_mtk_ddp_main[] = {
 	DDP_COMPONENT_DITHER0,
 	DDP_COMPONENT_DSC0,
 	DDP_COMPONENT_MERGE0,
-	DDP_COMPONENT_DP_INTF0,
+};
+
+static const struct mtk_drm_route mt8195_mtk_ddp_main_routes[] = {
+	{ 0, DDP_COMPONENT_DP_INTF0 },
+	{ 0, DDP_COMPONENT_DSI0 },
 };
 
 static const unsigned int mt8195_mtk_ddp_ext[] = {
@@ -308,6 +312,8 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data = {
 	.main_path = mt8195_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt8195_mtk_ddp_main),
+	.conn_routes = mt8195_mtk_ddp_main_routes,
+	.num_conn_routes = ARRAY_SIZE(mt8195_mtk_ddp_main_routes),
 	.mmsys_dev_num = 2,
 };
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
