Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39874C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uy1X2O9lZxekMWVhgd7oObAft/r/dN1IHpXwQ82Mbs=; b=yS9MZEvkhcmDh/
	mycB2e5OBfTrUt3XApuQ/VRNDc/ZcIWxhB57m3X4uJmfiKI472HIj16rljJJTS6dWLX/zNqiwPaRx
	4j/EjieWuRWkJ3CWq7+IOj6FR89q6a+VoG74ddSXyPccXa0wctJcnQPz0sBFvVlhFVzFpaJRJud4Y
	V+WoBoI8hVrwhgYFXMs2FzvJSlAfpJGFFl+foJl0UJp8VzK0RzJ9H6aPeeuqXlat2HdrDaV8g2C7f
	MjMFkQGf9GONw6dhECpEhivuEz78ZG9G6csCGR24jgYOj1oXOXtA0QWCz8FCxIO8w+5ZADYwm3TGH
	MckXTP//i93f3pn6amFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dR6-00FsGv-J1; Tue, 05 Jul 2022 07:57:32 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dQd-00Frbt-QT
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:57:05 +0000
Received: by mail-wr1-x42d.google.com with SMTP id b26so16335430wrc.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 00:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3yXXvf+mclXKQ88bqWcGfEHUJSStGEQVlfd4k0gkJr0=;
        b=GHMI+cpYsvMvPJ0rdjJXeCH9Rh2hE0kjR5gOaDUF0LYLB+dWd69Bsj09HUrKyYM74w
         x0FMVG7jb2bBdCcyCF5aPA01Um7JREDI8j9zaPJNFNpo7/vrYC9dy5mLP73PlvPBw1kJ
         h6Z46TByXpvoPFRdvabgtBXZzLSVTeB8ictR+eCqjcSIiA51KpZgqlW8IGCqm2JiY9zM
         fdHpr9/wKrfEy8srxg6hIT+svzJ88AC0MfaudrGBHxUw59xl6hP/MqfhuzqTFj30DHUJ
         x2RkkjPQNFA7Gel1ryRCQnnUij2jW55Gec+4mIyDFYw2mSqO88SkDwlVzkKgpcrZglDO
         UHcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3yXXvf+mclXKQ88bqWcGfEHUJSStGEQVlfd4k0gkJr0=;
        b=GG9+M1mgOJU7AGbCnQ5S81QnKAnCUg4PlPiRAqYXdl6wExfJkmZWxh4fgQnrCLCxsG
         zFFFP3DuHv6/Ob0jTxxB9nQJnhDOoROOE76VIlP2llLIe4E5SJwcQ4+Akz17F5pQfdc3
         BmXKQU1qA0oUGc5RU+QyvtqwSOK9tBKvLxvf0xuOwO7Ly/eJEebzAQYcOiawt9c1mBcJ
         2v3Yho4ONIn8mkWgEKrSLIDRcS0XsKSjY+paEBlq0XqgtvRdrEsSRQCio3udM8wp1U9z
         Z9PTpeCKsL9UZr7AqL0Hb56VYE2zjgXBog/wDXnFocfW2oOePsGm05NjvcQTZf4Sv6gO
         twXw==
X-Gm-Message-State: AJIora/yISgLNnlBPx4/Ci6l6lnupC3GThukWiI5RQKM5jy3ZnxIPaua
	67pCSHrLjkHBDny6I3X/Z29dMg==
X-Google-Smtp-Source: AGRyM1vStkn94Gk8veYQ2fJ0Tnkgpm4oXLQ7rVLznYVPCebX+wz4SCJVnSLF/5pzDq6LfIldxIlimQ==
X-Received: by 2002:a5d:6d81:0:b0:21b:b946:ec98 with SMTP id l1-20020a5d6d81000000b0021bb946ec98mr30001612wrs.260.1657007818199;
        Tue, 05 Jul 2022 00:56:58 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:3c4f:78be:dc90:14f9])
        by smtp.gmail.com with ESMTPSA id v17-20020a5d5911000000b0021bbdc3375fsm8323473wrd.68.2022.07.05.00.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 00:56:57 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v5 2/2] phy: amlogic: Add G12A Analog MIPI D-PHY driver
Date: Tue,  5 Jul 2022 09:56:50 +0200
Message-Id: <20220705075650.3165348-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220705075650.3165348-1-narmstrong@baylibre.com>
References: <20220705075650.3165348-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7194; h=from:subject; bh=wxkKNsLVn6IWIMMHUVZIfRxfNrTTYY4O5SgTgDU5lVY=; b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBiw+6hqX6T4rFNXNq9od49fh+egkfTP3tyor+Epr7k +xzRNiCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCYsPuoQAKCRB33NvayMhJ0afVEA DJX2AZTn/NgrlmY98xqsJNLq/9G5I9T5RTLrhET5fOz+RdhmMVtE/Jw4lDEz/QwwQfhOmO0SSYtZF+ zGyv4VlWUPGJc2vExTpXSTWZIc1mdNGwweqj50M6WewO4UkDFSdGpu88i0oPsZizQBB0I936kHmfZu jS4fKSdNHr/4vN63peD//jiRX02gOSb1j9DgrX0wQboZnVKCMttfvse2yWAwfJ+9JW3fSzEasEVf2J AF0JdnoLCtQzim4+YPD0ceFxJlsiciwV+xGYxo3Ed1d2rSuSEuBPesph+7jMlzA29RuAyLSTS69kO0 oOPBpTa9y9sX/o91nnFRbCDmDit9LURsd8Rb2EkBm0beCcq2bradSZ1a+7ytjrr6JhUW6DVpOiyHYR dxgnWVpQ/5sS4MC8gyzgTBVHTeWezo+emclbZU/rUHFrxzdyNcfv1WZ+jK6IYnxm7LfuUwnMX8Uixk k3ya2/GxQkbmZpZb0if+v7afb8Wg19xOb6IUsotV1WBYtWjH94/BQAujG0VHhEiRUfT/hqqsHTSs7N Sf6m+Zjzi6WJpqiEFmQSih/6FCZHdWwDoC3iEkz42fD5YH4fow1iiZK33ISbqfPsdSyyBSYFw5cvIG vSi9PBbfVE1ESyEehPR6gbfQPhhwIo4hmGBbdqoIef0WErR5CB91qkj/EVXA==
X-Developer-Key: i=narmstrong@baylibre.com; a=openpgp; fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_005703_901500_BFF4EFFB 
X-CRM114-Status: GOOD (  20.24  )
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

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY used to communicate with DSI
panels.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/Kconfig                   |  12 ++
 drivers/phy/amlogic/Makefile                  |   1 +
 .../amlogic/phy-meson-g12a-mipi-dphy-analog.c | 171 ++++++++++++++++++
 3 files changed, 184 insertions(+)
 create mode 100644 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c

diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
index 486ca23aba32..ce7ba3eb2a8e 100644
--- a/drivers/phy/amlogic/Kconfig
+++ b/drivers/phy/amlogic/Kconfig
@@ -37,6 +37,18 @@ config PHY_MESON_GXL_USB2
 	  GXL and GXM SoCs.
 	  If unsure, say N.
 
+config PHY_MESON_G12A_MIPI_DPHY_ANALOG
+	tristate "Meson G12A MIPI Analog DPHY driver"
+	default ARCH_MESON
+	depends on OF && (ARCH_MESON || COMPILE_TEST)
+	select GENERIC_PHY
+	select MFD_SYSCON
+	select GENERIC_PHY_MIPI_DPHY
+	help
+	  Enable this to support the Meson MIPI Analog DPHY found in Meson G12A
+	  SoCs.
+	  If unsure, say N.
+
 config PHY_MESON_G12A_USB2
 	tristate "Meson G12A USB2 PHY driver"
 	default ARCH_MESON
diff --git a/drivers/phy/amlogic/Makefile b/drivers/phy/amlogic/Makefile
index c0886c850bb0..91e3b9790c03 100644
--- a/drivers/phy/amlogic/Makefile
+++ b/drivers/phy/amlogic/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_PHY_MESON8B_USB2)			+= phy-meson8b-usb2.o
 obj-$(CONFIG_PHY_MESON_GXL_USB2)		+= phy-meson-gxl-usb2.o
 obj-$(CONFIG_PHY_MESON_G12A_USB2)		+= phy-meson-g12a-usb2.o
 obj-$(CONFIG_PHY_MESON_G12A_USB3_PCIE)		+= phy-meson-g12a-usb3-pcie.o
+obj-$(CONFIG_PHY_MESON_G12A_MIPI_DPHY_ANALOG)	+= phy-meson-g12a-mipi-dphy-analog.o
 obj-$(CONFIG_PHY_MESON_AXG_PCIE)		+= phy-meson-axg-pcie.o
 obj-$(CONFIG_PHY_MESON_AXG_MIPI_PCIE_ANALOG)	+= phy-meson-axg-mipi-pcie-analog.o
 obj-$(CONFIG_PHY_MESON_AXG_MIPI_DPHY)		+= phy-meson-axg-mipi-dphy.o
diff --git a/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c b/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
new file mode 100644
index 000000000000..c14089fa7db4
--- /dev/null
+++ b/drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Meson G12A MIPI DSI Analog PHY
+ *
+ * Copyright (C) 2018 Amlogic, Inc. All rights reserved
+ * Copyright (C) 2022 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/regmap.h>
+#include <linux/delay.h>
+#include <linux/mfd/syscon.h>
+#include <linux/platform_device.h>
+#include <dt-bindings/phy/phy.h>
+
+#define HHI_MIPI_CNTL0 0x00
+#define		HHI_MIPI_CNTL0_DIF_REF_CTL1	GENMASK(31, 16)
+#define		HHI_MIPI_CNTL0_DIF_REF_CTL0	GENMASK(15, 0)
+
+#define HHI_MIPI_CNTL1 0x04
+#define		HHI_MIPI_CNTL1_BANDGAP		BIT(16)
+#define		HHI_MIPI_CNTL2_DIF_REF_CTL2	GENMASK(15, 0)
+
+#define HHI_MIPI_CNTL2 0x08
+#define		HHI_MIPI_CNTL2_DIF_TX_CTL1	GENMASK(31, 16)
+#define		HHI_MIPI_CNTL2_CH_EN		GENMASK(15, 11)
+#define		HHI_MIPI_CNTL2_DIF_TX_CTL0	GENMASK(10, 0)
+
+#define DSI_LANE_0				BIT(4)
+#define DSI_LANE_1				BIT(3)
+#define DSI_LANE_CLK				BIT(2)
+#define DSI_LANE_2				BIT(1)
+#define DSI_LANE_3				BIT(0)
+
+struct phy_g12a_mipi_dphy_analog_priv {
+	struct phy *phy;
+	struct regmap *regmap;
+	struct phy_configure_opts_mipi_dphy config;
+};
+
+static int phy_g12a_mipi_dphy_analog_configure(struct phy *phy,
+					       union phy_configure_opts *opts)
+{
+	struct phy_g12a_mipi_dphy_analog_priv *priv = phy_get_drvdata(phy);
+	int ret;
+
+	ret = phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+	if (ret)
+		return ret;
+
+	memcpy(&priv->config, opts, sizeof(priv->config));
+
+	return 0;
+}
+
+static int phy_g12a_mipi_dphy_analog_power_on(struct phy *phy)
+{
+	struct phy_g12a_mipi_dphy_analog_priv *priv = phy_get_drvdata(phy);
+	unsigned int reg;
+
+	regmap_write(priv->regmap, HHI_MIPI_CNTL0,
+		     FIELD_PREP(HHI_MIPI_CNTL0_DIF_REF_CTL0, 0x8) |
+		     FIELD_PREP(HHI_MIPI_CNTL0_DIF_REF_CTL1, 0xa487));
+
+	regmap_write(priv->regmap, HHI_MIPI_CNTL1,
+		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_REF_CTL2, 0x2e) |
+		     HHI_MIPI_CNTL1_BANDGAP);
+
+	regmap_write(priv->regmap, HHI_MIPI_CNTL2,
+		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_TX_CTL0, 0x459) |
+		     FIELD_PREP(HHI_MIPI_CNTL2_DIF_TX_CTL1, 0x2680));
+
+	reg = DSI_LANE_CLK;
+	switch (priv->config.lanes) {
+	case 4:
+		reg |= DSI_LANE_3;
+		fallthrough;
+	case 3:
+		reg |= DSI_LANE_2;
+		fallthrough;
+	case 2:
+		reg |= DSI_LANE_1;
+		fallthrough;
+	case 1:
+		reg |= DSI_LANE_0;
+		break;
+	default:
+		reg = 0;
+	}
+
+	regmap_update_bits(priv->regmap, HHI_MIPI_CNTL2,
+			   HHI_MIPI_CNTL2_CH_EN,
+			   FIELD_PREP(HHI_MIPI_CNTL2_CH_EN, reg));
+
+	return 0;
+}
+
+static int phy_g12a_mipi_dphy_analog_power_off(struct phy *phy)
+{
+	struct phy_g12a_mipi_dphy_analog_priv *priv = phy_get_drvdata(phy);
+
+	regmap_write(priv->regmap, HHI_MIPI_CNTL0, 0);
+	regmap_write(priv->regmap, HHI_MIPI_CNTL1, 0);
+	regmap_write(priv->regmap, HHI_MIPI_CNTL2, 0);
+
+	return 0;
+}
+
+static const struct phy_ops phy_g12a_mipi_dphy_analog_ops = {
+	.configure = phy_g12a_mipi_dphy_analog_configure,
+	.power_on = phy_g12a_mipi_dphy_analog_power_on,
+	.power_off = phy_g12a_mipi_dphy_analog_power_off,
+	.owner = THIS_MODULE,
+};
+
+static int phy_g12a_mipi_dphy_analog_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy;
+	struct device *dev = &pdev->dev;
+	struct phy_g12a_mipi_dphy_analog_priv *priv;
+	struct device_node *np = dev->of_node, *parent_np;
+	struct regmap *map;
+
+	priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/* Get the hhi system controller node */
+	parent_np = of_get_parent(np);
+	map = syscon_node_to_regmap(parent_np);
+	of_node_put(parent_np);
+	if (IS_ERR(map))
+		return dev_err_probe(dev, PTR_ERR(map), "failed to get HHI regmap\n");
+
+	priv->regmap = map;
+
+	priv->phy = devm_phy_create(dev, np, &phy_g12a_mipi_dphy_analog_ops);
+	if (IS_ERR(priv->phy))
+		return dev_err_probe(dev, PTR_ERR(priv->phy), "failed to create PHY\n");
+
+	phy_set_drvdata(priv->phy, priv);
+	dev_set_drvdata(dev, priv);
+
+	phy = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy);
+}
+
+static const struct of_device_id phy_g12a_mipi_dphy_analog_of_match[] = {
+	{
+		.compatible = "amlogic,g12a-mipi-dphy-analog",
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, phy_g12a_mipi_dphy_analog_of_match);
+
+static struct platform_driver phy_g12a_mipi_dphy_analog_driver = {
+	.probe = phy_g12a_mipi_dphy_analog_probe,
+	.driver = {
+		.name = "phy-meson-g12a-mipi-dphy-analog",
+		.of_match_table = phy_g12a_mipi_dphy_analog_of_match,
+	},
+};
+module_platform_driver(phy_g12a_mipi_dphy_analog_driver);
+
+MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
+MODULE_DESCRIPTION("Meson G12A MIPI Analog D-PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
