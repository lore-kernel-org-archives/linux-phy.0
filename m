Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF6FD61013
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odBHFc8+jTcNkYU/CNyAbZMu5c1iKFfQhvrtKdLa9IE=; b=YBdJzdtpqtuw6y
	jDMRdIl2985qTPZv3Ptj3C0s/ZYtCD16BzWbK9LwJ9MWSlbql3T1vlJ6HHoqfiUkFtNJgpu5ZfdUU
	va+iISr3zblBzaVcR0H8cSwDSx8ZnMqdIdYnNXrXYZKGnlP+77EC9xJ5Wf5yhMciz8NAi7JdP9RXr
	P8ODccz3n6UMmYN2iz8g/kiAVRHOCJDq4hoyv6CoHPR/Jf6aTFeND92eBEc0TOUVHrW7e/Txrh0Vy
	g9ppCvbwZVsLQlHEPcnbLGtt3bD32LkhyLygtkd14TwNITwwgTbKLZWJXU7xb7BH9k+XNxdcqemO8
	+AWck1RTHVQavbvg/uoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlReM-000000007xf-081v;
	Thu, 29 Jan 2026 13:01:30 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlReJ-000000007x0-2gm5
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:01:29 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-658b511573cso1708792a12.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769691685; cv=none;
        d=google.com; s=arc-20240605;
        b=ioPLDf+ZygivP9fS+S7pSCrhwCcbocdb/I+d5HwTYW5EE6Kod0apUeDnlxvq1WPYjU
         5atd4H8AksRGQ5v4yjfAENdnYV7JXqtvAUUpamnaDehVzAP54RvPNrPdlrapDLZyGGES
         o5N8zWZnVVf5WU0DtJjPFGv8yLHdGq88d7vrhDJg/rnW47nll7flyU4PTOj1Ayu9exmk
         aOY4r6PgKTr5psNCu+Zur8qAw2zB173F4MgYDLINGLemEbSjgfSIXVWI/WXTT4o7L4nN
         JRtZxCeGhgsWSwxxEtPW4RrvaF5NamMNUISbrSdd4h/0SpTiL00635f/7YgIzwG5iTGy
         YqmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iesfD+1e0XJcSwTx9KNwWz9DxCNf+/Vb7CeNYX6bJos=;
        fh=7EC107lJiw0TCNa5olWh6tfr17MsmSjUAvcZKIkdWLk=;
        b=H9tFhj8BJfmXj0FSc//gzJ5+IMmZGPXODWyfERCyei35eKGLIU/h2k7Q0EEJ0b6hqB
         VsW7mYvRGMFD1sgN42YM9oHGFRDN+Ciyvfdji58/o8nxet85Ls2x1c/1yTZtPfwRSADl
         Ks7plrwU0FZrgVFWwRVxDoKoP8VBzUNOM59aWappRDdRf0KzQAYWzWgy6t8vQNzf1Crp
         V0UhDrpVlcSD2agrw8oe4vf43glRWvvIsPsHwxHV4NpggTzKzUlnJrIwhVU1EPoqMI2Z
         MvPH+nw6hcDCl5QLSgjx2O8ELa4wM3HcWwi6OB9YnPGhJ5D+WVmz64gUzE8ZNYCxtwpj
         xQWw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769691685; x=1770296485; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iesfD+1e0XJcSwTx9KNwWz9DxCNf+/Vb7CeNYX6bJos=;
        b=BO9rOqrvThVoZ8UAnaPamU8OiGuzBB8upN5rizU16Khl9uLlO30psgk1nwjEA07VWd
         ptR36rngAENedSl7gzEL5/b8KpVxoGwocBiOz/9FWTfP4jZnLzHBilicuL92rr4Sk04/
         uZMjrKGgGXdjFUA+mywjMFNYJ0HjqDaYVNgbQATbOfO9HNnBx+VkSO7QUmZrlRFB4k2n
         luTuPtLXXhPddPLE7l8OodX4bpnDVjhRcagkN4L2P7DIOFEVuaZAAyHL7hm1XHa6XKlw
         VC4EIMqL4Wt6KSo3xAEV4ju8zWuiqlFZFUCNK1wKxLXlB39gBQMLJQuOImFVyULisw1x
         SE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769691685; x=1770296485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iesfD+1e0XJcSwTx9KNwWz9DxCNf+/Vb7CeNYX6bJos=;
        b=kGV4NCs1VAryJ1wAz+QjqTBPu3QbcxYKJ+Tig3yCGP8yF+dB71ym+ILXfBnPGEd9Rf
         WWTSdxkLD8W9sAyl75m8j0f6Ktoas7oZy+2O+6NXz+7ssucU5sATUfqFadhKjrm9zTWO
         K0b2Mcq2JwS6rw9TaKcdcxF43Q+nT7M31fde2UkEM3bj2E8/5e9s2MgIfFB1Nnymk4aC
         yiR7mDZECSgbzeeIjr3lhSDN0xznRWHIfeWL5nRbtR2U7vENQpH0xkmxMd4Mza6BmbOP
         cTw9seo/2retWZa4/tf30PHNAz+b6m7BTH8EBj0zbnQmmOthsZtUL8ca2OUY6HMhc6Mm
         LLUg==
X-Forwarded-Encrypted: i=1; AJvYcCUc2u/qIM7KvYamuUchz4XlZqqHO/oBcRLPoOMEfGnJQ8TF8sggycGHOJRzPcaX/+bQ0HP2jDK4ULw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIlRdTB6uW4DVkFngxo0r9NUg8Dphg0dGr1IsTNmWpsv5Ygny5
	U0KaMCdoV2apvWEoN/n2Vwj24yf0M8Y44HJ+0wIrg879fMIHtdZ/97ll5cYHVt3wUJWcMx3xJB/
	PqUovGLkZUmMIMiVRVkYf71AbmohNdZrx+XJb7cL5jQ==
X-Gm-Gg: AZuq6aIeCRQlo6033++jSXimSwWzhpOcZIW3hYvbc3Oh0bg2OoGVTqeCQxnj50SpOVj
	PwY8qnCPK3o9OF98lAtNkpw/9+5GDkm5UM1xDl0T46che2vBHC11zJmrZMjcfLVEasX/gwc9AHM
	MKbyPZvAqtBoT6Nda39jaj7RCf2erGAaKSEpPMAKIe5L41NNI1KZWLXklzMfIdEzqn/W1OyMZlr
	CwvC+dNJ/ffAOi9+eMVjSDZ9sqDyp9Eb6ArYXUNkWOLd5muhjelPq3kLn6EZeV908OHLhXLmF/n
	66/2IWcTlVeYFd5bBHmDmx92
X-Received: by 2002:a05:6402:2711:b0:658:1eee:8a40 with SMTP id
 4fb4d7f45d1cf-658a600eeb3mr6025005a12.2.1769691684890; Thu, 29 Jan 2026
 05:01:24 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <aXsuRTZUUnw0kdzV@horms.kernel.org>
In-Reply-To: <aXsuRTZUUnw0kdzV@horms.kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:01:13 +0100
X-Gm-Features: AZwV_QjS9ru6SWfw3DDchF_hxWLgsNEurVnBwt9Mvn_TEdB82tA-dgIWwcajOmY
Message-ID: <CAKfTPtDfnpzq2CB-isVzvh1ZCWo7kit9KRJvVGoU1C3zZTgdXw@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: Simon Horman <horms@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_050127_718983_BC5F69C3 
X-CRM114-Status: GOOD (  36.35  )
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

On Thu, 29 Jan 2026 at 10:54, Simon Horman <horms@kernel.org> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:57AM +0100, Vincent Guittot wrote:
>
> ...
>
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > new file mode 100644
> > index 000000000000..8336c868c8dc
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > @@ -0,0 +1,569 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/**
> > + * SerDes driver for S32G SoCs
> > + *
> > + * Copyright 2021-2026 NXP
> > + */
> > +
> > +#include <dt-bindings/phy/phy.h>
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
>
> Hi Vincent, all,
>
> I think that you also need:
>
> #include <linux/iopoll.h>
>
> So that read_poll_timeout() is declared.
> Else this patch causes a transient build failure
> (for x86_64 allmodconfig)

ok, i will add it

>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/of_address.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/processor.h>
> > +#include <linux/reset.h>
> > +#include <linux/units.h>
>
> ...
>
> > +static int s32g_serdes_phy_set_mode_ext(struct phy *p,
> > +                                     enum phy_mode mode, int submode)
> > +{
> > +     struct s32g_serdes *serdes = phy_get_drvdata(p);
> > +
> > +     if (mode == PHY_MODE_PCIE)
> > +             return -EINVAL;
>
> This is part of an AI Generated review.
> I have looked over it and I think it warrants investigation.
> For information on how to reproduce locally, as I did, please see [1].
>
> [1] https://netdev-ai.bots.linux.dev/ai-local.html
>
>   This returns error if mode IS PHY_MODE_PCIE, but this is a PCIe PHY!
>   This looks like a typo. Should be !=.

yes don't know what happened here but it should be !=

>
> > +
> > +     if (!is_pcie_phy_mode_valid(submode))
> > +             return -EINVAL;
> > +
> > +     /*
> > +      * Do not configure SRIS or CRSS PHY MODE in conjunction
> > +      * with any SGMII mode on the same SerDes subsystem
> > +      */
> > +     if ((submode == CRSS || submode == SRIS) &&
> > +         serdes->ctrl.ss_mode != 0)
> > +             return -EINVAL;
> > +
> > +     /*
> > +      * Internal reference clock cannot be used with either Common clock
> > +      * or Spread spectrum, leaving only SRNSS
> > +      */
> > +     if (submode != SRNS &&  !serdes->ctrl.ext_clk)
> > +             return -EINVAL;
> > +
> > +     serdes->pcie.phy_mode = submode;
>
> The AI review also suggested that it may be unsafe
> to set the submode after s32g_serdes_phy_power_on()
> has been called. And that there is nothing preventing that.
>
> TBH, I am unsure if either of those statements are true.
> But it seems worth validating with you.

yes, the usual pattern is :
- phy_set_mode_ext()
- then phy_power_on()
but I can add an additional check

>
> > +
> > +     return 0;
> > +}
>
> ...
>
> > +static int s32g_serdes_get_ctrl_resources(struct platform_device *pdev, struct s32g_serdes *serdes)
> > +{
> > +     struct s32g_serdes_ctrl *ctrl = &serdes->ctrl;
> > +     struct device *dev = &pdev->dev;
> > +     int ret, idx;
> > +
> > +     ret = of_property_read_u32(dev->of_node, "nxp,sys-mode",
> > +                                &ctrl->ss_mode);
> > +     if (ret) {
> > +             dev_err(dev, "Failed to get SerDes subsystem mode\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (ctrl->ss_mode > S32G_SERDES_MODE_MAX) {
> > +             dev_err(dev, "Invalid SerDes subsystem mode %u\n",
> > +                     ctrl->ss_mode);
> > +             return -EINVAL;
> > +     }
> > +
> > +     ctrl->ss_base = devm_platform_ioremap_resource_byname(pdev, "ss_pcie");
> > +     if (IS_ERR(ctrl->ss_base)) {
> > +             dev_err(dev, "Failed to map 'ss_pcie'\n");
> > +             return PTR_ERR(ctrl->ss_base);
> > +     }
> > +
> > +     ctrl->rst = devm_reset_control_get(dev, "serdes");
> > +     if (IS_ERR(ctrl->rst))
> > +             return dev_err_probe(dev, PTR_ERR(ctrl->rst),
> > +                                  "Failed to get 'serdes' reset control\n");
> > +
> > +     ctrl->nclks = devm_clk_bulk_get_all(dev, &ctrl->clks);
> > +     if (ctrl->nclks < 1)
> > +             return dev_err_probe(dev, ctrl->nclks,
> > +                                  "Failed to get SerDes clocks\n");
>
> If devm_clk_bulk_get_all returns 0 then this value will
> be passed to dev_err_probe(). And 0 will, in turn be returned by
> dev_err_probe() and this function. However, that will be treated
> as success by the caller, even though this is an error condition.
>
> Perhaps something like this is more appropriate if ctrl->nclks
> must be greater than 0. (Completely untested!)
>
>         if (ctrl->nclks < 1) {
>                 ret = ctrl->nclks ? : -EINVAL;
>                 return dev_err_probe(dev, ret,
>                                      "Failed to get SerDes clocks\n");
>         }
>
> Flagged by Smatch.

okay

>
> ...
>
> > +static int s32g_serdes_parse_lanes(struct device *dev, struct s32g_serdes *serdes)
> > +{
> > +     int ret;
> > +
> > +     for_each_available_child_of_node_scoped(dev->of_node, of_port) {
> > +             ret = s32g2_serdes_create_phy(serdes, of_port);
> > +             if (ret)
> > +                     break;
> > +     }
> > +
> > +     return ret;
>
> Perhaps it cannot occur.
> But if the loop above iterates zero times,
> then ret will be used uninitialised here.

should not but will fix it

>
> Also flagged by Smatch.
>
> > +}
> > +
> > +static int s32g_serdes_probe(struct platform_device *pdev)
> > +{
> > +     struct s32g_serdes *serdes;
> > +     struct device *dev = &pdev->dev;
> > +     int ret;
> > +
> > +     serdes = devm_kzalloc(dev, sizeof(*serdes), GFP_KERNEL);
> > +     if (!serdes)
> > +             return -ENOMEM;
> > +
> > +     platform_set_drvdata(pdev, serdes);
> > +     serdes->dev = dev;
> > +
> > +     ret = s32g_serdes_get_ctrl_resources(pdev, serdes);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = s32g_serdes_get_pcie_resources(pdev, serdes);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = s32g_serdes_parse_lanes(dev, serdes);
> > +     if (ret)
> > +             return ret;
>
> The I review also says:
>
>   The probe function calls s32g_serdes_init() which enables clocks,
>   configures hardware, and deasserts reset. However,
>   s32g_serdes_parse_lanes() creates PHY providers via
>   devm_of_phy_provider_register().
>
>   Problem: PHY consumers can start calling PHY ops (like power_on) as soon
>   as the provider is registered, but the hardware isn't initialized until
>   s32g_serdes_init() runs afterward. This creates a race window.
>
>   Recommendation: Move s32g_serdes_init() before s32g_serdes_parse_lanes().

I will look at this more deeply but part of s32g_serdes_init() needs
lanes to be parsed for configuring clock

>
> > +
> > +     ret = s32g_serdes_init(serdes);
> > +
> > +     return ret;
>
> nit: This could be more succinctly written as:

fair enough

>
>         return s32g_serdes_init(serdes);
>
> > +}
>
> ...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
