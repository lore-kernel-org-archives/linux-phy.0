Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56993C54EBE
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 00:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cy/POehS10PYTSRZHfg9Sl6hz62tvmKlenen0n3M7XA=; b=K+tafoa6JAvSoE
	CKaynikdTx5ee2kq5pbuDvDG+o0PIzJanJOUJ+cG6f3Sh8P8VQx3VCTzR4gzOR8TsLPZ4qL1jSsku
	62KvE68PPJDNxqMqCaFjOFdT5hXzH+yjegkjQwfbHJHen4CDE8pRhkyHc89oewrxfpsVQi+uCo9d7
	9suHOOEOZtY0j7l0izsrN6wHxQokvI491h92kygsx0gwAovrXMeOA+rJtjAQ4fJJLdVTcgGPSZoiU
	Cbev6sb6NDr950V4dcN0sCBmCS3rRgXRE8VA8mtdsBlRoMkunzJUQxtHyhliszRAmu+wLOTKoecxI
	vcEjmjv8Kf65j1yBDS3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGU6q-004s61-KW; Sat, 14 Jan 2023 00:09:20 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGU6n-004s5A-5c
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 00:09:18 +0000
Received: by mail-pl1-x632.google.com with SMTP id k12so2919350plk.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 16:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iCt1TVcQGT69o0NxFcLxxxAse3ihgOBwig0LVJHKNSQ=;
        b=PbPnpcZ8eF/CwYhed0OtyJu8Vmo2IAckT9ykkO30Wp2z+MDwWjyn/lhG4KDd0f171G
         qP5MTty7fpLNF1p7JwY3jjwkYxy9Bikgc7JsJBqj4XvvfhK+f1Y0DBZgOddOIO/4xHNf
         wo+du5YEL8RN8nKdgGHhfMUzV749F4sCl1kh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iCt1TVcQGT69o0NxFcLxxxAse3ihgOBwig0LVJHKNSQ=;
        b=y3PME1EyLe3T4wp9doMbgK3hIoK49sbgLmSpy3eufWmUqtj3+vG+L9qd1vSw6eCuEC
         F2COT8zIrBZZ8b+3+QFWSbZt08AG0bpepM6WbWCrNaquJyuK3xdIW4AEmcULx1ebDIzU
         eDWFN9zyX/LrZob2KnXu02CcbK+OHMxOkAm1lXld56GFCBGJahN4sbp8yUVFfQdtx8Em
         1MUuoMBz6XD8TxxcfjbU0FDtzLV1mVxaxABGNTwcKNUAjUPCSB8bovJmvCYvdHNc8rLf
         A6iKJ8cNGmo1ZdVKbl5FT9DyPrSqDktMz8zjGla5jFs0zQXNOe8OYPemwCeb7lkjjREV
         Oghg==
X-Gm-Message-State: AFqh2kpJAz8GW/kRX5c/vXGwSdpHPd0/OIhKL5d8ksldwPMI54I16CnH
	54E9R7QkR8zthKVbUC7wK2iPqQ==
X-Google-Smtp-Source: AMrXdXvx17AIp+ECFymjutA1xBaxl0yWe14V9QyFLYnxxmH8Bd1cQLvxABFqH5ZfQYMYlm2zXzKovg==
X-Received: by 2002:a17:902:8d81:b0:194:4339:f12e with SMTP id v1-20020a1709028d8100b001944339f12emr13815441plo.1.1673654952381;
        Fri, 13 Jan 2023 16:09:12 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:11a:201:4652:3752:b9b7:29f9])
        by smtp.gmail.com with ESMTPSA id n15-20020a170902d2cf00b0018963b8e131sm14637072plc.290.2023.01.13.16.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 16:09:11 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom-qmp: Introduce Kconfig symbols for discrete drivers
Date: Fri, 13 Jan 2023 16:09:10 -0800
Message-Id: <20230114000910.1256462-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_160917_273159_9CCACD34 
X-CRM114-Status: GOOD (  12.41  )
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

Introduce a config option for each QMP PHY driver now that the QMP PHY
mega-driver has been split up into different modules. This allows kernel
configurators to limit the binary size of the kernel by only compiling
in the QMP PHY driver that they need, or to split the module up into one
per PHY driver instead of one module for all the QMP PHY drivers.

Leave the old config QCOM_QMP in place and make it into a menuconfig so
that 'make olddefconfig' continues to work. Furthermore, set the default
of the new Kconfig symbols to be QCOM_QMP so that the transition is
smooth.

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/phy/qualcomm/Kconfig  | 50 ++++++++++++++++++++++++++++++++---
 drivers/phy/qualcomm/Makefile | 12 ++++-----
 2 files changed, 52 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 5c98850f5a36..1d3a8062e651 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -50,13 +50,55 @@ config PHY_QCOM_PCIE2
 	  Enable this to support the Qualcomm PCIe PHY, used with the Synopsys
 	  based PCIe controller.
 
-config PHY_QCOM_QMP
-	tristate "Qualcomm QMP PHY Driver"
+menuconfig PHY_QCOM_QMP
+	tristate "Qualcomm QMP PHY Drivers"
 	depends on OF && COMMON_CLK && (ARCH_QCOM || COMPILE_TEST)
+
+if PHY_QCOM_QMP
+
+config PHY_QCOM_QMP_COMBO
+	tristate "Qualcomm QMP Combo PHY Driver"
+	default PHY_QCOM_QMP
+	select GENERIC_PHY
+	help
+	  Enable this to support the QMP Combo PHY transceiver that is used
+	  with USB3 and DisplayPort controllers on Qualcomm chips.
+
+config PHY_QCOM_QMP_PCIE
+	tristate "Qualcomm QMP PCIe PHY Driver"
+	depends on PCI || COMPILE_TEST
+	select GENERIC_PHY
+	default PHY_QCOM_QMP
+	help
+	  Enable this to support the QMP PCIe PHY transceiver that is used
+	  with PCIe controllers on Qualcomm chips.
+
+config PHY_QCOM_QMP_PCIE_8996
+	tristate "Qualcomm QMP PCIe 8996 PHY Driver"
+	depends on PCI || COMPILE_TEST
 	select GENERIC_PHY
+	default PHY_QCOM_QMP
 	help
-	  Enable this to support the QMP PHY transceiver that is used
-	  with controllers such as PCIe, UFS, and USB on Qualcomm chips.
+	  Enable this to support the QMP PCIe PHY transceiver that is used
+	  with PCIe controllers on Qualcomm msm8996 chips.
+
+config PHY_QCOM_QMP_UFS
+	tristate "Qualcomm QMP UFS PHY Driver"
+	select GENERIC_PHY
+	default PHY_QCOM_QMP
+	help
+	  Enable this to support the QMP UFS PHY transceiver that is used
+	  with UFS controllers on Qualcomm chips.
+
+config PHY_QCOM_QMP_USB
+	tristate "Qualcomm QMP USB PHY Driver"
+	select GENERIC_PHY
+	default PHY_QCOM_QMP
+	help
+	  Enable this to support the QMP USB PHY transceiver that is used
+	  with USB3 controllers on Qualcomm chips.
+
+endif # PHY_QCOM_QMP
 
 config PHY_QCOM_QUSB2
 	tristate "Qualcomm QUSB2 PHY Driver"
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 65f6c30a3e93..79dd4e507961 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -5,12 +5,12 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
 obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
-obj-$(CONFIG_PHY_QCOM_QMP)		+= \
-	phy-qcom-qmp-combo.o \
-	phy-qcom-qmp-pcie.o \
-	phy-qcom-qmp-pcie-msm8996.o \
-	phy-qcom-qmp-ufs.o \
-	phy-qcom-qmp-usb.o
+
+obj-$(CONFIG_PHY_QCOM_QMP_COMBO)	+= phy-qcom-qmp-combo.o
+obj-$(CONFIG_PHY_QCOM_QMP_PCIE)		+= phy-qcom-qmp-pcie.o
+obj-$(CONFIG_PHY_QCOM_QMP_PCIE_8996)	+= phy-qcom-qmp-pcie-msm8996.o
+obj-$(CONFIG_PHY_QCOM_QMP_UFS)		+= phy-qcom-qmp-ufs.o
+obj-$(CONFIG_PHY_QCOM_QMP_USB)		+= phy-qcom-qmp-usb.o
 
 obj-$(CONFIG_PHY_QCOM_QUSB2)		+= phy-qcom-qusb2.o
 obj-$(CONFIG_PHY_QCOM_USB_HS) 		+= phy-qcom-usb-hs.o

base-commit: 30a0b95b1335e12efef89dd78518ed3e4a71a763
-- 
https://chromeos.dev


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
