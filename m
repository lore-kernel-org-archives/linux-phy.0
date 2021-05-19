Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8AFC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 23:19:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7551611BD
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 23:19:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7551611BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aRNZIHKngUGhrE2OnfBsBypsmQ0Ys99ybCk0UETqGVA=; b=G29+L72tHNd/pumnLEkcw1t3p
	9Hjzx8n6BJxeJyK0c3Qn5BsutBdYHHT4EhZJuF8+cue2rSMXwFXnRo7+kdJMtWs2OINgVM2WO03p8
	j5lRrniXxZgQyI8+cWdnq1v11SSosI5guuaiFK8NufglNZDNxbz0LwJAyRezd1fATGYFAR+dRVCEG
	L137qY2RZ48q8mTqPfrIEU3yN3jpdoJBUPzynB6VWoD4RmUYPBZ4TAqScDB7e/EueG/n33F3A+Pv8
	qV76M/C6TTa0IJU/Zi1xITJA91P9FOLh9+dzxTPvkJsmVQV/q5Cf+it7xxgCApVUWLQuTwqom4dfo
	5xxtZECgQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljVT7-005KEp-Pc; Wed, 19 May 2021 23:19:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVT0-005KE7-9c; Wed, 19 May 2021 23:19:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=x7fk5Hii2WaeqHVMEzXW0pNZGN3d1UiqovDhQzpmt44=; b=ZvKI0K0dk2iXgiEUhi0yja+S+p
 YKCg0uhreXQVTHvyL4tf4dVwMXaqWol1UC/T0oo48o31JQk5M2pqwTc7BQKVt58gGGWW7s/Jn3lnm
 /1hpMD2nOjE9spQzTvVrQ2U5TWd/Up3NFH4Xw9gAkIirHTO1v/xHqnefm2Wl2f934FhzASxmqoyaj
 eZCc6LZJiuFqV/R1vOywB9Y5G4GUcqEOixs9nqJ3MtE+tsdYugJwkKqVwaaGSOg/FgcKiY7+lek/L
 Ja6eR0T9jLPJXxLvgQNIk1p0ViRscBWfn/CsHQcxNVZ7p6tQNPEHxbhKvJqMikgwRZXoacW2Wa8Q6
 vmVxYKQA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVSx-00Fq6O-SK; Wed, 19 May 2021 23:19:05 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ljVSo-0003K0-IG; Thu, 20 May 2021 01:18:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-phy@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod <vkoul@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Tao Huang <huangtao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: (subset) [PATCH v5 0/4] convert grf.txt to YAML
Date: Thu, 20 May 2021 01:18:53 +0200
Message-ID: <3206265.usfYGdeWWP@diego>
In-Reply-To: <CAL_JsqLbumF-x8yAO2C5wTG5cDpVmgFdqADrEDguQ-ZidMj25g@mail.gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
 <162101023435.2009214.882597722137585064.b4-ty@sntech.de>
 <CAL_JsqLbumF-x8yAO2C5wTG5cDpVmgFdqADrEDguQ-ZidMj25g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_161903_947022_E84B5A0E 
X-CRM114-Status: GOOD (  17.75  )
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

Am Mittwoch, 19. Mai 2021, 17:17:44 CEST schrieb Rob Herring:
> On Fri, May 14, 2021 at 11:37 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > On Wed, 12 May 2021 14:23:42 +0200, Johan Jonker wrote:
> > > Changed V5:
> > >   changed compatibles for rk3066/rk3188
> > >   add rockchip-usb-phy.yaml
> > >   move and restyle grf nodes rk3066/rk3188
> > >   remove applied patches
> > >
> > > Changed V4:
> > >   revert separate schemas for each 'if' subset
> > >   add additionalProperties
> > >   move properties to top level
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
> >       commit: f2ffa8f9e32d38f5c37e3c61c5b02d434057f3db
> 
> Patch 1 is a dependency of this, so now linux-next is broken.

dang ... I've dropped the patch and recreated the for-next
branch, so hopefully this will go away with the next run.

I'll reapply it once the phy-yaml gets applied.

Sorry the breakage
Heiko

> 
> > [3/4] ARM: dts: rockchip: move and restyle grf nodes rk3066/rk3188
> >       commit: a082a4ba218457fd52256e4357184b58d3fcaa49
> > [4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
> >       commit: 19486fe587b8ed17daf87a6419b51e3a65ce565c
> >
> > Best regards,
> > --
> > Heiko Stuebner <heiko@sntech.de>
> 





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
