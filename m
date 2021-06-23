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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AFA2C48BC2
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:42:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C157B6128A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:42:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C157B6128A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlJ2umFQtn+Jpk/mL88GCtdX1sbzEl7lyCh9JiDN0UY=; b=u8Zk47cqSjlBKF
	S/woeF7jUwwakCnAt6E60HRFl6KjD9y2/ZOfiUVp5chf9fQ79Kxw+uDXhZsqDKSu+OJa0d0d9gdza
	/g81+oLG7rql1LT9GrvH0N/MzCkRWkTDm4vGmDC98fCYoUbl0yvv5R3qpYavhfk3RNjIpgKWy6LrN
	fQm8vheTwWv40G7dC7yUt90dF69K92DIelrKWGpLVfqqmmkyg+dR6dfbLWGJl/7EcH6dalMxm0gXF
	AD4IeKTSAwJk06AzNJ3ZS/6dtJUrmJP2RGJcmT6sLgz2UwSKVXaAVwY8G5Gf9YYf6NjCG6MeZh7Ay
	Zcgf3+54OBibV4Db9a8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxX1-009psN-78; Wed, 23 Jun 2021 07:42:43 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxWy-009pr0-7E
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:42:41 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id ay19so304139vkb.9
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 00:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QWcEfVlRPDE7umTD9TH5Mp46BQKHp2+rPBHbAgzkd1c=;
 b=WFXgt/vs7D5F/sigAvBFHavC7noNwNZEY3WMuYc9rSPYAmeXU54W1qD98lpSKjopo4
 FHsiEExQpdXaVi0H5zT5FbR6I9OYPkDmTHCFUuXJcmMkQn4hnC7TfzazA+kMV//ioBrh
 vr6ZK2R1x9x0L4Sl8ZUYVbYrujhi8jP65cd1V3Z7iM+RAoRfgGY+oVN6RZ3OEPz1c2bG
 CTMLaaj9I+y+K6y1MaF9h7coptJr4qXhnDoNIIJvHVUtHglGxezUa/f0LGtxQjhrCz62
 ZRKJucfcVM0GIvmsPhsQ1H7OlZAHUEirEUpZ42aVh2H/YzqUc7FSrFZDThV65pYN19GV
 nOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QWcEfVlRPDE7umTD9TH5Mp46BQKHp2+rPBHbAgzkd1c=;
 b=RDr2uC3rkylspddjDAsP+mMoaBHThP92XZeor+rw78IfIXjM8m5u+FQVDvARnhLR64
 GfgAH4rHQJwxRo0Z9SG8qz+r0AMsRAHvII8pj5xRK88rNqmBxbnVu9Pkg39CeS5GbpVm
 HJjfobNJTY00ciI3nwMU4dc6hNSSsv0mUWwazgonijZRoIHtBLk74Pk8rwNqji9QN8yi
 VXCSgJsbHvwgREg8XEx7f7lT9fK5tAI010Fkxa1pZTWmDZeBhkO5MOkHNY/xEc5jgY+u
 DwaodYi6j8yGrYgLgpptiaSaV9vNpJjYwG1NBXp1nxYtMYpl8HbxQVOnkqnTwHrBJysH
 IWRw==
X-Gm-Message-State: AOAM531Fg0Hc2m0rTKk8kYjezmhxi8pafzeREws4QWBvZxumFcFzXeyS
 gBU8Zpr2ZviKQKZjla6SPb/ynRZwXVhuBiDisMs=
X-Google-Smtp-Source: ABdhPJzSgJRrYHZT3DVbgEx3XWriz9RjcrKdEkq10nkDQsLGnbXsM2wBpgkXHKKS6XKOVXyhrNptRUEYB5y4a9BPyp8=
X-Received: by 2002:a1f:5487:: with SMTP id i129mr22624012vkb.14.1624434159099; 
 Wed, 23 Jun 2021 00:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <YNLRn/5JkyYhYwxi@matsya> <YNLhBZokBed/jxNC@kroah.com>
 <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
 <YNLkUNrqIV13NtMI@matsya>
In-Reply-To: <YNLkUNrqIV13NtMI@matsya>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 23 Jun 2021 09:42:28 +0200
Message-ID: <CAMhs-H_PZttV+RQoEke7DZZmpTsuHBmjSJciTzvT6MKjwS4Nzg@mail.gmail.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Linux Phy <linux-phy@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_004240_333731_7FFF6917 
X-CRM114-Status: GOOD (  29.02  )
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

Hi Vinod,

On Wed, Jun 23, 2021 at 9:35 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 23-06-21, 09:29, Sergio Paracuellos wrote:
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
>
> Agree, I should have _not_ picked this, sorry.
>
> I am reverting this commit and sending updated series shortly
>
> > This was turned into bool to automatically be included if CONFIG_PCI_MT7621
> > is set. This should be the only requirement to add this phy driver for
> > real hardware since it has nothing to do if there is no
> > CONFIG_PCI_MT7621. That's why Kconfig is now:
> >
> > depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
> > Am I missing something here???
>
> Yes a module can also be added. I think you should select PHY_MT7621_PCI
> in the PCI_MT7621 Kconfig

I see. My bad understanding here, sorry. Thanks for reverting this.

Best regards,
    Sergio Paracuellos
>
> --
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
