Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CC2C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:30:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4567C6145A
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:30:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4567C6145A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1HGnc6jX/EXEtt2QeOHGKvDu/IrPVxCFzCRnrzU1Lgo=; b=MxMKnN2UmdxRKeLH5NYM3LYJJ
	EHA0qnzdh108FaSHCMBifH11gwpu5R3/CrB1pspOC6ypNcVHrviG+GcNuywAzyN3/wBOmtmJd4IRy
	/6xRdMxihGvwO6gtLuaWOO/vnN1s5OXjHWk5Niya2jwnN5qwuWlBg6wZrfMWY+wMXDMshUBSTPKML
	0lRtIDcEXNRqFCQHoTVfMjRtOXvzG7brJ1K+W+yQ47X++MAZZAj/ANTrvvlGKcNe5FJlW4MWEiWx7
	fxmdhIbc/CbYoZkrLVGfMtg7X7TnG3T2ZcFF0fhnwOyteXuH1YeFlb7C0eYBrXHukS7UNzbbr4wxH
	aSmRbVmMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhW1a-007uCL-Ly; Fri, 14 May 2021 11:30:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW1Z-007uCG-8T
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 11:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I9A3nXY3kUs1dCLrxrDBTwMVEeu4aFNeSYtm9K3Kp8M=; b=NaEbVEwVcCP1O8pSp8aP7zC/uT
 J0j4JJr0Bm35JuF7jGvkS8MNRlDbk3lOsHzLYabkEwtmRNkY0wUpc32RDQCtsrz2tBYuB1Md3HQwa
 8kFXP9sA3PTMsk+HKXQIwXmkM8iCaaf/JQJQ8uS0921UbqPLvBoFbIhJisrfXp6qjjs+NyBLP900J
 tgz3Jk3cUjdI44zkGGSy5E8lhA3h3amrkipwTsAQxMYt++vyAcbslGb3jVsRJ1YIFObi3xJ9Pw/G9
 7o+p7olI3jrzmCZdD72Qv8Q89A6wlE/xLMOeGNPokxUJbCr1ozH1PvuXIxGKwe1c3O5Dp3PqlW0DR
 X/qGqslA==;
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW1W-00BwDH-LK
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 11:30:31 +0000
Received: by mail-oi1-x236.google.com with SMTP id n184so28119000oia.12
 for <linux-phy@lists.infradead.org>; Fri, 14 May 2021 04:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I9A3nXY3kUs1dCLrxrDBTwMVEeu4aFNeSYtm9K3Kp8M=;
 b=Zu0kMNaA+VfdfU/cHDDtfr8znlbneoVWuur733RqIN4ZBC0OuXa/1ESBC9MKcs+yPV
 /3+grRzw6qjrCQmJssWN3/mN4sGd8q7dtv13xguBZr+OjR/jxL4N42JgtJb3m1SSM579
 Jrhj+faVyCFWmCikRk8hXucEfqbYHw5nPWa+Z4XGgwq7XrhihB67SQ+aghSKvtTWP2lD
 a+N+W95KUieb2Y5gyTH3BkDtkjyFXzyfrtqFRYxNJViYA1CkdOxd9JmUegm+xh+7RAaB
 kdXwPYuwAsqde8TfSBJhgKdYsuBTLQhHSartMAwBkhijZyhESWtibNa4w7L1+2qjyCAp
 vAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I9A3nXY3kUs1dCLrxrDBTwMVEeu4aFNeSYtm9K3Kp8M=;
 b=ZlNB9uIAWSRleg8uhgIJdihVNkUQg3i7mtNw9YrXWMa3SH4vNfOi+5uMxPQCwOhxHy
 V7J6J1YOqWUUDjnov3GLAMjhPe01BDXLo3vc48oLq44E2OV3EHSvJJBsluZ9d5Kmr2u/
 8AbpyIAjnPbry/+LRmGlqKeGF1nnclraAzmSXv8M94iDeH6GbgdYZs3sz0wp/QBpsHEX
 DgB8iWCys0ZdanVJuiKBPi19SjRcbzsRXRuXUNBs+mlJ4G/ptIRM8fNBT4NzQpiLO11L
 sLHdRPm1RzXmpbvetqzQJs8LAG5FSfx04C8Qih3ac2A5uYXqj3H5O3vds6rufGppHyJd
 svzw==
X-Gm-Message-State: AOAM533PumUSy3hR6VeTwR4cA+IBKRO3wwLp0N6qJPYhi+JCTm+xAOKw
 zo97fW75ie+hWyP8LZk8GUbPGStIlnroPd9/zD0=
X-Google-Smtp-Source: ABdhPJz/ERXhEYZDgOaIYDv7u7TRctVMeZb1O535axRV9MDzBlsvmc6AlLq+npWyEpXhKg16Cv0rRZvByOjuJxWekg8=
X-Received: by 2002:aca:ab8c:: with SMTP id u134mr6631520oie.158.1620991827668; 
 Fri, 14 May 2021 04:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
 <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
 <YJ5ddkGytGI+kAt9@kroah.com>
In-Reply-To: <YJ5ddkGytGI+kAt9@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 14 May 2021 13:30:16 +0200
Message-ID: <CAMhs-H8kjL-TdX97mvw+Q3X-HybR3Ox8KrXUY3vJp2jKwv4Q8g@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-phy@lists.infradead.org, 
 Rob Herring <robh+dt@kernel.org>, linux-staging@lists.linux.dev, 
 NeilBrown <neil@brown.name>, Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_043030_718797_E6C7949C 
X-CRM114-Status: GOOD (  21.64  )
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

On Fri, May 14, 2021 at 1:22 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, May 14, 2021 at 01:19:18PM +0200, Sergio Paracuellos wrote:
> > On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
> > >
> > > On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > > > Hi all,
> > > >
> > > > This series contains some improvements in the pci phy driver
> > > > for MT7621 SoCs.
> > > >
> > > > MT7621 SoC clock driver has already mainlined in
> > > > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> > > >
> > > > Because of this we can update schema documentation and device tree
> > > > to add related clock entries and avoid custom architecture code
> > > > in favour of using the clock kernel framework to retrieve clock
> > > > frequency needed to properly configure the PCIe related Phys.
> > > >
> > > > After this changes there is no problem to properly enable this
> > > > driver for COMPILE_TEST.
> > > >
> > > > Configuration has also modified from 'tristate' to 'bool' depending
> > > > on PCI_MT7621 which seems to have more sense.
> > >
> > > Applied 2-6, thanks
> >
> > Thanks, Vinod.
> >
> > Greg, can you take patch 1 through your tree?
>
> Sure, can you resend it?

Thanks, I have just resent it.

>
> thanks,
>
> greg k-h

Best regards,
     Sergio Paracuellos

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
