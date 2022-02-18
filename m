Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B51C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIlj9Pduot9rKnOdL8kYb5h1FDSJHrvRYNQt2ZCeKE0=; b=cOWAzY/HGRnlZ3
	+EayXqU8ZSC67oNj2w+f9EB5VgGhS0knqd/yHUP1EuHyDTIhl+mj2a0rHvnwmzynDeex1qBmBv469
	WA6ScINfhRGKOR5kYwFoz1rfnihP0nCz7l71WVgjcRjcBO/uTGE1rhhhc5ILg+oC+nsVlZE/GPPRm
	9pW0tKfRxWkcyZoAcxt4R71iut/M2HoxAVedqQSsayEnVzlX2u0Z7l7oZ0eVPBzKQWM9ktgnUt3nh
	Eb7O3HAWWpYubjVmcgakmUMOSeZ+EShurmX5IW8HpzZz0MNwnzoCSk1s3fv2bl1bCZypfx27zi6XZ
	ho/b3L8mKDN+/m40QkYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4zB-00F1nt-TJ; Fri, 18 Feb 2022 15:15:53 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gU-00EsPT-EI
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:43 +0000
Received: by mail-wm1-x335.google.com with SMTP id i19so5408669wmq.5
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7H4qXnTXW08RnaMU6nHzYQDDgNK890kQnNZHO+wv8Is=;
 b=GbL9EOhgOCg+DlOkGcN01lp2uIBQiOJ++mt534W/MQIpzAOw9Dt7JC5h5y3Avtf1gq
 9/OlETR1IwJ3flgAwzPQJmqVpacPVhYuDjniJoQzkv4LU0+cY7lURCGjfnsdMtpbibfr
 0V+HMtN/qfO9VesRTJ9agOihdUpTA84TS/KgFc5uqprMm/WDxzWTiMYVxpXA6dHCaPCk
 EHdeXGC42f5/vWiMPO+hh2+l28UkFjIYUeCrZAYrtdCwoWZfVnnFY3HiNyl/0rxb+fOC
 gr7+2YKVIwShDqOFDQXrav/awPMS8RhM3ob473UmS0DKTYFisimPVaYWKIYRExf5FkbO
 WqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7H4qXnTXW08RnaMU6nHzYQDDgNK890kQnNZHO+wv8Is=;
 b=XZsqghVEPflomX91hJB5Hk3VgddHPcU0WdotB0MLs/ePT712auq+KnBHIp4n1yGroO
 GIXSfS+ovoi0XAkCxzdOANBgXNwUNNXkJGq3xarwBmfxgGkJeZJT23ANQOTSHzIhwo6u
 52mzYDuZLF1iPiauD1qTq05NHU3Nw6ko1Mnur0uu3U8fAHI63epSxJVOwQ7LKg3rCy8j
 MYRc4/4XkOLgU5WUDRuGszZ6MzwekF3Eph8XixRMy7H3tmuutQxCLE/ZXmQw8UYLovJc
 tkuYxP0qBjnW+bgjoF5HwI1iRiBiYBi1LkQw9/mMnZvCmkoTfwgShJvohpNQ/EIs0r2s
 6LCg==
X-Gm-Message-State: AOAM533o/Il4eXYprGXsYad+nrVsCnR2c5kwbOLeDjVbBRG8+GjWyD/C
 g9rYKbBbHa3Bbvic382Br/9ptA==
X-Google-Smtp-Source: ABdhPJxPvf8xrJg8I6LH2cnRlqNzZBlpAwtBJFRtBVDCKJxb59B/hVg/UcpgNkvvBHj0WWgcw/8y8w==
X-Received: by 2002:a05:600c:4f4f:b0:37b:d847:ef15 with SMTP id
 m15-20020a05600c4f4f00b0037bd847ef15mr10699463wmq.130.1645196192675; 
 Fri, 18 Feb 2022 06:56:32 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:32 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com,
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de,
 ck.hu@mediatek.com, jitao.shi@mediatek.com,
 angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v8 16/19] drm/mediatek: Add mt8195 External DisplayPort support
Date: Fri, 18 Feb 2022 15:54:34 +0100
Message-Id: <20220218145437.18563-17-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065634_598983_651B167B 
X-CRM114-Status: GOOD (  14.46  )
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

This patch adds External DisplayPort support to the mt8195 eDP driver.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c | 87 +++++++++++++++++++++++--------
 1 file changed, 64 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 5b60293ecc0d3..2a3d5f15b651b 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -188,6 +188,11 @@ static struct regmap_config mtk_dp_regmap_config = {
 	.name = "mtk-dp-registers",
 };
 
+static bool mtk_dp_is_edp(struct mtk_dp *mtk_dp)
+{
+	return mtk_dp->next_bridge;
+}
+
 static struct mtk_dp *mtk_dp_from_bridge(struct drm_bridge *b)
 {
 	return container_of(b, struct mtk_dp, bridge);
@@ -888,26 +893,49 @@ static int mtk_dp_get_calibration_data(struct mtk_dp *mtk_dp)
 		return PTR_ERR(buf);
 	}
 
-	cal_data->glb_bias_trim =
-		check_cal_data_valid(1, 0x1e, (buf[3] >> 27) & 0x1f, 0xf);
-	cal_data->clktx_impse =
-		check_cal_data_valid(1, 0xe, (buf[0] >> 9) & 0xf, 0x8);
-	cal_data->ln0_tx_impsel_pmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 28) & 0xf, 0x8);
-	cal_data->ln0_tx_impsel_nmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 24) & 0xf, 0x8);
-	cal_data->ln1_tx_impsel_pmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 20) & 0xf, 0x8);
-	cal_data->ln1_tx_impsel_nmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 16) & 0xf, 0x8);
-	cal_data->ln2_tx_impsel_pmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 12) & 0xf, 0x8);
-	cal_data->ln2_tx_impsel_nmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 8) & 0xf, 0x8);
-	cal_data->ln3_tx_impsel_pmos =
-		check_cal_data_valid(1, 0xe, (buf[2] >> 4) & 0xf, 0x8);
-	cal_data->ln3_tx_impsel_nmos =
-		check_cal_data_valid(1, 0xe, buf[2] & 0xf, 0x8);
+	if (mtk_dp_is_edp(mtk_dp)) {
+		cal_data->glb_bias_trim =
+			check_cal_data_valid(1, 0x1e, (buf[3] >> 27) & 0x1f, 0xf);
+		cal_data->clktx_impse =
+			check_cal_data_valid(1, 0xe, (buf[0] >> 9) & 0xf, 0x8);
+		cal_data->ln0_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 28) & 0xf, 0x8);
+		cal_data->ln0_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 24) & 0xf, 0x8);
+		cal_data->ln1_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 20) & 0xf, 0x8);
+		cal_data->ln1_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 16) & 0xf, 0x8);
+		cal_data->ln2_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 12) & 0xf, 0x8);
+		cal_data->ln2_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 8) & 0xf, 0x8);
+		cal_data->ln3_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[2] >> 4) & 0xf, 0x8);
+		cal_data->ln3_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, buf[2] & 0xf, 0x8);
+	} else {
+		cal_data->glb_bias_trim =
+			check_cal_data_valid(1, 0x1e, (buf[0] >> 27) & 0x1f, 0xf);
+		cal_data->clktx_impse =
+			check_cal_data_valid(1, 0xe, (buf[0] >> 13) & 0xf, 0x8);
+		cal_data->ln0_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 28) & 0xf, 0x8);
+		cal_data->ln0_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 24) & 0xf, 0x8);
+		cal_data->ln1_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 20) & 0xf, 0x8);
+		cal_data->ln1_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 16) & 0xf, 0x8);
+		cal_data->ln2_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 12) & 0xf, 0x8);
+		cal_data->ln2_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 8) & 0xf, 0x8);
+		cal_data->ln3_tx_impsel_pmos =
+			check_cal_data_valid(1, 0xe, (buf[1] >> 4) & 0xf, 0x8);
+		cal_data->ln3_tx_impsel_nmos =
+			check_cal_data_valid(1, 0xe, buf[1] & 0xf, 0x8);
+	}
 
 	kfree(buf);
 
@@ -1026,7 +1054,10 @@ static void mtk_dp_video_mute(struct mtk_dp *mtk_dp, bool enable)
 			   VIDEO_MUTE_SEL_DP_ENC0_P0_MASK |
 			   VIDEO_MUTE_SW_DP_ENC0_P0_MASK);
 
-	mtk_dp_sip_atf_call(MTK_DP_SIP_ATF_EDP_VIDEO_UNMUTE, enable);
+	if (mtk_dp_is_edp(mtk_dp))
+		mtk_dp_sip_atf_call(MTK_DP_SIP_ATF_EDP_VIDEO_UNMUTE, enable);
+	else
+		mtk_dp_sip_atf_call(MTK_DP_SIP_ATF_VIDEO_UNMUTE, enable);
 }
 
 static void mtk_dp_power_enable(struct mtk_dp *mtk_dp)
@@ -2228,7 +2259,11 @@ static int mtk_dp_probe(struct platform_device *pdev)
 	}
 
 	mtk_dp->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
-	if (IS_ERR(mtk_dp->next_bridge)) {
+	if (IS_ERR(mtk_dp->next_bridge) && PTR_ERR(mtk_dp->next_bridge) == -ENODEV) {
+		dev_info(dev,
+			 "No panel connected in devicetree, continuing as external DP\n");
+		mtk_dp->next_bridge = NULL;
+	} else if (IS_ERR(mtk_dp->next_bridge)) {
 		ret = PTR_ERR(mtk_dp->next_bridge);
 		dev_err_probe(dev, ret, "Failed to get bridge\n");
 		return ret;
@@ -2279,7 +2314,10 @@ static int mtk_dp_probe(struct platform_device *pdev)
 
 	mtk_dp->bridge.ops =
 		DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
-	drm_bridge_add(&mtk_dp->bridge);
+	if (mtk_dp_is_edp(mtk_dp))
+		mtk_dp->bridge.type = DRM_MODE_CONNECTOR_eDP;
+	else
+		mtk_dp->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
 
 	pm_runtime_enable(dev);
 	pm_runtime_get_sync(dev);
@@ -2338,6 +2376,9 @@ static const struct of_device_id mtk_dp_of_match[] = {
 	{
 		.compatible = "mediatek,mt8195-edp-tx",
 	},
+	{
+		.compatible = "mediatek,mt8195-dp-tx",
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_dp_of_match);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
