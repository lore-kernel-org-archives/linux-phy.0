Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F653C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 04:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxO+snhXwijDmNqnZ8mQhtZ9ghuX9b5S0iUdOpPxCrk=; b=NgRuSMXs+PCBge
	cQt1Zc38k8kfZ7GFR/MemEbEsNjRUhAQyK8HaP5Ai1hnGBvalWz4NyXV/g16vpqjGuERU7lHYqm0U
	8z/7GVq/bEQdoLvvfdACroL+CLsBHg13l4sYhHbqHUZkjSVn4V2CuZ9gbznF3KUmGTuS5p0fzp4XW
	FXffQrzlYvl1vcNIEKHnE6vuj/lpgbAY7mjhQFJZM61c7VJNBijxuSM2afXV9eguCovq/Q/kqfDhb
	JC9m+3kZakBqfejrqufBbbxSkA4eUCZYF1+zr5AkxlPhksKTM9vbLkaUPc8EfXJ15yFfETfyz0G+A
	bYhoDcYus0ueC2jbGruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdp6-00AunF-ER; Thu, 02 Dec 2021 04:35:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdp3-00Aumk-Kb
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 04:35:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 53874B8214E;
 Thu,  2 Dec 2021 04:35:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16425C00446;
 Thu,  2 Dec 2021 04:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638419751;
 bh=pWND3NJkhj9XePIxXtamGmmjwZ+5EXgv2TnFzY3Z7vY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mVXZ9Oxq+6dVSMMrlkH7EFJalBARdvWp2A1RThLkRhvArLttCwwoIVxVbE64Z42Sv
 9tn0A2vj6Ycy4BKut0pNQdjbH+j2+Frk1cVf6FfYG/xgITwBqlZzTqX9uMGCf824et
 JpQH2sjmeWfKAgTxVYkamcxYDg0HXbkLNt7EdRZ3v+gKwRLDFCqhwbji7LvjOSX79h
 d4Gdlv4/0qtcALrPmUCKayRog9lGKnsBhCfe9uZ1/4FbRjkyitPzvspemsGJXhG2IJ
 mFU8pp7JADsuP6tn8p7X/Pd6ewMFT800eTAEjiFWgNFgsjjagX3W+Ayu+dgc/TD0Ay
 8rrAGNPA6/TZQ==
Date: Thu, 2 Dec 2021 10:05:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Al Cooper <alcooperx@gmail.com>
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/3] phy: usb: Leave some clocks running during suspend
Message-ID: <YahNIinbEwB569C1@matsya>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-2-alcooperx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201180653.35097-2-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_203553_977449_DEB1FB40 
X-CRM114-Status: GOOD (  30.42  )
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

On 01-12-21, 13:06, Al Cooper wrote:
> The PHY client driver does a phy_exit() call on suspend or rmmod and
> the PHY driver needs to know the difference because some clocks need
> to be kept running for suspend but can be shutdown on unbind/rmmod
> (or if there are no PHY clients at all).
> 
> The fix is to use a PM notifier so the driver can tell if a PHY
> client is calling exit() because of a system suspend or a driver
> unbind/rmmod.
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> ---
>  drivers/phy/broadcom/phy-brcm-usb.c | 38 +++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
> index 116fb23aebd9..0f1deb6e0eab 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb.c
> +++ b/drivers/phy/broadcom/phy-brcm-usb.c
> @@ -18,6 +18,7 @@
>  #include <linux/soc/brcmstb/brcmstb.h>
>  #include <dt-bindings/phy/phy.h>
>  #include <linux/mfd/syscon.h>
> +#include <linux/suspend.h>
>  
>  #include "phy-brcm-usb-init.h"
>  
> @@ -70,12 +71,35 @@ struct brcm_usb_phy_data {
>  	int			init_count;
>  	int			wake_irq;
>  	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
> +	struct notifier_block	pm_notifier;
> +	bool			pm_active;
>  };
>  
>  static s8 *node_reg_names[BRCM_REGS_MAX] = {
>  	"crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
>  };
>  
> +static int brcm_pm_notifier(struct notifier_block *notifier,
> +			    unsigned long pm_event,
> +			    void *unused)
> +{
> +	struct brcm_usb_phy_data *priv =
> +		container_of(notifier, struct brcm_usb_phy_data, pm_notifier);
> +
> +	switch (pm_event) {
> +	case PM_HIBERNATION_PREPARE:
> +	case PM_SUSPEND_PREPARE:
> +		priv->pm_active = true;
> +		break;
> +	case PM_POST_RESTORE:
> +	case PM_POST_HIBERNATION:
> +	case PM_POST_SUSPEND:
> +		priv->pm_active = false;
> +		break;
> +	}
> +	return NOTIFY_DONE;
> +}
> +
>  static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
>  {
>  	struct phy *gphy = dev_id;
> @@ -91,6 +115,9 @@ static int brcm_usb_phy_init(struct phy *gphy)
>  	struct brcm_usb_phy_data *priv =
>  		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
>  
> +	if (priv->pm_active)
> +		return 0;
> +
>  	/*
>  	 * Use a lock to make sure a second caller waits until
>  	 * the base phy is inited before using it.
> @@ -120,6 +147,9 @@ static int brcm_usb_phy_exit(struct phy *gphy)
>  	struct brcm_usb_phy_data *priv =
>  		container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
>  
> +	if (priv->pm_active)
> +		return 0;
> +
>  	dev_dbg(&gphy->dev, "EXIT\n");
>  	if (phy->id == BRCM_USB_PHY_2_0)
>  		brcm_usb_uninit_eohci(&priv->ini);
> @@ -488,6 +518,9 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
>  	if (err)
>  		return err;
>  
> +	priv->pm_notifier.notifier_call = brcm_pm_notifier;
> +	register_pm_notifier(&priv->pm_notifier);
> +
>  	mutex_init(&priv->mutex);
>  
>  	/* make sure invert settings are correct */
> @@ -528,7 +561,10 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
>  
>  static int brcm_usb_phy_remove(struct platform_device *pdev)
>  {
> +	struct brcm_usb_phy_data *priv = dev_get_drvdata(&pdev->dev);
> +
>  	sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
> +	unregister_pm_notifier(&priv->pm_notifier);
>  
>  	return 0;
>  }
> @@ -539,6 +575,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
>  	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
>  
>  	if (priv->init_count) {
> +		dev_dbg(dev, "SUSPEND\n");

debug artifact?

>  		priv->ini.wake_enabled = device_may_wakeup(dev);
>  		if (priv->phys[BRCM_USB_PHY_3_0].inited)
>  			brcm_usb_uninit_xhci(&priv->ini);
> @@ -578,6 +615,7 @@ static int brcm_usb_phy_resume(struct device *dev)
>  	 * Uninitialize anything that wasn't previously initialized.
>  	 */
>  	if (priv->init_count) {
> +		dev_dbg(dev, "RESUME\n");

here too

>  		if (priv->wake_irq >= 0)
>  			disable_irq_wake(priv->wake_irq);
>  		brcm_usb_init_common(&priv->ini);
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
