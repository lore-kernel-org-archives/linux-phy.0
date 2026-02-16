Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B371CE81A45
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 16:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAVv5vDVlwm9Yw7gt0ClEcFwM8LlTDz/djDw83fgBQ8=; b=i4Kmj6jkL06p9r
	DPICQsCI5Yuu6jXf6QIyoQxg0GzGJRcNbFO2QtitKf11gK8TG5GCkLQky3URl9T7FfKogcClwkQMJ
	ECe8Y+4xhBLkZ2+Qui1plyBIu7gSfPjOHmd3DPwuuCCU7+c3xH4NfPQCrXOCRCzGGymjfIr1FFUxW
	FFrjDyApngiRaTJGhbG9nTGRHdV9pIiVwpgeC3bIdiVyVTXptO8cuxOOO2rjOIGxBZlgnpp7QFNwb
	huXwOFLGqnQbhNDO/u6A458+NLIrS2j93SpwWC5pRwQ7DnliDSy7toYTUDUF0T0OWUlZNR2la5Zu0
	jkJUTHYBGLX8O6TezHAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1PO-000000071Ci-0OzQ;
	Mon, 16 Feb 2026 16:25:14 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1PF-000000070yE-4AR6
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 16:25:07 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-43945763558so962714f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 08:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259104; x=1771863904; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqCD0BNLW8XMq70VZYZvuBAvYG0v4co2Px4uvRfSTgE=;
        b=K0atujeeOBxV8oke8setTur2VV25ClJgp1OUSIMUy2nsweBw+jrkUWYFD+YJC5DgX8
         0tcnpi7kb3hy4k40eTkMF/niRTowidg4eu5l4C7/KibRKFiOOFUMlFjYcSWHxNnmZTTR
         WwXHzPxeqR6B5N6jqnftjcXWiKc8FB6pA5QyQxLycObbltk+8ueUgj6EGd42yppke86A
         51REaKqf/lhvSJ8fOTlb8q59Mdiaa37aoxhptQTGuIJ0gsXybcHslNws+j2hFwlAuLwc
         hx62fIxhZbacU3U8JZCSzVLIFbWKPJfH+dmbPKko9XrUHERwHmul5GOq22gXSYfaSAnV
         Y5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259104; x=1771863904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tqCD0BNLW8XMq70VZYZvuBAvYG0v4co2Px4uvRfSTgE=;
        b=HNI+x+LglCLx68k1Kh0NY81fWWVf1qkHFR08EIQCN6ABlSp5R6qNBKuXUIlSe65cSd
         2+HICDFcP1pOjtWHR2mwM1dIx4Ea07n/Ms7tSmvlr9DkEJxx4JIuW4FSGX5z8EWVr00s
         TQoL9wdXR39USiYdV+LpX+CVZWhjPBlpBfK4jBqRHW/TeaOdy7m0Oq7+JgX7neP8kqH+
         /AfrI1FJDZmluSeCtPtmHRBO+49yXruPV6c81IIS5ncB41gEBNa7Vm9zvpe7jrCkywrv
         BYH1fqw21ClZmgel0WdAkwnh950THjGSkuchWJf3Zco/uIc+w0ccIgxbHB7krtaW7Tw6
         BGAA==
X-Forwarded-Encrypted: i=1; AJvYcCVoVTf8bS5mNCG5kVrvdDoIuDGED/XDPCRfDto+LhGiStylfWofSON1nEnn4mfUQSWRW43tKZB6op8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyodmXhGd8iZFbPukjuM10zU5FObVTYnqtPVpmYI0zypGO1reCb
	AUCI47ww+yHYs1keMyZNt92TD0ZdUvB4HjVIMTE5UVQi2B2+NOeaGF8u
X-Gm-Gg: AZuq6aIL5Aa2Ovporkh0RyzPpAR1MeXR8TArHKWiyC/7t06aKFOpXLuxkFapIrQ6ZKe
	9J4KTfKSBWzo5dT+40z/7S8mA52+g+eszbwAXl48MY49QpowPGe6GGR50B0pY9qtDJIa5jgIQ6M
	g8QxsfXZBxbE0CCCkn+3g/VyZn0ZX6ah1ToaYNSNkOFah7F2Ep+jkyguFK62/GockfcjmfgrDCF
	CKMxalCR6yLH40c+gBEXMucCH5EK4GzNX3BVqpJl8sCS8ynVg0iCQNQN2qBYNKF/lOvLrydnztW
	1vTabuYS7NF0QTUqFZWa21FuAwkfGzFOCvi2VGdEn1GYiAcy1NxConmahJikLmexZubgpD+A/Pi
	N3wpxScm+j0ssjvLvScf0KXqpVI8Q4/R1KRHue0Cq8itwTVD9MMbYWvIDDrQ2taxV0fIXaAPjLi
	s2MTaza1qZxWEilIxtzEM=
X-Received: by 2002:a05:6000:238a:b0:437:6c23:3465 with SMTP id ffacd0b85a97d-43796ac1fc8mr18185802f8f.16.1771259103790;
        Mon, 16 Feb 2026 08:25:03 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:25:03 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 6/6] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Mon, 16 Feb 2026 16:22:17 +0000
Message-ID: <ee6bb10f8beb4a9d0d2bf49d5b053c7395ad6b50.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_082506_105144_9DE7DFD8 
X-CRM114-Status: UNSURE (   9.42  )
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

From: Val Packett <val@packett.cool>

While this configuration is otherwise identical to mt8173, according
to Android kernel sources, this SoC does need smi_id_en.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
