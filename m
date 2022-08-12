Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FDCDC28B2B
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 14:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2EZ7yDP3Kux3WC0IsvpnLBxLRZxHboSj17lyTy3th0=; b=zkU/CGmJSpaz4V
	srLDzLDv4CdA7Y+2imTcPkJgvzoAxbdiKzwWk4nV//jtJ3RVAifVpTDpv1tVTYyJZPue66uxSSI4D
	IqYJy6u6Hvx4luvnn8rJK4EeAMU1CNJatLiACpITd6uwmPBrtg4NZCmm6FNiwqBP2TQAHmJkjpLuD
	dpRmKjVRG8VgMCvBIENrNhy29jREvCaOSf1xUEYbpp0Pyr0yChaL1rPRg1SZVIvGb4htcuV5JZDP6
	Leb30YJFzbOjdHiuXV3uMir3KyYsRRgi+brEq5AVoljL/PZFXONexMArhEgDGaQDtvEhn8mqMzbt5
	bINdYRabRiW30br2oHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVih-008xq6-HP; Fri, 12 Aug 2022 14:33:03 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVic-008xl7-Ab; Fri, 12 Aug 2022 14:32:59 +0000
Received: by mail-ot1-x32f.google.com with SMTP id q6-20020a05683033c600b0061d2f64df5dso656686ott.13;
        Fri, 12 Aug 2022 07:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=RmPB7YB/RZJpHwqeBcu+PkPPyHv7N2fInWOSLc8+7HagSm77fxUwDXAW0f0o2rSC5e
         uMUOrtvDz9qZbqS2FKvcg5GShPRqkYE2dAzWbB2FhH5W3A3jWInUpnNL3o/VsUl+11hU
         tpheMZ00CQT538nzsmUypQNSB3hbugUodOpCK4LRo5EeXiCahjTnrwR3YwmX3ENuzag+
         o9nuM4EhSzLyenCF+fIYLw3KbuolaZDk5xguMKtB95N5t/ipvYCyORoK3ViFfHTMi9eU
         iwdZ/j5ZBbseVA5vJ7ieQp86G4c8ikWbFvXUJARByDMTEnPAP/LdoEEFkdnRAq40ZfuS
         goBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=y5tBgFle7psWquBkTH1AvEYgqVDbikwGUxK0WX3REMxf8CGA/Aq077pPe83+PZfS6S
         lcjUwrFgWkbrJ4qkEPjPiZnDPAuTGtkL50DO/puWujDdWwtt1s2EG99JMEhJCNtRIoii
         VXyGrKJfm9QbFltb6fke+NHAjkbCIFA9Z0rH/Ach2rlQchS90uYFojc+Loo8b/gQxqai
         yakfYEZf/NBjPHNLC4Mo83RaD4TlFvpJHY+oH9rMn9slfOhHCN2N+oLYLGh9J18EI+c9
         42UYhnnR9MF0WI/TG7S/ei9Yin55EiFV3Ii+nuo3Dh/blMvUNzidDI9CRq9Ay4mwv2pw
         W2qQ==
X-Gm-Message-State: ACgBeo2zVCAfC0rVGw8dv0xuDE6rmNYu3B7I9fhmxazxCZLXTkx9odgt
	IbIO4cLPP6nPtJcn7j2stxMSOmNV6t0=
X-Google-Smtp-Source: AA6agR7QtAT5mXjQhzxM/chs9icZWvO85teHKtiA9oDENOvnbOuz9aOqNNNFrhRSL7CkTGWm2BTR9A==
X-Received: by 2002:a9d:2cb:0:b0:636:dd6a:b3e6 with SMTP id 69-20020a9d02cb000000b00636dd6ab3e6mr1455445otl.254.1660314774879;
        Fri, 12 Aug 2022 07:32:54 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 3/4] drm/rockchip: dsi: add rk3568 support
Date: Fri, 12 Aug 2022 09:32:46 -0500
Message-Id: <20220812143247.25825-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_073258_413265_935BDD05 
X-CRM114-Status: GOOD (  15.19  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the compatible and GRF definitions for the RK3568 soc.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 51 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 110e83aad9bb..bf6948125b84 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -179,6 +179,23 @@
 #define RK3399_TXRX_SRC_SEL_ISP0	BIT(4)
 #define RK3399_TXRX_TURNREQUEST		GENMASK(3, 0)
 
+#define RK3568_GRF_VO_CON2		0x0368
+#define RK3568_DSI0_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI0_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI0_TURNDISABLE		BIT(2)
+#define RK3568_DSI0_FORCERXMODE		BIT(0)
+
+/*
+ * Note these registers do not appear in the datasheet, they are
+ * however present in the BSP driver which is where these values
+ * come from. Name GRF_VO_CON3 is assumed.
+ */
+#define RK3568_GRF_VO_CON3		0x36c
+#define RK3568_DSI1_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI1_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI1_TURNDISABLE		BIT(2)
+#define RK3568_DSI1_FORCERXMODE		BIT(0)
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 enum {
@@ -735,8 +752,9 @@ static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi)
 static void dw_mipi_dsi_rockchip_set_lcdsel(struct dw_mipi_dsi_rockchip *dsi,
 					    int mux)
 {
-	regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
-		mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
+	if (dsi->cdata->lcdsel_grf_reg < 0)
+		regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
+			mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
 }
 
 static int
@@ -963,6 +981,8 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
 		goto out_pll_clk;
 	}
+	rockchip_drm_encoder_set_crtc_endpoint_id(&dsi->encoder,
+						  dev->of_node, 0, 0);
 
 	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder.encoder);
 	if (ret) {
@@ -1612,6 +1632,30 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
+	{
+		.reg = 0xfe060000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON2,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI0_SKEWCALHS |
+					  RK3568_DSI0_FORCETXSTOPMODE |
+					  RK3568_DSI0_TURNDISABLE |
+					  RK3568_DSI0_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{
+		.reg = 0xfe070000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON3,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI1_SKEWCALHS |
+					  RK3568_DSI1_FORCETXSTOPMODE |
+					  RK3568_DSI1_TURNDISABLE |
+					  RK3568_DSI1_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
 	 .compatible = "rockchip,px30-mipi-dsi",
@@ -1622,6 +1666,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	}, {
 	 .compatible = "rockchip,rk3399-mipi-dsi",
 	 .data = &rk3399_chip_data,
+	}, {
+	 .compatible = "rockchip,rk3568-mipi-dsi",
+	 .data = &rk3568_chip_data,
 	},
 	{ /* sentinel */ }
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
