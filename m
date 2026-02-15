Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBC86EF5868
	for <linux-phy@archiver.kernel.org>; Sun, 15 Feb 2026 08:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ng1FkvoxTP75B0vuQBbUMeMc/qUEWk+SG+671QySGGI=; b=UE+rzdXsAHU3Pt
	ceKkWB93VWECUJ6OMc0uB3NqierxFBJW1CBLEHgcw+VwWHLmMOGyT8a2GC7Mf/+FdIv5LL1KuzuBy
	APCZB/mnlyCBTuc8BDuMkMQ/GQ8cSgnk+EQJ42Abr2FG8FoYyci1pp+v/2sh//pE1NOnGdMsE3lNZ
	p7qKBJpOGOlgZmQcciWoZCnUAg4LraPkd3UvpNzifCHCBzEhj6M0e1+dSSsYtrwaIO2fDDQ3I+dtV
	zJofkxKS4vfsgOnOwK62ds3u97ZMjhrOQas8k+EeZAldasirCkxxl/av0tTdBQ0Zlf5WiHjQtnry4
	WYQnlTbdBPfOQ/CL6iIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXv2-00000005HKC-1iO9;
	Sun, 15 Feb 2026 08:55:56 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXuu-00000005HAu-2BcU
	for linux-phy@lists.infradead.org;
	Sun, 15 Feb 2026 08:55:49 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso5713205e9.2
        for <linux-phy@lists.infradead.org>; Sun, 15 Feb 2026 00:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145746; x=1771750546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0j1K2MWkt0qaJPtZ+aFAPD3v2FfobPnhX1+9/1/mc=;
        b=cWmOeUPTZDDx9jrYUwPtNkdj9HRchmvTJ1+4rlu3HUCuY41JRFZvlxhRc7LnQXXXVf
         WitMAP7PRSt5V5HnYOsA097C5NAc2txmk90b6mZ7ftSVEDLCNfWqEs9GFt2Ycco7m7hB
         s7T6Ugkjweshofr1vXWIxXf4JIsdvhPhw19h0MrUQSNHU8sOi4IrdtSt/x702BrgR4pY
         g1vn0M+yePetbqEKbjfvusfXepQOpB582DsBWDKaQO6hEVIgbQBH+kwI1tHmdy0JsyOv
         reZCOBBuWAabAy5qbJSuCRAVhvy7RBWnaJ+byhGFiCgaBhJevSKRr0XCiAGLSObAlJSO
         3VHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145746; x=1771750546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xn0j1K2MWkt0qaJPtZ+aFAPD3v2FfobPnhX1+9/1/mc=;
        b=MFLYW3rjc2FbrYKGIpsftwbpdAg99oTHQYFVophb1t4O9Rj4UXyi+5AdxVpDuBrNuP
         rjg0l4tQ/+B7Ud8VCPsYJjFAxeY62JcOt5VPja1v2IF10FoO/d/BXYkFc6X4u53kkMwI
         i2gVkROBEP4H7ic29oZTlBnzifrIYGUKvyOZfJsPFvAC0+efQNRAh9rwDYj65cse0tVy
         ttTjZqCI4D0zNtEItX+6JqM4D86WFGLkGDIeprs2AGm0d4c7D6ayW4atb/lgtLxcfZn9
         Gs+qWow4KlPMw549LqGS0nkvEOwqrXD6i3caQvrqJDwZ82cF3sbfg8dQiR2yjnNJCoFj
         ak0g==
X-Forwarded-Encrypted: i=1; AJvYcCU8qDGz0b70Ba3mDi/9Gz/GM5OE8fXaXRzPU2272uhpOzDm+ozQqvSuSoxqjALMi2de+XYwo7iI1Ms=@lists.infradead.org
X-Gm-Message-State: AOJu0YxA8VwwlG2a87vcQHeNtPyA3nM6J3XBrTEvAsWAp7mqsjqYSOZQ
	sg/WLcBAZJXbHgFSKIhnIwoX8265wmCiJL7wxl15LFLMpOqwRcD730BH
X-Gm-Gg: AZuq6aL0IHTu59ipFQjSMNhLizBGr9pQBHyTzAEjaOfClxVa2ipOVILdh/RB6s577v1
	ch9HLicV9AP8778AexTjky1WLr8aAHJyvTYcSwqr8d9dfcjLc7SAwuNltDAKrCskmvqRBV20zih
	3BylDfwRUw1VKuUqyQC0+FuIsAjdm81+hnVfe7ZPQ8p1e8zIE12ZoDn/1ZCuOKI1wkHhhcpIu62
	bGxFDKSFnDusPxL62o2snHIFkVDO3V5DkIKt9T8Y1RwkrUuLACPAdNtqAcJRMkOSc7ZXuTKce2b
	uT9M9b+JqdWzEIFxOQvtGSkpkxKD9JxYqBM51r8K1Mv9D6GsCT/tm22qcfvFCW4DebsPsqzPODv
	JevdOBI9Y5jmFPAxJyU7KuF5ZlOy4jVmQeOUesisna2IFe9Fikr/3l0oDuo4gbfjOxJe3IIevHI
	jHiSds0gBcNGcxGFZ31NE=
X-Received: by 2002:a05:600c:870b:b0:483:6f37:1b56 with SMTP id 5b1f17b1804b1-48371051b15mr146178135e9.10.1771145746214;
        Sun, 15 Feb 2026 00:55:46 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:45 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Val Packett <val@packett.cool>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 4/4] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Sun, 15 Feb 2026 08:53:56 +0000
Message-ID: <b440a9c1972dedc4cfbf29a84366e635b0d7d984.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771144723.git.l.scorcia@gmail.com>
References: <cover.1771144723.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_005548_619673_AD3B28A6 
X-CRM114-Status: UNSURE (   9.54  )
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

From: Val Packett <val@packett.cool>

While this configuration is otherwise identical to mt8173, according
to Android kernel sources, this SoC does need smi_id_en.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index e0236353d499..97a899e4bd99 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -671,6 +671,16 @@ static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.num_formats = ARRAY_SIZE(mt8173_formats),
 };
 
+static const struct mtk_disp_ovl_data mt8167_ovl_driver_data = {
+	.addr = DISP_REG_OVL_ADDR_MT8173,
+	.gmc_bits = 8,
+	.layer_nr = 4,
+	.fmt_rgb565_is_0 = true,
+	.smi_id_en = true,
+	.formats = mt8173_formats,
+	.num_formats = ARRAY_SIZE(mt8173_formats),
+};
+
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
 	.gmc_bits = 8,
@@ -742,6 +752,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
 static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
 	{ .compatible = "mediatek,mt2701-disp-ovl",
 	  .data = &mt2701_ovl_driver_data},
+	{ .compatible = "mediatek,mt8167-disp-ovl",
+	  .data = &mt8167_ovl_driver_data},
 	{ .compatible = "mediatek,mt8173-disp-ovl",
 	  .data = &mt8173_ovl_driver_data},
 	{ .compatible = "mediatek,mt8183-disp-ovl",
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
