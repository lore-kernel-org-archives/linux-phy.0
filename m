Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADB1606A32F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 19:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UTv3Orrv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LwWmIJrl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mloeUTGQTFNjwc/9MiVN3zdW0XmQ82QXoDy4YDN08a0=; b=UTv3Orrv8pjJRcwHyqvqmWRkHp
	mkS1m16exS+qE6q4ZMA9PSxOE5BCZruYfHlkNjktaKq1DUGE4EdR7CmZdO2l3Lw5N2aRLaPWeq5kG
	z5CB6M5/87xJH0Ao4cI1n9t1R+yU5VaodJOVCYo1KLH+qdx7HSxBfr+lHI2NNHLJiNkQDKRyqNNNH
	aVZDRRCLkPv00Xa+lnfpILpk3PbR4bdSb0Y1XyIDCQeOBhq3goC/fvHMyHB+Okh6hMW+YKECNCFwa
	eLt9fZlOC28yWNHV3wn7s7+zgQnXIrgpwZSNzNT47J0MzuWxDzM+rexMrRgKstduE04do/BfmuktB
	hkYVuwpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQm-00000003YDN-0ejE;
	Tue, 03 Nov 2026 19:44:28 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQi-00000003Y9H-2y8M
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 19:44:26 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-48fd2e38825so23537f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 11:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793735063; x=1794339863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BPBXAYTXYbMEy8QV6jnqhXPs04AFPqS/cjIJVil8Sr8=;
        b=LwWmIJrlYI5OsB+4yQA09Uh7cwwinIcJQEMkDv5fWtZWHY58OhAmpqgZHuQq1s3Le/
         oG3uZMvoaUxpLzOxAX+Xo5yRT+IjsFZlRFNMbZxEWNeC8+2M0ed1aEVEwS7ZUPaxQ+v+
         4VMTIH2kNXAWa9Z6mgJNYLieIfGP6X8l+8gKLdQXySpOiFqI+aWU0BNPuWT3T4hMgbrB
         +2sPsEOxIaQxDgeGGeVfrRwibV6Bqs7QSktpnGR5lkbh9+KuWGEUwJ4YE70E02qY/B8F
         2Uu+jM/Zyvr90IzLOrzMQW++7z9F3gVQBJG48V8DaQPJ9KlhQjcc36BlC2X4DG1u7wTB
         5udQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793735063; x=1794339863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BPBXAYTXYbMEy8QV6jnqhXPs04AFPqS/cjIJVil8Sr8=;
        b=hBzjrTwlKgn9mDIzhdRMUZWfaujxtnSU8YGs82Jb92bNYKxShQP0grvWnjVyZynEoj
         L/qg3WknKcR49BC+ueYfU7zxazVzJcVUv2dEZkaL2AcjbjVGuTQG/XSPhBTuYZeHAt/M
         gClLQHjbta9SlGGz5iZIbaaxsVuheR/PyA33cHgeblVjGLu+2IYaTw86eqFimydPgWDb
         fnXgvSNXSwh+3WVXhKyY1Neb65I/Yg9B57hd5HakRRW1jTEJ1aSVKIJkNLFJK9OTRCjo
         mJssusQAOkrFTaC6t8A5+3JkTxwNKmpz5tKJTHwovyPiN/VFku0Ktil1KyD2Y1EnB6co
         i17w==
X-Forwarded-Encrypted: i=1; AKwUvBycWcntjlPpVCzMqBoT+qgBwca0NrTbXBjgJtYfG2BpgYDUPDa+5ujkqFexdzCzMu+JR5OCK4tWQrw=@lists.infradead.org
X-Gm-Message-State: APuU4Z80ECZ6KNNB06TQ5DdZO570DaPl4Kmb2qaqiQD6mwLGZnTO/fhr
	CgcevEm6y722oFAyK1PY99cVrFv35OM7hAlLBxEEPd3XcgjwzKvHPIY3
X-Gm-Gg: AYBFou32E4jBntbg8tXvzcO/cTzSrMuIom0HmBHv0JOYT/KAXrlMSvHUx/WXWdY6Ifl
	eEJawdS5WV/uGdsGtZFTNcooKdYZwhfL7aw7EFJ/XeA3eH41qFoXVL4cXagHXtXKBysHPLaZ1y/
	Wzmxpj1/HACQHfgD5otzAuGX7c5nHzokuiW/ZxBq3IbHOeVEhBjlnCqYBZAeNWH6HiwAH0c8foI
	8zgKdFlpLgB1swcgCezBQLLoAnMQJ6ddRDhBpRU59Zjat1EedWv3UHOcfpW1oXDVUYzuo+WwyRy
	E9H3ArXb+A5LTW0CraQ9WxL4BSRFAnwlYQZFFwBKDkiaM8s8+xpuRChwOYJGQtPzgnbZb/9duOJ
	P/9GXPCAbdeyFxe7cxQ+bwt3Nj8mKBARs+M6AMc+nz2kH01dYAIDpChCWNfXU/2oEgkRt98ScIX
	gILCu3OW+pSnGxuXGXJyoXI12ecls1LDdgzn7gcM6gVHX5SOLT76eEvedwvIqWrjpFu/FChgwcF
	4tosrnXtsftWM3Vp7dqFvw/VyvKL+aEaMLoGPddCtEEXEpr0Or9INNWjifALYshyHpeq2mnCtXf
	GkPcXxWFDA04uyn9CkduMdySdVP5GsPAw082U5ICj9guE+Hq11hCN18RPThGodoVkVAX4g7OfC7
	muZuI9Ty96uNMSiDLQ/kYIgInFKgDtsaelA==
X-Received: by 2002:a05:600c:1d29:b0:4a5:5fb9:5d35 with SMTP id 5b1f17b1804b1-4ac187a7678mr344557325e9.21.1793735062696;
        Tue, 03 Nov 2026 11:44:22 -0800 (PST)
Received: from Ansuel-XPS24.localdomain (93-34-90-148.ip49.fastwebnet.it. [93.34.90.148])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4b2a93232f0sm82557885e9.10.2026.11.03.11.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:44:22 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v15 2/3] phy: move and rename Airoha PCIe PHY driver to dedicated directory
Date: Tue,  3 Nov 2026 20:44:07 +0100
Message-ID: <20261103194410.6632-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261103194410.6632-1-ansuelsmth@gmail.com>
References: <20261103194410.6632-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_114424_780332_9B63FA76 
X-CRM114-Status: GOOD (  23.92  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

To keep the generic PHY directory tidy, move the PCIe PHY driver for
Airoha AN7581 SoC to a dedicated directory.

Also rename the driver and add the relevant SoC name to the .c and .h
file in preparation for support of PCIe and USB PHY driver for Airoha
AN7583 SoC that use a completely different implementation and
calibration for PHYs and will have their own dedicated drivers.

The rename permits to better identify the specific usage of the driver
in the future once the airoha PHY directory will have multiple driver
for multiple SoC.

The config is changed from PHY_AIROHA_PCIE to PHY_AIROHA_AN7581_PCIE.

Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 MAINTAINERS                                         |  4 ++--
 drivers/phy/Kconfig                                 | 11 +----------
 drivers/phy/Makefile                                |  4 ++--
 drivers/phy/airoha/Kconfig                          | 13 +++++++++++++
 drivers/phy/airoha/Makefile                         |  3 +++
 .../phy-an7581-pcie-regs.h}                         |  0
 .../{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} |  6 +++---
 7 files changed, 24 insertions(+), 17 deletions(-)
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 rename drivers/phy/{phy-airoha-pcie-regs.h => airoha/phy-an7581-pcie-regs.h} (100%)
 rename drivers/phy/{phy-airoha-pcie.c => airoha/phy-an7581-pcie.c} (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index a9c78e635764..d56142c8fefa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -785,8 +785,8 @@ M:	Lorenzo Bianconi <lorenzo@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
-F:	drivers/phy/phy-airoha-pcie-regs.h
-F:	drivers/phy/phy-airoha-pcie.c
+F:	drivers/phy/airoha/phy-an7581-pcie-regs.h
+F:	drivers/phy/airoha/phy-an7581-pcie.c
 
 AIROHA SOUND DRIVER
 M:	Christian Marangi <ansuelsmth@gmail.com>
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 105fbe408aa2..4ac7475dccfa 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -46,16 +46,6 @@ config GENERIC_PHY_MIPI_DPHY
 	  Provides a number of helpers a core functions for MIPI D-PHY
 	  drivers to us.
 
-config PHY_AIROHA_PCIE
-	tristate "Airoha PCIe-PHY Driver"
-	depends on ARCH_AIROHA || COMPILE_TEST
-	depends on OF
-	select GENERIC_PHY
-	help
-	  Say Y here to add support for Airoha PCIe PHY driver.
-	  This driver create the basic PHY instance and provides initialize
-	  callback for PCIe GEN3 port.
-
 config PHY_CAN_TRANSCEIVER
 	tristate "CAN transceiver PHY"
 	select GENERIC_PHY
@@ -168,6 +158,7 @@ config PHY_XGENE
 	help
 	  This option enables support for APM X-Gene SoC multi-purpose PHY.
 
+source "drivers/phy/airoha/Kconfig"
 source "drivers/phy/allwinner/Kconfig"
 source "drivers/phy/amlogic/Kconfig"
 source "drivers/phy/apple/Kconfig"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index c6dd02003bbe..dcc88a3cbaa7 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -7,7 +7,6 @@ obj-$(CONFIG_PHY_COMMON_PROPS)		+= phy-common-props.o
 obj-$(CONFIG_PHY_COMMON_PROPS_TEST)	+= phy-common-props-test.o
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
-obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-$(CONFIG_PHY_ECONET_PCIE)		+= phy-econet-pcie.o
 obj-$(CONFIG_PHY_EYEQ5_ETH)		+= phy-eyeq5-eth.o
@@ -20,7 +19,8 @@ obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 
-obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
+obj-$(CONFIG_GENERIC_PHY)		+= airoha/	\
+					   allwinner/	\
 					   amlogic/	\
 					   apple/	\
 					   aspeed/	\
diff --git a/drivers/phy/airoha/Kconfig b/drivers/phy/airoha/Kconfig
new file mode 100644
index 000000000000..9a1b625a7701
--- /dev/null
+++ b/drivers/phy/airoha/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Phy drivers for Airoha devices
+#
+config PHY_AIROHA_AN7581_PCIE
+	tristate "Airoha AN7581 PCIe-PHY Driver"
+	depends on ARCH_AIROHA || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Say Y here to add support for Airoha AN7581 PCIe PHY driver.
+	  This driver create the basic PHY instance and provides initialize
+	  callback for PCIe GEN3 port.
diff --git a/drivers/phy/airoha/Makefile b/drivers/phy/airoha/Makefile
new file mode 100644
index 000000000000..912f3e11a061
--- /dev/null
+++ b/drivers/phy/airoha/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PHY_AIROHA_AN7581_PCIE)	+= phy-an7581-pcie.o
diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/airoha/phy-an7581-pcie-regs.h
similarity index 100%
rename from drivers/phy/phy-airoha-pcie-regs.h
rename to drivers/phy/airoha/phy-an7581-pcie-regs.h
diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/airoha/phy-an7581-pcie.c
similarity index 99%
rename from drivers/phy/phy-airoha-pcie.c
rename to drivers/phy/airoha/phy-an7581-pcie.c
index 56e9ade8a9fd..81ddf0e7638b 100644
--- a/drivers/phy/phy-airoha-pcie.c
+++ b/drivers/phy/airoha/phy-an7581-pcie.c
@@ -13,7 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-#include "phy-airoha-pcie-regs.h"
+#include "phy-an7581-pcie-regs.h"
 
 #define LEQ_LEN_CTRL_MAX_VAL	7
 #define FREQ_LOCK_MAX_ATTEMPT	10
@@ -1279,12 +1279,12 @@ MODULE_DEVICE_TABLE(of, airoha_pcie_phy_of_match);
 static struct platform_driver airoha_pcie_phy_driver = {
 	.probe	= airoha_pcie_phy_probe,
 	.driver	= {
-		.name = "airoha-pcie-phy",
+		.name = "airoha-an7581-pcie-phy",
 		.of_match_table = airoha_pcie_phy_of_match,
 	},
 };
 module_platform_driver(airoha_pcie_phy_driver);
 
-MODULE_DESCRIPTION("Airoha PCIe PHY driver");
+MODULE_DESCRIPTION("Airoha AN7581 PCIe PHY driver");
 MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
 MODULE_LICENSE("GPL");
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
