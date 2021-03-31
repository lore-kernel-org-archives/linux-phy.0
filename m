Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BC5FC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:45:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 236006102A
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:45:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 236006102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1oemkICz10GW5NbGdkmoHuyCCMFANt4HitVB4QjyPMY=; b=i09yVK8avFqSbveJqVRCJS9KM
	qeEKj1Lh4R5gecH3Ghw85f4i1vPiPqsQ7XGIj6XEIlIMS+KoG04FFQFOfJV2JyKH3/Ax0f7zbdX9H
	daTVf163S2KQKiimyugzK6RSXcZSOURePThRkrF9lLdU0ATfxPZt1ySxx+8jKH1oOVat+C0Tbqfwq
	id+2DNKuAgYkWSM5t5k4ahNbV2m6BSmhCIqjELJaSum/uolyAy6bTx3pDpKVpgIRccGrYiCQhi3qt
	xg8hkigJhAEiIQXspmnTZ1cCrCcdfcsjoO8n2seiLNiww5i7qIx8m1FBXVKn9QgaEcsAv0NKEYb/0
	LMYoLywkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRdxp-0078B1-Dw; Wed, 31 Mar 2021 16:45:05 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRdxl-0078AH-3d
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 16:45:02 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u9so31030895ejj.7
 for <linux-phy@lists.infradead.org>; Wed, 31 Mar 2021 09:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=otH4FKql+m9GEJITFfDeO134ix6C/z4KiXTf8Ah/jNA=;
 b=JZSrb/oAf2nPpFbAYhXKRSVcaZTb2TYA5PQ6pavenYdSJZVAkww9G+N3CLHaLfpXfi
 WNEAVlovDZq146ZCK8EbeehX4NIY8b/5h8C9q/egWHoTJsGDf1DnhBXueuu8FBx82LgE
 /5iVwdvCcGfRDIvFETbzNbVkXNT0m/PDUB8y5yghr28S7nPUmPnerRRcm9KAIlixhcw4
 phLMqLgLnGQT6CjN0dpAGK5HZ7luboWciskoEb2CcjJRQTmjJNIejqd8k6QVTkT//+mn
 ++fq9rUhekuXRrhwnIBs3dwQVR/RF+0Bxr4RRp9/KeUYb3mwD0JBVs0idulTJV7tNeva
 Lpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=otH4FKql+m9GEJITFfDeO134ix6C/z4KiXTf8Ah/jNA=;
 b=EGoYVghG1fZd2zTWt3CtCk2PqECpRB5dzBv4jRM1AtaZ1uX8MeYcIfhpa6NoHi7ysl
 RagS70TCAsXdBgEoEJrFM6ZsEo2PVgzNFUr34hX3qsbzEgzFb24Yx86b9FWKTpVLYbcN
 YoUg0qW9yQ/Vo+Ck2n+mzg6gjeV935bl6HrLrUxR5zV+Chwgl8TJbv7u2Edf4H8gK7kU
 jM7FxDzO3LD2m4FLBJk2Rdp2OJppJmeg/EvY9fVfy2Tc0fmsKSSNUGtCgW+9zJcDAsar
 MtDwNc+EFMm1nGIRT/rRUk+xAeu89SDqMV6rOYc1ie8zB+KADDwRb/AWbF3laCKvy+8q
 9iLQ==
X-Gm-Message-State: AOAM533usEmbdt/dhp/e3KhYaDl9BSg244pKfGbd09xfkrXlZAD7/hjZ
 cOmeHYCvy65e4fit/MBe9k0=
X-Google-Smtp-Source: ABdhPJxGsxhKrvY7nrHqgYzGz4G0qJtfRp58mNJSWiX+iCCLm9nqUTGrJ+GtWn5M+S1J5Tz9A+GO2g==
X-Received: by 2002:a17:906:2cd1:: with SMTP id
 r17mr4461369ejr.429.1617209099758; 
 Wed, 31 Mar 2021 09:44:59 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id h24sm1515349ejl.9.2021.03.31.09.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 09:44:58 -0700 (PDT)
Date: Wed, 31 Mar 2021 18:45:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 06/13] phy: tegra: xusb: Add sleepwalk and
 suspend/resume
Message-ID: <YGSnJRlY4+RzjR7b@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-7-thierry.reding@gmail.com>
 <YGM0ZOroZolJ9zEC@vkoul-mobl.Dlink>
 <YGSlj85/3kkfoDiH@orome.fritz.box>
MIME-Version: 1.0
In-Reply-To: <YGSlj85/3kkfoDiH@orome.fritz.box>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_174501_239364_58D6F226 
X-CRM114-Status: GOOD (  19.40  )
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
Content-Type: multipart/mixed; boundary="===============2797519426410836990=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2797519426410836990==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6tyHdok+qz2c/VGy"
Content-Disposition: inline


--6tyHdok+qz2c/VGy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 31, 2021 at 06:38:39PM +0200, Thierry Reding wrote:
> On Tue, Mar 30, 2021 at 07:53:32PM +0530, Vinod Koul wrote:
> > On 25-03-21, 17:40, Thierry Reding wrote:
> > > From: JC Kuo <jckuo@nvidia.com>
> > >=20
> > > This commit adds sleepwalk/wake and suspend/resume interfaces
> > > to Tegra XUSB PHY driver.
> > >=20
> > > Tegra XUSB host controller driver makes use of sleepwalk functions
> > > to enable/disable sleepwalk circuit which is in always-on partition
> > > and can respond to USB resume signals when controller is not powered.
> > > Sleepwalk can be enabled/disabled for any USB UPHY individually.
> > >=20
> > >   - tegra_xusb_padctl_enable_phy_sleepwalk()
> > >   - tegra_xusb_padctl_disable_phy_sleepwalk()
> > >=20
> > > Tegra XUSB host controller driver makes use of wake functions to
> > > enable/disable/query wake circuit which is in always-on partition
> > > can wake system up when USB resume happens.
> > > Wake circuit can be enabled/disabled for any USB PHY individually.
> > >=20
> > >   - tegra_xusb_padctl_enable_phy_wake()
> > >   - tegra_xusb_padctl_disable_phy_wake()
> > >   - tegra_xusb_padctl_remote_wake_detected()
> > >=20
> > > This commit also adds two system suspend stubs that can be used to
> > > save and restore XUSB PADCTL context during system suspend and
> > > resume.
> > >   - tegra_xusb_padctl_suspend_noirq()
> > >   - tegra_xusb_padctl_resume_noirq()
> >=20
> > Acked-By: Vinod Koul <vkoul@kernel.org>
>=20
> Thanks. I didn't see an Acked-by on patches 7-9. Did I miss them or did
> you not get around to that yet?

Patch 10 is also missing an Acked-by, I think.

Thierry

--6tyHdok+qz2c/VGy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBkpyUACgkQ3SOs138+
s6HFsg//UwDKgGejSxpnuBJxnouNV+6Q2F9C8O2joVdF5OEZvENOqMZJaGiMl2R3
aVcYGSFIDeOdNNBeP2naSOkbkhB9sYOHGcqVEm9BKNpc71qGlJ/lrPTlE0G/HzBy
KeLKglSAhxYwY4dZZ6ut6kNgnCEqhfJQXzR7NM5VHn7YcxlyRgDkXMLiL2IeZnPa
CaNLMBX79Wdq4/d6m62FR15CqSyT4J0L7aw/7dkiK+fj7elu4zvLc29Zoub12XLt
Sttoyb1+k25VVQLJWZBcc4LAA2iBq7S17jOcG1it2e6WHyBvaNUle618A/oZnaNb
oavb6C+/sWZmtZ4Uxyu48ZWQodl+gPu7RsebslMqLTBbfqF1/LYfOb4FshUKEXMw
tbZGYDCXuOrszoJBCChlZpaRmwnpGN9iHN1WY2oR6j7X229ilSSUJIKsinI0nrqg
0Hb40/Gjig3FiQNfARLf4VFpOCpnmNDYTErAoF6IvjVBPcNJrHvENHBCiyLqos+K
VlZdUTOhtX1aBx8qwzl8XwRloJt45p750pcLgbdu4oouZVB7VQ2/eoFasjW9Zqtu
KVXG2OfOVkoeSJb0hYF6w9zmxxMwXNs/Ecc8bXgC91TYwIIee9H8QJDXQh96Bce0
OaWSE9N0EobZE6zYUPGZ6PJjPuuUDzEXRqHIpYkBvNdwdVJfsZM=
=QenT
-----END PGP SIGNATURE-----

--6tyHdok+qz2c/VGy--


--===============2797519426410836990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2797519426410836990==--

