Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC308CD4F5E
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 06:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PV0ult53BB7RcpSk5u3fy5aeC6ylaZENRDnqjPY2sY=; b=GBfg1HXpU67634
	nZyqTcM+TA1VyP1c7giCAO8SdNcSEOfRDyLH6K7s8frGxk1GYYv++NOoFiv8oh0jDazssNSsJNiB4
	zA3Nj2AAi0vaH+IRJSxI4DW5xtTsUk7Hs+/NBivx2tIzrw7uUnLEOWZbFTvqMEvUzLXTAf06W4ldC
	O6+hvcrHi4P6/UCVc6k6GfHJIeUw6ZGgIOU12biC39Ca4yfb/jFyL/PohM/qDnIkKoYDGfaRkLMy6
	y4fVVrtvcmidyDE/8bIRnYR2QX+z0cSeddNQjUTE8hMRP5yuWBLCb15DdcBy9TF0r6EQmVFA2685n
	2bloVuV2Yc+Pputt7YsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPa1X-00000003cRH-1qRq;
	Wed, 20 May 2026 06:03:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPa1W-00000003cR0-0rdl
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 06:03:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8C2EE60129;
	Wed, 20 May 2026 06:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B871F000E9;
	Wed, 20 May 2026 06:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779256997;
	bh=6S6hrCruss5LC8K1fgWmaZed670Mf6Bj94w1WWc5rfE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mg4kDDvS8QOvPpc6VWaRHj5BUqX4QE3GXJdlTfrWcxppkjychjo8Ucz7IrowwvDuw
	 ClIWg6bP4t6WaE7iFhPt8KAt1mEhvhKe6CcItEI3i9ySSTvagvZyOSasn8uqnBRRUk
	 a7FIhO9zHih9wUNKwMD0PnKxwvtpmxLAnt8diYv/+cBFAVXQHGn7Yj+WoEELIbdKmx
	 UULsidvs0Xg+ghoQUX6qvEnHf1WUZGuX8gJeNj6dSfBRjMFAid1feOyCLgBtuKF6Wb
	 Q7dVnmhJJFuHiQA9NlnaunjQM9Tl7Wan4kZ0w9rcapEkAkcKElMQPzhHIwNMJwJwMQ
	 jVFwusOJY97tg==
Date: Wed, 20 May 2026 11:33:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: rockchip: inno-usb2: fix missing kernel-doc
Message-ID: <ag1OoAl3ZceAW1Rq@vaman>
References: <20260519110134.282428-1-vkoul@kernel.org>
 <20260519111949.CD491C2BCB3@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519111949.CD491C2BCB3@smtp.kernel.org>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 19-05-26, 11:19, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [Low] The commit adds a kernel-doc description for a struct member `clk=
out_ctl_phy` that does not exist in `struct rockchip_usb2phy_cfg`.
> - [Low] The `Fixes:` tag in the commit message is malformed due to an ext=
raneous trailing double quote.

Thanks for reporting this. fixed.
> --
> =

> commit 532f790b604de504c1843006c2bda7a4bcb6937e
> Author: Vinod Koul <vkoul@kernel.org>
> =

> phy: rockchip: inno-usb2: fix missing kernel-doc
> =

> This commit documents the clkout_ctl_phy variable in the kernel-doc block
> to resolve a missing description warning.
> =

> > Fixes: 2775541de058 ("phy: rockchip: inno-usb2: Add clkout_ctl_phy supp=
ort")"
> =

> This isn't a bug, but there is an extraneous trailing double quote at the=
 end
> of the Fixes tag.
> =

> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/ph=
y/rockchip/phy-rockchip-inno-usb2.c
> > index 8f4c08e599aa2..a69e7dbe18195 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -171,6 +171,7 @@ struct rockchip_usb2phy_port_cfg {
> >   * @num_ports: specify how many ports that the phy has.
> >   * @phy_tuning: phy default parameters tuning.
> >   * @clkout_ctl: keep on/turn off output clk of phy.
> > + * @clkout_ctl_phy: output clk phy registers
> =

> Is the clkout_ctl_phy field present in the structure definition here?
> =

> If the structure is missing this member, adding the description will
> trigger an excess struct member warning instead.

Ideally right but in this case it add the missing one which should have
been clear from the change log

> =

> >   * @port_cfgs: usb-phy port configurations.
> >   * @chg_det: charger detection registers.
> >   */
> =

> -- =

> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260519110134.28242=
8-1-vkoul@kernel.org?part=3D1

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
