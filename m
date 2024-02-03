Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE1EC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeO1LrvfoYSiwBBB3cBPlYYZSDCRi2RrtG343n72CO0=; b=DKkfqT/GikpwT9
	QfFbzEsAZXiTBiIeUEy4Ql/n8eTZzRPj/Sb0tK3CrkdwmP0Q5CiS948GGDTb5dVJzUZ599WeOTe4F
	VCWKnZRTOz8LbkS5MVlMGJGT6bh4Nz/glhODHWIwv3rIcZHB/ECaEzBT1MrfsDK9whrKOSIAM9LKe
	k9Tv27bL9PaiM+KmOHtEPJ5OcoSw/uga+B8GEfKugbsdebKHAhyt43iNoFqVeJIOKwpDJgy4KERxB
	jd9pC74EOuzI8/84pG0u3YN9g917GaXZkNbI7Qh4RF1hap+HQiUisjS0O42c0SXK8tRaaI7/Cpkqr
	vM2fFuoEyFn/2fM4HgbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJI3-0000000GqwR-0fW3;
	Sat, 03 Feb 2024 16:54:51 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHd-0000000GqdG-3qFB;
	Sat, 03 Feb 2024 16:54:41 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-3639aa6a54fso10652405ab.1;
        Sat, 03 Feb 2024 08:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979263; x=1707584063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pee85pXx8M9QJJ/rvdrRgJpwO1Us9mIqzBO/JdTu/x0=;
        b=g5ceah99Knz0FJErPWswBDbgK14TyC5i/fE80eFBz8YkRvvhmpvhgr2rhDNAUOqRlN
         lvttvQqUoTg+WEezTv9FpdyvsEoBoejsVUWTCDsIaWl36eSU/+tfigeOGX+2TnmgS0Hc
         IWu4yhBGRyIY/2X6vxyKQwsZZW7hJ/ngHsRg13DU8SZdX+jQCcgrL2MoeuBackxpsIgb
         NqaVCA6lZ5oFI3jF4OnTAYKbfqRCakfXKHSSJU8xDzv9TBk9j2saIszfcVxJ5AcUr6TR
         Q6H8c0kpgk5gwgulrn20bs0ArzIk0Cdbu5YQAoCz3xQZ7dPzse1hs3vis6bq0Y9H0MDY
         CfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979263; x=1707584063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pee85pXx8M9QJJ/rvdrRgJpwO1Us9mIqzBO/JdTu/x0=;
        b=VjeeyVvk4EQbreTdIYorbxiF85vN5OGXmnHbglTC9bHRyW2qKwGKi7nf7ekxTQdvu4
         8g1sbM4mwdaAuZ3a4kagu+q+oIlT+SnEwdPBbCw3ynbFzVAejrC+qXlQAofvQU0GnwaD
         ciTR1CzBgSFuvpg59tnTGKz9tYk4x8IuwKLn7bLnWWJcwCaXkj3qiFrRrNnaGGXtcLRT
         VOvXBXYKhkaitNXAKrxf3kMBeVrJYhmL1pSZf4RgeD2pfcfwLo8vO8nuHo8C5tpeawG9
         aOcOwZvWqIX5P4/kIXADo+Z8YH8sF8VCkV/H86yL/Q3ImYRl2xMN6j+35oJkd49TsSHC
         ogsw==
X-Gm-Message-State: AOJu0YywK8DqyFqgo+OtPz/DLrB1l7jURyoqPj8Gwi8Lo9yazxtOkyMo
	p7keLhRdgA3spwEYROXump0P0gEG8inoNovEzdb71MZg86wVpcdT9b2Li4w9XbY=
X-Google-Smtp-Source: AGHT+IHRFQgHaPOvu2q/tkWyDuGYDcTayUKcocuvucQwCdhjRkYOMCll5WxoIGddaWvUvS92td8dQA==
X-Received: by 2002:a92:c5ce:0:b0:363:6da9:2bc3 with SMTP id s14-20020a92c5ce000000b003636da92bc3mr5239097ilt.11.1706979263479;
        Sat, 03 Feb 2024 08:54:23 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVTi8yyqyf2Habkk9tyCJoPOe9LH5AypnN3NhPkjbPVJALV182rjeRxj4FycC5oyDOecYqR50/JvNFZONhmnUrRWETF5iMlz7YUC4uJUCjOoQObjV6exynOq8X0pQhyNU+pMLtpwMtGsedHX9Z+XeaP1fuuoZ3E4V1EqM3Xw7Yik/SElx47SV21Kar6w86hZQ8JIvRSerSIxojL5fmtbOBJxCqbfm9ZWJ6a2cRemiaqExR+Yu1EZFFARQHk1eR8K6OQ4P0ON2Na9j3f/p0WkN5/ulAWeddoeYpFdUiUX9BfPYrBOOitBbAIjhHnSEn1JiKlut0e6NaVjtt9ZDQQeZGbYgMS80KWY+xTsDfXpGz9cVXcwD6aLwJutnIfKvDn/S8MVY8n+ZkmoB73UwOIc2JlJjuPAQPq0R5GXWAAiVsozOJVxm10vv0+vhT+aW6a80fzM3cbohBjCT3SyhKXkDJtD6NsGd+2B3Wq0e4f2H58gQbpFBSndPlM77Kg9IOr4MQ9VH2VdcsnqyBPp3bMudL2OrVmUDzH3JB6FLwyKDlHXopoTsws3k+av9arIOACAxyNKdXX79qb3dkp+YYTsiZVxssoQRTjNCMBQ4A4gjN23YClZITcro7eTmcA224dIELgSwMbtR8oWXfAP2GmqWMROgq0QJPEAz9TSjk2WgLgawQaylndaqWGGmu4dSNojrahrpy7G8Iy6SfaxYdcgu4mDbDpBoiczdMVyaEg5HRUHIz+EHHU3jdOsMHjjFtMRy4TCdJAqPyGQB/IEhJGkOR0Ud4Z36O7Qe6HobWA1oPfzuVpwFNqtgn2qK55gIBVR0x03BwTYgtVNYfxEqhbFaEWRFpLUd5g0H7RDGoFo2Pg8KWARudtVCCYhZBrrJKfXs1hisDwrqqoV0fVwPa3MzqFnrU9pmuiY9aYm/zEPKvbgOAzla4d4CRZwdqiIlQJ+gZyGL
 FuHaml/Lvoe8M8XSpOqi35Zh3SY5nJN5p+lr5fRIWPRnqwRW8/J46pdXlWmSsehsybAFVj2YaMI86ecPzwkDxhedXLL04jMmwTBKJO6HKnb4nZqmXCS8D2BeoVbkaVWgBcH2659KRgFRPREi0p0R56XRef4KO6vajRs4lfZxBX6IQcYWV2d5ruxvBcPc5J76unsLw1wXpoZ69CXegazQBg8Y6nrh07x7obUCecPgn9JYiyn5RzduCgAcPlxRh1DiqzwFA+Kp3SQ1PjLrY1IBGto3RQauywZAZfMQBK9AVxhLH9RZaCvNInmwpvXeMY125E4w45wHgLDaEpNeaRtPWa3QU=
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:22 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP DWC HDMI
Date: Sat,  3 Feb 2024 10:52:50 -0600
Message-ID: <20240203165307.7806-11-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085426_289608_8847B1DB 
X-CRM114-Status: GOOD (  23.49  )
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

From: Lucas Stach <l.stach@pengutronix.de>

Add a simple wrapper driver for the DWC HDMI bridge driver that
implements the few bits that are necessary to abstract the i.MX8MP
SoC integration.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Adam Ford <aford173@gmail.com> #imx8mp-beacon
Tested-by: Richard Leitner <richard.leitner@skidata.com>
Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by:  Adam Ford <aford173@gmail.com>

---
v3:  To move this along, I (Adam) took Lucas' V2 and attempted
     to address concerns:

     Changed name to imx8mp-hdmi-tx
     Re-ordered includes to make drm come after linux
     Removed unused variable build warning
     Removed fdcc clock since it's part of the power domain now
     set the phy_force_vendor = true
     Removed comma after sentinel

     Also added suspend/resume functions from Marek Vasut

     Configured Kconfig to select the PVI and PHY automatically
     since the HDMI-tx is useless without the other two components

     I apologize that don't have the version history prior to V2.
---
 drivers/gpu/drm/bridge/imx/Kconfig          |  11 ++
 drivers/gpu/drm/bridge/imx/Makefile         |   1 +
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c | 154 ++++++++++++++++++++
 3 files changed, 166 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c

diff --git a/drivers/gpu/drm/bridge/imx/Kconfig b/drivers/gpu/drm/bridge/imx/Kconfig
index a4d13331e320..5965e8027529 100644
--- a/drivers/gpu/drm/bridge/imx/Kconfig
+++ b/drivers/gpu/drm/bridge/imx/Kconfig
@@ -3,6 +3,17 @@ if ARCH_MXC || COMPILE_TEST
 config DRM_IMX_LDB_HELPER
 	tristate
 
+config DRM_IMX8MP_DW_HDMI_BRIDGE
+	tristate "Freescale i.MX8MP HDMI-TX bridge support"
+	depends on OF
+	depends on COMMON_CLK
+	select DRM_DW_HDMI
+	select DRM_IMX8MP_HDMI_PVI
+	select PHY_FSL_SAMSUNG_HDMI_PHY
+	help
+	  Choose this to enable support for the internal HDMI encoder found
+	  on the i.MX8MP SoC.
+
 config DRM_IMX8MP_HDMI_PVI
 	tristate "Freescale i.MX8MP HDMI PVI bridge support"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/imx/Makefile b/drivers/gpu/drm/bridge/imx/Makefile
index e2c2106509fa..edb0a7b71b30 100644
--- a/drivers/gpu/drm/bridge/imx/Makefile
+++ b/drivers/gpu/drm/bridge/imx/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_DRM_IMX_LDB_HELPER) += imx-ldb-helper.o
+obj-$(CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE) += imx8mp-hdmi-tx.o
 obj-$(CONFIG_DRM_IMX8MP_HDMI_PVI) += imx8mp-hdmi-pvi.o
 obj-$(CONFIG_DRM_IMX8QM_LDB) += imx8qm-ldb.o
 obj-$(CONFIG_DRM_IMX8QXP_LDB) += imx8qxp-ldb.o
diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
new file mode 100644
index 000000000000..89fc432ac611
--- /dev/null
+++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+#include <linux/clk.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <drm/bridge/dw_hdmi.h>
+#include <drm/drm_modes.h>
+
+struct imx8mp_hdmi {
+	struct dw_hdmi_plat_data plat_data;
+	struct dw_hdmi *dw_hdmi;
+	struct clk *pixclk;
+};
+
+static enum drm_mode_status
+imx8mp_hdmi_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
+		       const struct drm_display_info *info,
+		       const struct drm_display_mode *mode)
+{
+	struct imx8mp_hdmi *hdmi = (struct imx8mp_hdmi *)data;
+
+	if (mode->clock < 13500)
+		return MODE_CLOCK_LOW;
+
+	if (mode->clock > 297000)
+		return MODE_CLOCK_HIGH;
+
+	if (clk_round_rate(hdmi->pixclk, mode->clock * 1000) !=
+	    mode->clock * 1000)
+		return MODE_CLOCK_RANGE;
+
+	/* We don't support double-clocked and Interlaced modes */
+	if ((mode->flags & DRM_MODE_FLAG_DBLCLK) ||
+	    (mode->flags & DRM_MODE_FLAG_INTERLACE))
+		return MODE_BAD;
+
+	return MODE_OK;
+}
+
+static int imx8mp_hdmi_phy_init(struct dw_hdmi *dw_hdmi, void *data,
+				const struct drm_display_info *display,
+				const struct drm_display_mode *mode)
+{
+	return 0;
+}
+
+static void imx8mp_hdmi_phy_disable(struct dw_hdmi *dw_hdmi, void *data)
+{
+}
+
+static void im8mp_hdmi_phy_setup_hpd(struct dw_hdmi *hdmi, void *data)
+{
+	/*
+	 * Just release PHY core from reset, all other power management is done
+	 * by the PHY driver.
+	 */
+	dw_hdmi_phy_gen1_reset(hdmi);
+
+	dw_hdmi_phy_setup_hpd(hdmi, data);
+}
+
+static const struct dw_hdmi_phy_ops imx8mp_hdmi_phy_ops = {
+	.init		= imx8mp_hdmi_phy_init,
+	.disable	= imx8mp_hdmi_phy_disable,
+	.setup_hpd	= im8mp_hdmi_phy_setup_hpd,
+	.read_hpd	= dw_hdmi_phy_read_hpd,
+	.update_hpd	= dw_hdmi_phy_update_hpd,
+};
+
+static int imx8mp_dw_hdmi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct dw_hdmi_plat_data *plat_data;
+	struct imx8mp_hdmi *hdmi;
+
+	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
+	if (!hdmi)
+		return -ENOMEM;
+
+	plat_data = &hdmi->plat_data;
+
+	hdmi->pixclk = devm_clk_get(dev, "pix");
+	if (IS_ERR(hdmi->pixclk))
+		return dev_err_probe(dev, PTR_ERR(hdmi->pixclk),
+				     "Unable to get pixel clock\n");
+
+	plat_data->mode_valid = imx8mp_hdmi_mode_valid;
+	plat_data->phy_ops = &imx8mp_hdmi_phy_ops;
+	plat_data->phy_name = "SAMSUNG HDMI TX PHY";
+	plat_data->priv_data = hdmi;
+	plat_data->phy_force_vendor = true;
+
+	hdmi->dw_hdmi = dw_hdmi_probe(pdev, plat_data);
+	if (IS_ERR(hdmi->dw_hdmi))
+		return PTR_ERR(hdmi->dw_hdmi);
+
+	platform_set_drvdata(pdev, hdmi);
+
+	return 0;
+}
+
+static int imx8mp_dw_hdmi_remove(struct platform_device *pdev)
+{
+	struct imx8mp_hdmi *hdmi = platform_get_drvdata(pdev);
+
+	dw_hdmi_remove(hdmi->dw_hdmi);
+
+	return 0;
+}
+
+static int __maybe_unused imx8mp_dw_hdmi_pm_suspend(struct device *dev)
+{
+	return 0;
+}
+
+static int __maybe_unused imx8mp_dw_hdmi_pm_resume(struct device *dev)
+{
+	struct imx8mp_hdmi *hdmi = dev_get_drvdata(dev);
+
+	dw_hdmi_resume(hdmi->dw_hdmi);
+
+	return 0;
+}
+
+static const struct dev_pm_ops imx8mp_dw_hdmi_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(imx8mp_dw_hdmi_pm_suspend,
+				imx8mp_dw_hdmi_pm_resume)
+};
+
+static const struct of_device_id imx8mp_dw_hdmi_of_table[] = {
+	{ .compatible = "fsl,imx8mp-hdmi-tx" },
+	{ /* Sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx8mp_dw_hdmi_of_table);
+
+static struct platform_driver imx8mp_dw_hdmi_platform_driver = {
+	.probe		= imx8mp_dw_hdmi_probe,
+	.remove		= imx8mp_dw_hdmi_remove,
+	.driver		= {
+		.name	= "imx8mp-dw-hdmi-tx",
+		.of_match_table = imx8mp_dw_hdmi_of_table,
+		.pm = &imx8mp_dw_hdmi_pm_ops,
+	},
+};
+
+module_platform_driver(imx8mp_dw_hdmi_platform_driver);
+
+MODULE_DESCRIPTION("i.MX8MP HDMI encoder driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
