Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EA5EC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyJscV9Tn3E9Bx+oakBnZPvmahIpHNz+d158VZxSNmQ=; b=MNEDXkSKB/StCx
	XokQqA7a4ca9NkcRzad1rlrElcgB6jw99h5OtyyKeawxgEoO1uWFjR3l9nssmxx33xIMKACQx5ENt
	MUehp+96al6Csk6E7App8To+Na2k7ZI0ExepjzLHnxSyK8OvhzFawJ2xyDLt8QWqBJzNFfV2tWgy9
	UPPtH/9DnTnUGZIFwrkK9Qcg2kD8idy6ilTzuMAHAb6ctQrgb0kw5J5TnKwNnX3eVs6P7RZIg8mhi
	h07Nn+I9MTsCjXm49+5rJO4kzxIfebcVy+WsW4f5tN6P4AneSTujOmZBVIyTjb3WlKcDstTKzciQK
	BbY2XViCPFOKux9PCFeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5VQ-000JJX-VB; Wed, 18 Jan 2023 10:17:20 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5U2-000Iff-SZ
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:15:59 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by albert.telenet-ops.be with bizsmtp
	id AAFN290022zf9gW06AFN2Z; Wed, 18 Jan 2023 11:15:46 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TQ-005aIM-Lz;
	Wed, 18 Jan 2023 11:15:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5TV-001JVj-W5;
	Wed, 18 Jan 2023 11:15:21 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/7] phy: Add devm_of_phy_optional_get() helper
Date: Wed, 18 Jan 2023 11:15:14 +0100
Message-Id: <f53a1bcca637ceeafb04ce3540a605532d3bc34a.1674036164.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674036164.git.geert+renesas@glider.be>
References: <cover.1674036164.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_021555_176351_530B9281 
X-CRM114-Status: GOOD (  13.50  )
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

Add an optional variant of devm_of_phy_get(), so drivers no longer have
to open-code this operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/phy-core.c  | 26 ++++++++++++++++++++++++++
 include/linux/phy/phy.h |  9 ++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d93ddf1262c5178b..ea009a611e19c705 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -879,6 +879,32 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(devm_of_phy_get);
 
+/**
+ * devm_of_phy_optional_get() - lookup and obtain a reference to an optional
+ * phy.
+ * @dev: device that requests this phy
+ * @np: node containing the phy
+ * @con_id: name of the phy from device's point of view
+ *
+ * Gets the phy using of_phy_get(), and associates a device with it using
+ * devres. On driver detach, release function is invoked on the devres data,
+ * then, devres data is freed.  This differs to devm_of_phy_get() in
+ * that if the phy does not exist, it is not considered an error and
+ * -ENODEV will not be returned. Instead the NULL phy is returned,
+ * which can be passed to all other phy consumer calls.
+ */
+struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
+				     const char *con_id)
+{
+	struct phy *phy = devm_of_phy_get(dev, np, con_id);
+
+	if (PTR_ERR(phy) == -ENODEV)
+		phy = NULL;
+
+	return phy;
+}
+EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
+
 /**
  * devm_of_phy_get_by_index() - lookup and obtain a reference to a phy by index.
  * @dev: device that requests this phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 559c3da515073697..5f6e669b616da0b0 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -255,6 +255,8 @@ struct phy *devm_phy_get(struct device *dev, const char *string);
 struct phy *devm_phy_optional_get(struct device *dev, const char *string);
 struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 			    const char *con_id);
+struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
+				     const char *con_id);
 struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index);
 void of_phy_put(struct phy *phy);
@@ -450,6 +452,13 @@ static inline struct phy *devm_of_phy_get(struct device *dev,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct phy *devm_of_phy_optional_get(struct device *dev,
+						   struct device_node *np,
+						   const char *con_id)
+{
+	return NULL;
+}
+
 static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
 						   struct device_node *np,
 						   int index)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
