Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A666AC3DA6D
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IHqICKhjQ5Ef4fZ/QnQ+MNDTq5PZSKZZQOf1k6+dPzU=; b=oGqy04NfDwVNkE
	79nkV62Rdx/vODiKYq51LvfFJttiKoRKsv/ILeUXga3cRRDVdFpnyB/boWlRQdirtYpSZiI/a9vna
	B4tpeb0U8vAxoNHlPGsQYeQWZw7BHEoI5MMgRB6O4LZlRpthN6LWIxRWCsZv1gEZNuQ6azfIK+Qpt
	BDuhyUTisobfuTyx9KmYdBL4Q395n8BPinB8Mjqzg0mONLji61XDp8x+ZEuQMT4zIjYZXwniBSa3V
	gePLh9AEmUB8cRPDEKQGzNYpth0k9hPWe90IuJl1+5kheJZ7dtuowBwzQHJlTldZ9S73ztsY3R9mJ
	/RFEWmhGHwWdWgofwbuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO8E-00000003MUK-1EwF;
	Fri, 23 May 2025 08:51:58 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO8B-00000003MTr-0YaY
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:51:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 54E41A4F1CF;
	Fri, 23 May 2025 08:51:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEC86C4CEE9;
	Fri, 23 May 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990314;
	bh=KINVIsIATKZd8A1FMOQaMq6QpbTB56FlK2LkAKI2V/Y=;
	h=From:To:Cc:Subject:Date:From;
	b=aBtjSvQwXrD1pwfoJeCoG5adpVJWBllTPmNKg5k6d9s3hYNxw5bOI5Vv1dssJYKfM
	 nMgkGldk1R7x4Gg/MnOeq0lW5HKt/k5kmHUfnxGnpRLtVe16rMAkYtSPNAeM8omjSl
	 9yuFgWSQVK1bP0BgE9tXZkFDKHmr7q2mN/IyZLAIczJ6Kfp50XvmF+mR+bDpHoPwl/
	 wQGrfEtOQOV+nfNXJf1wXmtlnfPX6foqw/Qg/JVJZjLgHv52X+l4uXKKLnC7EnXFlj
	 bPo6zDgWCYKGQHMFphktupx4rUTVnAbLBvRtdtQq0LQYKO1WNrSdRvZABPriX0SVm9
	 3hp2ImekxnLSA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO87-000000002ws-3Xnh;
	Fri, 23 May 2025 10:51:51 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: drop probe registration printks
Date: Fri, 23 May 2025 10:51:12 +0200
Message-ID: <20250523085112.11287-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_015155_316797_058A2A97 
X-CRM114-Status: GOOD (  11.13  )
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

Drivers should generally be quiet on successful probe, but this is not
followed by some PHY drivers, for example:

	snps-eusb2-hsphy 88e1000.phy: Registered Snps-eUSB2 phy
	qcom-eusb2-repeater c432000.spmi:pmic@7:phy@fd00: Registered Qcom-eUSB2 repeater
	qcom-eusb2-repeater c432000.spmi:pmic@a:phy@fd00: Registered Qcom-eUSB2 repeater
	qcom-eusb2-repeater c432000.spmi:pmic@b:phy@fd00: Registered Qcom-eUSB2 repeater
	snps-eusb2-hsphy fd3000.phy: Registered Snps-eUSB2 phy
	snps-eusb2-hsphy fd9000.phy: Registered Snps-eUSB2 phy
	snps-eusb2-hsphy fde000.phy: Registered Snps-eUSB2 phy
	snps-eusb2-hsphy 88e0000.phy: Registered Snps-eUSB2 phy
	snps-eusb2-hsphy 88e2000.phy: Registered Snps-eUSB2 phy

Drop (or demote to debug level) unnecessary registration info messages
to make boot logs a little less noisy.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/broadcom/phy-bcm-ns2-pcie.c        | 2 --
 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c      | 1 -
 drivers/phy/broadcom/phy-bcm-sr-pcie.c         | 2 --
 drivers/phy/broadcom/phy-brcm-sata.c           | 2 +-
 drivers/phy/marvell/phy-pxa-usb.c              | 1 -
 drivers/phy/phy-snps-eusb2.c                   | 2 --
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 2 --
 drivers/phy/qualcomm/phy-qcom-m31.c            | 2 --
 drivers/phy/qualcomm/phy-qcom-qusb2.c          | 4 +---
 drivers/phy/st/phy-stih407-usb.c               | 2 --
 drivers/phy/st/phy-stm32-usbphyc.c             | 4 ++--
 drivers/phy/ti/phy-twl4030-usb.c               | 1 -
 12 files changed, 4 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-pcie.c b/drivers/phy/broadcom/phy-bcm-ns2-pcie.c
index 2eaa41f8fc70..67a6ae5ecba0 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-pcie.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-pcie.c
@@ -61,8 +61,6 @@ static int ns2_pci_phy_probe(struct mdio_device *mdiodev)
 		return PTR_ERR(provider);
 	}
 
-	dev_info(dev, "%s PHY registered\n", dev_name(dev));
-
 	return 0;
 }
 
diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index 36ad02c33ac5..8473fa574529 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -395,7 +395,6 @@ static int ns2_drd_phy_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, driver);
 
-	dev_info(dev, "Registered NS2 DRD Phy device\n");
 	queue_delayed_work(system_power_efficient_wq, &driver->wq_extcon,
 			   driver->debounce_jiffies);
 
diff --git a/drivers/phy/broadcom/phy-bcm-sr-pcie.c b/drivers/phy/broadcom/phy-bcm-sr-pcie.c
index ff9b3862bf7a..706e1d83b4ce 100644
--- a/drivers/phy/broadcom/phy-bcm-sr-pcie.c
+++ b/drivers/phy/broadcom/phy-bcm-sr-pcie.c
@@ -277,8 +277,6 @@ static int sr_pcie_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(provider);
 	}
 
-	dev_info(dev, "Stingray PCIe PHY driver initialized\n");
-
 	return 0;
 }
 
diff --git a/drivers/phy/broadcom/phy-brcm-sata.c b/drivers/phy/broadcom/phy-brcm-sata.c
index 228100357054..d52dd065e862 100644
--- a/drivers/phy/broadcom/phy-brcm-sata.c
+++ b/drivers/phy/broadcom/phy-brcm-sata.c
@@ -832,7 +832,7 @@ static int brcm_sata_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(provider);
 	}
 
-	dev_info(dev, "registered %d port(s)\n", count);
+	dev_dbg(dev, "registered %d port(s)\n", count);
 
 	return 0;
 }
diff --git a/drivers/phy/marvell/phy-pxa-usb.c b/drivers/phy/marvell/phy-pxa-usb.c
index 6c98eb9608e9..c0bb71f80c04 100644
--- a/drivers/phy/marvell/phy-pxa-usb.c
+++ b/drivers/phy/marvell/phy-pxa-usb.c
@@ -325,7 +325,6 @@ static int pxa_usb_phy_probe(struct platform_device *pdev)
 		phy_create_lookup(pxa_usb_phy->phy, "usb", "mv-otg");
 	}
 
-	dev_info(dev, "Marvell PXA USB PHY");
 	return 0;
 }
 
diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index cf62f2221366..87f323e758d6 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -599,8 +599,6 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy_provider))
 		return PTR_ERR(phy_provider);
 
-	dev_info(dev, "Registered Snps-eUSB2 phy\n");
-
 	return 0;
 }
 
diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75c77..260894b6932c 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -264,8 +264,6 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (IS_ERR(phy_provider))
 		return PTR_ERR(phy_provider);
 
-	dev_info(dev, "Registered Qcom-eUSB2 repeater\n");
-
 	return 0;
 }
 
diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 20d4c020a83c..7caeea1b109e 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -305,8 +305,6 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 	phy_set_drvdata(qphy->phy, qphy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered M31 USB phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 1f5f7df14d5a..18cdd017bf3f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1139,9 +1139,7 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 	phy_set_drvdata(generic_phy, qphy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QUSB2 phy\n");
-	else
+	if (IS_ERR(phy_provider))
 		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
diff --git a/drivers/phy/st/phy-stih407-usb.c b/drivers/phy/st/phy-stih407-usb.c
index ebb1d0858aa3..7a3e4584895c 100644
--- a/drivers/phy/st/phy-stih407-usb.c
+++ b/drivers/phy/st/phy-stih407-usb.c
@@ -139,8 +139,6 @@ static int stih407_usb2_picophy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy_provider))
 		return PTR_ERR(phy_provider);
 
-	dev_info(dev, "STiH407 USB Generic picoPHY driver probed!");
-
 	return 0;
 }
 
diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index b917cd413de7..27fe92f73f33 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -757,8 +757,8 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 	}
 
 	version = readl_relaxed(usbphyc->base + STM32_USBPHYC_VERSION);
-	dev_info(dev, "registered rev:%lu.%lu\n",
-		 FIELD_GET(MAJREV, version), FIELD_GET(MINREV, version));
+	dev_dbg(dev, "registered rev: %lu.%lu\n",
+		FIELD_GET(MAJREV, version), FIELD_GET(MINREV, version));
 
 	return 0;
 
diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index 6f12b38cd894..a26aec3ab29e 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -784,7 +784,6 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
-	dev_info(&pdev->dev, "Initialized TWL4030 USB module\n");
 	return 0;
 }
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
