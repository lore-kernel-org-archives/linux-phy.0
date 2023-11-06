Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C2BAC4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/0H93mgwqrDgtECT/48b4d3b80Qtea8EGPYqw0Fs4o=; b=Kk9Z3i3ZNNfBZZ
	WVwKjy6l9tRyWYC73ecW5pk6VE6UbaAzdd7GwMA73iIGkfEW0YdFTNHvXUnuq64eG7Q8j79prDumt
	cRfm7zPgLRSl5x3zNgBugCXun/B27AY4NOMe/y7Jiw5NCjk6hA+zFrp1KKNnRAleq6NWQMBZq2m6s
	3Sj322LzxCQJNXAF9oP3AYanFVXUi1sA7r6GgaF5kbk5v7yBhwNjlgMY8+zDuev/63JkSPHPC9oXD
	saAT+j+67ob+iUNMZhIwKudHCikgY67CsNloVigt7IZfW0On8Rsud/Da6jjf6l3KX5ZODkDWuyunB
	k6fz/rpUufwobustDYPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxRT-00GL3y-0l;
	Mon, 06 Nov 2023 11:06:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzxRP-00GL1V-26
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:06:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8883F60EB0;
	Mon,  6 Nov 2023 11:06:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30902C433C9;
	Mon,  6 Nov 2023 11:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699268806;
	bh=q/xLTHFuLYcmp6NtzuTCC0cv7q+YbosYhXcrvfEUmDQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=peZFJ2Cx2PvFGctJiv0cWGJ08qUNymKNlkYLTLpkqoXiArTcIJNUYJI/EsGt4IR01
	 oVbC/gxtOuvLRFsV84BwdE0vMOvIStwpjxcap9A9CEZyXON5ey4A+g2lWQF7Xb7zt9
	 co1rbZNvoMLWQfunW+U5dM7fYiX7BsYsIIDllUtYP81863crCx+9kg2x/VHNBtNhsE
	 0BxKDuV10vrHoLHrMOv9PnB8Xjc7BX4UJzqExtfzKAHRB4S4anQEQDEtoY62wAHDbT
	 kI28FsWsByAt4gXXw0h7CJ6/cf35jLKQVe2e+SXU9ltrVNfd1tNWH5SOP6KIvH2Vqm
	 URkZ50dMEpVQw==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan+linaro@kernel.org>)
	id 1qzxS7-00085v-2e;
	Mon, 06 Nov 2023 12:07:31 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 3/3] Revert "usb: phy: add usb phy notify port status API"
Date: Mon,  6 Nov 2023 12:06:54 +0100
Message-ID: <20231106110654.31090-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106110654.31090-1-johan+linaro@kernel.org>
References: <20231106110654.31090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_030647_793456_542FAC0A 
X-CRM114-Status: GOOD (  13.38  )
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

This reverts commit a08799cf17c22375752abfad3b4a2b34b3acb287.

The recently added Realtek PHY drivers depend on the new port status
notification mechanism which was built on the deprecated USB PHY
implementation and devicetree binding.

Specifically, using these PHYs would require describing the very same
PHY using both the generic "phy" property and the deprecated "usb-phy"
property which is clearly wrong.

We should not be building new functionality on top of the legacy USB PHY
implementation even if it is currently stuck in some kind of
transitional limbo.

Revert the new notification interface which is broken by design.

Fixes: a08799cf17c2 ("usb: phy: add usb phy notify port status API")
Cc: stable@vger.kernel.org      # 6.6
Cc: Stanley Chang <stanley_chang@realtek.com>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/usb/core/hub.c  | 23 -----------------------
 include/linux/usb/phy.h | 13 -------------
 2 files changed, 36 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 0ff47eeffb49..dfc30cebd4c4 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -622,29 +622,6 @@ static int hub_ext_port_status(struct usb_hub *hub, int port1, int type,
 		ret = 0;
 	}
 	mutex_unlock(&hub->status_mutex);
-
-	/*
-	 * There is no need to lock status_mutex here, because status_mutex
-	 * protects hub->status, and the phy driver only checks the port
-	 * status without changing the status.
-	 */
-	if (!ret) {
-		struct usb_device *hdev = hub->hdev;
-
-		/*
-		 * Only roothub will be notified of port state changes,
-		 * since the USB PHY only cares about changes at the next
-		 * level.
-		 */
-		if (is_root_hub(hdev)) {
-			struct usb_hcd *hcd = bus_to_hcd(hdev->bus);
-
-			if (hcd->usb_phy)
-				usb_phy_notify_port_status(hcd->usb_phy,
-							   port1 - 1, *status, *change);
-		}
-	}
-
 	return ret;
 }
 
diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
index b513749582d7..e4de6bc1f69b 100644
--- a/include/linux/usb/phy.h
+++ b/include/linux/usb/phy.h
@@ -144,10 +144,6 @@ struct usb_phy {
 	 */
 	int	(*set_wakeup)(struct usb_phy *x, bool enabled);
 
-	/* notify phy port status change */
-	int	(*notify_port_status)(struct usb_phy *x, int port,
-				      u16 portstatus, u16 portchange);
-
 	/* notify phy connect status change */
 	int	(*notify_connect)(struct usb_phy *x,
 			enum usb_device_speed speed);
@@ -320,15 +316,6 @@ usb_phy_set_wakeup(struct usb_phy *x, bool enabled)
 		return 0;
 }
 
-static inline int
-usb_phy_notify_port_status(struct usb_phy *x, int port, u16 portstatus, u16 portchange)
-{
-	if (x && x->notify_port_status)
-		return x->notify_port_status(x, port, portstatus, portchange);
-	else
-		return 0;
-}
-
 static inline int
 usb_phy_notify_connect(struct usb_phy *x, enum usb_device_speed speed)
 {
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
