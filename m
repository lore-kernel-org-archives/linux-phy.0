Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF03C25B50
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 19:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNMKo9OCKoSjqJNDpanI1HF2X3oN7xs31cm9Xpye/A4=; b=hKjhdQy0QLCuM1
	yifEqEJ6Ml6GtmHMubq4+vx2ogQCtKF1V8vVLiTh4fh4aNO3iFbT6MF1S+0NsyO30rXTxgOFF9vZ4
	dcDnarGjOND1CICRS10i69SuCFMDoT4ZlyNywD+r7JHegD9ubm+1vQbKdxxd4KykWZgF6NxHbb964
	9aExEoRlloihSNIlh493ORhfNYri5vj1LuncRQNmDKfbeUGW+ktfSyHOlGweREm4bAwFCWSTAxJPM
	ogq3ixOnNfpipzxQLl/m27uYG/fj60Z20v68VlPMDNrJxisqbK/Y6aQUSrTwn/OcCSTczPR2fTX8U
	pViwJU1EqKb0bMTR5iiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPFP-0053tn-8j; Tue, 24 Jan 2023 19:46:23 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKOBE-004xjN-OM
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 18:38:06 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:2f4a:8573:c294:b2ce])
	by michel.telenet-ops.be with bizsmtp
	id CidZ2900456uRqi06idZy8; Tue, 24 Jan 2023 19:37:57 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAe-007HCT-Ig;
	Tue, 24 Jan 2023 19:37:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pKOAn-002n0h-2v;
	Tue, 24 Jan 2023 19:37:33 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Madalin Bucur <madalin.bucur@nxp.com>,
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
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>
Cc: linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 3/9] phy: Add devm_of_phy_optional_get() helper
Date: Tue, 24 Jan 2023 19:37:22 +0100
Message-Id: <4cd0069bcff424ffc5c3a102397c02370b91985b.1674584626.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
References: <cover.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_103801_112427_08BC8E15 
X-CRM114-Status: GOOD (  20.12  )
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

Add an optional variant of devm_of_phy_get() that also takes care of
printing real errors, so drivers no longer have to open-code this
operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Print an error message in case of failure, as requested by RobH,
  - Update Documentation.
---
 Documentation/driver-api/phy/phy.rst |  7 +++++--
 drivers/phy/phy-core.c               | 30 ++++++++++++++++++++++++++++
 include/linux/phy/phy.h              |  9 +++++++++
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 6cadc58f4ce07ce4..81785c084f3ec2dd 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -108,6 +108,9 @@ it. This framework provides the following APIs to get a reference to the PHY.
 					  const char *string);
 	struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 				    const char *con_id);
+	struct phy *devm_of_phy_optional_get(struct device *dev,
+					     struct device_node *np,
+					     const char *con_id);
 	struct phy *devm_of_phy_get_by_index(struct device *dev,
 					     struct device_node *np,
 					     int index);
@@ -119,8 +122,8 @@ non-dt boot, it should contain the label of the PHY.  The two
 devm_phy_get associates the device with the PHY using devres on
 successful PHY get. On driver detach, release function is invoked on
 the devres data and devres data is freed.
-devm_phy_optional_get should be used when the phy is optional. This
-function will never return -ENODEV, but instead returns NULL when
+The _optional_get variants should be used when the phy is optional. These
+functions will never return -ENODEV, but instead return NULL when
 the phy cannot be found.
 Some generic drivers, such as ehci, may use multiple phys. In this case,
 devm_of_phy_get or devm_of_phy_get_by_index can be used to get a phy
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 672f5c86588609f3..9951efc03eaaf842 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -858,6 +858,36 @@ struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
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
+	if (IS_ERR(phy))
+		dev_err_probe(dev, PTR_ERR(phy), "failed to get PHY %pOF:%s",
+			      np, con_id);
+
+	return phy;
+}
+EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
+
 /**
  * devm_of_phy_get_by_index() - lookup and obtain a reference to a phy by index.
  * @dev: device that requests this phy
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 1b4f9be21e01f4c7..3a570bc59fc7f4a1 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -254,6 +254,8 @@ struct phy *devm_phy_get(struct device *dev, const char *string);
 struct phy *devm_phy_optional_get(struct device *dev, const char *string);
 struct phy *devm_of_phy_get(struct device *dev, struct device_node *np,
 			    const char *con_id);
+struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
+				     const char *con_id);
 struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 				     int index);
 void of_phy_put(struct phy *phy);
@@ -443,6 +445,13 @@ static inline struct phy *devm_of_phy_get(struct device *dev,
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
