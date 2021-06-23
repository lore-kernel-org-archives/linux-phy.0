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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617A6C48BE5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:29:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B4AA60234
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 07:29:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B4AA60234
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1oAgPFC4C8IvpmB/A4VcLC7bI9ubxWU4tpJJ3wk8Jc=; b=VcNa9EtHjlo7sh
	IwN2Cg02jctvkYCQbMr2lrGFznwzH13b1c3lhwnPzFzdGGyWs5Wk3A42OGRxxjVu+AUyZDlDlChin
	cGZSM02La5KIspiYApkjzfPUp3vctSaZ7KUq+J7egefAS15CAymXKiQGS5tAOEXQgjGz+dv/YO49X
	kgF8bM2X4wBOrZ3I2mrNI2AOor6TB+MHcMXVreo9jw0nZF/CMhbNzackyskb9Ydx8Bz4cDGtaw882
	VAYcjDsdW+0oY7ACsfO+aNlriy+0O1HqFoe6Ilhx3CcLqtO6lAIHRuu4v0fXAZ/HDYzBElfSxYJP8
	1sYCmwWAsoS3DeTMXMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvxK6-009jgr-La; Wed, 23 Jun 2021 07:29:22 +0000
Received: from mail-vk1-xa32.google.com ([2607:f8b0:4864:20::a32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvxK3-009jfY-6G
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 07:29:20 +0000
Received: by mail-vk1-xa32.google.com with SMTP id c17so305466vke.3
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 00:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8OiI0V+yxMIONf4gEnVaBVWNdRCT16qVKxJ40BTU8ic=;
 b=p+aXkgOclQiJf908cOV14Nzac6usd94n7ZjzLLxxVaILz2otBr4Fv2gN9coGh3QPSO
 B5CrC0rGLI2xOYoITpLWdjys5dvKyYWZw+3fpeKfcUQZMfqgNkSO07eli3G3pzYzYwUe
 t6KU+FzDyY6ZRqEKzuW347wQw6I0O21iUWswRVqFQ6ixxXNF99IJDCtn6Lf3pfPlm0zu
 GgBIYuYgQTdMvbSQbAC6LoqgxeGoCI0Jr2fpY+AuImLaCD2JEUAbqnIksYOAZuSz2phZ
 XetoWNq2kycBmOm5VjzhDzoNzqWQvd4NDX23/0Bj5iryK5UOg9L+23tOfp5nJI/c24wh
 Gm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8OiI0V+yxMIONf4gEnVaBVWNdRCT16qVKxJ40BTU8ic=;
 b=ZeZesCv79nzIyTll0gu99iq+cKSjFDFcm0wshtmM6UI22SatvFFdsEKnyB32wUpphZ
 dwFAvc7XbG04fvTAz9pWnfYcZrub2YlITCSirhr2haSGcu0mZhKgOC0a0h/ULxIbPMqU
 /s8dLvrOQJXKQV1LnBuqDB60mvKPlxc62SNrN6LoITq/yeuRbfcyBIKMe+2ix3nR8WEH
 Bf4567yb+i+UaF6HEmcelTFFcy80Pe+juckz/DdLQg9LuR6j4yGiOFUQ0vk1UqijLg+m
 6Pq5gzvZCEp5NBNfdzTpIupuuIDq7JlwuBTIQzkHsZui42B40lrMc8nDgtHaCJehoq3o
 sSug==
X-Gm-Message-State: AOAM5301zCcZwFVJ9h2ClnzJjoHPF7yYang2KJG8N1M45vzVsKatP8pv
 5elszwTP1lA8LrOlEd9O8hnfO0m7h5zJ7HxnjjA=
X-Google-Smtp-Source: ABdhPJxOnWA5wALAFeYNUynI/DbnbsK1KxwIavA00LNxgW2H+j4Sn3hVD5biN2Sck2rGqSX+cZuYgchyPR4cfOR2iXg=
X-Received: by 2002:a1f:fecc:: with SMTP id l195mr19508445vki.21.1624433357432; 
 Wed, 23 Jun 2021 00:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <YNLRn/5JkyYhYwxi@matsya> <YNLhBZokBed/jxNC@kroah.com>
In-Reply-To: <YNLhBZokBed/jxNC@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 23 Jun 2021 09:29:06 +0200
Message-ID: <CAMhs-H8hV8Lv2B3vCcCqgWmpg3jbhLF8kna2SoFbSd5xV3ARXw@mail.gmail.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Linux Phy <linux-phy@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_002919_294104_9827040A 
X-CRM114-Status: GOOD (  22.72  )
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

On Wed, Jun 23, 2021 at 9:21 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 23, 2021 at 11:45:59AM +0530, Vinod Koul wrote:
> > Hello Greg,
> >
> > Please pull to receive Generic phy subsystem updates for v5.14
> >
> > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> >
> >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.14
> >
> > for you to fetch changes up to f7eedcb8539ddcbb6fe7791f1b4ccf43f905c72f:
> >
> >   phy: ti: dm816x: Fix the error handling path in 'dm816x_usb_phy_probe() (2021-06-21 12:04:18 +0530)
> >
> > ----------------------------------------------------------------
> > phy-for-5.14
> >
> >   - Updates:
> >         - Yaml conversion for renesas,rcar-gen3 pcie phy and
> >         rockchip-usb-phy bindings
> >         - Support for devm_phy_get() taking NULL phy name
> >
> >   - New support:
> >       - PCIe phy for Qualcomm IPQ60xx
> >       - PCIe phy for Qualcomm SDX55
> >       - USB phy for RK3308
> >       - CAN transceivers phy for TI TCAN104x
> >         - Innosilicon-based CSI dphy for rockchip
>
> Why is PHY_MT7621_PCI only y/n?  Shouldn't this be able to be built as a
> module?
>
> The USB phy enables this driver, which now forces me to build it into my
> kernel, which does not seem like a wise idea.  I'm not sure which commit
> in this series does this, but that isn't a good thing.
>
> Ah, it's 6eded551cefe ("phy: ralink: Kconfig: convert mt7621-pci-phy
> into 'bool'"), why is that needed?  We are working to turn more code
> into modules, not force them to be built in, this feels like the wrong
> way to go :(

This was turned into bool to automatically be included if CONFIG_PCI_MT7621
is set. This should be the only requirement to add this phy driver for
real hardware since it has nothing to do if there is no
CONFIG_PCI_MT7621. That's why Kconfig is now:

depends on (RALINK && OF && PCI_MT7621) || COMPILE_TEST
Am I missing something here???

Thanks,
    Sergio Paracuellos

>
> I don't want to take this series because of this at the moment.
>
> thanks,
>
> greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
