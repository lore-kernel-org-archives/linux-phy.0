Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A163ACD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuN9r/x2g7CX1BXJL5sHtjTDGohCCHW7p8jh+uDBVDk=; b=tQlDS71ZHwRRGV
	xgdZF1jWYk6rsEhQRuOnkp56NErBE7hxUxgwlbF0nAXY4aQ0Cn1uicw+DbwEQuUoSkvzTGb+6JY0I
	+OWZbfQ4ysA0W049FV7WRgL/foVQW+KbFjC6Rl/AcnlPeTluukx09qY8qfRlmaoyGwpOgbOz5EALr
	hfTk6a8NfXGf1l1kSDc3ezBflUhEWCznxANM5kAiAaUKMLKgMjEmApk2/7/2q5yoAsNJ8EiSm7WRl
	gtGHNNNzbAoT6qim8h9zNilpUAbq1srPNQ+ALuOg4SAalEiAzsjCYZPPWYGEvF/r2vLL8njudwBVm
	p3OnT05jblg0VoUHbk+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8f-0000000Dpxc-1Zk7;
	Mon, 11 May 2026 13:57:41 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8c-0000000Dpw8-3Ban
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:39 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-bb91b426e40so723895166b.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507857; x=1779112657; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2O8Su9Gk1Lf9CS4xvd/yWBGZ4wDlTJeCYsl5Z1xTugo=;
        b=rZCu6bIn4xaK4qCarjW3q0BJ3vBRRQW4lsq0NLi0nYMd5dxdH4Csol9y/ech0I1RU/
         VlwfM1J5z4qu5/oiLp1LnXnvFc9ZenlP4tngngmvXBC18NgIlrStaY5OrvRJrv0AYpJa
         Bh1/a6MkNV+6PGmGnusY1ffagnn6Sdbm5VPSedHA3IL0EJRJas71Swi3gyKsr6+Z6vwK
         qiXGbs0CIXdnFk0KCwWGem/QDNBF0IpbEonPrhc+TZQAQi0+IxHBjBk3brqJMgeoQ/RV
         NpYJyyIYnCm7Emo5IIYfqCRJc7sVIGxJXFxg9NLgp4PqIE/eRrM47h0rFuHj41EOdplW
         tOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507857; x=1779112657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2O8Su9Gk1Lf9CS4xvd/yWBGZ4wDlTJeCYsl5Z1xTugo=;
        b=pc5hZe6lUhWbZg2hybFyXKoIN3g6uC5HAR0uwUbV2xaKD9hx/lhTwoOImXF85RFEmc
         JuORhOQAEoLPRzrH8DbysY9R16AvV/RPVKhH4xgMWxNdaX3fIZ90VyIAOv0aNjLGpR5r
         UVY87uik82E/AODhjjHJjGuDrHKQ48Mh7SnWlPZI2OnXBPTSSCgz3qPH6D40W97schq1
         I7YxVJz2STuCdNLUpCvs8dKzl8WIhXYpr/YDEhFjR0K/YkLo978v8NuDIthxj68PHp02
         fF1t714ZkG84HqfQbzVHQbKo9iG9XqNoLKUfRH0TQZyF7rspTxyFQBAXmL7H4YnyQJOj
         eZ7A==
X-Forwarded-Encrypted: i=1; AFNElJ+b3/rlH9y+L46OL4SjgA1TorOnE/kFerskNhWfUo8gnQnsJ+wsbaNd7YomurHzG3+RhPwxR5i9kbo=@lists.infradead.org
X-Gm-Message-State: AOJu0YziiiQ96Bc1Y/x+tNbTc96LcWcWRfnPNz0Wu4AHlU9N9rYRu5/g
	UEfgHsNWP9ySlu4/bnOmJMs5k00R0gGhdihVNgdv7neilHlyPUExkixm
X-Gm-Gg: Acq92OEinhjYakINgLSC3GOk6KP6OiZqcBYeEv/4oTPc5YGt5KqJZXPYv2NDegD/hhU
	pBLiNKTBmtE1UUcbIsem4i2r9kt1VafoqKiitLZL69kB7JSyZm3ZVaNLtL4G5g6T3JD7xfXmHks
	KKPsynQw3PMoAcdXgOKuW/FlwDEPDESe9vGIBCSj4lseuaWQNXHD/oiidrKViJTRFMixB3G5p+h
	rRkrxYBJx+Z63A09I55JEZ2wD9hffCfCQMb1+qYbHmScVCU9QmKqdVnXCFwCCdr332ePGCuVprg
	9HjDO8ONgMaGF5uSpcMj86t4b13BKfsbNlfVfKbgk39HgkEnkV/b6ygWzz0IJ5Vn1M2GDPF7sjw
	bu55/VRjkGMvlxnPl7j9v+P65LGfcXsMANQV9Zt5H1sduF6DYBAontkVluI94G7/RdoXpPrQnov
	M3Zv4dZteNheIG
X-Received: by 2002:a17:907:c18:b0:bb8:b536:55dd with SMTP id a640c23a62f3a-bc56d713f3bmr1489015866b.41.1778507856804;
        Mon, 11 May 2026 06:57:36 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:36 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 6/6] phy: tegra: Add support for Nvidia Tegra XMM6260 PHY
Date: Mon, 11 May 2026 16:57:01 +0300
Message-ID: <20260511135703.62470-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511135703.62470-1-clamor95@gmail.com>
References: <20260511135703.62470-1-clamor95@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065738_879897_44C2D1FC 
X-CRM114-Status: GOOD (  20.84  )
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

Nvidia Tegra XMM6260 PHY is a hardware configuration used in Tegra SoCs
to provide proper interaction between the application processor and the
modem, as well as control over one of the SoC's USB lines for the modem.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/phy/tegra/Kconfig             |  12 +++
 drivers/phy/tegra/Makefile            |   1 +
 drivers/phy/tegra/phy-tegra-xmm6260.c | 144 ++++++++++++++++++++++++++
 3 files changed, 157 insertions(+)
 create mode 100644 drivers/phy/tegra/phy-tegra-xmm6260.c

diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
index 342fb736da4b..41b5ce460f37 100644
--- a/drivers/phy/tegra/Kconfig
+++ b/drivers/phy/tegra/Kconfig
@@ -18,3 +18,15 @@ config PHY_TEGRA194_P2U
 	help
 	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x
 	  and 234 SOCs.
+
+config PHY_TEGRA_XMM6260
+	tristate "NVIDIA Tegra XMM6260 PHY driver"
+	depends on ARCH_TEGRA && USB_NET_XMM6260 && USB_SUPPORT
+	select GENERIC_PHY
+	help
+	  Enable this to support XMM6260 modem found in various Tegra devices
+	  with cellular capabilities, like LG Optimus 4X P880, LG Optimus Vu
+	  P895, Google Nexus 7 (2012) 3G and ASUS Transformer Pad 3G TF300TG.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called phy-tegra-xmm6260.
diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
index eeeea72de117..829e298ee56c 100644
--- a/drivers/phy/tegra/Makefile
+++ b/drivers/phy/tegra/Makefile
@@ -9,3 +9,4 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_194_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_234_SOC) += xusb-tegra186.o
 obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
+obj-$(CONFIG_PHY_TEGRA_XMM6260) += phy-tegra-xmm6260.o
diff --git a/drivers/phy/tegra/phy-tegra-xmm6260.c b/drivers/phy/tegra/phy-tegra-xmm6260.c
new file mode 100644
index 000000000000..7511de1333aa
--- /dev/null
+++ b/drivers/phy/tegra/phy-tegra-xmm6260.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/usb.h>
+#include <linux/usb/chipidea.h>
+#include <linux/usb/phy.h>
+
+struct tegra_usb_device {
+	struct ci_hdrc_platform_data data;
+	struct platform_device *dev;
+};
+
+struct tegra_xmm6260_phy {
+	struct device *dev;
+	struct platform_device *usb_dev;
+	struct usb_phy *usb_phy;
+	struct gpio_desc *enable_gpio;
+};
+
+static int tegra_xmm6260_phy_power_on(struct phy *phy)
+{
+	struct tegra_xmm6260_phy *mphy = phy_get_drvdata(phy);
+	struct tegra_usb_device *usb = platform_get_drvdata(mphy->usb_dev);
+	int ret;
+
+	gpiod_set_value_cansleep(mphy->enable_gpio, 1);
+
+	ret = usb_phy_init(mphy->usb_phy);
+	if (ret) {
+		gpiod_set_value_cansleep(mphy->enable_gpio, 0);
+		return dev_err_probe(mphy->dev, ret,
+				     "failed to init USB PHY\n");
+	}
+
+	usb->dev = ci_hdrc_add_device(&mphy->usb_dev->dev,
+				      mphy->usb_dev->resource,
+				      mphy->usb_dev->num_resources,
+				      &usb->data);
+	if (IS_ERR(usb->dev)) {
+		gpiod_set_value_cansleep(mphy->enable_gpio, 0);
+		usb_phy_shutdown(mphy->usb_phy);
+		return dev_err_probe(mphy->dev, PTR_ERR(usb->dev),
+				     "failed to register USB controller\n");
+	}
+
+	return 0;
+}
+
+static int tegra_xmm6260_phy_power_off(struct phy *phy)
+{
+	struct tegra_xmm6260_phy *mphy = phy_get_drvdata(phy);
+	struct tegra_usb_device *usb = platform_get_drvdata(mphy->usb_dev);
+
+	ci_hdrc_remove_device(usb->dev);
+	usb_phy_shutdown(mphy->usb_phy);
+
+	gpiod_set_value_cansleep(mphy->enable_gpio, 0);
+
+	return 0;
+}
+
+static const struct phy_ops tegra_xmm6260_phy_ops = {
+	.power_on = tegra_xmm6260_phy_power_on,
+	.power_off = tegra_xmm6260_phy_power_off,
+	.owner = THIS_MODULE,
+};
+
+static int tegra_xmm6260_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	struct device *dev = &pdev->dev;
+	struct device_node *usb_node;
+	struct phy *generic_phy;
+	struct tegra_xmm6260_phy *mphy;
+
+	mphy = devm_kzalloc(dev, sizeof(*mphy), GFP_KERNEL);
+	if (!mphy)
+		return -ENOMEM;
+
+	mphy->enable_gpio = devm_gpiod_get_optional(dev, "enable",
+						    GPIOD_OUT_LOW);
+	if (IS_ERR(mphy->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(mphy->enable_gpio),
+				     "failed to get enable GPIO\n");
+
+	usb_node = of_parse_phandle(dev->of_node, "nvidia,usb-bus", 0);
+	if (IS_ERR(usb_node))
+		return dev_err_probe(dev, PTR_ERR(usb_node),
+				     "failed to parse modem USB bus\n");
+
+	mphy->usb_dev = of_find_device_by_node(usb_node);
+	of_node_put(usb_node);
+	if (!mphy->usb_dev)
+		return dev_err_probe(dev, -ENODEV,
+				     "failed to get modem USB bus\n");
+
+	mphy->usb_phy = devm_usb_get_phy_by_phandle(dev, "nvidia,usb-bus", 1);
+	if (IS_ERR(mphy->usb_phy))
+		return dev_err_probe(dev, PTR_ERR(mphy->usb_phy),
+				     "failed to get USB PHY");
+
+	generic_phy = devm_phy_create(dev, NULL, &tegra_xmm6260_phy_ops);
+	if (IS_ERR(generic_phy))
+		return dev_err_probe(dev, PTR_ERR(generic_phy),
+				     "failed to create PHY\n");
+
+	phy_set_drvdata(generic_phy, mphy);
+	mphy->dev = dev;
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "failed to register PHY\n");
+
+	return 0;
+}
+
+static const struct of_device_id tegra_xmm6260_phy_match[] = {
+	{ .compatible = "nvidia,tegra-xmm6260" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, tegra_xmm6260_phy_match);
+
+static struct platform_driver tegra_xmm6260_phy_driver = {
+	.driver = {
+		.name = "tegra-xmm6260-phy",
+		.of_match_table = tegra_xmm6260_phy_match,
+	},
+	.probe = tegra_xmm6260_phy_probe,
+};
+module_platform_driver(tegra_xmm6260_phy_driver);
+
+MODULE_AUTHOR("Svyatolsav Ryhel <clamor95@gmail.com>");
+MODULE_DESCRIPTION("Tegra XMM6260 PHY driver");
+MODULE_LICENSE("GPL");
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
