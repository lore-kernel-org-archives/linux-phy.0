Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42658C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jan 2022 21:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYajttNVs8Ghs5QC/Cpg/3qoYyBT+CcxLaCpSg8/VXc=; b=HIOsoVZGTh89kc
	L6IADSKoQo1mZqdS5bP5FPSVA7l5cq3wZ71QWOct6jx+lC6LVX98quzFzYRHX5u0GmkkBFhfVRLza
	vJ70t2SXXdD/S9QT9yQMy1FYidHT2NE3ZaZjATy5b1TwraOvXEyx8ElZWfnGHwBMmwrHIegP7gEm8
	Fhs1jq2xhF/DmzfET5GShicspth2XpLe1xfpiMWY1C0xx2T+5bZw4tA4/nm9SQGxAihu+kr/sTcdZ
	+fGLsQx1r6VH38RLjxbbd5J0GaKx25jzufRoFgtg9xbUbyi7y4oXoWwCuJsruC3WBJ5TLtmN2ZkAb
	l2IDFosAAzDYOp8Mbc8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5Zs6-001NaJ-Fe; Thu, 06 Jan 2022 21:00:30 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5Zs3-001NZe-74
 for linux-phy@lists.infradead.org; Thu, 06 Jan 2022 21:00:29 +0000
Received: by mail-io1-xd2f.google.com with SMTP id l3so4631859iol.10
 for <linux-phy@lists.infradead.org>; Thu, 06 Jan 2022 13:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AmzdgAiuO/8SZ4ChbNLcS7C9Wx3iWh+y/OvXPCFKxrw=;
 b=bF0zHrf6cn7DZ9x7Pn4rON78LlB/Hv4SZOT1CUj/MS6/n3ZRZRuCOzw38oA9zXUnUq
 bmPYvez6eiYkBvk7XWVrAWDC9k/UQm1G+UlfndAwfmWfa9a8OmebJf30pHRvKVOH7vLs
 jt6bGvG2Aqd9ZHc94cDDGoxmgy4g8E5zyYL9iT0hbk68Fbwp9h6N8bAzGBvI8eheAF4z
 FcEVNjkDqF28luZRsiDiFQOfedRFwy+Cm991Ddau75kShcGF2h70VZ4zhwsPu2abAa0c
 bafGpZZYjVq8h0wtrhrDmHrDlIiTeia1yeNt14TfbkApq+o7nqg88SGsPY1GhFNAVaZV
 RgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AmzdgAiuO/8SZ4ChbNLcS7C9Wx3iWh+y/OvXPCFKxrw=;
 b=qJxewnA2bozR3Z4UIcfkWD+t9BtdMBq49lJ8zL5Xdv13VGNhy1EKbdIjCDVArdrdYs
 9BRiTdKhA5lwVeMFcOhafA5pGuWWadLZvGSP4WcQrcahNxOGVickZRyh80IA3xQ3xPhz
 MvqX70TkMedyjzJ3iO7cC7yYISoBEmH04YcPm7GliyqFdQrldTuvUw32QKHbykXxgaQ+
 pdXq1p+Rjp/eQMI7+XY/Ko4Zvz2bHQAqgFRwwo5+elzcRqVox/4zTaGGYEA/TzY4Reis
 irhvzin6KerEhhxriMDy6/2xV+eTgmCnlop1omNIf06V+T2t/agbqbjA8Caoj1P3eN4F
 8dhg==
X-Gm-Message-State: AOAM532u0xVNWCmKp51/5CTE91GqipGWvvE9FTooJxRB6n4R7i0eeX0p
 VXivRgp9r6nwWDB0Yj+l7uf/K68XSGOqfkBix9s=
X-Google-Smtp-Source: ABdhPJyMPlDYOazAJHlrg63PALPvUxYHWGsXkLSVu4lQmb//VCulO817Wx8LlBVYawaWZLOwDu/PsbsVmaBAVu8/IEM=
X-Received: by 2002:a05:6638:33a6:: with SMTP id
 h38mr28475446jav.194.1641502825423; 
 Thu, 06 Jan 2022 13:00:25 -0800 (PST)
MIME-Version: 1.0
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <20211201180653.35097-2-alcooperx@gmail.com>
 <YahNIinbEwB569C1@matsya>
In-Reply-To: <YahNIinbEwB569C1@matsya>
From: Alan Cooper <alcooperx@gmail.com>
Date: Thu, 6 Jan 2022 16:01:53 -0500
Message-ID: <CAOGqxeVS0sQg=vAQKOC3ksuGfdCO-TzgMdOmhtQJZBcuj3YFdg@mail.gmail.com>
Subject: Re: [PATCH 1/3] phy: usb: Leave some clocks running during suspend
To: Vinod Koul <vkoul@kernel.org>
Cc: ": Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>, 
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, 
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_130027_881699_3FE68858 
X-CRM114-Status: GOOD (  31.87  )
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

On Wed, Dec 1, 2021 at 11:35 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 01-12-21, 13:06, Al Cooper wrote:
> > The PHY client driver does a phy_exit() call on suspend or rmmod and
> > the PHY driver needs to know the difference because some clocks need
> > to be kept running for suspend but can be shutdown on unbind/rmmod
> > (or if there are no PHY clients at all).
> >
> > The fix is to use a PM notifier so the driver can tell if a PHY
> > client is calling exit() because of a system suspend or a driver
> > unbind/rmmod.
> >
> > Signed-off-by: Al Cooper <alcooperx@gmail.com>
> > ---
> >  drivers/phy/broadcom/phy-brcm-usb.c | 38 +++++++++++++++++++++++++++++
> >  1 file changed, 38 insertions(+)
> >
> > diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
> > index 116fb23aebd9..0f1deb6e0eab 100644
> > --- a/drivers/phy/broadcom/phy-brcm-usb.c
> > +++ b/drivers/phy/broadcom/phy-brcm-usb.c
> > @@ -18,6 +18,7 @@
> >  #include <linux/soc/brcmstb/brcmstb.h>
> >  #include <dt-bindings/phy/phy.h>
> >  #include <linux/mfd/syscon.h>
> > +#include <linux/suspend.h>
> >
> >  #include "phy-brcm-usb-init.h"
> >
> > @@ -70,12 +71,35 @@ struct brcm_usb_phy_data {
> >       int                     init_count;
> >       int                     wake_irq;
> >       struct brcm_usb_phy     phys[BRCM_USB_PHY_ID_MAX];
> > +     struct notifier_block   pm_notifier;
> > +     bool                    pm_active;
> >  };
> >
> >  static s8 *node_reg_names[BRCM_REGS_MAX] = {
> >       "crtl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
> >  };
> >
> > +static int brcm_pm_notifier(struct notifier_block *notifier,
> > +                         unsigned long pm_event,
> > +                         void *unused)
> > +{
> > +     struct brcm_usb_phy_data *priv =
> > +             container_of(notifier, struct brcm_usb_phy_data, pm_notifier);
> > +
> > +     switch (pm_event) {
> > +     case PM_HIBERNATION_PREPARE:
> > +     case PM_SUSPEND_PREPARE:
> > +             priv->pm_active = true;
> > +             break;
> > +     case PM_POST_RESTORE:
> > +     case PM_POST_HIBERNATION:
> > +     case PM_POST_SUSPEND:
> > +             priv->pm_active = false;
> > +             break;
> > +     }
> > +     return NOTIFY_DONE;
> > +}
> > +
> >  static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
> >  {
> >       struct phy *gphy = dev_id;
> > @@ -91,6 +115,9 @@ static int brcm_usb_phy_init(struct phy *gphy)
> >       struct brcm_usb_phy_data *priv =
> >               container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
> >
> > +     if (priv->pm_active)
> > +             return 0;
> > +
> >       /*
> >        * Use a lock to make sure a second caller waits until
> >        * the base phy is inited before using it.
> > @@ -120,6 +147,9 @@ static int brcm_usb_phy_exit(struct phy *gphy)
> >       struct brcm_usb_phy_data *priv =
> >               container_of(phy, struct brcm_usb_phy_data, phys[phy->id]);
> >
> > +     if (priv->pm_active)
> > +             return 0;
> > +
> >       dev_dbg(&gphy->dev, "EXIT\n");
> >       if (phy->id == BRCM_USB_PHY_2_0)
> >               brcm_usb_uninit_eohci(&priv->ini);
> > @@ -488,6 +518,9 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
> >       if (err)
> >               return err;
> >
> > +     priv->pm_notifier.notifier_call = brcm_pm_notifier;
> > +     register_pm_notifier(&priv->pm_notifier);
> > +
> >       mutex_init(&priv->mutex);
> >
> >       /* make sure invert settings are correct */
> > @@ -528,7 +561,10 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
> >
> >  static int brcm_usb_phy_remove(struct platform_device *pdev)
> >  {
> > +     struct brcm_usb_phy_data *priv = dev_get_drvdata(&pdev->dev);
> > +
> >       sysfs_remove_group(&pdev->dev.kobj, &brcm_usb_phy_group);
> > +     unregister_pm_notifier(&priv->pm_notifier);
> >
> >       return 0;
> >  }
> > @@ -539,6 +575,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
> >       struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
> >
> >       if (priv->init_count) {
> > +             dev_dbg(dev, "SUSPEND\n");
>
> debug artifact?
>
> >               priv->ini.wake_enabled = device_may_wakeup(dev);
> >               if (priv->phys[BRCM_USB_PHY_3_0].inited)
> >                       brcm_usb_uninit_xhci(&priv->ini);
> > @@ -578,6 +615,7 @@ static int brcm_usb_phy_resume(struct device *dev)
> >        * Uninitialize anything that wasn't previously initialized.
> >        */
> >       if (priv->init_count) {
> > +             dev_dbg(dev, "RESUME\n");
>
> here too

I left these in intentionally because they are very useful for debug.

>
> >               if (priv->wake_irq >= 0)
> >                       disable_irq_wake(priv->wake_irq);
> >               brcm_usb_init_common(&priv->ini);
> > --
> > 2.17.1
>
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
