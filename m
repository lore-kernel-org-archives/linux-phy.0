Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C81A1C48BC4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 15:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4L/UiEBnFxqoxYIcS1OKsvdOAfqPcwkv9L8oR0mMTU=; b=DfCI+NsoBaB5OB
	Xq9mb2YWVbl3peP6gGcSC02Siq9BHSEngvIXTlkXgbHRCR1Xqwz1WIn5FmbAps3GiHCIcUlDMwqxk
	9s7md/u5JewsHjo+q9miqV73fCaWhQBWm3dThYdGJSkQNwy5ydg2+KzyWHWiYyyO6oq3PO1GgxLHU
	CDLMPW/4+iOBsKmyfnlRFqXGcsJbaC8shi9r1QhDEv6usAADYjgAU6lP7+4OrYLutxzQBgiIdurb2
	7H99EHby7FwjRfoHilfgnQsj5h+4nD7BlLk8K3sv+bdyte2mKFqLrnrlJun3CKp+S4bRnih3/eLDe
	tClyeihz+M8DH15kwKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDe-00000005sjA-3pbV;
	Sat, 17 Feb 2024 15:03:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbMDY-00000005sfj-3hHs
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 15:03:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF901611BE;
	Sat, 17 Feb 2024 15:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12F4AC43390;
	Sat, 17 Feb 2024 15:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708182183;
	bh=UrO8iSOZ0DaThfpdYnA1yNkyhVkUZHq2oInX+0bHaNU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NaZiHiRTPIbfPSO9V0T+nG2YbfYd4RoH8ksqJQQ1dehfcWd2IBpfDfHByIOYR552k
	 nFE6hEIT8qeuW8E1DS42blBrIgHYehI0FYTJGCYTibnUeVmyZJiOsvTtME4KgkAEe1
	 2DZMp8TbZu2Mg7JL+VzvP8/SC4bf+EeS4GljpXWaWwPxOIFZ7DYN71gVu5IEEVjh+w
	 DzXELAT5AkdX51DLJnuyzx5+kHBA06WxIT15EspnGNlrpCt7XfgVUA4CP7eTv9tjWo
	 yjnjggK8Df0jykaNcY2Dpx0NYTW6TsHn3D25leWURtAkgUtuWIOc5QR84HO7i0InVS
	 Lg+4YkPkvcdxQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1rbMDW-000000001Vq-2fLy;
	Sat, 17 Feb 2024 16:03:02 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	freedreno@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/6] drm/bridge: aux-hpd: separate allocation and registration
Date: Sat, 17 Feb 2024 16:02:24 +0100
Message-ID: <20240217150228.5788-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_070305_085433_733BD4BE 
X-CRM114-Status: GOOD (  15.25  )
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

Combining allocation and registration is an anti-pattern that should be
avoided. Add two new functions for allocating and registering an dp-hpd
bridge with a proper 'devm' prefix so that it is clear that these are
device managed interfaces.

	devm_drm_dp_hpd_bridge_alloc()
	devm_drm_dp_hpd_bridge_add()

The new interface will be used to fix a use-after-free bug in the
Qualcomm PMIC GLINK driver and may prevent similar issues from being
introduced elsewhere.

The existing drm_dp_hpd_bridge_register() is reimplemented using the
above and left in place for now.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/gpu/drm/bridge/aux-hpd-bridge.c | 67 +++++++++++++++++++------
 include/drm/bridge/aux-bridge.h         | 15 ++++++
 2 files changed, 67 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
index 9e71daf95bde..6886db2d9e00 100644
--- a/drivers/gpu/drm/bridge/aux-hpd-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -30,16 +30,13 @@ static void drm_aux_hpd_bridge_release(struct device *dev)
 	kfree(adev);
 }
 
-static void drm_aux_hpd_bridge_unregister_adev(void *_adev)
+static void drm_aux_hpd_bridge_free_adev(void *_adev)
 {
-	struct auxiliary_device *adev = _adev;
-
-	auxiliary_device_delete(adev);
-	auxiliary_device_uninit(adev);
+	auxiliary_device_uninit(_adev);
 }
 
 /**
- * drm_dp_hpd_bridge_register - Create a simple HPD DisplayPort bridge
+ * devm_drm_dp_hpd_bridge_alloc - allocate a HPD DisplayPort bridge
  * @parent: device instance providing this bridge
  * @np: device node pointer corresponding to this bridge instance
  *
@@ -47,11 +44,9 @@ static void drm_aux_hpd_bridge_unregister_adev(void *_adev)
  * DRM_MODE_CONNECTOR_DisplayPort, which terminates the bridge chain and is
  * able to send the HPD events.
  *
- * Return: device instance that will handle created bridge or an error code
- * encoded into the pointer.
+ * Return: bridge auxiliary device pointer or an error pointer
  */
-struct device *drm_dp_hpd_bridge_register(struct device *parent,
-					  struct device_node *np)
+struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np)
 {
 	struct auxiliary_device *adev;
 	int ret;
@@ -82,13 +77,55 @@ struct device *drm_dp_hpd_bridge_register(struct device *parent,
 		return ERR_PTR(ret);
 	}
 
-	ret = auxiliary_device_add(adev);
-	if (ret) {
-		auxiliary_device_uninit(adev);
+	ret = devm_add_action_or_reset(parent, drm_aux_hpd_bridge_free_adev, adev);
+	if (ret)
 		return ERR_PTR(ret);
-	}
 
-	ret = devm_add_action_or_reset(parent, drm_aux_hpd_bridge_unregister_adev, adev);
+	return adev;
+}
+EXPORT_SYMBOL_GPL(devm_drm_dp_hpd_bridge_alloc);
+
+static void drm_aux_hpd_bridge_del_adev(void *_adev)
+{
+	auxiliary_device_delete(_adev);
+}
+
+/**
+ * devm_drm_dp_hpd_bridge_add - register a HDP DisplayPort bridge
+ * @dev: struct device to tie registration lifetime to
+ * @adev: bridge auxiliary device to be registered
+ *
+ * Returns: zero on success or a negative errno
+ */
+int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev)
+{
+	int ret;
+
+	ret = auxiliary_device_add(adev);
+	if (ret)
+		return ret;
+
+	return devm_add_action_or_reset(dev, drm_aux_hpd_bridge_del_adev, adev);
+}
+EXPORT_SYMBOL_GPL(devm_drm_dp_hpd_bridge_add);
+
+/**
+ * drm_dp_hpd_bridge_register - allocate and register a HDP DisplayPort bridge
+ * @parent: device instance providing this bridge
+ * @np: device node pointer corresponding to this bridge instance
+ *
+ * Return: device instance that will handle created bridge or an error pointer
+ */
+struct device *drm_dp_hpd_bridge_register(struct device *parent, struct device_node *np)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = devm_drm_dp_hpd_bridge_alloc(parent, np);
+	if (IS_ERR(adev))
+		return ERR_CAST(adev);
+
+	ret = devm_drm_dp_hpd_bridge_add(parent, adev);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index c4c423e97f06..4453906105ca 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -9,6 +9,8 @@
 
 #include <drm/drm_connector.h>
 
+struct auxiliary_device;
+
 #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
 int drm_aux_bridge_register(struct device *parent);
 #else
@@ -19,10 +21,23 @@ static inline int drm_aux_bridge_register(struct device *parent)
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
+struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent, struct device_node *np);
+int devm_drm_dp_hpd_bridge_add(struct device *dev, struct auxiliary_device *adev);
 struct device *drm_dp_hpd_bridge_register(struct device *parent,
 					  struct device_node *np);
 void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
 #else
+static inline struct auxiliary_device *devm_drm_dp_hpd_bridge_alloc(struct device *parent,
+								    struct device_node *np)
+{
+	return NULL;
+}
+
+static inline int devm_drm_dp_hpd_bridge_add(struct auxiliary_device *adev)
+{
+	return 0;
+}
+
 static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
 							struct device_node *np)
 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
