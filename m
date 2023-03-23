Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E68C7619A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnKAvRxZlrve7tCoqqLgsSKBdx0nQvDtNfEJQlELiW0=; b=NgqTEDASs0j1o/
	VSSrU3AElmTTDHFOsWA8AOH8dlMXMVOADPlMGICMrDXz1QBTPLuuky+Knacr+eeXsDlXgN8grf/q/
	CfEhKjnhzo+GzLrnaJPwsN5kHTKcpM2I5wc6a6Qxk2z+4zJkGHHtx05XmQGzPpo9sTb766oLMhB26
	zgAol034RhXYR/P+Nmzc9FIauNV6HtHfWiB0v2xmFQ/PLQ6KYtxKgNZ+t35840bYrO36ZnCmNGKcg
	PWSVkQV82/ea21AfzuOCTncRWvenm9to73oFq2e1J3lSnFGQPAlqtcsAl1XMOvib7zyOaJLzkfUAq
	wsV8hgpBEcpPRt8tWXGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEz-001aLV-1N;
	Thu, 23 Mar 2023 10:32:17 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEw-001aJ3-10
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 10:32:16 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 7ED9920018;
	Thu, 23 Mar 2023 10:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679567533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZXghyFKbkBEH9/EKzDk+5w9Pp/aMwqnL/aCTRT1Laoo=;
	b=E6OQP+L/ND7GZdhdmMYoIfxyMK2SDfzBBi5Fr2H9jRBWu2YblAWfptMgnUjRpTqQJcwWTZ
	rrbzT8mEpeGdGKmFpz/nynaeqhRWwku0sk/RIrQb+Xt0ODbJmEh3Bo6e68fSGjY27/f83s
	zUB1xxEwYN3rF1eXgesuUHobBUNM+pDgWyPJl7eu2T4/+a7qot0+tuCO3lma/QJavKmQ6Q
	tsPq8mRFybTI8WQX7xAxuOiwvIt9DohSVS+mVXnPmTDL+z3d2BEXRJB/gG+zKtUCSV4XnY
	vwe7OrT8uGSoc43tI8+O4Enk6zIGcNJ+HmXQmbPbaznATUhXTyeii3KP2eoiMQ==
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
Subject: [RFC PATCH 3/4] net: wan: fsl_qmc_hdlc: Add PHY support
Date: Thu, 23 Mar 2023 11:31:53 +0100
Message-Id: <20230323103154.264546-4-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230323103154.264546-1-herve.codina@bootlin.com>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_033214_611515_4EA73EF4 
X-CRM114-Status: GOOD (  19.27  )
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

Add PHY support in the fsl_qmc_hdlc driver in order to be able to
signal carrier changes to the network stack based on the PHY status.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/net/wan/fsl_qmc_hdlc.c | 152 ++++++++++++++++++++++++++++++++-
 1 file changed, 151 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wan/fsl_qmc_hdlc.c b/drivers/net/wan/fsl_qmc_hdlc.c
index f12d00c78497..edea0f678ffe 100644
--- a/drivers/net/wan/fsl_qmc_hdlc.c
+++ b/drivers/net/wan/fsl_qmc_hdlc.c
@@ -12,6 +12,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
+#include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <soc/fsl/qe/qmc.h>
@@ -27,6 +28,11 @@ struct qmc_hdlc {
 	struct device *dev;
 	struct qmc_chan *qmc_chan;
 	struct net_device *netdev;
+	struct phy *phy;
+	spinlock_t carrier_lock; /* Protect carrier detection */
+	struct notifier_block nb;
+	bool is_phy_notifier;
+	struct delayed_work phy_poll_task;
 	bool is_crc32;
 	spinlock_t tx_lock; /* Protect tx descriptors */
 	struct qmc_hdlc_desc tx_descs[8];
@@ -39,6 +45,126 @@ static inline struct qmc_hdlc *netdev_to_qmc_hdlc(struct net_device *netdev)
 	return (struct qmc_hdlc *)dev_to_hdlc(netdev)->priv;
 }
 
+static int qmc_hdlc_phy_set_carrier(struct qmc_hdlc *qmc_hdlc)
+{
+	union phy_status phy_status;
+	unsigned long flags;
+	int ret;
+
+	if (!qmc_hdlc->phy)
+		return 0;
+
+	spin_lock_irqsave(&qmc_hdlc->carrier_lock, flags);
+
+	ret = phy_get_status(qmc_hdlc->phy, &phy_status);
+	if (ret) {
+		dev_err(qmc_hdlc->dev, "get PHY status failed (%d)\n", ret);
+		goto end;
+	}
+	if (phy_status.basic.link_is_on)
+		netif_carrier_on(qmc_hdlc->netdev);
+	else
+		netif_carrier_off(qmc_hdlc->netdev);
+
+end:
+	spin_unlock_irqrestore(&qmc_hdlc->carrier_lock, flags);
+	return ret;
+}
+
+static int qmc_hdlc_phy_notifier(struct notifier_block *nb, unsigned long action,
+				 void *data)
+{
+	struct qmc_hdlc *qmc_hdlc = container_of(nb, struct qmc_hdlc, nb);
+	int ret;
+
+	if (action != PHY_EVENT_STATUS)
+		return NOTIFY_DONE;
+
+	ret = qmc_hdlc_phy_set_carrier(qmc_hdlc);
+	return ret ? NOTIFY_DONE : NOTIFY_OK;
+}
+
+static void qmc_hdlc_phy_poll_task(struct work_struct *work)
+{
+	struct qmc_hdlc *qmc_hdlc = container_of(work, struct qmc_hdlc, phy_poll_task.work);
+	int ret;
+
+	ret = qmc_hdlc_phy_set_carrier(qmc_hdlc);
+	if (ret) {
+		/* Should not happened but ...
+		 * On error, force carrier on and stop scheduling this task
+		 */
+		dev_err(qmc_hdlc->dev, "set carrier failed (%d) -> force carrier on\n",
+			ret);
+		netif_carrier_on(qmc_hdlc->netdev);
+		return;
+	}
+
+	/* Re-schedule task in 1 sec */
+	queue_delayed_work(system_power_efficient_wq, &qmc_hdlc->phy_poll_task, 1 * HZ);
+}
+
+static int qmc_hdlc_phy_init(struct qmc_hdlc *qmc_hdlc)
+{
+	union phy_status phy_status;
+	int ret;
+
+	if (!qmc_hdlc->phy)
+		return 0;
+
+	ret = phy_init(qmc_hdlc->phy);
+	if (ret) {
+		dev_err(qmc_hdlc->dev, "PHY init failed (%d)\n", ret);
+		return ret;
+	}
+
+	ret = phy_power_on(qmc_hdlc->phy);
+	if (ret) {
+		dev_err(qmc_hdlc->dev, "PHY power-on failed (%d)\n", ret);
+		goto phy_exit;
+	}
+
+	/* Be sure that get_status is supported */
+	ret = phy_get_status(qmc_hdlc->phy, &phy_status);
+	if (ret) {
+		dev_err(qmc_hdlc->dev, "get PHY status failed (%d)\n", ret);
+		goto phy_power_off;
+	}
+
+	qmc_hdlc->nb.notifier_call = qmc_hdlc_phy_notifier;
+	ret = phy_atomic_notifier_register(qmc_hdlc->phy, &qmc_hdlc->nb);
+	if (ret) {
+		qmc_hdlc->is_phy_notifier = false;
+
+		/* Cannot register a PHY notifier -> Use polling */
+		INIT_DELAYED_WORK(&qmc_hdlc->phy_poll_task, qmc_hdlc_phy_poll_task);
+		queue_delayed_work(system_power_efficient_wq, &qmc_hdlc->phy_poll_task, 1 * HZ);
+	} else {
+		qmc_hdlc->is_phy_notifier = true;
+	}
+
+	return 0;
+
+phy_power_off:
+	phy_power_off(qmc_hdlc->phy);
+phy_exit:
+	phy_exit(qmc_hdlc->phy);
+	return ret;
+}
+
+static void qmc_hdlc_phy_exit(struct qmc_hdlc *qmc_hdlc)
+{
+	if (!qmc_hdlc->phy)
+		return;
+
+	if (qmc_hdlc->is_phy_notifier)
+		phy_atomic_notifier_unregister(qmc_hdlc->phy, &qmc_hdlc->nb);
+	else
+		cancel_delayed_work_sync(&qmc_hdlc->phy_poll_task);
+	phy_power_off(qmc_hdlc->phy);
+	phy_exit(qmc_hdlc->phy);
+}
+
 static int qmc_hdlc_recv_queue(struct qmc_hdlc *qmc_hdlc, struct qmc_hdlc_desc *desc, size_t size);
 
 static void qmc_hcld_recv_complete(void *context, size_t length)
@@ -192,10 +318,17 @@ static int qmc_hdlc_open(struct net_device *netdev)
 	int ret;
 	int i;
 
-	ret = hdlc_open(netdev);
+	ret = qmc_hdlc_phy_init(qmc_hdlc);
 	if (ret)
 		return ret;
 
+	ret = hdlc_open(netdev);
+	if (ret)
+		goto phy_exit;
+
+	/* Update carrier */
+	qmc_hdlc_phy_set_carrier(qmc_hdlc);
+
 	chan_param.mode = QMC_HDLC;
 	/* HDLC_MAX_MRU + 4 for the CRC
 	 * HDLC_MAX_MRU + 4 + 8 for the CRC and some extraspace needed by the QMC
@@ -245,6 +378,8 @@ static int qmc_hdlc_open(struct net_device *netdev)
 	}
 hdlc_close:
 	hdlc_close(netdev);
+phy_exit:
+	qmc_hdlc_phy_exit(qmc_hdlc);
 	return ret;
 }
 
@@ -280,6 +415,7 @@ static int qmc_hdlc_close(struct net_device *netdev)
 	}
 
 	hdlc_close(netdev);
+	qmc_hdlc_phy_exit(qmc_hdlc);
 	return 0;
 }
 
@@ -318,6 +454,7 @@ static int qmc_hdlc_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct qmc_hdlc *qmc_hdlc;
 	struct qmc_chan_info info;
+	enum phy_mode phy_mode;
 	hdlc_device *hdlc;
 	int ret;
 
@@ -327,6 +464,7 @@ static int qmc_hdlc_probe(struct platform_device *pdev)
 
 	qmc_hdlc->dev = &pdev->dev;
 	spin_lock_init(&qmc_hdlc->tx_lock);
+	spin_lock_init(&qmc_hdlc->carrier_lock);
 
 	qmc_hdlc->qmc_chan = devm_qmc_chan_get_byphandle(qmc_hdlc->dev, np, "fsl,qmc-chan");
 	if (IS_ERR(qmc_hdlc->qmc_chan)) {
@@ -348,6 +486,18 @@ static int qmc_hdlc_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	qmc_hdlc->phy = devm_of_phy_optional_get(qmc_hdlc->dev, np, NULL);
+	if (IS_ERR(qmc_hdlc->phy))
+		return PTR_ERR(qmc_hdlc->phy);
+	if (qmc_hdlc->phy) {
+		phy_mode = phy_get_mode(qmc_hdlc->phy);
+		if (phy_mode != PHY_MODE_BASIC) {
+			dev_err(qmc_hdlc->dev, "Unsupported PHY mode (%d)\n",
+				phy_mode);
+			return -EINVAL;
+		}
+	}
+
 	qmc_hdlc->netdev = alloc_hdlcdev(qmc_hdlc);
 	if (!qmc_hdlc->netdev) {
 		dev_err(qmc_hdlc->dev, "failed to alloc hdlc dev\n");
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
