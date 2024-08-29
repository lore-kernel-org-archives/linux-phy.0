Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661ACC6FD35
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eEEWUTZ1H5p/FGGX59wcMJDeoBiub+VOhIRMCIoM1s=; b=pXAuy/DQM3Mx6c
	cLoGykQgX0i3ySgCsyb8aqEmKW2GO+kZ8lxH7fPjS8vVpWUkLCZ/T/kh47kWV5Mhf6UU3QwOahxYI
	KVLEyOsUJpx/iwrpo3cTUAVDX13/NhSiTvqCNtz6eWx/PcFLokllv3B+4UCQE11l3VVIzA2vmkPAw
	Bc/yHzBUfXU7+UOxv1C4Pt7LLcncUogaoyrodzsMYdCUbU9f3J+Risi+AlT3xEptYlG3d22b4IF97
	7ukxXf49yPdH77eQ+5jzYf35TNsEESEhv2ufgEGxeBQPH4rVY9iv62lp2T75FumJwrM9TZrPLyYvC
	ILOj8go3FZDRxj4zzHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaPE-000000017Gz-0JpZ;
	Thu, 29 Aug 2024 08:21:24 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaP9-000000017Du-45zO
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:21:22 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5334a8a1af7so370537e87.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724919678; x=1725524478; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4vkvoTso6h1gNffXtkAXfIEyKfOljt6J/EQ+f9eh4k=;
        b=SpxgsyxW4JU9kKLifL8aQ8rejXst+xP5juH/x/nbPQsS9jdIMUHvSy1yGnVArVrOGj
         CODv+EgWBN0nsaAVzlhN5zqpUiGyHy6qo6HRys1HaayTK/g2xS2gaiWzmQ32cZTNWFDG
         QBHa1dNv9Nk+y++SiGY6YhaEtPyG1rFl+V0ezlRelVqz+24dy7S9vNX7Z087mHwonll2
         ETHdxJ0ByAz6Neoajt4Um28xIrWUmhLK4pWSjQ6NC1i/bMJQZsUq8g7GxZiyYtHecTsF
         9Atgyl9K9JcZMfsbAZQj+DReyFLDZDVZHL1pna0M02cCueiKylnHVKBs5VZFtOY+TKAE
         pSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724919678; x=1725524478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4vkvoTso6h1gNffXtkAXfIEyKfOljt6J/EQ+f9eh4k=;
        b=X3ttw6YUC8sKiqpXRtjo+5ykwRsng/2zubpH2U1EzZzW/ZmiIHnBFZN4qaIXovQFIw
         oGi5sGvh4GbgDLwv61S1oKvrZxcHK5A9nKwbOa56cTbkK5Uubn6xsWgwGekzOZNrPVzv
         H0+DL0XhZnaOPEUINwTRfjfivoToOr5JBOi/faPzR8HhcE6J1xQaYEPPlU4yko6ywXYm
         g4ZgtBuX1hagURkx14MADerQOIQNxTEC/MwGD1oXjhQ0YBQifUOkdMStcugSsBW8vd+2
         nD1QAF17ZdK8LcnXght8X5eVc8jveUj0/mP40CVSlNlBRmaoJMeJWnnOX5trpj6oX2yw
         6A7g==
X-Forwarded-Encrypted: i=1; AJvYcCX6NvZNDl5S81e9b7aobk3LzNgJFy98YisraJn3tzNyhdGDE3CEEXhdoXdZAleJwpfi/lyZPfaJshY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYhYWQLB3Mu9AN8nsyaL43mwFvfimobmlbKZk9coaFl04zBUpB
	jz+RTGxJ8WmxwdXPFZfSzSm2By0C76K6CVHT/KjXg3lvRmYuJYNcoUbI4fY55ME=
X-Google-Smtp-Source: AGHT+IE29xdrMuG56sjGZ0HIT6/edkCuXIp0/EK146elrMyoVzNezfgtU6FXrZp8xyU6P6Ohzvmgow==
X-Received: by 2002:a05:6512:3084:b0:530:c323:46a8 with SMTP id 2adb3069b0e04-5353e56935emr1131789e87.23.1724919677229;
        Thu, 29 Aug 2024 01:21:17 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407ac333sm90243e87.70.2024.08.29.01.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 01:21:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Aug 2024 11:21:14 +0300
Subject: [PATCH 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
MIME-Version: 1.0
Message-Id: <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
In-Reply-To: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5103;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=D945pissAzYJ1WSZ4r3fmdjGbNimiMhFB6YLYYkLGPU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0C96yL9zJFlSohV/brIn5g/vjD2TJHC0kAhFW
 jYzqRi5OTCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtAvegAKCRCLPIo+Aiko
 1Vm3B/wJ/0cuoDCWshKIwTvNfPHBhzR0GbOXGUMhB/IwUwxTi8GSEfG6IBQXeV++iccQuMUP4H5
 g5gvY7gXht9cWO/4kQuwz29pVs76HUOubsW5Mp2al5Wcp16KdfcGIMqeuOKu8LUCjL6Mde0+rYX
 7mW22OkDaP3H3dWjs3b1srd1Zw6WTmwC6SpfJChgVIc+XxCDXhWL8E1RZZKawx65drhCCMGX/j/
 0BrIsW9zyGvnPfSfQFZoZ6fcmeO30dXzD9Jyg8ZKNjN1ySDT2zTPDTo0GtSFKzI0wytcixMZtrd
 ygP+tZIE4nUpscxhIr0AjAHh8ubBVnKAaS2rq2XPwnW7UoNf
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_012120_058320_B521CF13 
X-CRM114-Status: GOOD (  17.06  )
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

The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
translation between eUSB2 and USB2 signalling schemes. It supports all
three data rates: Low Speed, Full Speed and High Speed.

The reset state enables autonegotiation of the PHY role and of the data
rate, so no additional programming is required.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/Kconfig           |  11 ++++
 drivers/phy/Makefile          |   1 +
 drivers/phy/phy-nxp-ptn3222.c | 119 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index dfab1c66b3e5..cb06a7f79740 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -82,6 +82,17 @@ config PHY_AIROHA_PCIE
 	  This driver create the basic PHY instance and provides initialize
 	  callback for PCIe GEN3 port.
 
+config PHY_NXP_PTN3222
+	tristate "NXP PTN3222 1-port eUSB2 to USB2 redriver"
+	depends on I2C
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support NXP PTN3222 1-port eUSB2 to USB2 Redriver.
+	  This redriver performs translation between eUSB2 and USB2 signalling
+	  schemes. It supports all three USB 2.0 data rates: Low Speed, Full
+	  Speed and High Speed.
+
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/broadcom/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 5fcbce5f9ab1..b64247046575 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
+obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
 obj-y					+= allwinner/	\
 					   amlogic/	\
 					   broadcom/	\
diff --git a/drivers/phy/phy-nxp-ptn3222.c b/drivers/phy/phy-nxp-ptn3222.c
new file mode 100644
index 000000000000..429a91910f14
--- /dev/null
+++ b/drivers/phy/phy-nxp-ptn3222.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+
+#define NUM_SUPPLIES 2
+
+struct ptn3222 {
+	struct i2c_client *client;
+	struct phy *phy;
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data supplies[NUM_SUPPLIES];
+};
+
+static int ptn3222_init(struct phy *phy)
+{
+	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
+	int ret;
+
+	ret = regulator_bulk_enable(NUM_SUPPLIES, ptn3222->supplies);
+	if (ret)
+		return ret;
+
+	gpiod_set_value_cansleep(ptn3222->reset_gpio, 0);
+
+	return 0;
+}
+
+static int ptn3222_exit(struct phy *phy)
+{
+	struct ptn3222 *ptn3222 = phy_get_drvdata(phy);
+
+	gpiod_set_value_cansleep(ptn3222->reset_gpio, 1);
+
+	return regulator_bulk_disable(NUM_SUPPLIES, ptn3222->supplies);
+}
+
+static const struct phy_ops ptn3222_ops = {
+	.init		= ptn3222_init,
+	.exit		= ptn3222_exit,
+	.owner		= THIS_MODULE,
+};
+
+static int ptn3222_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct phy_provider *phy_provider;
+	struct ptn3222 *ptn3222;
+	int ret;
+
+	ptn3222 = devm_kzalloc(dev, sizeof(*ptn3222), GFP_KERNEL);
+	if (!ptn3222)
+		return -ENOMEM;
+
+	ptn3222->client = client;
+
+	ptn3222->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+						      GPIOD_OUT_HIGH);
+	if (IS_ERR(ptn3222->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(ptn3222->reset_gpio),
+				     "unable to acquire reset gpio\n");
+
+	ptn3222->supplies[0].supply = "vdd3v3";
+	ptn3222->supplies[0].init_load_uA = 11000;
+	ptn3222->supplies[1].supply = "vdd1v8";
+	ptn3222->supplies[1].init_load_uA = 55000;
+
+	ret = devm_regulator_bulk_get(dev,
+				      NUM_SUPPLIES,
+				      ptn3222->supplies);
+	if (ret)
+		return ret;
+
+	ptn3222->phy = devm_phy_create(dev, dev->of_node, &ptn3222_ops);
+	if (IS_ERR(ptn3222->phy)) {
+		dev_err(dev, "failed to create PHY: %d\n", ret);
+		return PTR_ERR(ptn3222->phy);
+	}
+
+	phy_set_drvdata(ptn3222->phy, ptn3222);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct i2c_device_id ptn3222_table[] = {
+	{ "ptn3222" },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, ptn3222_table);
+
+static const struct of_device_id ptn3222_of_table[] = {
+	{ .compatible = "nxp,ptn3222" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ptn3222_of_table);
+
+static struct i2c_driver ptn3222_driver = {
+	.driver = {
+		.name = "ptn3222",
+		.of_match_table = ptn3222_of_table,
+	},
+	.probe = ptn3222_probe,
+	.id_table = ptn3222_table,
+};
+
+module_i2c_driver(ptn3222_driver);
+
+MODULE_DESCRIPTION("NXP PTN3222 eUSB2 Redriver driver");
+MODULE_LICENSE("GPL");

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
