Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED09C433E0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 15:47:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91B28619A3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 15:47:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91B28619A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56GhYGyGQwxOCCl+izLBUOCjsSylG/w2eEVIvLgoQFE=; b=TCLMhktCSdk3WmFSopSx0p8z4
	czzP1g/B7mhO5k+S5adGMkGjpj+IryCPBB7p+3IfSx684K8DbdeaWWVQX/SHzz0LorJVYFLxD1i1a
	yuNyatdXijS2Vlqv1yEFwt96cTX4QElpGOZDtyfcnDTUcrVm7GIy6ooV9ukV46SxyFWAhLdVbxQFO
	jgYbh/q3TKQxzg3igHJbeY/SnZvhlbmXHNOmYfbc/jTfoa0qfAy9rYgNaL70mb9z5mDy8OvaQSHjd
	Zf1UouefhOR4jf4fUEGymbaHNQIQyZPYjqRJRtnQ3Oxs8+rHGNpbgfpcpUU/HVSFjTijQm57F0YTm
	UO+CXxRmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPSCT-001lHp-0B; Thu, 25 Mar 2021 15:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPSCA-001l95-Gg
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 15:46:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3668C619EE;
 Thu, 25 Mar 2021 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616687207;
 bh=khRMP4FqyRZpbop5ty2x62CaA+4PY7xqgrwPEdsQxPs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sW3/G+0ix63PBUOV6xUNQ4xinAJfC0g7ZrVM5zpcP/OrDITYcxWNPotLXSoNBlrPg
 nmTvl/Bsp4giUkUbWAleCoWmLpngLknPO9jcmxgOn3oUPcIiVyDVPkS5vFhY2w1Q13
 u7dFp+dhPE6B8nkCffAQjk3O//cMQ2z8s7x4d438pfDMaXPvOw27pPSyjGn7VIXP25
 L83kciCWTtap0zZAuXKIYyUaXOcuK6hVzSNGZu7bAX+UbYh5fSSNZYYotr57dHDQ/4
 XABRaYhXa8qc4iWkjM62yUKKuU79/TpH1fCib6rnc+hzye5U1gBe0YDbGBdfKWsKty
 arsYMwNkl53rA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lPSC4-001FYl-5F; Thu, 25 Mar 2021 16:46:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, Atul Gopinathan <leoatul12@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yu Chen <chenyu56@huawei.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/7] phy: phy-hi3670-usb3: move driver from staging into phy
Date: Thu, 25 Mar 2021 16:46:35 +0100
Message-Id: <36c31dcdcd49d5a728a1fe4040bbaef5268d7f79.1616686958.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1616686958.git.mchehab+huawei@kernel.org>
References: <cover.1616686958.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_154650_979973_A4A22872 
X-CRM114-Status: GOOD (  12.33  )
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

The phy USB3 driver for Hisilicon 970 (hi3670) is ready
for mainstream. Mode it from staging into the main driver's
phy/ directory.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../bindings/phy/hisilicon,hi3670-usb3.yaml           |  0
 MAINTAINERS                                           |  9 ++++++++-
 drivers/phy/hisilicon/Kconfig                         | 10 ++++++++++
 drivers/phy/hisilicon/Makefile                        |  1 +
 .../hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c      |  0
 drivers/staging/hikey9xx/Kconfig                      | 11 -----------
 drivers/staging/hikey9xx/Makefile                     |  2 --
 7 files changed, 19 insertions(+), 14 deletions(-)
 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
similarity index 100%
rename from drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
rename to Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index 8c44fd8fd85d..a37489f5b070 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18654,7 +18654,7 @@ L:	linux-usb@vger.kernel.org
 S:	Maintained
 F:	drivers/usb/roles/intel-xhci-usb-role-switch.c
 
-USB IP DRIVER FOR HISILICON KIRIN
+USB IP DRIVER FOR HISILICON KIRIN 960
 M:	Yu Chen <chenyu56@huawei.com>
 M:	Binghui Wang <wangbinghui@hisilicon.com>
 L:	linux-usb@vger.kernel.org
@@ -18662,6 +18662,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
 F:	drivers/phy/hisilicon/phy-hi3660-usb3.c
 
+USB IP DRIVER FOR HISILICON KIRIN 970
+M:	Mauro Carvalho Chehab <mchehab@kernel.org>
+L:	linux-usb@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/hisilicon,kirin970-usb3.yaml
+F:	drivers/phy/hisilicon/phy-kirin970-usb3.c
+
 USB ISP116X DRIVER
 M:	Olav Kongas <ok@artecdesign.ee>
 L:	linux-usb@vger.kernel.org
diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
index 1c73053bcc98..4d008cfc279c 100644
--- a/drivers/phy/hisilicon/Kconfig
+++ b/drivers/phy/hisilicon/Kconfig
@@ -23,6 +23,16 @@ config PHY_HI3660_USB
 
 	  To compile this driver as a module, choose M here.
 
+config PHY_HI3670_USB
+	tristate "hi3670 USB PHY support"
+	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
+	select GENERIC_PHY
+	select MFD_SYSCON
+	help
+	  Enable this to support the HISILICON HI3670 USB PHY.
+
+	  To compile this driver as a module, choose M here.
+
 config PHY_HISTB_COMBPHY
 	tristate "HiSilicon STB SoCs COMBPHY support"
 	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
diff --git a/drivers/phy/hisilicon/Makefile b/drivers/phy/hisilicon/Makefile
index 92e874ae9c74..51729868145b 100644
--- a/drivers/phy/hisilicon/Makefile
+++ b/drivers/phy/hisilicon/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_HI6220_USB)		+= phy-hi6220-usb.o
 obj-$(CONFIG_PHY_HI3660_USB)		+= phy-hi3660-usb3.o
+obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
 obj-$(CONFIG_PHY_HISTB_COMBPHY)		+= phy-histb-combphy.o
 obj-$(CONFIG_PHY_HISI_INNO_USB2)	+= phy-hisi-inno-usb2.o
 obj-$(CONFIG_PHY_HIX5HD2_SATA)		+= phy-hix5hd2-sata.o
diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/phy/hisilicon/phy-hi3670-usb3.c
similarity index 100%
rename from drivers/staging/hikey9xx/phy-hi3670-usb3.c
rename to drivers/phy/hisilicon/phy-hi3670-usb3.c
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 82bb4a22b286..88bdf5655d20 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,16 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/phy
-config PHY_HI3670_USB
-	tristate "hi3670 USB PHY support"
-	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
-	select GENERIC_PHY
-	select MFD_SYSCON
-	help
-	  Enable this to support the HISILICON HI3670 USB PHY.
-
-	  To compile this driver as a module, choose M here.
-
 # to be placed at drivers/spmi
 config SPMI_HISI3670
 	tristate "Hisilicon 3670 SPMI Controller"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 1924fadac952..9371dcc3d35b 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
-
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
