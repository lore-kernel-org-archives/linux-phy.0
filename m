Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA6C7C35264
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPLNCezagkXpuaZlV0sL/s07A027Z+aY9291i1Z58cM=; b=Y/LFFuA/wA9gJQ
	h5pWEqqgLZ/VFMlbP8uVRvwibsD9q/hWf8FIUyUDDBqyNInGxg6IH4Z2wD0N2CUjeJEBTDz4/NYuJ
	NPa+FRyQg6nuX6KXWe9LMcCrg5ioCWp3ubM5kpSR4zsAiqHpDsw6zod0jvcWJkO6wp6+n92JOZkPU
	eTw25OSwShhdqe4qCGaw7KuLTf1Pg/KftuUt9r3WBJKgC4ztflWTwuEsoh60XJd7PHiAfI8HXwJWV
	JmYSO5rw+1N0qgtVK6cvXJFb2wjL9HgJUKd3+ZcRArwsZIPB1eo2pNS14fMPwZbmT0VhHeCPEX3Rh
	JOvNbBDRGVNsKDe5ywhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uQ-000DDv-6Z; Tue, 28 Dec 2021 05:20:26 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uN-000DBD-Ce
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:25 +0000
Received: by mail-oi1-x236.google.com with SMTP id be32so28344392oib.11
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RdZ0UWK+juD5hIJv/N6wqF64M3MWs7cXhgw6dZ2me2c=;
 b=gecW0ToB+ezNfgZBtqEGM4NktSYAlSPUX12ativA3a1GA5DK5dSZfmjRlt33U4Aa6a
 WEhhU5CLblKS1+CA7ZERcRbWGR8uuq0J9MdUvdmPk8lDjaX7Tr8riaDJzT8gbP619IM2
 oqOORkabcQNMmloWNFDu+Opw0FwmA5CfNnTMhR9Juk4CRYDoRUDgv/mBBdd/M6vIf6cA
 vu+RbHLcaOtC33vXw3Z5D/vbN4wdtsgO1apBSbGgl74CtB9WbIPBxTStyhXfRl7roQhl
 IlDvaII5hZedcWXc0C2EAN/880yGAHj4uDi37gik9ud5QNNpPNsigSK/Gay5n2uKlaDv
 GqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RdZ0UWK+juD5hIJv/N6wqF64M3MWs7cXhgw6dZ2me2c=;
 b=xJMe5Ml2DdAJ/DXp8pXrWVaPFchbWpLZhAv9Lxdx24eVdnmifrt24p87Go/mK0udPj
 rwRWdWH1Rwb4W8YlhMOLI+dcVwd7WkynoVZQOcb6XSQ+dUumJhxQOSdFbL+a69H5wgX9
 mqEKNrtjGNeRzFA3vGFVsIsFiQR7Ct//xUF/cgD0Y0XJc0h7R4rEqB5nNhsCMDgCDE/B
 mxBsDHYMx5tM7no0BIeC4FN9dCLfRehin2k/wFXisA1wTfxYLebFuJEfYqgxLQOAz959
 BzH+VRIocky0O9gja5zNgyTTCScBd5y2b/te1/oHSpWbNilL7cg45wE7ySYOEm0vP+rB
 LTyg==
X-Gm-Message-State: AOAM532/lPqI0qYN/mR0AR0uemUY0ml9dPhg7rCGJT5McDFZ3Vwvlyae
 tQIVuDPR8o5gjMDnTJcJj+fiRA==
X-Google-Smtp-Source: ABdhPJxim6zcGg4oNp9c2nvgeHmzM4DmH7CrApzhOpfm+rBwgGbY1Q7Du7weKKBE0bh5D7NhZ28a8w==
X-Received: by 2002:aca:6c5:: with SMTP id 188mr15108644oig.117.1640668821679; 
 Mon, 27 Dec 2021 21:20:21 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:21 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 6/8] typec: mux: Allow multiple mux_devs per mux
Date: Mon, 27 Dec 2021 21:21:14 -0800
Message-Id: <20211228052116.1748443-7-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212023_476620_2A06C51B 
X-CRM114-Status: GOOD (  16.79  )
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

In the Qualcomm platforms the USB/DP PHY handles muxing and orientation
switching of the SuperSpeed lines, but the SBU lines needs to be
connected and switched by external (to the SoC) hardware.

It's therefor necessary to be able to have the TypeC controller operate
multiple TypeC muxes and switches. Use the newly introduced indirection
object to handle this, to avoid having to taint the TypeC controllers
with knowledge about the downstream hardware configuration.

The max number of devs per indirection is set to 3, based on the number
of ports defined in the usb-c-connector binding.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/usb/typec/mux.c | 124 +++++++++++++++++++++++++++++++---------
 1 file changed, 98 insertions(+), 26 deletions(-)

diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
index d0b42c297aca..adf3681cf22d 100644
--- a/drivers/usb/typec/mux.c
+++ b/drivers/usb/typec/mux.c
@@ -17,8 +17,11 @@
 #include "class.h"
 #include "mux.h"
 
+#define TYPEC_MUX_MAX_DEVS	3
+
 struct typec_switch {
-	struct typec_switch_dev *sw_dev;
+	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
+	unsigned int num_sw_devs;
 };
 
 static int switch_fwnode_match(struct device *dev, const void *fwnode)
@@ -67,25 +70,48 @@ static void *typec_switch_match(struct fwnode_handle *fwnode, const char *id,
  */
 struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
 {
-	struct typec_switch_dev *sw_dev;
+	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
 	struct typec_switch *sw;
+	int count;
+	int err;
+	int i;
 
 	sw = kzalloc(sizeof(*sw), GFP_KERNEL);
 	if (!sw)
 		return ERR_PTR(-ENOMEM);
 
-	sw_dev = fwnode_connection_find_match(fwnode, "orientation-switch", NULL,
-					      typec_switch_match);
-	if (IS_ERR_OR_NULL(sw_dev)) {
+	count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
+					       typec_switch_match,
+					       (void **)sw_devs,
+					       ARRAY_SIZE(sw_devs));
+	if (count <= 0) {
 		kfree(sw);
-		return ERR_CAST(sw_dev);
+		return NULL;
 	}
 
-	WARN_ON(!try_module_get(sw_dev->dev.parent->driver->owner));
+	for (i = 0; i < count; i++) {
+		if (IS_ERR(sw_devs[i])) {
+			err = PTR_ERR(sw_devs[i]);
+			goto put_sw_devs;
+		}
+	}
+
+	for (i = 0; i < count; i++) {
+		WARN_ON(!try_module_get(sw_devs[i]->dev.parent->driver->owner));
+		sw->sw_devs[i] = sw_devs[i];
+	}
 
-	sw->sw_dev = sw_dev;
+	sw->num_sw_devs = count;
 
 	return sw;
+
+put_sw_devs:
+	for (i = 0; i < count; i++) {
+		if (!IS_ERR(sw_devs[i]))
+			put_device(&sw_devs[i]->dev);
+	}
+
+	return ERR_PTR(err);
 }
 EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
 
@@ -98,14 +124,17 @@ EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
 void typec_switch_put(struct typec_switch *sw)
 {
 	struct typec_switch_dev *sw_dev;
+	unsigned int i;
 
 	if (IS_ERR_OR_NULL(sw))
 		return;
 
-	sw_dev = sw->sw_dev;
+	for (i = 0; i < sw->num_sw_devs; i++) {
+		sw_dev = sw->sw_devs[i];
 
-	module_put(sw_dev->dev.parent->driver->owner);
-	put_device(&sw_dev->dev);
+		module_put(sw_dev->dev.parent->driver->owner);
+		put_device(&sw_dev->dev);
+	}
 	kfree(sw);
 }
 EXPORT_SYMBOL_GPL(typec_switch_put);
@@ -170,13 +199,21 @@ int typec_switch_set(struct typec_switch *sw,
 		     enum typec_orientation orientation)
 {
 	struct typec_switch_dev *sw_dev;
+	unsigned int i;
+	int ret;
 
 	if (IS_ERR_OR_NULL(sw))
 		return 0;
 
-	sw_dev = sw->sw_dev;
+	for (i = 0; i < sw->num_sw_devs; i++) {
+		sw_dev = sw->sw_devs[i];
+
+		ret = sw_dev->set(sw_dev, orientation);
+		if (ret)
+			return ret;
+	}
 
-	return sw_dev->set(sw_dev, orientation);
+	return 0;
 }
 EXPORT_SYMBOL_GPL(typec_switch_set);
 
@@ -208,7 +245,8 @@ EXPORT_SYMBOL_GPL(typec_switch_get_drvdata);
 /* ------------------------------------------------------------------------- */
 
 struct typec_mux {
-	struct typec_mux_dev *mux_dev;
+	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
+	unsigned int num_mux_devs;
 };
 
 static int mux_fwnode_match(struct device *dev, const void *fwnode)
@@ -291,25 +329,48 @@ static void *typec_mux_match(struct fwnode_handle *fwnode, const char *id,
 struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode,
 				       const struct typec_altmode_desc *desc)
 {
-	struct typec_mux_dev *mux_dev;
+	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
 	struct typec_mux *mux;
+	int count;
+	int err;
+	int i;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
 		return ERR_PTR(-ENOMEM);
 
-	mux_dev = fwnode_connection_find_match(fwnode, "mode-switch", (void *)desc,
-					       typec_mux_match);
-	if (IS_ERR_OR_NULL(mux_dev)) {
+	count = fwnode_connection_find_matches(fwnode, "mode-switch",
+					       (void *)desc, typec_mux_match,
+					       (void **)mux_devs,
+					       ARRAY_SIZE(mux_devs));
+	if (count <= 0) {
 		kfree(mux);
-		return ERR_CAST(mux_dev);
+		return NULL;
 	}
 
-	WARN_ON(!try_module_get(mux_dev->dev.parent->driver->owner));
+	for (i = 0; i < count; i++) {
+		if (IS_ERR(mux_devs[i])) {
+			err = PTR_ERR(mux_devs[i]);
+			goto put_mux_devs;
+		}
+	}
+
+	for (i = 0; i < count; i++) {
+		WARN_ON(!try_module_get(mux_devs[i]->dev.parent->driver->owner));
+		mux->mux_devs[i] = mux_devs[i];
+	}
 
-	mux->mux_dev = mux_dev;
+	mux->num_mux_devs = count;
 
 	return mux;
+
+put_mux_devs:
+	for (i = 0; i < count; i++) {
+		if (!IS_ERR(mux_devs[i]))
+			put_device(&mux_devs[i]->dev);
+	}
+
+	return ERR_PTR(err);
 }
 EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
 
@@ -322,13 +383,16 @@ EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
 void typec_mux_put(struct typec_mux *mux)
 {
 	struct typec_mux_dev *mux_dev;
+	unsigned int i;
 
 	if (IS_ERR_OR_NULL(mux))
 		return;
 
-	mux_dev = mux->mux_dev;
-	module_put(mux_dev->dev.parent->driver->owner);
-	put_device(&mux_dev->dev);
+	for (i = 0; i < mux->num_mux_devs; i++) {
+		mux_dev = mux->mux_devs[i];
+		module_put(mux_dev->dev.parent->driver->owner);
+		put_device(&mux_dev->dev);
+	}
 	kfree(mux);
 }
 EXPORT_SYMBOL_GPL(typec_mux_put);
@@ -336,13 +400,21 @@ EXPORT_SYMBOL_GPL(typec_mux_put);
 int typec_mux_set(struct typec_mux *mux, struct typec_mux_state *state)
 {
 	struct typec_mux_dev *mux_dev;
+	unsigned int i;
+	int ret;
 
 	if (IS_ERR_OR_NULL(mux))
 		return 0;
 
-	mux_dev = mux->mux_dev;
+	for (i = 0; i < mux->num_mux_devs; i++) {
+		mux_dev = mux->mux_devs[i];
+
+		ret = mux_dev->set(mux_dev, state);
+		if (ret)
+			return ret;
+	}
 
-	return mux_dev->set(mux_dev, state);
+	return 0;
 }
 EXPORT_SYMBOL_GPL(typec_mux_set);
 
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
