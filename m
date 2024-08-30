Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40959CA0EF7
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=regc3fDC5kIt1SqzaycauFGoeOlS1SDAC3+ml/nkDpY=; b=Av/dMeKERStlQ1
	BY2/ECxcUncpTsK3hvhXdtLd/yBmMy2s/j26CX0aLr+d+ytCPv1annKrJ6YjqhhKMVOsYnjA7O/WK
	1XuJpwY4YIExLTtSckQhahVR1/0Gzg9Kop6znVIXVj+++StDNdII3uV4IIdHp3k4IqwyU8LFTar1z
	Mj1nIcal92DHpnRBxmRgyiRRK+ilsqp7Nxy0vu2SXYCY3RTTELdRhdGvaFBI/Uvjvnuc140VvBDLj
	1LRYZS6fkI2XS4WZrTIYxp11+zO8zCkxt+VG3CVc4+kumW8V18MePnGhYTnUnX/hump+pm11S0+yL
	RRgqxP4HpufmeNPZoLAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjxyF-00000005ZEQ-3owb;
	Fri, 30 Aug 2024 09:31:07 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwsG-00000005JZE-0hV2
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:20:54 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5344ab30508so2446284e87.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725006050; x=1725610850; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MoaODkYOEyaemv+peV2Lk7usu4P7Fb4c6U5XdS7bZmQ=;
        b=AC6ExIlc0J3qMW8TZJO4li5OkNayD5J3XVFqBUMLyD6x4IP8P8oxcXMpU/q59hQ0t3
         L5Yc05JI2tilRrytojoPHBM6aTy9UA8y/eTY6niUy4Uc6svvc6Mzsn25wl96d6Hs0bYq
         KU4VnfZI5iZYwpFh1+8EGoarduJlE0a3b320VKf08f1hwW8RYlFBrd3DWDFZVmCUHnED
         YI1hkCRnBpq0ZLuCqaq1/aIGL5p1/wL1k+G533zqoIMYDwjx9mfWGC8BpOqZU8oXRZJ8
         RQNNsS7mlcclEyVkNBDomtryPu3/AOTK+Th/anpbLk56fvR+6QpOjXvc6e4kelpZRHgN
         AshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006050; x=1725610850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MoaODkYOEyaemv+peV2Lk7usu4P7Fb4c6U5XdS7bZmQ=;
        b=kPdgTChlxkKYsdtKeUsPE2SdbKCvyp4Fwdkg8YxNrQr8k8VJcQfb9gWJU2wpB5yvJ5
         7lDwnX6Cc6i4k1GhEGGiftkKsUYYIojPfuNGp1r9cbgMCi9hay9ii2t2dBDo8JMmNCNw
         VP09GJi5h2LR2ZhXssdmieLR/B1vFy1a4PHqguq7aWL21+p21Vs5WM6FMzXZpAC3e5v1
         70LcWMDsvCLPRkm1pncG3jQk03FNn0pUT2EaPHQ8sOw7G5aI9CkVB8164DWGJCZYbRtn
         01n7tfo+Sncpkw5H74aq+4s9f6RIjBqaE92qkoeN0Qj232FwMRAmJXpZZx085jgPAj55
         DKQw==
X-Forwarded-Encrypted: i=1; AJvYcCWG/xQP52eTa7O7yyNDx7y6Eg6fOHm8/ZArFYqx+QnICa4F7uCazpxuiAOhLLE7QDuUUjI0Mjz3y0o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0E443FqZTDP/fk9J32+O24tVipYdNTtzxjorhmCYLS8hpUF9U
	kCuyJ0vyfpfvJKCoa6nuDBS07F8F/7BkgZoJP1w3d8tf/RSZnvko1oTQO2IKfWo=
X-Google-Smtp-Source: AGHT+IGmSgunJBFWoiGmNhpvhGutjro+tqb45pwPrnBZXSo69PM3+98+jAV4SnI7qqstTV4etV5vBA==
X-Received: by 2002:a05:6512:234a:b0:534:53d7:c97f with SMTP id 2adb3069b0e04-5353ebdb303mr1831310e87.23.1725006049693;
        Fri, 30 Aug 2024 01:20:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084e00asm482623e87.271.2024.08.30.01.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:20:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 30 Aug 2024 11:20:46 +0300
Subject: [PATCH v2 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
MIME-Version: 1.0
Message-Id: <20240830-nxp-ptn3222-v2-2-4c6d8535cf6c@linaro.org>
References: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
In-Reply-To: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5234;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=uSYp1Bgqx34Q5SjTseJvUt270be+S/EYojDVhNGuWlg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0YDfjo9lAZn1sSEvdM1GmdSFgLHhs2U/YaOSk
 eTdelaxzk2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtGA3wAKCRCLPIo+Aiko
 1S11B/9oXHKLCYMEAVsVuXLN5oo9juZzLvViEyCe+usH/16ZKAHTUX6DVZXUJfag53AVfyk7pM8
 +ilarO20hEUqLb9+pKCwPy8jZREUrpafDkmdK1gg8Ed/jaZKQD9nxv9FYdtGbkQoXv3hoip/eyW
 RruyRxjlD0lAU81pV9lR2HwhVCAipiAqed3xf+hr99GfFnqBqFwVe9HkdLNvacgSHlxlw4+t6Aa
 /2+q1O+nT1Q1vdloGjXoh71VHmGgT/TsrOQq/bwMOjd/dSIxGRfxfh+N2ct/001roVTXUDZKhc8
 KYcI3loRRcpgDArOH7JZy2IwR+rPH2OmR3oIrZhpeprsjwN3
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_012052_271699_8F1169C1 
X-CRM114-Status: GOOD (  17.34  )
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Konrad Dybcio <konradybcio@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/Kconfig           |  11 ++++
 drivers/phy/Makefile          |   1 +
 drivers/phy/phy-nxp-ptn3222.c | 123 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 135 insertions(+)

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
index 000000000000..c6179d8701e6
--- /dev/null
+++ b/drivers/phy/phy-nxp-ptn3222.c
@@ -0,0 +1,123 @@
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
+	struct regulator_bulk_data *supplies;
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
+static const struct regulator_bulk_data ptn3222_supplies[NUM_SUPPLIES] = {
+	{
+		.supply = "vdd3v3",
+		.init_load_uA = 11000,
+	}, {
+		.supply = "vdd1v8",
+		.init_load_uA = 55000,
+	}
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
+	ret = devm_regulator_bulk_get_const(dev, NUM_SUPPLIES, ptn3222_supplies,
+					    &ptn3222->supplies);
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
