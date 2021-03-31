Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602EFC433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:31:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 033A76100C
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:31:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 033A76100C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3G319dq/vt5sGbHFo90+8Q4si98TbBdncMhqnrLHOLs=; b=bzqg6wxgM3vUFSTAOJaCyelJb
	dp34qCuWcPR8r21WHY07StnzR28T3lSD1FdaTw7a5a60ndr9SMOJuN0cmM8/jukK1+fQpi4VDeMP2
	duBBi8EXt8wbrSeovQJMoeFjjDroL8BPCHzWdchkS6RYer0AxSuunkebRg6+IJsNWhGkuk77SP7Pm
	gGIv1yQQlUz+IQ+FdrSKwvQBQAaTcLXdwebFIPFp9FRLYdrK63787IxxL970R/8mAG30ydrhSt4xs
	1aKFAClwHzfHg062gJllJRV6+c6tjy5F3JB5LIgMSRqzPUYmN+1jUj31OyaVbOg0wEjSy42Mh24CQ
	8eFFqfzGA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRdkv-0076bP-4I; Wed, 31 Mar 2021 16:31:45 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRdko-0076Z4-Q0
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 16:31:40 +0000
Received: by mail-ej1-x636.google.com with SMTP id a7so30986685ejs.3
 for <linux-phy@lists.infradead.org>; Wed, 31 Mar 2021 09:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WYLc7tpXXlAdzQcAM50oPpnT2QvCfzZa3KC3TsmrTA0=;
 b=DbLfIr+jCyhFpfkmEFPvn55IdcfEfDzRQQRKPGfJN5f7C6SJN7gpJYe/XCypcsjo0O
 4IC4DeELTRvs246b2L/g+V08C0140ZGwHLcBwRC7qn1N2YgIlvQRx3tfqIMtv6VLCFVX
 8cPtyOFSyBKpaD8H8+cxgRE2PcQXpMtDf4WMflX506JBnWhcHYuk+O0r7zc4JSZ3Avwu
 ia/40l+WZjNCTezR+4rl2XNYcHdwSTMGgMMgdb/3zBiwQyzENUOJa9S2B4hBQ5q3a++Q
 8eAFictjjETBkEKvf5A5drl7pRTZy8b8/lOg3gQAYNBV0fnF07hGeZaxthU5CHEW1uJV
 ekwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WYLc7tpXXlAdzQcAM50oPpnT2QvCfzZa3KC3TsmrTA0=;
 b=Wdc62SaBrMRcexTPE/YCxEOVRwAK62xKSZ4RiLyLmpnbe4tq8a2sGP2+65YdvVLT14
 dwd2+bOdToOhqQzBwG9n4xnA1qdvMks/Op8gnYfxMsJJfGk4TaIoxT1YjZHeSTVDYfGF
 ZAOGIElykdvnxjK6c1jZc6nShc1hHFkzuC3aiKGmCjp62GXX1dRSZqCpm0aCAgSEHWHe
 h0CSTomCnYNU4BrLWq//VFwWcYlRfHVOzybLs12M6fwBxds0M1X2cpFmjnvKsq6txtNv
 9Zt6XZypwY2vyKSbksQUJJyRM9WXUMvZ05e05gFgufDpjT1wEf5NwrwU2t4+DE+E6a96
 oKwg==
X-Gm-Message-State: AOAM531NOwiAWOh4yRmewnZnKNEUmwVFXAWlbhj3x6lyG7HpToOYVDIw
 yARUm8ZKtQGudjX7fZMKzSI=
X-Google-Smtp-Source: ABdhPJywJZ0p2Osdd/88+UOBzGYvSL2LLonJcD3VhQAXpMV7ZNhD9VK0KfC5Fzpn3KiPxA/cyvtfVQ==
X-Received: by 2002:a17:906:4c56:: with SMTP id
 d22mr4615970ejw.426.1617208297305; 
 Wed, 31 Mar 2021 09:31:37 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id v24sm1534193ejw.17.2021.03.31.09.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 09:31:35 -0700 (PDT)
Date: Wed, 31 Mar 2021 18:32:01 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 03/13] phy: tegra: xusb: Move usb3 port init for
 Tegra210
Message-ID: <YGSkAcRLByY8zNnu@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-4-thierry.reding@gmail.com>
 <YGMx5cLmX+d48XKO@vkoul-mobl.Dlink>
MIME-Version: 1.0
In-Reply-To: <YGMx5cLmX+d48XKO@vkoul-mobl.Dlink>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_173138_986516_69ABE1E6 
X-CRM114-Status: GOOD (  14.82  )
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
Content-Type: multipart/mixed; boundary="===============4013091694355573108=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4013091694355573108==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cJELGr4MZm8FUmtf"
Content-Disposition: inline


--cJELGr4MZm8FUmtf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 07:42:53PM +0530, Vinod Koul wrote:
> Hi Thierry,
>=20
> On 25-03-21, 17:40, Thierry Reding wrote:
>=20
> > +static struct tegra_xusb_usb3_port *
> > +tegra210_lane_to_usb3_port(struct tegra_xusb_lane *lane)
> > +{
> > +	int port;
> > +
> > +	if (!lane || !lane->pad || !lane->pad->padctl)
> > +		return NULL;
>=20
> This looks problematic to me, so if lane is NULL, it will still go ahead
> and check lane->pad which would result in NULL pointer dereference.

No, this isn't going to result in a NULL pointer dereference because the
compiler will short-circuit this if the first expression is true. If the
lane parameter is NULL, then the entire expression is going to be true
no matter what lane->pad and lane->pad->padctl evaluate to (because of
the logical OR) and hence the compiler knows that it can skip the rest.

This is a fairly common construct in kernel code.

Thierry

--cJELGr4MZm8FUmtf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBko/4ACgkQ3SOs138+
s6FiNxAAi2R7ZrHKx1o63uc5yjc36lI4yojCCgztYi1WzRo1mQZjlGWhhtrA88rK
LipD2lMrK2Acm9ZxURPgWhFet0MtptgZ0fbBbfGjOXwdMKE/9nGsHvpMqFAeHdmC
UgMhyAavacUnP9WnlwjQpoIooc8VPAS/IzuKmcNUZH6v9k3ncjv1Rm9Cc1cdoOBK
dP5KLQWH2/LFLfTzPfyJF1XayW5U4QZ7Z40qbubcs0xE96oam++LLfk9NgMsCoIR
M1W4xtgQNPIkM2LFjHhGR7Vx539mxD/eKOYBtGM5oiIUThWmmgrSTyweOl63tkOP
a/Z8E7ypZWC5G7kpTXreDZ1mp3cS/VKOXRzKMDiNZ9CHoAx+yWtrSA0dvL9VYXpA
UrBfypQO36bwR/XMhNB04s3q80Wmp7FygbmBKsVE6u/inmdYLaeKHmsSfZuVk7IY
LVJgOPwWxHErqakmTCro2Ja+vv6UctvLQ0e0IRZiuJ4rqu7tp0CMGrYv2p2p4dKK
wsEakXE8kq4nerNsTL1io6ISBvnA8Nqesu6YSWhxDNilZtYg6jr9dbBDFL56XB8F
alej1rDjL9KLKZmxW5unXLVv623xbgYtVnrr9xbuHCGbI9+knev4JsSRekk0cfxB
kSRNU+fgjJB2MmsTTioUzvnSjAvlsYC6np0ASaaSBebZf2oex6g=
=AgrR
-----END PGP SIGNATURE-----

--cJELGr4MZm8FUmtf--


--===============4013091694355573108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4013091694355573108==--

