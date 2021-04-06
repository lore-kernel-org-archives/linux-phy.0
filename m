Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E8DC433ED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 13:57:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 279C161380
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 13:57:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 279C161380
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b3dRjCSzf0oEoysq6OM2OGTCqk6G5E6ZvxQm5qjkGVI=; b=luWL8sg6JGQh9+QQ/u7rTOW4y
	1qBGoY9fWN3KzslboLbibP44q7JA70LKBZFkv2M1molEElECRlm37MYdxnfxJh7XTxZbuG9DS3OSM
	LPSCTK93JEEonz0BZtes7iXJ+DXXZ2Qxqeu7wF7hwVJ1khq+8ur53Nap/Vd4pyJ7wTl1X5EGSrVui
	VCP0eZtuSaB4DEYWIihtY1CLaYB54YTOPM6hl58pAsoUp++pH3SIqQxC1zhagB6prqThV8GloJkS0
	RK9VElgEB6FWSLdqoqAht/cOhXPfrSjxiOnpvC5VJucpKIXWwiWcXQVisigPy+HMIiaCr6gpflL8O
	V3yN8Z2fA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTmD3-002n0f-I4; Tue, 06 Apr 2021 13:57:37 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTmCy-002mzV-La
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 13:57:34 +0000
Received: by mail-ed1-x52e.google.com with SMTP id w18so16762593edc.0
 for <linux-phy@lists.infradead.org>; Tue, 06 Apr 2021 06:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MQkxEhlKIb8/YGqTspPm8HvwN6gwZMNUE/fpcjzsSqk=;
 b=cdhmrtpRTyTTcTeuKmDCCO5D0ns6Ft+eAH7qdPY+V8q5LH2Hf88P3jvn1f+gv6QVQw
 Naqgoq74boPUcGHsSnyISMif967Qk9V/r50B4+GhKbOuu2NLmYvqlYESG18+kxGMNcyH
 /M6yXOo7VJ5H11t3nxMAr3NpFYtoJU4FyYogaVuHd8U5gS7jd5cPPLEivaN3x/Tj+N3H
 wxSsGMZic/UBMkjggXsIEhHiooeUI2DAUMkgZUs0gWYA8DQJjajvSHVCtnUIG6fCN/YR
 GtOp9zw5tV669GgJvtjORd89YGzzBdQNGc3ASgpPeycVZvkB4ost23Lp5hGzAFytlWD8
 YYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MQkxEhlKIb8/YGqTspPm8HvwN6gwZMNUE/fpcjzsSqk=;
 b=Fl2utgj2afwt3S1m8gmIuDRL7QDl2jGOR2AJDny9gJCniGy7uMbX1Lw+ViT0z/2WC+
 eth3Y3N+pWeNsDT4SAFBxBE5iYj5GUYMRCFz+R/jBhpahK7nBg3NQqmN8mQ5ZVvQJGaK
 JbnmHEzbYmgK5gxYQObPKfh6VVJfsKd5QNnkYE8zIbbZq96BDGqp1ZX94eq6N+GH/H2g
 rvHWqQIhKtvmkCNJUXXzHF5N4i9LbjUbdSmuB2FYvu76ShUGp77uL5YXZ4d0Bbm2PQVl
 zShp9Rd/6m6XgRX3+Boi3i17v6GJS165YYB4t8ip5lnxjhG8H0kYRfDGfrZ3lNh7UaPz
 qQ1Q==
X-Gm-Message-State: AOAM533Z2LX4a/LrkTlTMO1oizyUiKnRWnz63vbdGgIM0+STokkmy6mi
 rkxorOJdf04ILiSmEaO/vkLlNXrsXAg=
X-Google-Smtp-Source: ABdhPJxZilVJD4OPMBpDkTrLSvhknPIKK/t0mgpB5UWHofYhSA2ucCeK4PkyXlqI7mTM+Hd8DdI/RQ==
X-Received: by 2002:aa7:cb97:: with SMTP id r23mr37345127edt.106.1617717452111; 
 Tue, 06 Apr 2021 06:57:32 -0700 (PDT)
Received: from localhost (p2e5be490.dip0.t-ipconnect.de. [46.91.228.144])
 by smtp.gmail.com with ESMTPSA id w2sm643680eju.71.2021.04.06.06.57.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 06:57:29 -0700 (PDT)
Date: Tue, 6 Apr 2021 15:58:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Jon Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v9 09/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra210
Message-ID: <YGxo6558N4llZo2U@orome.fritz.box>
References: <20210325164057.793954-10-thierry.reding@gmail.com>
 <20210401110512.2743589-1-thierry.reding@gmail.com>
 <YGvrMJ6FwwV3KOpt@vkoul-mobl.Dlink>
MIME-Version: 1.0
In-Reply-To: <YGvrMJ6FwwV3KOpt@vkoul-mobl.Dlink>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_145732_821215_BC312121 
X-CRM114-Status: GOOD (  12.08  )
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
Content-Type: multipart/mixed; boundary="===============6949283239339415331=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6949283239339415331==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VB49K5E67482yWAP"
Content-Disposition: inline


--VB49K5E67482yWAP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 06, 2021 at 10:31:36AM +0530, Vinod Koul wrote:
> On 01-04-21, 13:05, Thierry Reding wrote:
> > From: JC Kuo <jckuo@nvidia.com>
> >=20
> > This commit implements Tegra210 XUSB PADCTL wake and sleepwalk
> > routines. Sleepwalk logic is in PMC (always-on) hardware block.
> > PMC driver provides managed access to the sleepwalk registers
> > via regmap framework.
>=20
> Acked-By: Vinod Koul <vkoul@kernel.org>

Hi Vinod,

thanks for looking at these so quickly. Unfortunately this missed the
v5.12-rc6 cut-off for ARM SoC. However, all the prerequisites are now
in ARM SoC and Greg had acked the XHCI patches, another option would
be for me to send you a pull request for this series with all the
prerequisites (that are already in ARM SoC) included for v5.13. What
do you think?

Thierry

--VB49K5E67482yWAP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBsaOsACgkQ3SOs138+
s6Hk3hAAq7qJy89VYmGD+e4iSPHVPUITNARNyLqCGsv1pBM0mRrmyHVId3aFfS4G
QapGb9pydBghL20FFyR6TExCDVOJ6jl0wMnKMPw6XYaBVEO42Obhe+GCBt4X43dX
0wbsC0+NI9YPBFfw+ftGMHmngl6UDH8bQnuYbcDyxLFJZIeiAu3PzJ9Txs/gtqw2
Yze1DBKxHy/JmFJdYd8ykniJdo/Mbz+dpFud5cN/qDMI9uxPH8vhtqLLDxnfUDLT
AJ911g328SrMqEyPMsR+nsv44cOCLusXg8Ii3Wasbt6KYHJFFov+KnsV17WMIFqW
p8m/FPP3IQrFdGfPWqj3kXvgTvnVqU+8bydgscSlBIngrU4vEMHqe+o3d0tpbZOf
fU2BDt9mavKXKkNQr5Ck0rTdnbCWV5bsr09pndaJ4KuUMPjVwEU0Uu9S0qEz2gJS
YEhBHOHlX1i12ZoQChgEziFVYQtKpntz5DwEuipacUEdca7T+TkXu5rsFzTmFTeX
pdp30E/DSrzH+j3GM8BDzSfzLwXIr8zQyLr3uBy1CKfLvttoxILHTX3D1ocGFeB6
djWcgqr5PtvqCXKIP5sRmGIb4kvP6SVMbn85pepH+qZb+RtptiblgxHTiSDp9N09
msPOf/dtkhMC++GFB5BYaqMZ/QzAGNM1LmAAHLUsFa7G09DOkOI=
=Tn1+
-----END PGP SIGNATURE-----

--VB49K5E67482yWAP--


--===============6949283239339415331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6949283239339415331==--

