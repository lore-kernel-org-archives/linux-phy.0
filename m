Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19F8DC48BC2
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:43:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB3B6611AC
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:43:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB3B6611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=st1Cn7kLrhd+Z1Ngv/lRz5kGI+BWf48Lfoy+hJORNG8=; b=300uSyb/m20Xz7
	zi+wEeCpMCB3SGhPL/7TvqAWYivW1atbDNFLIleXYXStIDuAXSXgf0Vpv4kmIfUQx80eiIFsDZgZp
	AI2vSh+YLGq7xFxJjH2wHsFoKQlgHNjrdUvph6sgbahASmwfh1SmgCPHO9sNk+DCKQDViBwGMkp1p
	X82Fpxw97H04+oxsDh41G5sn0ggqEHX4ODRp0mxNHfRh3ZQEuNV1w2tb6uevI/jp7+j7EwiqGlKNH
	QzYAZnodKjsc9M2Wv02wallcTFLN1Bj5fyhoJWc9nZM519gsK18EKtvtkR+tzgh8HTgaLuXifC6v+
	G7rKG2CG0oi7iEtJwXfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxXp-009q2C-8r; Wed, 23 Jun 2021 07:43:33 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxXl-009q0u-Ro
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:43:31 +0000
Received: by mail-vk1-xa30.google.com with SMTP id f2so323255vkc.0
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 00:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZFZ3Qf8H+XBIa/oMisZw/D3Im/ahJP0cwpid0U6HpQ=;
 b=evyDOdVUL1vKeraZPbu3NIBKCJQBy9XLmCOqpla+U9XapwVrklQH9J71PfiGp00kHO
 eniZFbVjF6Ehznv42jnyGHVUPDXz2drD8VB1IGIJ2Rc8Pyv9qgB7MT2lC4z3iH9ONVA9
 nQOc+nonFaFSp4VsoRYPKoIyHDcFc/T3DetIP1yU+BEy9+H4JjksUz9IkYfFuALZYCvR
 3dRTnEKijkcPnUJK4FRX0j2UvqlbgiuyDOk3d5Bz9hcIIaRDgZRNZchbcEBRPMFYvve8
 Z5KGWY+sckgu8gD0B9phkRlcjUQhR1dEUOmqQCeTRLkrmYQXOru6XrVvlTObd7ZxbbWq
 nGcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZFZ3Qf8H+XBIa/oMisZw/D3Im/ahJP0cwpid0U6HpQ=;
 b=rsDJvBWJscmBA3izPaC934RyeM+LENuuaMc7sVwKo7QqkhFmJ+LwLx3wKs8WC54umh
 uu2xVvl1ghXaZ2Rd4xgW5ShDSJcU/VsPqMT75y7TpgvpGLjy8vmBs+mMhWVGZk2KV+M/
 dL472JCpB7cIpscw8aiblyyNl1ksdBFTZrMu2fgAAVMk+oAL5x7iCEUOkA1l5LcdCocz
 RQ6Ub4bLjV5CcqLTOt8PMvv1iD5/1dtU2hGrVB/QQS+J+qp7+CBYgUF7H9Jr3dfLF5j5
 DaOnikMKwQWNZN1yVRVNd7WI97uNcyrT9pu8PYY6S2VcqlSif5d/hd0nz+ZvRTTnQNlz
 rlTw==
X-Gm-Message-State: AOAM532+93flsJ+7SPJ4Rt4NuqPUDwwCi8Hu7VxuAmEm5HpZp9/oK/5n
 YQMrnzvlJWk1ndiSxNAowUq/xFtZdFV9tdV4FaQ=
X-Google-Smtp-Source: ABdhPJyPkjbAwuzy5EfZ9X+hciMT78zICSfqEwCYGFxexmdHDyDnl6ZlOok2f/Fsv79wCJnWSa8C6Q/ODtUcCiPOReE=
X-Received: by 2002:a1f:fecc:: with SMTP id l195mr19530608vki.21.1624434208862; 
 Wed, 23 Jun 2021 00:43:28 -0700 (PDT)
MIME-Version: 1.0
References: <YNLRn/5JkyYhYwxi@matsya> <YNLhBZokBed/jxNC@kroah.com>
 <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
 <YNLkYPa/+Gs88loj@kroah.com>
In-Reply-To: <YNLkYPa/+Gs88loj@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 23 Jun 2021 09:43:17 +0200
Message-ID: <CAMhs-H-dvbenJbuA-rvnzsW_85Rp+Ox8yW3+0g7M8=C7tTO3dA@mail.gmail.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Linux Phy <linux-phy@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_004329_953048_DBE8F341 
X-CRM114-Status: GOOD (  28.80  )
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

Hi Greg,

On Wed, Jun 23, 2021 at 9:36 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 23, 2021 at 09:29:06AM +0200, Sergio Paracuellos wrote:
> > Hi Greg,
> >
> > On Wed, Jun 23, 2021 at 9:21 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Wed, Jun 23, 2021 at 11:45:59AM +0530, Vinod Koul wrote:
> > > > Hello Greg,
> > > >
> > > > Please pull to receive Generic phy subsystem updates for v5.14
> > > >
> > > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > > >
> > > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > > >
> > > > are available in the Git repository at:
> > > >
> > > >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.14
> > > >
> > > > for you to fetch changes up to f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f:
> > > >
> > > >   phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe() (2021-06-21 12:04:18 +0530)
> > > >
> > > > ----------------------------------------------------------------
> > > > phy-for-5.14
> > > >
> > > >   - Updates:
> > > >         - Yaml conversion for renesas,rcar-gen3 pcie phy and
> > > >         rockchip-usb-phy bindings
> > > >         - Support for devm_phy_get() taking NULL phy name
> > > >
> > > >   - New support:
> > > >       - PCIe phy for Qualcomm IPQ60xx
> > > >       - PCIe phy for Qualcomm SDX55
> > > >       - USB phy for RK3308
> > > >       - CAN transceivers phy for TI TCAN104x
> > > >         - Innosilicon-based CSI dphy for rockchip
> > >
> > > Why is PHY_MT7621_PCI only y/n?  Shouldn't this be able to be built as a
> > > module?
> > >
> > > The USB phy enables this driver, which now forces me to build it into my
> > > kernel, which does not seem like a wise idea.  I'm not sure which commit
> > > in this series does this, but that isn't a good thing.
> > >
> > > Ah, it's 6eded551cefe ("phy: ralink: Kconfig: convert mt7621-pci-phy
> > > into 'bool'"), why is that needed?  We are working to turn more code
> > > into modules, not force them to be built in, this feels like the wrong
> > > way to go :(
> >
> > This was turned into bool to automatically be included if CONFIG_PCI_MT7621
> > is set. This should be the only requirement to add this phy driver for
> > real hardware since it has nothing to do if there is no
> > CONFIG_PCI_MT7621. That's why Kconfig is now:
> >
> > depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
> > Am I missing something here???
>
> It is forcing it to be built into the kernel, why can it not just be a
> module?  You took that ability away here by making the value a 'bool'.

I see. Thanks for clarification and sorry for the inconvenience.

Thanks,
    Sergio Paracuellos
>
> thanks,
>
> greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
