Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88FBCC6B24
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 07:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00KucJgRI1rt4tkosnNMOe8kvtQPij0fN0VHcg7FwCo=; b=iYiNLusz3lj4wq
	EHXfVyAcoJty6+hjsnqKS6fTyhjFovsORoq8OhhSnT6xpMNSxxlYiu0KlvxoX4Po/lI5xf1Zm+YFN
	+/27e0uG/o+W5L4qDMzOWAYerAVb/yW8UAgLzJDotSA1TpaRQHq3gXt9zoZ1WaxX33zW+xJcaCKYA
	J0mgeQcxfrSFCuIUiIkki6Q9zfdw/8v/xikChuf6l7dyPA+v0pc54zfj0e5jEohT5UE0e/EomSc/x
	9ZayqjHoBwM2W2lejqQlJsXbfCQ/ftIfd6jyntAnAGXKMiaosSLcoSm1qAkukbwkXnjtElIZbsay+
	hfy3AwGVEW8KXLZW+gtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtKf-0000000EjYj-1xgt;
	Wed, 14 Oct 2026 07:23:25 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtKL-0000000EjGW-1Ms1
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 07:23:10 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a19cba5c14so31038015e9.3
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 00:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791962583; x=1792567383; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rI7TsTerh3v+6374ARnTnPJ5az3i60OfV5pa17I1CSc=;
        b=ccXWRBg3i4ISTCxVpmeXuBmB8qe/SbUZH738w4r3B7EQLmeiDHrIntJdEzsTgfv7M7
         SOSQmwgtwa/WAPjxLsu5fhkB99BaSNZpDUwAPFV/5kS6hRAc4sKNaLALPZgaISJcVzgm
         Sgm+/SmCa2LwQ43xVVsTmg7j4GntpZa7sOgjJSn3jqEgXfwJXocKj0GJtC6y6MJ0Asgl
         LCUA03tkgHxkZyB/hU+wTBlKkNu6Sfk4MoarOyDuZ94SmdxiVYTYKQEQ4m+TV/i5sM/x
         ppY3l9vPmxixvayG/W+Dc7r6dfVpv8cKX8Q9Bkqk1RmV+YYNDmP1UUbrRBPW1sjPOtwZ
         ZUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791962583; x=1792567383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rI7TsTerh3v+6374ARnTnPJ5az3i60OfV5pa17I1CSc=;
        b=uB8WKWNDjbHxhtFSCOgj2IA7TCc3aYy/Q2gY9nbz9+W0QCEg0lFCGt6am94sdUIWHx
         8es9AHd5Rab6iM+IqJjpT/nXzO+2UiKAllOKH0FsAL+/RC79D1b2n131XCyq+EL4CAx6
         e4nUxkEbZZhkUqztQqmA0eMvnah/aAdiiBkuDreb6RFqxaZrkwXuv4NiNPG7/le68ohg
         bm6E+ETis2PZfRFR6wk4xo4OIjIUBMORaex+/ndnz6/49DC5joCIrj3fmiI8DQQ+wEYm
         jKGmyZwTPP3g5fSSQ12Z4wsuEXFqEi8eh3N8Ss5kE3yxUucsNKBYGh8CVGq4ztvxHa1p
         ROVQ==
X-Forwarded-Encrypted: i=1; AKwUvBx2zUp07ccZQIax/PjJGncl7Ve2rsNXnm7YGj4EZsGRwE5aZbSonEaEPOB4SV6290JxUBgiIWhSVn0=@lists.infradead.org
X-Gm-Message-State: AFq9FYL7ekQE52LuxEmhg2Gc91s7boQaAq7wCfbfXpomKes0KL5QOboy
	OR2u+sDbhqZ7pOKo06Yi7G/4AnbpLUcgENSIve9oJrI06MgN/Ik2tqcU
X-Gm-Gg: AYBFou23ReDAr9DZDubuPBOHt+1nHR2FzUtGByVlQPtZa51h7UGMtsqKTFIjrFU75Zj
	WKyOb2oDDF7TIFklTzKsbx2EiIJ4uDZjDUWNCFYfyuM/qp/o5U5+24vaZ2moixOQQPsXmGIrcUO
	2BvIG2K/q25d53sOHNymAFeafjnOjvNgxU2ul+xkMsETeyT2s5JM2m9B1shHxo/1iL4mI8u8Z6b
	4QrzSxWjFphFivIHmWlIMoDtw1+xsIiqgxP4j6peqgcsOsqkeePMUnDE0CFVG/yY+8FCGoLon2L
	HAR0OGfWHX3wGIZQjK3ZKzt8Mv6j3GbXIrEvI+wqmY09aCvv0hi0Q0F7cSPPs/VwZaWxEwPm8o/
	G1gMgbsc88572ApqPugIXbHPeOR5WsOR5Ysl3dhaTBXvBq3EgWoE7mt+rELgFmrvKKK5U5CiXd3
	9e+yAPIQnOYIqly+0qOUAGtn8xe8ZbjAaBGAPJ48JflryRJ3FRKBNv0nL0qiRs69ZIuVawzwvq8
	CE4gmDnR+YzfQy2qnqTLMWOREz0grtibkO/rVbNBGtYiA1eQN+fBVQ0EFjoRiqhZ6v9AKsN2mPG
	S0/WkOsxalFWdfvis74e/0szf7uNkL1TXPJS6RleUKl3Uprj8S1Pzaj7sO+P9g==
X-Received: by 2002:a05:600c:3e8d:b0:4a1:7701:f863 with SMTP id 5b1f17b1804b1-4a18e4aeae4mr269940335e9.15.1791962583469;
        Wed, 14 Oct 2026 00:23:03 -0700 (PDT)
Received: from navid-pc ([2a01:4b00:a856:6220::a11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de3f7f8b8sm8500933f8f.35.2026.10.14.00.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 00:23:03 -0700 (PDT)
From: Navid Ghahremani <ghahramani.navid@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: arnd@arndb.de,
	stefandoesinger@gmail.com,
	krzk@kernel.org,
	Navid Ghahremani <ghahramani.navid@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 11/24] phy: zte: Add ZTE ZX279128S PCIe PHY driver
Date: Wed, 14 Oct 2026 08:20:51 +0100
Message-ID: <20261014072109.1759502-12-ghahramani.navid@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_002308_698009_0317D0FF 
X-CRM114-Status: GOOD (  23.15  )
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

Add a generic PHY driver for the PCIe SerDes PHY inside the Top CRM
block of the ZTE ZX279128S SoC. This driver encapsulates PLL power
and analog SerDes calibration for the two PCIe ports, isolating
these hardware details from the PCIe host controller driver.

Signed-off-by: Navid Ghahremani <ghahramani.navid@gmail.com>
---
 drivers/phy/Kconfig              |  12 +++
 drivers/phy/Makefile             |   1 +
 drivers/phy/phy-zx279128s-pcie.c | 156 +++++++++++++++++++++++++++++++
 3 files changed, 169 insertions(+)
 create mode 100644 drivers/phy/phy-zx279128s-pcie.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 19f3b7d12b..3518d384be 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -91,6 +91,18 @@ config PHY_ECONET_PCIE
 	  callback for PCIe GEN1 and GEN2 ports. This PHY is found on
 	  EcoNet SoCs including EN751221 and EN7528.
 
+config PHY_ZX279128S_PCIE
+	tristate "ZTE ZX279128S PCIe PHY driver"
+	depends on ARCH_ZTE || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	select MFD_SYSCON
+	help
+	  Enable support for the PCIe SerDes PHY found inside the Top CRM
+	  of ZTE ZX279128S SoCs. This driver configures PLL power and analog
+	  calibration for the two PCIe ports.
+	  If you say Y or M here, you will enable PCIe PHY initialization.
+
 config PHY_GOOGLE_USB
 	tristate "Google Tensor SoC USB PHY driver"
 	select GENERIC_PHY
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index d7aa516bcc..1323aa817f 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_PHY_NXP_TJA1145)		+= phy-nxp-tja1145.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
+obj-$(CONFIG_PHY_ZX279128S_PCIE)	+= phy-zx279128s-pcie.o
 
 obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
 					   amlogic/	\
diff --git a/drivers/phy/phy-zx279128s-pcie.c b/drivers/phy/phy-zx279128s-pcie.c
new file mode 100644
index 0000000000..33bf0eaac8
--- /dev/null
+++ b/drivers/phy/phy-zx279128s-pcie.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ZTE zx279128s PCIe PHY driver
+ *
+ * Controls the analog SerDes and PLL for the two PCIe ports inside the
+ * Top CRM block.
+ *
+ * Copyright (C) 2026 Navid Ghahremani <ghahramani.navid@gmail.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/delay.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define CRM1_PHY_CTRL		0x008
+#define CRM1_MISC		0x024
+#define CRM1_MISC_BIT26		BIT(26)
+#define CRM1_PHY1_CAL0		0x1b0
+#define CRM1_PHY1_CAL1		0x1b4
+
+struct zx_pcie_phy_port {
+	u32 phy_on[3];
+	bool has_cal;
+};
+
+static const struct zx_pcie_phy_port zx_phy_ports[] = {
+	[0] = {
+		.phy_on = { BIT(15), BIT(13), BIT(14) },
+	},
+	[1] = {
+		.phy_on = { BIT(27), BIT(25), BIT(26) },
+		.has_cal = true,
+	},
+};
+
+struct zx_pcie_phy {
+	struct regmap *regmap;
+	const struct zx_pcie_phy_port *port;
+	unsigned int port_id;
+};
+
+static int zx_pcie_phy_init(struct phy *phy)
+{
+	struct zx_pcie_phy *zphy = phy_get_drvdata(phy);
+	const struct zx_pcie_phy_port *port = zphy->port;
+	int i, ret;
+
+	for (i = 0; i < ARRAY_SIZE(port->phy_on); i++) {
+		ret = regmap_write_bits(zphy->regmap, CRM1_PHY_CTRL,
+					port->phy_on[i], port->phy_on[i]);
+		if (ret)
+			return ret;
+		fsleep(50);
+
+		if (i == 0 && port->has_cal) {
+			ret = regmap_write(zphy->regmap, CRM1_PHY1_CAL1, 0x00202d5a);
+			if (ret)
+				return ret;
+			ret = regmap_write(zphy->regmap, CRM1_PHY1_CAL0, 0x0046c24a);
+			if (ret)
+				return ret;
+		}
+	}
+
+	ret = regmap_write_bits(zphy->regmap, CRM1_MISC, CRM1_MISC_BIT26, 0);
+	if (ret)
+		return ret;
+	fsleep(50);
+
+	return 0;
+}
+
+static int zx_pcie_phy_exit(struct phy *phy)
+{
+	struct zx_pcie_phy *zphy = phy_get_drvdata(phy);
+	const struct zx_pcie_phy_port *port = zphy->port;
+	int i, ret;
+
+	for (i = ARRAY_SIZE(port->phy_on) - 1; i >= 0; i--) {
+		ret = regmap_write_bits(zphy->regmap, CRM1_PHY_CTRL,
+					port->phy_on[i], 0);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct phy_ops zx_pcie_phy_ops = {
+	.init = zx_pcie_phy_init,
+	.exit = zx_pcie_phy_exit,
+	.owner = THIS_MODULE,
+};
+
+static int zx_pcie_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct zx_pcie_phy *zphy;
+	struct phy *phy;
+	u32 port_id;
+	int ret;
+
+	zphy = devm_kzalloc(dev, sizeof(*zphy), GFP_KERNEL);
+	if (!zphy)
+		return -ENOMEM;
+
+	ret = of_property_read_u32(dev->of_node, "reg", &port_id);
+	if (ret)
+		return dev_err_probe(dev, ret, "missing reg property\n");
+
+	if (port_id >= ARRAY_SIZE(zx_phy_ports))
+		return dev_err_probe(dev, -EINVAL, "invalid port id %u\n", port_id);
+
+	zphy->port_id = port_id;
+	zphy->port = &zx_phy_ports[port_id];
+
+	zphy->regmap = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(zphy->regmap))
+		return dev_err_probe(dev, PTR_ERR(zphy->regmap),
+				     "failed to get parent topcrm regmap\n");
+
+	phy = devm_phy_create(dev, dev->of_node, &zx_pcie_phy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create phy\n");
+
+	phy_set_drvdata(phy, zphy);
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	return PTR_ERR_OR_ZERO(provider);
+}
+
+static const struct of_device_id zx_pcie_phy_of_match[] = {
+	{ .compatible = "zte,zx279128s-pcie-phy" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, zx_pcie_phy_of_match);
+
+static struct platform_driver zx_pcie_phy_driver = {
+	.probe = zx_pcie_phy_probe,
+	.driver = {
+		.name = "zx279128s-pcie-phy",
+		.of_match_table = zx_pcie_phy_of_match,
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver(zx_pcie_phy_driver);
+
+MODULE_AUTHOR("Navid Ghahremani <ghahramani.navid@gmail.com>");
+MODULE_DESCRIPTION("ZTE ZX279128S PCIe PHY driver");
+MODULE_LICENSE("GPL");
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
