Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A73B9C5478C
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 15:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GYpZZnCTU1/yYuUc7imrORMfrVVs42arbDeUZgmBUQ=; b=NtgVXnChmNWCYf
	nh6YjCHnlSInjW6ppNg0aCMRXu97obAIkxoT8L1c7s7pHjf9GbR+KiimSTts024Q04kSHoS5+Dw6J
	ZVyiTVGofzgYcwLPoTjcOHlJx/24BiP7Vby7SvKG7/bApqj8ZwasgL2V15zos7dbpjfNMnp0efCBi
	Gv7tfaD7nZ3JCQp6AiqcOK/CHRbNNSdXw6L9EZMwIouG8emfGIFJCWrIiAzZlSyUk0Sa2EevPu947
	C4o+e/dkyEZj/TeBtqqa7C1dB4JpyG2cW9ePFiy0trLVLFWrtEpFO6RxnTJiaAN1C7YXG6J4nCU/s
	9dXCKCqd+lmMPXYZh67A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhANY-00000009dF0-3Zxw;
	Mon, 04 Mar 2024 15:37:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMr-00000009ckY-1iHl;
	Mon, 04 Mar 2024 15:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=DaC56o2wBLHPxa2Ttp6Fja2dcIvmi8wc4P6dTqN62vk=; b=mrQQYhGeKlQX+NEAKlJUP2wneb
	k2Ow7V46nGj6LscL3u32VNVJtktdD0madcBmLT7c2LRfyt6ne/wzPjryL3ZLdE9Cb5GETT0q88u4r
	QUTwGR3TASmmRcOw2Cz/Qxc0T79gTrHDY2/vXDwIERZR+WP9dpFsaQ7ZvqNtnLPbqj6ELuNy5Brz7
	G7AodGaIAXORxGs1ky8KdQ5zczCidUQIzK54S6MT7BWD5In/vdGEG5e3SE0VmH5/AxuiUEvEgC/31
	sE6HPr+y6+4HemSJsD35nzw2Hry00ph5pY/2gQ4JV8/0POuXpfhQHbnN3HnpXjsosASKPnUb7J0Dh
	7bqFiU1w==;
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMn-00000004wd7-3oIZ;
	Mon, 04 Mar 2024 15:36:39 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 771F61BF20B;
	Mon,  4 Mar 2024 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DaC56o2wBLHPxa2Ttp6Fja2dcIvmi8wc4P6dTqN62vk=;
	b=DYGTkPWEslLKG8HWGpJ11wN+i6/cmO4SQCQb8RAV5EJtc4xXnvBDg6XQ/AXZOu2gFCUsAG
	2+t6wdveq+JnF/wbiAGysqVcbo4f5C9KpKqmamF7ZOEBhmiCTDHKT7ZHqlNSyc1gzZFl8J
	PU2u1fQ4dS6Fy6Lt3hhCCEJcMKNNrgp1PX53fvt/ufDHll2jicK16x89I2iVdXlIF/7fXB
	hTMI3Ggc4WoGOgLD3mrg+4KXl7r+jExKUw99Tbha9BIGIwc40Yz2vAHgF66nE0bOeLL2mz
	HS8lsbqZgkSVRWLF+kzb+jeVF54C6wzLxx+XEz/VVc9KzUZqddt0Ley+aYbBDA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:57 +0100
Subject: [PATCH v4 14/18] PCI: cadence: Extract link setup sequence from
 cdns_pcie_host_setup()
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-14-6f1f53390c85@bootlin.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_153638_064715_080CFEDF 
X-CRM114-Status: GOOD (  11.77  )
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

The function cdns_pcie_host_setup() mixes probe structure and link setup.

The link setup must be done during the resume sequence. So extract it from
cdns_pcie_host_setup() and create a dedicated function.

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/pci/controller/cadence/pcie-cadence-host.c | 39 ++++++++++++++--------
 drivers/pci/controller/cadence/pcie-cadence.h      |  6 ++++
 2 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 5b14f7ee3c79..93d9922730af 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -497,6 +497,30 @@ static int cdns_pcie_host_init(struct device *dev,
 	return cdns_pcie_host_init_address_translation(rc);
 }
 
+int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc)
+{
+	struct cdns_pcie *pcie = &rc->pcie;
+	struct device *dev = rc->pcie.dev;
+	int ret;
+
+	if (rc->quirk_detect_quiet_flag)
+		cdns_pcie_detect_quiet_min_delay_set(&rc->pcie);
+
+	cdns_pcie_host_enable_ptm_response(pcie);
+
+	ret = cdns_pcie_start_link(pcie);
+	if (ret) {
+		dev_err(dev, "Failed to start link\n");
+		return ret;
+	}
+
+	ret = cdns_pcie_host_start_link(rc);
+	if (ret)
+		dev_dbg(dev, "PCIe link never came up\n");
+
+	return 0;
+}
+
 int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 {
 	struct device *dev = rc->pcie.dev;
@@ -533,20 +557,9 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 		return PTR_ERR(rc->cfg_base);
 	rc->cfg_res = res;
 
-	if (rc->quirk_detect_quiet_flag)
-		cdns_pcie_detect_quiet_min_delay_set(&rc->pcie);
-
-	cdns_pcie_host_enable_ptm_response(pcie);
-
-	ret = cdns_pcie_start_link(pcie);
-	if (ret) {
-		dev_err(dev, "Failed to start link\n");
-		return ret;
-	}
-
-	ret = cdns_pcie_host_start_link(rc);
+	ret = cdns_pcie_host_link_setup(rc);
 	if (ret)
-		dev_dbg(dev, "PCIe link never came up\n");
+		return ret;
 
 	for (bar = RP_BAR0; bar <= RP_NO_BAR; bar++)
 		rc->avail_ib_bar[bar] = true;
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index 03b96798f858..9ca2ffca0bf9 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -515,10 +515,16 @@ static inline bool cdns_pcie_link_up(struct cdns_pcie *pcie)
 }
 
 #ifdef CONFIG_PCIE_CADENCE_HOST
+int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc);
 int cdns_pcie_host_setup(struct cdns_pcie_rc *rc);
 void __iomem *cdns_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
 			       int where);
 #else
+static inline int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc)
+{
+	return 0;
+}
+
 static inline int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 {
 	return 0;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
