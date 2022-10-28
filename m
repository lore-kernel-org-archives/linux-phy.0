Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0267BECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3uwWqXH55jiVTctrGE3VIugj6XrAYePAbg9V0c8gAyI=; b=yotOFY+geXsTfI4W0t7d08eo0m
	JVw8v4GoEeZ1hxrpSsConhm9+JE/9Kq8aACilRoPtiBkzQmwEZiTf5xBkbmV0W6dBruWQ0mfD6Ro3
	kVHpiuZZlOwIZWnO3KKR1xSW+VRdWbouOQKVNTElUtWN3LXvePyMinvyHsCXjC3YhJWfkHlQmDkr1
	7K0YCjHLF9O/jQqMTNkqYs4KRBvlf4YHnRRho97TDp8XyNTyrRB+oaAsjdsOsBpXZs9YArcIZRNCX
	qeKmEVg1XKbwvMopQzPSARVXW3le+v0JkQXB34WNqScdDpnMDnEs17kxkfTV5S9dSZkvBAg9w5Cku
	xvZvjL9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOdd-00H81b-7e; Fri, 28 Oct 2022 12:39:05 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOdb-00H807-5l
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:39:04 +0000
Received: by mail-ej1-x631.google.com with SMTP id q9so12724701ejd.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 05:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R6b7kwg2WdDmY6cz9AakvTDLGqm+2/XRfuZcHo4JzlI=;
        b=edsoFRNhow/344HliqnP78Nu6McqtN0HTJNgsIUWyOp7wcqLGZrRmFA0ReEx5yhUOD
         drAU+pubF3GbxOcNo98+s4tjxNvrZZm3ovUE6xCgNBWKln3d1UggSKFeHG4VnU3n4rPp
         VAnFdOKGxOPSlLGWHCbkN/9kspeI+K7YWDf2YduR35stoHRzpdmCKjAhG/3Qp/zXSt6K
         V11AHANMQ7KgC8X81S53RBwF+UcFsGebZSRM+lKbnFxETvh4SX3WxilbhUmeFBBF/+w4
         A2LEWO/soXzEYGnKYr6HPr4AkTM511tgEyIzHEw2h9Vzf8M48tMVUEOl+JZ9nF3aCvTi
         +vbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R6b7kwg2WdDmY6cz9AakvTDLGqm+2/XRfuZcHo4JzlI=;
        b=blSgKFGsy50h8Pe43aWsAMuT23QIWorx2fzwXwsG+HD0/rQhp8wJxezHYp1zomam40
         5ke5xNb+uPHlSHZJd7JdRfDOqSTC6mAb906/YlDl/bmGJrYkz0doOtJP4EP1d2r89gEG
         7XB7eJcOBb3aZbKNPlMMW6M40eV42jNNHtOtbXVswzxXnHfhPqSCmm6mh0V49GR+Y4pW
         +aqnEMXtV+aA3dw6lB4EzPFERflUnH0XV46AOgOrdt6/GLm6lIXwDKvfLCzYENn2ZLnJ
         eF7w4EMlx4ClcP0h7hMS7ElgYGIOyVE+BAFJMRRrKR1tbVj38foGAuIyd+eY4YR3YlTF
         N3CQ==
X-Gm-Message-State: ACrzQf3GgVfXBsvcBkfugaufwy5KAu6syKNNd86/ZI4vuAzFSgfOFX+S
	Q2qSIVOtVckeRiK0OwFT9bklKkNv7zg=
X-Google-Smtp-Source: AMsMyM5KnL1wkxqYW6p6I6VHF1z1SahRA1W6Hhu9pGmq0/xsQhltyL8KFY/7jc2NLhLwrk9+dKqNrg==
X-Received: by 2002:a17:907:5ce:b0:730:bae0:deb with SMTP id wg14-20020a17090705ce00b00730bae00debmr48272599ejb.181.1666960726223;
        Fri, 28 Oct 2022 05:38:46 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id pv3-20020a170907208300b0074134543f82sm2075974ejb.90.2022.10.28.05.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 05:38:45 -0700 (PDT)
Date: Fri, 28 Oct 2022 14:38:43 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jon Hunter <jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>,
	gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com,
	vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org,
	mathias.nyman@intel.com, jckuo@nvidia.com,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, singhanc@nvidia.com,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 04/11] arm64: tegra: Enable XUSB host and device on
 Jetson AGX Orin
Message-ID: <Y1vNU1KeUH8LvG0r@orome>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-5-waynec@nvidia.com>
 <2059dfe5-b084-42a4-7f35-9da9561fc12b@linaro.org>
 <b803bcf9-fc47-5239-ffe9-707925f324de@nvidia.com>
 <5676bcd2-14fc-4e1d-643e-89e575d190c3@linaro.org>
MIME-Version: 1.0
In-Reply-To: <5676bcd2-14fc-4e1d-643e-89e575d190c3@linaro.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_053903_236152_77BB86CD 
X-CRM114-Status: GOOD (  20.03  )
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
Content-Type: multipart/mixed; boundary="===============6778761573902909838=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6778761573902909838==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/hNVoH5xZwyCFIYG"
Content-Disposition: inline


--/hNVoH5xZwyCFIYG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 28, 2022 at 07:27:09AM -0400, Krzysztof Kozlowski wrote:
> On 28/10/2022 05:33, Jon Hunter wrote:
> >>> +			ucsi_ccg: ucsi_ccg@8 {
> >>
> >> No underscores in node names.
> >>
> >>> +				compatible =3D "cypress,cypd4226";
> >>> +				cypress,firmware-build =3D "gn";
> >>> +				interrupt-parent =3D <&gpio>;
> >>> +				interrupts =3D <TEGRA234_MAIN_GPIO(Y, 4) IRQ_TYPE_LEVEL_LOW>;
> >>> +				reg =3D <0x08>;
> >>> +				status =3D "okay";
> >>
> >> The pattern of redefining full path in Tegra is confusing - I have no
> >> clue which of these status=3Dokay are correct which are redundant.
> >>
> >> Do you?
> >=20
> > I understand you may not like this approach, however, this comment is=
=20
> > not really relevant to just this patch, but a general comment. But yes=
=20
> > we will ensure that this is correct.
> >=20
>=20
> Just to clarify - this status looks redundant, but I have no way to tell
> for sure...

But that's independent of whether we specify this using the full path or
reference the node by label, isn't it? The only way to make sure that a
status =3D "okay" is not redundant is by manual inspection. I don't know
of an automated way to do that. Perhaps it's something that could be
added as a check to DTC?

In this particular case I don't think the status is needed. As Jon
mentioned, this device is first defined here and status =3D "okay" is the
default, so this is redundant.

Thierry

--/hNVoH5xZwyCFIYG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmNbzVMACgkQ3SOs138+
s6E9wRAAvxEstA7fsndJGHjQBJ1VnmgD/ut80RMq/RbIlNqAXTvWdomp7Kg0qf/z
HicY0UPrvJyw+8gSLQJ6Pi5syvsYlT15ORzmmui1lTylQ37EwD/z+gh1YoW5ajws
8K/p8ax7ivzd1O1ARWfdP7NCdocn3HJqgrIFvgcYC1wjlf5tqoxklBU3YVqrlTDI
TeULZVqjsV85W9x7Bi0BSbkRbiHcyCbRMRnlz3rjBynmydO/Um6CDZvpGysukVik
oz4uS7PGfMm7yDcVSEiVaqXfa551Z3AckA/trp2Py+8/K5qMc5PI58EOzQMQhHF6
6SNSdmmPhFWK6HcYx6XMB7q7retFEdAJErNXK9ko6izVmXmJ5sPjHCg00vxElGCm
jnVajKP3Okc59tWcxOauCw5ATbyqsifxF2d5AnPWgflEIpjZuAUWdhYZOich+YcE
7hyCZaQ73kUhVMJkiTTVaI22Va3Aql7UWoPS2ZfJhV/U0NbMykhG+rlqz+JHGo+o
ya+3Fp5nStQCGAUyNcsxDsEycsRRwhCKWNvI2EaqrWmMOg+tSfV+AjZVyOcXyPuy
nqtLr6u+wJ3dob/P9dza5p/RepoeqpxEsaEHa5AUQs32ckFdltiT2pSZT4WxUggA
dyOMFtaNlN83jb74q22ny7ie3OUSyi1TtmriJRFw19+gnNmCsd4=
=PpVN
-----END PGP SIGNATURE-----

--/hNVoH5xZwyCFIYG--


--===============6778761573902909838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6778761573902909838==--

