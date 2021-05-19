Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FBEC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 15:18:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E440610A8
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 15:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6E440610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f2L01eTmiOpj/5AfKEDKX7cXy6ifpf330JLw4INjgnQ=; b=FLr6Meub7H3Jv2/DvJePeM4CX
	D33IUyMlkH0dgMWaxdz+BvICPjgmF0kYjg0VgPYg6lWdGuHq6TbHTwD7AkSd7/xoKxghQB0TWS+p7
	lPo8CBIxDigpnxHB3iCdLSpef6G18TrFHlxDPkby343IG8yU09I4qEZ6ldUYKotmUio3wGeewuF2W
	KBZgnEp05yMY90jYbrpbivCI6swdOhbRHkL2sa6XlE86W+G4Pq22v5Ao7hAoYqd7XGd/meYzvrzOe
	89Vu4lWXqECtOsmbS0pCEBheS9p06m7L2KrsHJMdbUzfZZoiYxe2K6OqVkeR4jy+kO5dSc2o9BL61
	ZSevvKKEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljNxh-004MHA-UZ; Wed, 19 May 2021 15:18:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNxR-004MEG-R2; Wed, 19 May 2021 15:18:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=E8p3UdfSArXFmlIeHMaV0UWf0YNcTHf31Kz/oRQvB2Y=; b=zVUrpqwuExLbRzFnf+UaLfQDcY
 s3DEY+UmyVh4fEHhSoDvH8+Kb5byPdjmAW2sr3Ek4Am200e6jnu8tFdgQuFYf8/qf6E9pT85A8Ci0
 EAt8wPrFRcN39OhVemEhtEWqkpSluKOtPIJEUy+PnSPdIxjeObeUhN5CLr1SiCeDqTmsXrMojX+5j
 eqBT+PUzFjf8tIk8M9A9ygWRgaU0Lpd87piwzMKXG2rBXK76mcp0NUQKeWN63lEaHlJdQPLPN6Fgd
 U2xSfoqWjdX0WGPXUHnVO1LwHCDCveWRyeSDBbtiQBc7wlyLH8RTDgTFmey7s/zeUWX3OC2pnnc12
 vRkX+7Gw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNxP-00Fa50-Cg; Wed, 19 May 2021 15:18:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 571B66135F;
 Wed, 19 May 2021 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621437478;
 bh=c+IEVTunFe30w7ogB/IAN3huK2t9VfW9QwLl3VpCa08=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nf1qUo57ru5boOQUeQi6aZRa+idhytrYYWQBsMIh0N76Pv9ZELRHmFnK01Xu3q2/6
 MB6JrKgYdO2D6etejTV1zfK2BJmiS0XNkSz2f+HfWQmH2lc004fqqNkgn/vpcdAAgF
 qepnKyQZPQrUSk13bwr0+u054K1h6PZmnGuo+Zh2zkmzPOyNdGSEqBqg902bo/Q+o4
 +TjRt4gILLbdY/OhH1m8VuoRdoR2ZPzdN4r+RvOkNFWEI0NU/nEU0s2OEREzaEpSNC
 2qBgU0xveUp1R6FzjaCn1u/o4wsne77m8hqm0me9Lp/9gtqqAFkMe4fq13pICszSsR
 tKh4WJyfdSrlw==
Received: by mail-ed1-f41.google.com with SMTP id w12so8076093edx.1;
 Wed, 19 May 2021 08:17:58 -0700 (PDT)
X-Gm-Message-State: AOAM532ACFQg4c/gYJh2zvxmR2Cnbc2N14dtR3e3AZxQOCCGTzERNmae
 F49aR6VdqiJmd/o3dtrE0kfuUxXrRnf4kW6Xtw==
X-Google-Smtp-Source: ABdhPJwOYwVtRLx9sKZdict2H1FAMFQvZK2Ew7pbG3fTyjBtHO+tC9tIIgY6UaUnSE+9VfiPaZ5PHom5bkNsTthHsFs=
X-Received: by 2002:a05:6402:124b:: with SMTP id
 l11mr15226813edw.137.1621437476871; 
 Wed, 19 May 2021 08:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210512122346.9463-1-jbx6244@gmail.com>
 <162101023435.2009214.882597722137585064.b4-ty@sntech.de>
In-Reply-To: <162101023435.2009214.882597722137585064.b4-ty@sntech.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 May 2021 10:17:44 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLbumF-x8yAO2C5wTG5cDpVmgFdqADrEDguQ-ZidMj25g@mail.gmail.com>
Message-ID: <CAL_JsqLbumF-x8yAO2C5wTG5cDpVmgFdqADrEDguQ-ZidMj25g@mail.gmail.com>
Subject: Re: (subset) [PATCH v5 0/4] convert grf.txt to YAML
To: Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, linux-phy@lists.infradead.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod <vkoul@kernel.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>, David Wu <david.wu@rock-chips.com>, 
 Liang Chen <cl@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Tao Huang <huangtao@rock-chips.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_081759_486691_AB56B6AA 
X-CRM114-Status: GOOD (  12.68  )
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

On Fri, May 14, 2021 at 11:37 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> On Wed, 12 May 2021 14:23:42 +0200, Johan Jonker wrote:
> > Changed V5:
> >   changed compatibles for rk3066/rk3188
> >   add rockchip-usb-phy.yaml
> >   move and restyle grf nodes rk3066/rk3188
> >   remove applied patches
> >
> > Changed V4:
> >   revert separate schemas for each 'if' subset
> >   add additionalProperties
> >   move properties to top level
> >
> > [...]
>
> Applied, thanks!
>
> [2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
>       commit: f2ffa8f9e32d38f5c37e3c61c5b02d434057f3db

Patch 1 is a dependency of this, so now linux-next is broken.

> [3/4] ARM: dts: rockchip: move and restyle grf nodes rk3066/rk3188
>       commit: a082a4ba218457fd52256e4357184b58d3fcaa49
> [4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
>       commit: 19486fe587b8ed17daf87a6419b51e3a65ce565c
>
> Best regards,
> --
> Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
