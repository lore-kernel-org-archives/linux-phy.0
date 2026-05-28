Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00E5BCD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 07:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jNmaCRoowOYBmhLaGsYbgI1xxS/Phje/kV0dU7KfXPU=; b=RuqISM6Ry/B6M3
	30dUjfw+SWH2iJzZNpO2PhJkEOj9N+xC14AHmCsWFXwrSPr1X40rvDXu+L6yhplqqYF3yde7+G8d+
	tH349fvn8L8oSF6rY6C9avSe+l8PmselObaYQn0ZdHCxuIlMjtpc62HSjEaYPR2NPADkCwiAF2iF/
	Lh/W8In4ybsd8ctKh8AtP30/Vf8KYOxQaoz94nWBzFEjky8ZER84ZNTn9eaCjAIT7Gl63miOxVFEy
	RejxJvUV3v1sxWZYIDY32MjJa2d9+MTI/zQfI5zglZ8PVUTEA+GybJJ31wARpJ1WDqKUyW/CC0Of4
	lxAwOCi1fOUBF7lYR3qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSUr5-00000005EvT-0d5j;
	Thu, 28 May 2026 07:08:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSUr4-00000005EvM-2e1Z
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 07:08:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 68133605D5;
	Thu, 28 May 2026 07:08:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0529D1F000E9;
	Thu, 28 May 2026 07:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779952113;
	bh=xZcxL5fUeXKaziqhPPhIhoJJPfCSwi6XWBCXnJGQMQo=;
	h=From:To:Cc:Subject:Date;
	b=HipAD32Pcx++g0cu9n2D85LKG1FUfPkABz5m3BdOHMwxDbzQHpjDPKQCVtI3GE1B8
	 6LNkiS3hcYDwgB8onG5KphVY82rbmb7lw8s2YTfhRiLiYG1W3CIcFP6IsDNBe8+jac
	 dRLDCEB04vcvaSMkpi5wDI5/LELQ6s6McvkDvfgnEupQTdDd2tMFwIrpgh4GbWYPUQ
	 k2+KJO7+op6SK/3GGARKg+YvMdmCLbG/c/4wu5qAFvtSF3cygOl0Dfwl0V4La6y1bQ
	 QDvGasFE3aOSKeDqbVc/nQFBVsTMSpg4qUgH6HRe/7pUZVBpb0fo1zc19+UK5Y3J4o
	 ToeNc7f8ywQJg==
From: Claudiu Beznea <claudiu.beznea@kernel.org>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: claudiu.beznea@kernel.org,
	claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org,
	Pavel Machek <pavel@nabladev.com>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v3] phy: renesas: rcar-gen3-usb2: Avoid long delay in atomic context
Date: Thu, 28 May 2026 10:08:26 +0300
Message-ID: <20260528070826.478813-1-claudiu.beznea@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The OTG PHY initialization sequence needs to wait for 20 ms at a specific
step, as described in commit 72c0339c115b ("phy: renesas:
rcar-gen3-usb2: follow the hardware manual procedure").

Commit 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware
registers and driver data") tried to address various problems in the
rcar-gen3-usb2 driver and converted the mutex protecting HW register
accesses to a spin lock, leaving, however, a long delay in the critical
section protected by the spin lock. This may become a problem,
especially on RT kernels.

To address this, release the spin lock before sleeping for 20 ms as
required by the HW manual and reacquire it afterwards. To avoid other
threads entering the critical section and configuring the HW while the
software is waiting for the OTG initialization to complete, introduce the
otg_initializing variable alongside the otg_init_done completion. Any
other thread trying to configure the HW while the OTG PHY initialization
is in progress waits for the completion instead of immediately returning
errors to PHY users. The IRQs were also disabled while waiting for the OTG
PHY initialization to complete, as the interrupt handler may also apply HW
settings.

Fixes: 55a387ebb921 ("phy: renesas: rcar-gen3-usb2: Lock around hardware registers and driver data")
Cc: stable@vger.kernel.org
Reported-by: Pavel Machek <pavel@nabladev.com>
Closes: https://lore.kernel.org/all/afhkX2Ys2BG1gnqy@duo.ucw.cz
Reported-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Closes: https://lore.kernel.org/all/afhkX2Ys2BG1gnqy@duo.ucw.cz
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- initialize ret value in role_store()
- jump to exit label in role_store() to have the same exit path
- dropped scoped_guard() in rcar_gen3_phy_usb2_irq() to avoid mixing
  goto statements with scoped_guard()
- take into account USB2_INT_ENABLE_UCOM_INTEN when masking/unmasking IRQs
- increase the completion timeout to 40ms
- in rcar_gen3_phy_usb2_power_on() disable regulator on failure path

Changes in v2:
- dropped the rcar_gen3_phy_wait_otg_init() and used inline the code; with it
  the comment that was previously in rcar_gen3_phy_wait_otg_init() was added
  in struct rcar_gen3_chan for above the org_initializing variable
- dropped READ_ONCE()/WRITE_ONCE() arround struct rcar_gen3_chan::otg_initializing
- checked for struct rcar_gen3_chan::otg_initializing before checking for
  rcar_gen3_is_any_otg_rphy_initialized() in all code places
- added rcar_gen3_phy_usb2_irqs_mask_all() and rcar_gen3_phy_usb2_irqs_unmask()
  to mask/unmask only the interrupts at the controller level since the line is
  shared
- along with it dropped disable_irq_nosync()/enable_irq() from v1 along with
  struct rcar_gen3_chan::irq
- increased the completion timeout to 30 ms

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 244 +++++++++++++++++++----
 1 file changed, 203 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 9a45d840efeb..2231b0475fdd 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -138,12 +138,20 @@ struct rcar_gen3_chan {
 	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
 	struct regulator *vbus;
 	struct work_struct work;
+	struct completion otg_init_done;
 	spinlock_t lock;	/* protects access to hardware and driver data structure. */
 	enum usb_dr_mode dr_mode;
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
 	bool otg_internal_reg;
+	/*
+	 * The OTG can be initialized only once and needs to release the spinlock
+	 * and wait for 20 ms due to hardware constraints. If a thread executes
+	 * PHY configuration code while the OTG PHY is waiting for the 20 ms, the
+	 * thread will have to wait for the OTG PHY initialization to complete.
+	 */
+	bool otg_initializing;
 };
 
 struct rcar_gen3_phy_drv_data {
@@ -392,26 +400,52 @@ static ssize_t role_store(struct device *dev, struct device_attribute *attr,
 	struct rcar_gen3_chan *ch = dev_get_drvdata(dev);
 	bool is_b_device;
 	enum phy_mode cur_mode, new_mode;
+	unsigned long flags;
+	int ret = -EIO;
 
-	guard(spinlock_irqsave)(&ch->lock);
+	spin_lock_irqsave(&ch->lock, flags);
 
-	if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
-		return -EIO;
+	if (!ch->is_otg_channel)
+		goto unlock;
+
+	if (ch->otg_initializing) {
+		unsigned long timeout = msecs_to_jiffies(40);
+
+		spin_unlock_irqrestore(&ch->lock, flags);
 
-	if (sysfs_streq(buf, "host"))
+		ret = wait_for_completion_timeout(&ch->otg_init_done, timeout);
+		ret = ret ? 0 : -ETIMEDOUT;
+		if (ret)
+			goto exit;
+
+		spin_lock_irqsave(&ch->lock, flags);
+	}
+
+	if (!rcar_gen3_is_any_otg_rphy_initialized(ch)) {
+		ret = -EIO;
+		goto unlock;
+	}
+
+	if (sysfs_streq(buf, "host")) {
 		new_mode = PHY_MODE_USB_HOST;
-	else if (sysfs_streq(buf, "peripheral"))
+	} else if (sysfs_streq(buf, "peripheral")) {
 		new_mode = PHY_MODE_USB_DEVICE;
-	else
-		return -EINVAL;
+	} else {
+		ret = -EINVAL;
+		goto unlock;
+	}
 
 	/* is_b_device: true is B-Device. false is A-Device. */
 	is_b_device = rcar_gen3_check_id(ch);
 	cur_mode = rcar_gen3_get_phy_mode(ch);
 
 	/* If current and new mode is the same, this returns the error */
-	if (cur_mode == new_mode)
-		return -EINVAL;
+	if (cur_mode == new_mode) {
+		ret = -EINVAL;
+		goto unlock;
+	}
+
+	ret = 0;
 
 	if (new_mode == PHY_MODE_USB_HOST) { /* And is_host must be false */
 		if (!is_b_device)	/* A-Peripheral */
@@ -425,7 +459,10 @@ static ssize_t role_store(struct device *dev, struct device_attribute *attr,
 			rcar_gen3_init_for_peri(ch);
 	}
 
-	return count;
+unlock:
+	spin_unlock_irqrestore(&ch->lock, flags);
+exit:
+	return ret ?: count;
 }
 
 static ssize_t role_show(struct device *dev, struct device_attribute *attr,
@@ -441,14 +478,11 @@ static ssize_t role_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RW(role);
 
-static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
+static void rcar_gen3_init_otg_phase0(struct rcar_gen3_chan *ch)
 {
 	void __iomem *usb2_base = ch->base;
 	u32 val;
 
-	if (!ch->is_otg_channel || rcar_gen3_is_any_otg_rphy_initialized(ch))
-		return;
-
 	/* Should not use functions of read-modify-write a register */
 	val = readl(usb2_base + USB2_LINECTRL1);
 	val = (val & ~USB2_LINECTRL1_DP_RPD) | USB2_LINECTRL1_DPRPD_EN |
@@ -471,7 +505,11 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 			writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
 		}
 	}
-	mdelay(20);
+}
+
+static void rcar_gen3_init_otg_phase1(struct rcar_gen3_chan *ch)
+{
+	void __iomem *usb2_base = ch->base;
 
 	writel(0xffffffff, usb2_base + USB2_OBINTSTA);
 	writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTEN);
@@ -502,6 +540,7 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 	void __iomem *usb2_base = ch->base;
 	struct device *dev = ch->dev;
 	irqreturn_t ret = IRQ_NONE;
+	unsigned long flags;
 	u32 status;
 
 	pm_runtime_get_noresume(dev);
@@ -509,33 +548,85 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 	if (pm_runtime_suspended(dev))
 		goto rpm_put;
 
-	scoped_guard(spinlock, &ch->lock) {
-		status = readl(usb2_base + USB2_OBINTSTA);
-		if (status & ch->phy_data->obint_enable_bits) {
-			dev_vdbg(dev, "%s: %08x\n", __func__, status);
-			if (ch->phy_data->vblvl_ctrl)
-				writel(USB2_OBINTSTA_CLEAR, usb2_base + USB2_OBINTSTA);
-			else
-				writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTSTA);
-			rcar_gen3_device_recognition(ch);
-			rcar_gen3_configure_vblvl_ctrl(ch);
-			ret = IRQ_HANDLED;
-		}
+	spin_lock_irqsave(&ch->lock, flags);
+
+	if (ch->otg_initializing) {
+		ret = IRQ_NONE;
+		goto unlock;
+	}
+
+	status = readl(usb2_base + USB2_OBINTSTA);
+	if (status & ch->phy_data->obint_enable_bits) {
+		dev_vdbg(dev, "%s: %08x\n", __func__, status);
+		if (ch->phy_data->vblvl_ctrl)
+			writel(USB2_OBINTSTA_CLEAR, usb2_base + USB2_OBINTSTA);
+		else
+			writel(ch->phy_data->obint_enable_bits, usb2_base + USB2_OBINTSTA);
+		rcar_gen3_device_recognition(ch);
+		rcar_gen3_configure_vblvl_ctrl(ch);
+		ret = IRQ_HANDLED;
 	}
 
+unlock:
+	spin_unlock_irqrestore(&ch->lock, flags);
 rpm_put:
 	pm_runtime_put_noidle(dev);
 	return ret;
 }
 
+static void rcar_gen3_phy_usb2_irqs_mask_all(struct rcar_gen3_chan *channel,
+					     u32 *masked_irqs_bits)
+{
+	u32 val, bitmask = USB2_INT_ENABLE_UCOM_INTEN;
+	void __iomem *usb2_base = channel->base;
+
+	for (unsigned int i = 0; i < NUM_OF_PHYS; i++)
+		bitmask |= channel->rphys[i].int_enable_bits;
+
+	val = readl(usb2_base + USB2_INT_ENABLE);
+	*masked_irqs_bits = val & bitmask;
+	val &= ~bitmask;
+	writel(val, usb2_base + USB2_INT_ENABLE);
+}
+
+static void rcar_gen3_phy_usb2_irqs_unmask(struct rcar_gen3_chan *channel,
+					   u32 irqs_bits)
+{
+	u32 val, bitmask = USB2_INT_ENABLE_UCOM_INTEN;
+	void __iomem *usb2_base = channel->base;
+
+	for (unsigned int i = 0; i < NUM_OF_PHYS; i++)
+		bitmask |= channel->rphys[i].int_enable_bits;
+
+	val = readl(usb2_base + USB2_INT_ENABLE);
+	val &= ~bitmask;
+	val |= irqs_bits;
+	writel(val, usb2_base + USB2_INT_ENABLE);
+}
+
 static int rcar_gen3_phy_usb2_init(struct phy *p)
 {
 	struct rcar_gen3_phy *rphy = phy_get_drvdata(p);
 	struct rcar_gen3_chan *channel = rphy->ch;
 	void __iomem *usb2_base = channel->base;
+	unsigned long flags;
 	u32 val;
 
-	guard(spinlock_irqsave)(&channel->lock);
+	spin_lock_irqsave(&channel->lock, flags);
+
+	if (channel->otg_initializing) {
+		unsigned long timeout = msecs_to_jiffies(40);
+		int ret;
+
+		spin_unlock_irqrestore(&channel->lock, flags);
+
+		ret = wait_for_completion_timeout(&channel->otg_init_done, timeout);
+		ret = ret ? 0 : -ETIMEDOUT;
+		if (ret)
+			return ret;
+
+		spin_lock_irqsave(&channel->lock, flags);
+	}
 
 	/* Initialize USB2 part */
 	val = readl(usb2_base + USB2_INT_ENABLE);
@@ -548,8 +639,24 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 	}
 
 	/* Initialize otg part (only if we initialize a PHY with IRQs). */
-	if (rphy->int_enable_bits)
-		rcar_gen3_init_otg(channel);
+	if (rphy->int_enable_bits && channel->is_otg_channel &&
+	    !rcar_gen3_is_any_otg_rphy_initialized(channel)) {
+		u32 masked_irq_bits = 0;
+
+		rcar_gen3_init_otg_phase0(channel);
+		rcar_gen3_phy_usb2_irqs_mask_all(channel, &masked_irq_bits);
+		reinit_completion(&channel->otg_init_done);
+		channel->otg_initializing = true;
+		spin_unlock_irqrestore(&channel->lock, flags);
+
+		fsleep(20000);
+
+		spin_lock_irqsave(&channel->lock, flags);
+		channel->otg_initializing = false;
+		complete_all(&channel->otg_init_done);
+		rcar_gen3_phy_usb2_irqs_unmask(channel, masked_irq_bits);
+		rcar_gen3_init_otg_phase1(channel);
+	}
 
 	if (channel->phy_data->vblvl_ctrl) {
 		/* SIDDQ mode release */
@@ -568,6 +675,8 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
 
 	rphy->initialized = true;
 
+	spin_unlock_irqrestore(&channel->lock, flags);
+
 	return 0;
 }
 
@@ -576,9 +685,24 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
 	struct rcar_gen3_phy *rphy = phy_get_drvdata(p);
 	struct rcar_gen3_chan *channel = rphy->ch;
 	void __iomem *usb2_base = channel->base;
+	unsigned long flags;
 	u32 val;
 
-	guard(spinlock_irqsave)(&channel->lock);
+	spin_lock_irqsave(&channel->lock, flags);
+
+	if (channel->otg_initializing) {
+		unsigned long timeout = msecs_to_jiffies(40);
+		int ret;
+
+		spin_unlock_irqrestore(&channel->lock, flags);
+
+		ret = wait_for_completion_timeout(&channel->otg_init_done, timeout);
+		ret = ret ? 0 : -ETIMEDOUT;
+		if (ret)
+			return ret;
+
+		spin_lock_irqsave(&channel->lock, flags);
+	}
 
 	rphy->initialized = false;
 
@@ -588,6 +712,7 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
 		val &= ~USB2_INT_ENABLE_UCOM_INTEN;
 	writel(val, usb2_base + USB2_INT_ENABLE);
 
+	spin_unlock_irqrestore(&channel->lock, flags);
 	return 0;
 }
 
@@ -596,6 +721,7 @@ static int rcar_gen3_phy_usb2_power_on(struct phy *p)
 	struct rcar_gen3_phy *rphy = phy_get_drvdata(p);
 	struct rcar_gen3_chan *channel = rphy->ch;
 	void __iomem *usb2_base = channel->base;
+	unsigned long flags;
 	u32 val;
 	int ret = 0;
 
@@ -605,7 +731,20 @@ static int rcar_gen3_phy_usb2_power_on(struct phy *p)
 			return ret;
 	}
 
-	guard(spinlock_irqsave)(&channel->lock);
+	spin_lock_irqsave(&channel->lock, flags);
+
+	if (channel->otg_initializing) {
+		unsigned long timeout = msecs_to_jiffies(40);
+
+		spin_unlock_irqrestore(&channel->lock, flags);
+
+		ret = wait_for_completion_timeout(&channel->otg_init_done, timeout);
+		ret = ret ? 0 : -ETIMEDOUT;
+		if (ret)
+			goto disable_regulator;
+
+		spin_lock_irqsave(&channel->lock, flags);
+	}
 
 	if (!rcar_gen3_are_all_rphys_power_off(channel))
 		goto out;
@@ -620,27 +759,49 @@ static int rcar_gen3_phy_usb2_power_on(struct phy *p)
 	/* The powered flag should be set for any other phys anyway */
 	rphy->powered = true;
 
-	return 0;
+	spin_unlock_irqrestore(&channel->lock, flags);
+
+disable_regulator:
+	if (ret && channel->vbus && !channel->otg_internal_reg)
+		regulator_disable(channel->vbus);
+
+	return ret;
 }
 
 static int rcar_gen3_phy_usb2_power_off(struct phy *p)
 {
 	struct rcar_gen3_phy *rphy = phy_get_drvdata(p);
 	struct rcar_gen3_chan *channel = rphy->ch;
+	unsigned long flags;
 	int ret = 0;
 
-	scoped_guard(spinlock_irqsave, &channel->lock) {
-		rphy->powered = false;
+	spin_lock_irqsave(&channel->lock, flags);
 
-		if (rcar_gen3_are_all_rphys_power_off(channel)) {
-			u32 val = readl(channel->base + USB2_USBCTR);
+	if (channel->otg_initializing) {
+		unsigned long timeout = msecs_to_jiffies(40);
 
-			val |= USB2_USBCTR_PLL_RST;
-			writel(val, channel->base + USB2_USBCTR);
-		}
+		spin_unlock_irqrestore(&channel->lock, flags);
+
+		ret = wait_for_completion_timeout(&channel->otg_init_done, timeout);
+		ret = ret ? 0 : -ETIMEDOUT;
+		if (ret)
+			return ret;
+
+		spin_lock_irqsave(&channel->lock, flags);
 	}
 
-	if (channel->vbus && !channel->otg_internal_reg)
+	rphy->powered = false;
+
+	if (rcar_gen3_are_all_rphys_power_off(channel)) {
+		u32 val = readl(channel->base + USB2_USBCTR);
+
+		val |= USB2_USBCTR_PLL_RST;
+		writel(val, channel->base + USB2_USBCTR);
+	}
+
+	spin_unlock_irqrestore(&channel->lock, flags);
+
+	if (!ret && channel->vbus && !channel->otg_internal_reg)
 		ret = regulator_disable(channel->vbus);
 
 	return ret;
@@ -1007,6 +1168,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		return ret;
 
 	spin_lock_init(&channel->lock);
+	init_completion(&channel->otg_init_done);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
 							channel->phy_data->phy_usb2_ops);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
