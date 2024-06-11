Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F31FCC27C5E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jun 2024 11:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Riqb+htZ/bFua4tS89LjHRhFUxJSbqu8ue8vGd+SEds=; b=Ga/mBCp37XBTKw
	u6xpnCNLIbojZfY3o2e/7eraTf8U8hyRgj8DYHEZgwbyCRhNFbZF3ag1DS40JShiP1Lwh6uNT2eWp
	ogEuM0hLBrDo5s3XkN2JBWD/QV/dn+WSDlDIL3aVluq9bZbVjV48p26FuHtUbKyID6bzBIroQy6vO
	CVbibvcsTXmemS5S5+v1nkyPIp1uuLGyEgeQYOu/cgzvtR2oxyO0PkZyYbeti0cwK0Onur6qbDatE
	u+HgtaaXcSDh6Epfh18Mp3rmqlWWewrw6kwym29XwCB0afpJNpd/zSu+zpY+03FNPO4IkRd4ixVmK
	I1zayHkzZbjsPecE69hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzIl-00000008ZMd-2jzG;
	Tue, 11 Jun 2024 11:04:31 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzIh-00000008ZEJ-1GVC
	for linux-phy@lists.infradead.org;
	Tue, 11 Jun 2024 11:04:30 +0000
X-IronPort-AV: E=Sophos;i="6.08,229,1712588400"; 
   d="scan'208";a="211446402"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 11 Jun 2024 20:04:26 +0900
Received: from localhost.localdomain (unknown [10.226.93.49])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id E78E240078D0;
	Tue, 11 Jun 2024 20:04:20 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <len.brown@intel.com>,
	Pavel Machek <pavel@ucw.cz>,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 3/6] regulator: core: Add helper for allow access to enable register
Date: Tue, 11 Jun 2024 12:03:59 +0100
Message-Id: <20240611110402.58104-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_040427_701445_6F2A21D9 
X-CRM114-Status: GOOD (  12.26  )
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

Add a helper function that allow regulator consumers to allow low-level
enable register access, in order to enable/disable regulator in atomic
context.

The use-case for RZ/G2L SoC is to enable VBUS selection register based
on vbus detection that happens in interrupt context.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3:
 * New patch.
---
 Documentation/power/regulator/consumer.rst |  5 ++++
 drivers/regulator/core.c                   | 32 ++++++++++++++++++++++
 include/linux/regulator/consumer.h         |  8 ++++++
 3 files changed, 45 insertions(+)

diff --git a/Documentation/power/regulator/consumer.rst b/Documentation/power/regulator/consumer.rst
index 85c2bf5ac07e..b5502f4ffe46 100644
--- a/Documentation/power/regulator/consumer.rst
+++ b/Documentation/power/regulator/consumer.rst
@@ -227,3 +227,8 @@ directly written to the voltage selector register, use::
 
 	int regulator_list_hardware_vsel(struct regulator *regulator,
 					 unsigned selector);
+
+To access the hardware register for enabling/disabling the regulator, use::
+
+	int regulator_set_hardware_enable_register(struct regulator *regulator,
+						   bool enable);
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 5794f4e9dd52..19df42868bbd 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -3407,6 +3407,38 @@ int regulator_list_hardware_vsel(struct regulator *regulator,
 }
 EXPORT_SYMBOL_GPL(regulator_list_hardware_vsel);
 
+/**
+ * regulator_set_hardware_enable_register - set the HW enable register
+ * @regulator: regulator source
+ * @enable: true for enable, false for disable
+ *
+ * Request that the regulator be enabled/disabled with the regulator output at
+ * the predefined voltage or current value.
+ *
+ * On success 0 is returned, otherwise a negative errno is returned.
+ */
+int regulator_set_hardware_enable_register(struct regulator *regulator,
+					   bool enable)
+{
+	struct regulator_dev *rdev = regulator->rdev;
+	const struct regulator_ops *ops = rdev->desc->ops;
+	int ret = -EOPNOTSUPP;
+
+	if (!ops)
+		return ret;
+
+	if (enable) {
+		if (ops->enable == regulator_enable_regmap)
+			ret = ops->enable(rdev);
+	} else {
+		if (ops->disable == regulator_disable_regmap)
+			ret = rdev->desc->ops->disable(rdev);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_set_hardware_enable_register);
+
 /**
  * regulator_get_linear_step - return the voltage step size between VSEL values
  * @regulator: regulator source
diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index e6f81fc1fb17..4aa5c57de052 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -250,6 +250,8 @@ int regulator_get_hardware_vsel_register(struct regulator *regulator,
 					 unsigned *vsel_mask);
 int regulator_list_hardware_vsel(struct regulator *regulator,
 				 unsigned selector);
+int regulator_set_hardware_enable_register(struct regulator *regulator,
+					   bool enable);
 
 /* regulator notifier block */
 int regulator_register_notifier(struct regulator *regulator,
@@ -571,6 +573,12 @@ static inline int regulator_list_hardware_vsel(struct regulator *regulator,
 	return -EOPNOTSUPP;
 }
 
+static inline int regulator_set_hardware_enable_register(struct regulator *regulator,
+							 bool enable)
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int regulator_register_notifier(struct regulator *regulator,
 			      struct notifier_block *nb)
 {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
