Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DE6DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 08:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqjvnNwYya097RlZUECLXpaXJ/mFbqBCmHS7xUJ0izM=; b=ra6pLoqMp7+0WB
	4efF08EyRbSnQbQ8qMzwGzdboo5AawcmN6nmAFB8PKyYkNyWCzaUaZT0X6rtZ4L/AKVi4vpdDSV6V
	7MUKN7zgo24+OH2jhIeX860voSii/qIV8fTbRzpBHAxKETbm9CK8f92MtF2CMA91nm2fGKrNKfk8p
	LfqGohQ6gD1M8MzAzkj48xz9v9F0v0dqANHlkV8+QOYO9qLR79k1Rp7mdaTUpL5GZSxKAwU1GZ1v4
	Va0p+84fBuXz2NUiCGg9PTrNXSO8z/2+VBFgoPFelt0j+ChuHK1+o5ZdtVsiiKZhtMrVNtFv/dhWc
	4dO/HRujUnI/dXnBdCGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpR2K-001FeJ-9w; Tue, 23 Nov 2021 08:20:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQv7-001D1R-T8
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 08:12:56 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CiV0018369;
 Tue, 23 Nov 2021 02:12:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637655164;
 bh=67aIcOkswqKyrdq+H++ZQwtZJ3cXkK9R7dfy3beKjOU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TMIKs8kbol1j5aZo0E3JOldXLmOnfnvWDiXxFJcvAEGbRzPQuM1AFsAqLeZP1mdAR
 1kwOmpAnEXIkOr1rPmPLwGrtw4HSYiJpBSrCSKegrp3z9dmR7fhCCMI8F7q6PUxUI5
 qQdeYkAhumGVZEhpDTpvxox1sS/Ut1+fCtouFpAQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AN8CijD017209
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Nov 2021 02:12:44 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 23
 Nov 2021 02:12:43 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 23 Nov 2021 02:12:43 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CNe1101399;
 Tue, 23 Nov 2021 02:12:39 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v3 3/4] mux: Add support for reading mux enable state from
 DT
Date: Tue, 23 Nov 2021 13:42:20 +0530
Message-ID: <20211123081222.27979-4-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211123081222.27979-1-a-govindraju@ti.com>
References: <20211123081222.27979-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_001254_127249_9BBB92BF 
X-CRM114-Status: GOOD (  28.66  )
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

In some cases, we might need to provide the state of the mux to be set for
the operation of a given peripheral. Therefore, pass this information using
the second argument of the mux-controls property.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/mux/core.c           | 146 ++++++++++++++++++++++++++++++++++-
 include/linux/mux/consumer.h |  19 ++++-
 include/linux/mux/driver.h   |  13 ++++
 3 files changed, 173 insertions(+), 5 deletions(-)

diff --git a/drivers/mux/core.c b/drivers/mux/core.c
index 22f4709768d1..9622b98f9818 100644
--- a/drivers/mux/core.c
+++ b/drivers/mux/core.c
@@ -370,6 +370,29 @@ int mux_control_select_delay(struct mux_control *mux, unsigned int state,
 }
 EXPORT_SYMBOL_GPL(mux_control_select_delay);
 
+/**
+ * mux_state_select_delay() - Select the enable state in mux-state
+ * @mux: The mux-state to request a change of state from.
+ * @delay_us: The time to delay (in microseconds) if the mux state is changed.
+ *
+ * On successfully selecting the enable state, it will be locked until
+ * there is a call to mux_state_deselect(). If the mux-control is already
+ * selected when mux_state_select() is called, the caller will be blocked
+ * until mux_state_deselect() is called (by someone else).
+ *
+ * Therefore, make sure to call mux_state_deselect() when the operation is
+ * complete and the mux-control is free for others to use, but do not call
+ * mux_state_deselect() if mux_state_select() fails.
+ *
+ * Return: 0 when the mux-state has the enable state or a negative
+ * errno on error.
+ */
+int mux_state_select_delay(struct mux_state *mux, unsigned int delay_us)
+{
+	return mux_control_select_delay(mux->mux, mux->enable_state, delay_us);
+}
+EXPORT_SYMBOL_GPL(mux_state_select_delay);
+
 /**
  * mux_control_try_select_delay() - Try to select the given multiplexer state.
  * @mux: The mux-control to request a change of state from.
@@ -405,6 +428,27 @@ int mux_control_try_select_delay(struct mux_control *mux, unsigned int state,
 }
 EXPORT_SYMBOL_GPL(mux_control_try_select_delay);
 
+/**
+ * mux_state_try_select_delay() - Try to select the multiplexer enable state.
+ * @mux: The mux-control to request a change of state from.
+ * @delay_us: The time to delay (in microseconds) if the mux state is changed.
+ *
+ * On successfully selecting the enable state, it will be locked until
+ * mux_state_deselect() called.
+ *
+ * Therefore, make sure to call mux_state_deselect() when the operation is
+ * complete and the mux-control is free for others to use, but do not call
+ * mux_state_deselect() if mux_state_try_select() fails.
+ *
+ * Return: 0 when the mux-control state has the requested state or a negative
+ * errno on error. Specifically -EBUSY if the mux-control is contended.
+ */
+int mux_state_try_select_delay(struct mux_state *mux, unsigned int delay_us)
+{
+	return mux_control_try_select_delay(mux->mux, mux->enable_state, delay_us);
+}
+EXPORT_SYMBOL_GPL(mux_state_try_select_delay);
+
 /**
  * mux_control_deselect() - Deselect the previously selected multiplexer state.
  * @mux: The mux-control to deselect.
@@ -431,6 +475,24 @@ int mux_control_deselect(struct mux_control *mux)
 }
 EXPORT_SYMBOL_GPL(mux_control_deselect);
 
+/**
+ * mux_state_deselect() - Deselect the previously selected multiplexer state.
+ * @mux: The mux-state to deselect.
+ *
+ * It is required that a single call is made to mux_state_deselect() for
+ * each and every successful call made to either of mux_state_select() or
+ * mux_state_try_select().
+ *
+ * Return: 0 on success and a negative errno on error. An error can only
+ * occur if the mux has an idle state. Note that even if an error occurs, the
+ * mux-control is unlocked and is thus free for the next access.
+ */
+int mux_state_deselect(struct mux_state *mux)
+{
+	return mux_control_deselect(mux->mux);
+}
+EXPORT_SYMBOL_GPL(mux_state_deselect);
+
 /* Note this function returns a reference to the mux_chip dev. */
 static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
 {
@@ -442,13 +504,15 @@ static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
 }
 
 /**
- * mux_control_get() - Get the mux-control for a device.
+ * mux_get() - Get the mux-control for a device.
  * @dev: The device that needs a mux-control.
  * @mux_name: The name identifying the mux-control.
+ * @enable_state: The variable to store the enable state for the requested device
  *
  * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
  */
-struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
+static struct mux_control *mux_get(struct device *dev, const char *mux_name,
+				   unsigned int *enable_state)
 {
 	struct device_node *np = dev->of_node;
 	struct of_phandle_args args;
@@ -481,8 +545,7 @@ struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
 	if (!mux_chip)
 		return ERR_PTR(-EPROBE_DEFER);
 
-	if (args.args_count > 1 ||
-	    (!args.args_count && (mux_chip->controllers > 1))) {
+	if (!args.args_count && mux_chip->controllers > 1) {
 		dev_err(dev, "%pOF: wrong #mux-control-cells for %pOF\n",
 			np, args.np);
 		put_device(&mux_chip->dev);
@@ -500,8 +563,25 @@ struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
 		return ERR_PTR(-EINVAL);
 	}
 
+	if (args.args_count == 2)
+		*enable_state = args.args[1];
+
 	return &mux_chip->mux[controller];
 }
+
+/**
+ * mux_control_get() - Get the mux-control for a device.
+ * @dev: The device that needs a mux-control.
+ * @mux_name: The name identifying the mux-control.
+ *
+ * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
+ */
+struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
+{
+	int state;
+
+	return mux_get(dev, mux_name, &state);
+}
 EXPORT_SYMBOL_GPL(mux_control_get);
 
 /**
@@ -523,6 +603,26 @@ static void devm_mux_control_release(struct device *dev, void *res)
 	mux_control_put(mux);
 }
 
+/**
+ * mux_state_put() - Put away the mux-state for good.
+ * @mux: The mux-state to put away.
+ *
+ * mux_control_put() reverses the effects of mux_control_get().
+ */
+void mux_state_put(struct mux_state *mux_state)
+{
+	mux_control_put(mux_state->mux);
+	kfree(mux_state);
+}
+EXPORT_SYMBOL_GPL(mux_state_put);
+
+static void devm_mux_state_release(struct device *dev, void *res)
+{
+	struct mux_state *mux = *(struct mux_state **)res;
+
+	mux_state_put(mux);
+}
+
 /**
  * devm_mux_control_get() - Get the mux-control for a device, with resource
  *			    management.
@@ -553,6 +653,44 @@ struct mux_control *devm_mux_control_get(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_mux_control_get);
 
+/**
+ * devm_mux_state_get() - Get the mux-state for a device, with resource
+ *			  management.
+ * @dev: The device that needs a mux-control.
+ * @mux_name: The name identifying the mux-control.
+ *
+ * Return: Pointer to the mux-state, or an ERR_PTR with a negative errno.
+ */
+struct mux_state *devm_mux_state_get(struct device *dev,
+				     const char *mux_name)
+{
+	struct mux_state **ptr, *mux_state;
+	struct mux_control *mux_ctrl;
+	int enable_state;
+
+	mux_state = devm_kzalloc(dev, sizeof(struct mux_state), GFP_KERNEL);
+	if (!mux_state)
+		return ERR_PTR(-ENOMEM);
+
+	ptr = devres_alloc(devm_mux_state_release, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	mux_ctrl = mux_get(dev, mux_name, &enable_state);
+	if (IS_ERR(mux_ctrl)) {
+		devres_free(ptr);
+		return (struct mux_state *)mux_ctrl;
+	}
+
+	mux_state->mux = mux_ctrl;
+	mux_state->enable_state = enable_state;
+	*ptr = mux_state;
+	devres_add(dev, ptr);
+
+	return mux_state;
+}
+EXPORT_SYMBOL_GPL(devm_mux_state_get);
+
 /*
  * Using subsys_initcall instead of module_init here to try to ensure - for
  * the non-modular case - that the subsystem is initialized when mux consumers
diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
index 7a09b040ac39..d0f3242e148d 100644
--- a/include/linux/mux/consumer.h
+++ b/include/linux/mux/consumer.h
@@ -14,33 +14,50 @@
 
 struct device;
 struct mux_control;
+struct mux_state;
 
 unsigned int mux_control_states(struct mux_control *mux);
 int __must_check mux_control_select_delay(struct mux_control *mux,
 					  unsigned int state,
 					  unsigned int delay_us);
+int __must_check mux_state_select_delay(struct mux_state *mux,
+					unsigned int delay_us);
 int __must_check mux_control_try_select_delay(struct mux_control *mux,
 					      unsigned int state,
 					      unsigned int delay_us);
-
+int __must_check mux_state_try_select_delay(struct mux_state *mux,
+					    unsigned int delay_us);
 static inline int __must_check mux_control_select(struct mux_control *mux,
 						  unsigned int state)
 {
 	return mux_control_select_delay(mux, state, 0);
 }
 
+static inline int __must_check mux_state_select(struct mux_state *mux)
+{
+	return mux_state_select_delay(mux, 0);
+}
 static inline int __must_check mux_control_try_select(struct mux_control *mux,
 						      unsigned int state)
 {
 	return mux_control_try_select_delay(mux, state, 0);
 }
 
+static inline int __must_check mux_state_try_select(struct mux_state *mux)
+{
+	return mux_state_try_select_delay(mux, 0);
+}
+
 int mux_control_deselect(struct mux_control *mux);
+int mux_state_deselect(struct mux_state *mux);
 
 struct mux_control *mux_control_get(struct device *dev, const char *mux_name);
 void mux_control_put(struct mux_control *mux);
+void mux_state_put(struct mux_state *mux);
 
 struct mux_control *devm_mux_control_get(struct device *dev,
 					 const char *mux_name);
+struct mux_state *devm_mux_state_get(struct device *dev,
+				     const char *mux_name);
 
 #endif /* _LINUX_MUX_CONSUMER_H */
diff --git a/include/linux/mux/driver.h b/include/linux/mux/driver.h
index 18824064f8c0..c7236f307fbd 100644
--- a/include/linux/mux/driver.h
+++ b/include/linux/mux/driver.h
@@ -53,6 +53,19 @@ struct mux_control {
 	ktime_t last_change;
 };
 
+/**
+ * struct mux_state -	Represents a mux controller specific to a given device
+ * @mux:		Pointer to a mux controller
+ * @enable_state	State of the mux to be set for enabling a device
+ *
+ * This structure is specific to a device that acquires it and has information
+ * specific to the device.
+ */
+struct mux_state {
+	struct mux_control *mux;
+	unsigned int enable_state;
+};
+
 /**
  * struct mux_chip -	Represents a chip holding mux controllers.
  * @controllers:	Number of mux controllers handled by the chip.
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
