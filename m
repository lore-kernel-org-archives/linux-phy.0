Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC93FC636D3
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 21:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gdqFua+ycBoMMn7ET5fbqFo7WtdiZzNvXM0HMhAz8ho=; b=gRavF4y6S+U5Mx
	9AGKMHtLa3CkPAn+3Kl3XCqgKtJHMVv6+Xbd8hY8jH0xXc8v2C747Yxq6IenCFgRzMjwbI34Njs7W
	WMsgz0TMxF6rLc0FrYX5l5iOeDCnZvMCD1Z0HqwQwPv/8wwm2zGkQb6DsqjUwobjmibBNOOQqa6fq
	tQ4xyAoT+lYWWAgQfkjCsrA5z8ER5Bw7W1TTayRGnCVIKZFZ7ijyyh6zKPhm4HWSS0pMeIgrnx/iU
	IElLL2JH/d8kMmrXW6O0YGBQwrg3hitz5/O/lZeMgZ4OdTlHcTgoTiEG69d4hsjrCI5fmgrdybBJO
	7TZPb5pQUIYdqtO/3Exw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhWV-00HHEd-9T; Thu, 02 Feb 2023 21:53:39 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhWS-00HHD9-H5
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 21:53:38 +0000
Received: by mail-pf1-x42b.google.com with SMTP id bd15so2212883pfb.8
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 13:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0MCj0cFQfLc6l+F+joHSy2ngku9zmGXjqJjBuWdwnqo=;
        b=THonEsNsrNwwDbGNAqMP0NR+bqP30aRxRaMPF9aTDsX2pPqFLiPILalesYfvBvM2gD
         e9miAlWLqAArGKWpKox5efYs1QYJxBieHICLgKW7iip0R14dfj6wlAwQ4oF2dIrH10vc
         FD57j/5KRh7NE3/TpOqv9remFAGIp720df5UQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MCj0cFQfLc6l+F+joHSy2ngku9zmGXjqJjBuWdwnqo=;
        b=5IEOd6QZRtyW6yhjDjLLGXbuBCbUqxs8dRia7RwtT1IeOt37mHEGexnNE64CG0kktk
         U2oNRhgyeTfOq8GGx9BtDJbmLQ/3DhjsOYSraeL///pHd+NWWzJgIRO9m27FYztDVNYK
         llq94zuEhOdLEvXExBzwdLOloKJEqmAH4agXxi0zMIdJiJOlT+NbdEn/kF6MosIpdFbz
         M9ZT070P/q9tqPfhBZY5cBu0DXfghnHK0L7VVnkejYreea519RMXoQv+DdLw8i+1kwEl
         HVEDCadcOmOtmm5NkgMDtZVdGyYVWyCNqopVwR2sGuRwjedm4NuqNc2qdjyFkuqEiNDx
         yQ7w==
X-Gm-Message-State: AO0yUKWh5RMv8E27BGJ+0zTrC6o5/oDXuVQo8JJyLIQ72gCK471RYCnY
	6PpSANz0sPGje0pq5JkCPp0VzA==
X-Google-Smtp-Source: AK7set+QJxtFkEvINMG9wGwgRXKwCl9zJpvCZ3GD62ypGcPQW9TH9CoPBFotF6iO9/XlA9iDu4OdOA==
X-Received: by 2002:a62:4ecc:0:b0:593:c41e:474 with SMTP id c195-20020a624ecc000000b00593c41e0474mr6856838pfb.9.1675374812326;
        Thu, 02 Feb 2023 13:53:32 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:11a:201:4d8f:351:ff3d:e8eb])
        by smtp.gmail.com with ESMTPSA id j22-20020a62b616000000b00594235980e4sm147447pff.181.2023.02.02.13.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 13:53:31 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2] phy: qcom-qmp: Introduce Kconfig symbols for discrete drivers
Date: Thu,  2 Feb 2023 13:53:29 -0800
Message-Id: <20230202215330.2152726-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.39.1.519.gcb327c4b5f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_135336_588805_52C5F05B 
X-CRM114-Status: GOOD (  13.11  )
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
in the QMP PHY driver that they need.

Leave the old config QCOM_QMP in place and make it into a menuconfig so
that 'make olddefconfig' continues to work. Furthermore, set the default
of the new Kconfig symbols to be QCOM_QMP so that the transition is
smooth.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Changes from v1 (https://lore.kernel.org/r/20230114000910.1256462-1-swboyd@chromium.org):
 * Pick up review tags
 * Update commit text to better reflect reality
 * Rebase to phy tree's next branch

 drivers/phy/qualcomm/Kconfig  | 50 ++++++++++++++++++++++++++++++++---
 drivers/phy/qualcomm/Makefile | 12 ++++-----
 2 files changed, 52 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index eb9ddc685b38..62cf51aab1b8 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -50,14 +50,56 @@ config PHY_QCOM_PCIE2
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
 	select GENERIC_PHY
 	select MFD_SYSCON
 	help
-	  Enable this to support the QMP PHY transceiver that is used
-	  with controllers such as PCIe, UFS, and USB on Qualcomm chips.
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
+	select GENERIC_PHY
+	default PHY_QCOM_QMP
+	help
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

base-commit: b41499a1085b9278d73c6132d49849a6a86a81bc
-- 
https://chromeos.dev


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
