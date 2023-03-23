Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDC9C76195
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lJvoDJ4CsCSf5szzZAvkvXJ5ecETyFxSjnmns7cbus=; b=u3CnEBx/zD7mqu
	VxHHPXKUSW7eYE7pHWm2yvEk91Or7rMdjvtC4pxDc5aUsanfx0ODZ5pLjguT0y81G/4USr1b0qmYE
	eQvuoH9g+65JrbTsZRRLVfUoN3bO6lJ6dcwV31heBP0+GZFwFPBHA+gjzS+BI60TNO+S+XjKRx4fU
	4YXC1b2pQm3ks5Rm/uGGAADpzHTG6n/el8v+6TerX/EqyaGcG+PC7JPiXpAkEJfpKFpFbSeHop7B2
	1ElrXqTvPHNr5ts38zvt0QduZ+OwxMZKd+VNtJQcxVF4t9eMvOXwJVslQNGU8vEW48rxy8PfgwB1b
	57TG//DJo7U3xEhcC6wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEz-001aLJ-0S;
	Thu, 23 Mar 2023 10:32:17 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEv-001aIM-0u
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 10:32:15 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 9D65620004;
	Thu, 23 Mar 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679567531;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kyML+Tb93DHPPScUmVGGn4WAujJ7ZGz0ZkmMwXFTevo=;
	b=iLe55/8pFo52jTWAs6NDIlCS8H8D7z4l1HeHHpJR2EjKrbOcKwa4U5t121/2PPnvVn0x2Z
	nr3XRk+s3LxzGvyPMpGw1G33wnRDE0lT3pvHF0Z1BIzCBcVggHfBGpluB9uvJYWeMx5bON
	Rj5Ij8I4qjb/2eKJDt9nQNsHXTY/Erj/3EWGXuUsXVPA/WsS1l+UbfjkVvFi5guNiogLh+
	IbRhr58fnUWevEnjuW9gsIcOYRIPFG8Xl2QUeem2w+ru9kXjfPJHb1lVm0+TolLQ+HfLOO
	Jyfms0aWek3xbYoQGGMLX9GUjGENKRSASOUsrEtp83guvC6lzw42uQ8G9eoFsA==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [RFC PATCH 2/4] phy: Extend API to support 'status' get and notification
Date: Thu, 23 Mar 2023 11:31:52 +0100
Message-Id: <20230323103154.264546-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230323103154.264546-1-herve.codina@bootlin.com>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_033213_583851_861D8A82 
X-CRM114-Status: GOOD (  24.91  )
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

The PHY API provides functions to control and pass information from the
PHY consumer to the PHY provider.
There is no way for the consumer to get direct information from the PHY
or be notified by the PHY.

To fill this hole, two API function are provided:

- phy_get_status()
  This function can be used to get a "status" from the PHY. It is built
  as the same ways as the configure() function. The status information
  present in the status retrieved depends on the PHY's phy_mode.
  This allows to get a "status" depending on the kind of PHY.

- phy_atomic_notifier_(un)register()
  These functions can be used to register/unregister an atomic notifier
  block. The event available at this time is the PHY_EVENT_STATUS status
  event which purpose is to signal some changes in the status available
  using phy_get_status().

An new kind of PHY is added: PHY_MODE_BASIC.
This new kind of PHY represents a basic PHY offering a basic status This
status contains a link state indication.
With the new API, a link state indication can be retrieve using
phy_get_status() and link state changes can be notified.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/phy/phy-core.c        | 88 ++++++++++++++++++++++++++++++++++
 include/linux/phy/phy-basic.h | 27 +++++++++++
 include/linux/phy/phy.h       | 89 ++++++++++++++++++++++++++++++++++-
 3 files changed, 203 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/phy/phy-basic.h

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 9951efc03eaa..c7b568b99dce 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -551,6 +551,94 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 }
 EXPORT_SYMBOL_GPL(phy_validate);
 
+/**
+ * phy_get_status() - Gets the phy status
+ * @phy: the phy returned by phy_get()
+ * @status: the status to retrieve
+ *
+ * Used to get the PHY status. phy_init() must have been called
+ * on the phy. The status will be retrieved from the current phy mode,
+ * that can be changed using phy_set_mode().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_get_status(struct phy *phy, union phy_status *status)
+{
+	int ret;
+
+	if (!phy)
+		return -EINVAL;
+
+	if (!phy->ops->get_status)
+		return -EOPNOTSUPP;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->get_status(phy, status);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_get_status);
+
+/**
+ * phy_atomic_notifier_register() - Registers an atomic notifier
+ * @phy: the phy returned by phy_get()
+ * @nb: the notifier block to register
+ *
+ * Used to register a notifier block on PHY events. phy_init() must have
+ * been called on the phy.
+ * The notifier function given in the notifier_block must not sleep.
+ * The available PHY events are present in enum phy_events
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_atomic_notifier_register(struct phy *phy, struct notifier_block *nb)
+{
+	int ret;
+
+	if (!phy)
+		return -EINVAL;
+
+	if (!phy->ops->atomic_notifier_register ||
+	    !phy->ops->atomic_notifier_unregister)
+		return -EOPNOTSUPP;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->atomic_notifier_register(phy, nb);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_atomic_notifier_register);
+
+/**
+ * phy_atomic_notifier_unregister() - Unregisters an atomic notifier
+ * @phy: the phy returned by phy_get()
+ * @nb: the notifier block to unregister
+ *
+ * Used to unregister a notifier block. phy_init() must have
+ * been called on the phy.
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_atomic_notifier_unregister(struct phy *phy, struct notifier_block *nb)
+{
+	int ret;
+
+	if (!phy)
+		return -EINVAL;
+
+	if (!phy->ops->atomic_notifier_unregister)
+		return -EOPNOTSUPP;
+
+	mutex_lock(&phy->mutex);
+	ret = phy->ops->atomic_notifier_unregister(phy, nb);
+	mutex_unlock(&phy->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(phy_atomic_notifier_unregister);
+
 /**
  * _of_phy_get() - lookup and obtain a reference to a phy by phandle
  * @np: device_node for which to get the phy
diff --git a/include/linux/phy/phy-basic.h b/include/linux/phy/phy-basic.h
new file mode 100644
index 000000000000..95668c610c78
--- /dev/null
+++ b/include/linux/phy/phy-basic.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2023 CS GROUP France
+ *
+ * Author: Herve Codina <herve.codina@bootlin.com>
+ */
+
+#ifndef __PHY_BASIC_H_
+#define __PHY_BASIC_H_
+
+#include <linux/types.h>
+
+/**
+ * struct phy_status_basic - Basic PHY status
+ *
+ * This structure is used to represent the status of a Basic phy.
+ */
+struct phy_status_basic {
+	/**
+	 * @link_state:
+	 *
+	 * Link state. true, the link is on, false, the link is off.
+	 */
+	bool link_is_on;
+};
+
+#endif /* __PHY_DP_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 3a570bc59fc7..40370d41012b 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -16,6 +16,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 
+#include <linux/phy/phy-basic.h>
 #include <linux/phy/phy-dp.h>
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
@@ -42,7 +43,8 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_BASIC,
 };
 
 enum phy_media {
@@ -67,6 +69,22 @@ union phy_configure_opts {
 	struct phy_configure_opts_lvds		lvds;
 };
 
+/**
+ * union phy_status - Opaque generic phy status
+ *
+ * @basic:	Status availbale phys supporting the Basic phy mode.
+ */
+union phy_status {
+	struct phy_status_basic		basic;
+};
+
+/**
+ * phy_event - event available for notification
+ */
+enum phy_event {
+	PHY_EVENT_STATUS,	/* Event notified on phy_status changes */
+};
+
 /**
  * struct phy_ops - set of function pointers for performing phy operations
  * @init: operation to be performed for initializing phy
@@ -120,6 +138,45 @@ struct phy_ops {
 	 */
 	int	(*validate)(struct phy *phy, enum phy_mode mode, int submode,
 			    union phy_configure_opts *opts);
+
+	/**
+	 * @get_status:
+	 *
+	 * Optional.
+	 *
+	 * Used to get the PHY status. phy_init() must have
+	 * been called on the phy.
+	 *
+	 * Returns: 0 if successful, an negative error code otherwise
+	 */
+	int	(*get_status)(struct phy *phy, union phy_status *status);
+
+	/**
+	 * @atomic_notifier_register:
+	 *
+	 * Optional.
+	 *
+	 * Used to register a notifier block on PHY events. phy_init() must have
+	 * been called on the phy.
+	 * The notifier function given in the notifier_block must not sleep.
+	 * The available PHY events are present in enum phy_events
+	 *
+	 * Returns: 0 if successful, an negative error code otherwise
+	 */
+	int	(*atomic_notifier_register)(struct phy *phy, struct notifier_block *nb);
+
+	/**
+	 * @atomic_notifier_unregister:
+	 *
+	 * Mandatoty if @atomic_notifier_register is set.
+	 *
+	 * Used to unregister a notifier block on PHY events. phy_init() must have
+	 * been called on the phy.
+	 *
+	 * Returns: 0 if successful, an negative error code otherwise
+	 */
+	int	(*atomic_notifier_unregister)(struct phy *phy, struct notifier_block *nb);
+
 	int	(*reset)(struct phy *phy);
 	int	(*calibrate)(struct phy *phy);
 	void	(*release)(struct phy *phy);
@@ -234,6 +291,10 @@ int phy_set_speed(struct phy *phy, int speed);
 int phy_configure(struct phy *phy, union phy_configure_opts *opts);
 int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 		 union phy_configure_opts *opts);
+int phy_get_status(struct phy *phy, union phy_status *status);
+int phy_atomic_notifier_register(struct phy *phy, struct notifier_block *nb);
+int phy_atomic_notifier_unregister(struct phy *phy, struct notifier_block *nb);
+
 
 static inline enum phy_mode phy_get_mode(struct phy *phy)
 {
@@ -412,6 +473,32 @@ static inline int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 	return -ENOSYS;
 }
 
+static inline int phy_get_status(struct phy *phy, union phy_status *status)
+{
+	if (!phy)
+		return 0;
+
+	return -ENOSYS;
+}
+
+static inline int phy_atomic_notifier_register(struct phy *phy,
+					       struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+
+	return -ENOSYS;
+}
+
+static inline int phy_atomic_notifier_unregister(struct phy *phy,
+						 struct notifier_block *nb)
+{
+	if (!phy)
+		return 0;
+
+	return -ENOSYS;
+}
+
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return -ENOSYS;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
