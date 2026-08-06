Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6873BC55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyiid43joEheOG+5+t7TMlQTMxMOJ8ygz0TtSvO5yE4=; b=z6ydZvi/0ttjLt
	X4kHmfSu8TuJ1TUYXZztJxnaTURaH7BtFO5blRHyqXXanOYXsvO+dKN5dGsiMrn6xy9XjtiRCkwkB
	OOl6GgvXa0196KsXCrfuysRUrL/FsVsQwdqOdgTnuwugYogXVPy5JFII/Z7Lp6R9SoedFBuz1MKMn
	xXsFo+tVqJ5F97sPs6jr9kG6otiQ+Fo99VQaiW+/kf0bWFVSObellX3oCSto8vjc+Hx349wVosove
	pfEV/qP9id0KGgpjOam5nz7J8iinHL+PKkEuyfEJAbA12VRv7j307HkaKbCs1n2wAlidNAAmtVeZ/
	cXNKH8rVe7rQ2rRhWzEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrz7l-00000005z72-3sSs;
	Thu, 06 Aug 2026 14:31:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrz7k-00000005z6w-3fYw
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 14:31:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 500C94199E;
	Thu,  6 Aug 2026 14:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7201F000E9;
	Thu,  6 Aug 2026 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786026668;
	bh=9z92muvUMBs/zQdm3D2JnlaPtwGBIzCpTvB/G8+cjrA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ac7cnT4OjpFvQSstdpUSFUOfjWIFfIRFt+SwM04WnAGtCJhwG5wf2NrxpiQC2iQWg
	 vLvGIdaJoUSmaUCsPEjpvuUBDXnHZsinMXOEHIws8KDeQU2anB7loFw/evvmGefNo4
	 gyP0749U1whB/FCAeO0kK55wRsXKA0zOkjvHg8ZgWkP2MulwCc0A28M3LzXmmMH/x4
	 g/CkOAUVX0ttstk9Tk62sZGn6Am5Lv20mQ2D910MZ4esPXsqvHyJ5rzTa3VzX9dZQ+
	 QqJ/KduGwaBaW9XUIAAgqYzTHmzcmLZeSb54EcXB73U7cTCdzEo9l9ju+/jmgmUsen
	 8IiBuc3x1LvwQ==
Date: Thu, 6 Aug 2026 15:31:03 +0100
From: Lee Jones <lee@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>,
	vkoul@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev,
	olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH v8 04/12] mfd: zx297520v3: Add a clock and reset MFD
 driver
Message-ID: <20260806143103.GN2869284@google.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-4-7a107b00f1dd@gmail.com>
 <20260727184155.2F0A61F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260727184155.2F0A61F000E9@smtp.kernel.org>
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

On Mon, 27 Jul 2026, sashiko-bot@kernel.org wrote:

> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] Platform data for child devices (`mfd_cell` arrays) is imprope=
rly passed as complex pointers via the `.data` field of the `of_device_id` =
match table.
> --
> =

> --- Patch [4]: [PATCH v8 04/12] mfd: zx297520v3: Add a clock and reset MF=
D driver ---
> commit 997b3ee44abc6ec239c36327d1c3fd90393542dd
> Author: Stefan D=F6singer <stefandoesinger@gmail.com>
> =

> mfd: zx297520v3: Add a clock and reset MFD driver
> =

> This driver registers child devices for the zx297520v3 clock and reset
> controllers. The clk-zx297520v3 and reset-zte-zx297520v3 submitted in
> the next patches will drive the respective functionalities.
> =

> > diff --git a/drivers/mfd/zte-zx297520v3-crm.c b/drivers/mfd/zte-zx29752=
0v3-crm.c
> > new file mode 100644
> > index 0000000000000..3a4f6cd0756e3
> > --- /dev/null
> > +++ b/drivers/mfd/zte-zx297520v3-crm.c
> =

> [ ... ]
> =

> > +static int zx297520v3_crm_probe(struct platform_device *pdev)
> > +{
> > +	const struct zx297520v3_crm_data *data;
> > +
> > +	data =3D of_device_get_match_data(&pdev->dev);
> > +	if (!data)
> > +		return -ENODEV;
> > +
> > +	return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO, data->ce=
lls,
> > +				    data->num_cells, NULL, 0, NULL);
> > +}
> > +
> > +static const struct of_device_id of_match_zx297520v3_crm[] =3D {
> > +	{ .compatible =3D "zte,zx297520v3-topcrm", .data =3D &zx297520v3_topc=
rm_data },
> > +	{ .compatible =3D "zte,zx297520v3-matrixcrm", .data =3D &zx297520v3_m=
atrixcrm_data },
> > +	{ .compatible =3D "zte,zx297520v3-lspcrm", .data =3D &zx297520v3_lspc=
rm_data },
> =

> [Severity: Medium]
> Does passing platform data for child devices via the .data field as compl=
ex
> pointers violate MFD subsystem architecture guidelines?
> =

> Instead of mapping compatible strings directly to zx297520v3_crm_data poi=
nters
> via the .data field, should this use an ID enum or integer ID, and have
> zx297520v3_crm_probe() switch on the ID to select the correct static const
> mfd_cell array?

This is correct.  You must not pass one device registration's (MFD) data
through another (OF).  Use a defined integer instead and match in a
switch() statement.  There are lots of examples of this.

-- =

Lee Jones

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
