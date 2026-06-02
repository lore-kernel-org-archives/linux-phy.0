Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CD5CD6E64
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 16:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tih7xwGGK3OUel7frsZuyl7GAGqpcH3cWTVWArSzRTI=; b=1M6iTu8RNhKxk+
	KFo+byjbrfgGRyYeCqHwtg0j8TDCtOe1UDdisgKcL8wvgmO3llz9y/RreZxCfc1Wfcd5sKMBEBzsk
	SGvB+nVBK0m5ewq+x3xI3DUvBsUvsMt9mXA3pBXejnUZExAGIQ0LgRy7Mx3rY+IcHtbemxUj+e22U
	D4R3CUNslLsTKGpSFJrRj4EQKpIjaW1BQ7ozjs6x8AimgT6yevkIo4ob4ps48UvRr1ZlIRjN/c7zb
	FlxOEcvhaa00M+4KyiqoEh4Riig+9GNSinBmqTMYMIqe0qMUWxK1ZmcZaWG93G/4S3WQxRI32XOR+
	vGrhMG8rCxrGQKTWSXZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wURZJ-0000000DOti-1QXN;
	Tue, 02 Jun 2026 16:02:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wURZH-0000000DOtG-41wx
	for linux-phy@bombadil.infradead.org;
	Tue, 02 Jun 2026 16:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Zvuxqt8EQAyLjRjKOeZfynJoxMTq7BZkratyX8ZCO88=; b=OOAfpP+LVvyBzb58O4G3sdVOEV
	Hn2u5pWJAxFjN+awQ8YBmlDOtvPllqGNnVbkZiYsjwV1UCq52Jx1zlyKay2yNSK0E4EvULdON9AUC
	v36KXPtVwbMP1fVfEGxhs8DxcfBPv8irHpNNzhLlLROh1pN3OutcyXYDPCGE8leaM0XeCuBCyDrbw
	iPzuJbXBQbswEzGUghd+YittNJcvXkNxMb9UE45lFe/DCtxfI2MrTEcIk6l39Vqa5kXFCvNEUArej
	tnb0bXlWRPzfO+bU9pNSeiFpvJz0bk6UDZGmSS+lphzqAqDkTdwEtPmf/LgpV5dxjp6wF8dHmOnJc
	CRSY/feQ==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wURZE-00000009soT-27if
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 16:02:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 81588443AF;
	Tue,  2 Jun 2026 16:02:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EB9E1F00893;
	Tue,  2 Jun 2026 16:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780416130;
	bh=Zvuxqt8EQAyLjRjKOeZfynJoxMTq7BZkratyX8ZCO88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VGhscnmZrVS40m2ApsDm26tVMSp9X1RychA3k7eAZHP4mPN7fm3knQfeDhPDYSEYG
	 CE61MnCwp2NrgbTZpj4cFPMKT2qwzke+KHeWXcQy4ORCOj3lgzoU1oSLKZ94h+Dq32
	 Qb3+15aNnQ0yYrkTvWFWC4b7NnJff42MjKW4bOlsGSKZ6X66o1yZ7LbGZG4w811uVN
	 f/LuL6sznJQhDs+trAGfFuEk2e10PeoIEIWT8PLXxryVAHfjK7w52BDZoGX74BZv1N
	 SC/QpSHjFjsXNHsl+0jHkItzwZOgn4hByTAtrG/Et/hWdObNkTj96GrfRhAUfErNxE
	 Joui8G22dlHnA==
Date: Tue, 2 Jun 2026 11:02:09 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Incorrect reply address with b4 relay [was Re: [PATCH v6 2/2] phy:
 add basic support for NXPs TJA1145 CAN transceiver]
Message-ID: <20260602160209.GA410207-robh@kernel.org>
References: <20260602-tja1145-support-v6-2-0e0ffc8ee63d@liebherr.com>
 <20260602083856.E92081F00898@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602083856.E92081F00898@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_170212_935068_A6FFBE6F 
X-CRM114-Status: GOOD (  25.98  )
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

Sashiko devs,

It looks like sashiko replies to b4 relay submissions don't get sent to =

the author's email and instead go to the relay's email (devnull). Here's =

the header of the reply:

> Date: Tue, 02 Jun 2026 08:38:56 +0000                                    =
                                                                           =
                                                                   =

> From: sashiko-bot@kernel.org                                             =
                                                                           =
                                                                   =

> To: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kern=
el.org>                                                                    =
                                                                   =

> Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux=
-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, =
robh@kernel.org                                                    =

> Subject: Re: [PATCH v6 2/2] phy: add basic support for NXPs TJA1145 CAN t=
ransceiver                                                                 =
                                                                   =

> Message-Id: <20260602083856.E92081F00898@smtp.kernel.org>                =
                                                                           =
                                                                   =



On Tue, Jun 02, 2026 at 08:38:56AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] If setting the CAN operating mode fails during `tja1145_phy_po=
wer_on`, the PHY hardware is left in normal operating mode without rolling =
back to standby mode.
> --
> =

> commit 4b999361552fc4af356fbf9fbd3b1ca5f2dd59bf
> Author: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> =

> phy: add basic support for NXPs TJA1145 CAN transceiver
> =

> This commit adds basic driver support for the NXP TJA1145 CAN transceiver.
> It enables bringing the PHY up or down by switching between normal and
> standby modes using SPI commands.
> =

> > diff --git a/drivers/phy/phy-nxp-tja1145.c b/drivers/phy/phy-nxp-tja114=
5.c
> > new file mode 100644
> > index 0000000000000..1e8bd169743ab
> > --- /dev/null
> > +++ b/drivers/phy/phy-nxp-tja1145.c
> =

> [ ... ]
> =

> > +static int tja1145_phy_power_on(struct phy *phy)
> > +{
> > +	struct regmap *map =3D phy_get_drvdata(phy);
> > +	int ret;
> > +
> > +	/*
> > +	 * Switch operating mode to normal which is the active operating mode.
> > +	 * In this mode, the device is fully operational.
> > +	 */
> > +	ret =3D regmap_update_bits(map, TJA1145_MODE_CTRL, TJA1145_MODE_CTRL_=
MC,
> > +				 TJA1145_MODE_CTRL_NORMAL);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/*
> > +	 * Switch to CAN operating mode active where the PHY can transmit and
> > +	 * receive data.
> > +	 */
> > +	return regmap_update_bits(map, TJA1145_CAN_CTRL, TJA1145_CAN_CTRL_CMC,
> > +				  TJA1145_CAN_CTRL_ACTIVE);
> > +}
> =

> [Severity: Medium]
> If the second regmap_update_bits call fails to set TJA1145_CAN_CTRL, does
> this leave the hardware in normal mode without reverting to standby?
> =

> Because tja1145_phy_power_on would return an error here, the PHY framework
> will not consider the PHY powered on and will not invoke
> tja1145_phy_power_off later. Could this result in the hardware being
> permanently left in a higher-power state?
> =

> Should the driver intercept this error and attempt to roll back
> TJA1145_MODE_CTRL to TJA1145_MODE_CTRL_STBY before returning?
> =

> -- =

> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260602-tja1145-sup=
port-v6-0-0e0ffc8ee63d@liebherr.com?part=3D2
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
