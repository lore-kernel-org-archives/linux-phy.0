Return-Path: <SRS0=WJYd=IY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A08C433DB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 12:44:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0653E61999
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 12:44:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0653E61999
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ioBlKMuGad0Qwqv0d1CFH85NCowLGQ47ae4n7+GG1WE=; b=ki+5M9a4zhJgacXDj1UVLbIEQ
	BVnLNVCmYiJCkQ//UZVuCkHaKNSUPMAORLwlcwQ0fp1an1q1jjZdBy3xqf6Jsm26oT9zQpiN5jA4T
	P37utPF+djiOAlb4NF3hpDlJvZPzgKklqgunSTvKQLxqivkNGSYXeMlojqZNN6mzWXQOR4pTRqD2c
	2TpnUHt4TT6ZVtap0XnPNDXjzhKHovlBMt0Lw9TpEpi5zLTno4XJOytWvzLmfjei+8BCgHwiDeDGm
	DaCyOSrQYohrodvtxGucjj3LSzUbCqDyqhkyJm5roiA82yVLPSRE0Q7Mn5E0zwexe/vIg5//QNM4K
	d6MrAmlUQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPlor-003X7J-AM; Fri, 26 Mar 2021 12:44:05 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPlon-003X6Q-By
 for linux-phy@lists.infradead.org; Fri, 26 Mar 2021 12:44:03 +0000
Received: by mail-ej1-x632.google.com with SMTP id w3so8207799ejc.4
 for <linux-phy@lists.infradead.org>; Fri, 26 Mar 2021 05:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zHs2rz0P64Y16pZ4KFsK15GuVu5q4UHDRiwzGtDX5Xk=;
 b=KEQHQzWz9TsC0TbmvPwkTSOndS4w/COOp9yZlcU36HPaJG6Ki6q4WIaH4qDYd/Mmf2
 xK2wT4QwPluTs+YCrvQlTEmuH4g2363RiJ6g8SQGu/t7d+lbcXbDHD0zDVWRoKdgueOb
 Iz2rF7NCdreolUAmmhX/AK2JU/HtM5suN5mG7cJHSlp4DjvfGGy0xqPoHa3oAXvEsodV
 K0A6hg37Y47Ir1A6kaYH7aTnSB06SaXc4A1v8ii4OE+MOZVM0jJ1x1fqURQA5vQ4RzUa
 Z7N7URJLvDENDNFDjOyS9AqpUepCj1AZgDg68R4u8paXTH0x0O130dfYVPt/fR90/KH1
 5V3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zHs2rz0P64Y16pZ4KFsK15GuVu5q4UHDRiwzGtDX5Xk=;
 b=VtOQe1JeQnQ6Qmqjc3Z1f0hUsVKDv6/Ds122cDIVetYEH/Nq5Y7uaZCHOCefXmULfB
 TBWGDmiTBCCG4li4opLm+tTR6vnY3XsCB22wd3r4no0QtcHAx6F+zv88xFRgR83sz0Rw
 34fm4EzwcuUT8F5QHrH23gLSsoBcSEG9n+U3Xo3GIufT1rthvkudYYKaG4MszAiFdd4v
 yIfbFOgEFw3YGABzshdRRpv5BgexGrxuF3xeP0Eai21zt+GurjRGth6gc+wKoiXqHo5H
 nn95MK9pLp7pkws+SlS5UNDWHO3CN8Vf6BP5XZ54NSK5sgQd693wNCiDyw7POAsFTfBz
 t6TQ==
X-Gm-Message-State: AOAM532K+dRymaTsbsR0UuOiRTSKNCloIxgTK+8yspICB3bmx+rqvXOw
 8TAczYflOxex5RJmdg2Ez/Q=
X-Google-Smtp-Source: ABdhPJwEO9FcXpyM3blf4SD+DstxaqueR87M3PPzgmo5NhiszndF0ytGwkHBhmXsdrYBwNpI/sO7Sg==
X-Received: by 2002:a17:906:4055:: with SMTP id
 y21mr14904860ejj.507.1616762640686; 
 Fri, 26 Mar 2021 05:44:00 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id gj26sm3752684ejb.67.2021.03.26.05.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Mar 2021 05:43:59 -0700 (PDT)
Date: Fri, 26 Mar 2021 13:44:21 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH v8 09/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra210
Message-ID: <YF3XJVD5PfGKxfxn@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-10-thierry.reding@gmail.com>
 <20210325202616.xgjkdg7zev6apofe@archlinux-ax161>
MIME-Version: 1.0
In-Reply-To: <20210325202616.xgjkdg7zev6apofe@archlinux-ax161>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_124401_533319_3E43C096 
X-CRM114-Status: GOOD (  12.91  )
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
Content-Type: multipart/mixed; boundary="===============5669326137740032699=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5669326137740032699==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HPPmyzACOAwF/C+y"
Content-Disposition: inline


--HPPmyzACOAwF/C+y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 25, 2021 at 01:26:16PM -0700, Nathan Chancellor wrote:
> On Thu, Mar 25, 2021 at 05:40:53PM +0100, Thierry Reding wrote:
[...]
> > @@ -2306,6 +3150,26 @@ tegra210_xusb_padctl_probe(struct device *dev,
> >  	if (err < 0)
> >  		return ERR_PTR(err);
> > =20
> > +	np =3D of_parse_phandle(dev->of_node, "nvidia,pmc", 0);
> > +	if (!np) {
> > +		dev_warn(dev, "nvidia,pmc property is missing\n");
> > +		goto out;
> > +	}
> > +
> > +	pdev =3D of_find_device_by_node(np);
> > +	if (!pdev) {
> > +		dev_warn(dev, "PMC device is not available\n");
> > +		goto out;
> > +	}
> > +
> > +	if (!device_is_bound(&pdev->dev))
>=20
> This breaks arm64 allmodconfig:
>=20
> ERROR: modpost: "device_is_bound" [drivers/phy/tegra/phy-tegra-xusb.ko] u=
ndefined!
>=20
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/219610189=
2?check_suite_focus=3Dtrue

Good catch. I replaced this with:

	if (!platform_get_drvdata(pdev))

which will work fine and is equivalent, at least in this particular
case.

Thanks,
Thierry

--HPPmyzACOAwF/C+y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBd1yUACgkQ3SOs138+
s6HLmhAAg6VGGfAUPFpswBOLFB6vY4Imt5wexLqOOm2CVgQjoVAt25YGeBNljtdZ
bSduOlYIT+QG9IrKj4zSCjE6RI3y3i/SggxS4Xob7ecbHh3ZRpDeGIcrJY6+XHqd
Eh2yu3NElQWSI6e6yADhr5wjrma6bB7jA9OfXU5VdUZn/OvQnia3Z0d1CWh5eOKj
XhtJzeuVELoTwi/Z1STdTjXT9Rcw7ttaYCyI/Pu4rrE7u3Vcwmu/N2pDf+CjRlkP
WcZwEFg3WnqpG+zxBYgPsDvEcicJcmkre4ssDGhIztMcIyVmUpGHUlV5pgknskBQ
u1Mmbu7zdYJsyFdQ3PnoOInpjn0adIp/kMrpToVDULHD8UbploTho/qa2J7XaCoz
EFkXiTJnzNWLNkWBsD+SwqJ2joLLvbopTh5vfW7mWaDxGN/gwLVNNR/ueSuuWUeI
wDmwygansqDJ5A7z1eaHi9MHrBTxxwWR4HpCzEd/nH0v/twBVj+Uyhfvm2ZCvzT9
rWwrAg7bS6d5yQCQPEqVaS23PS4AVP0ddaXf489KdNYwMcCrWEQPlcByEg84APhY
OtzEb6pxI25jpm7XWZPVAOp8XpBT4Xl8iPx0DGSWv1YZXXm+riSa+RVMsJp8KsAU
mGsd/PLWctV+cZjMO8BBZx+kCjTZA2vqZEQva8h2O0vERObkYUE=
=zpPK
-----END PGP SIGNATURE-----

--HPPmyzACOAwF/C+y--


--===============5669326137740032699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5669326137740032699==--

