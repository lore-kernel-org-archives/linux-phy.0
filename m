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
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECCD8C433ED
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:38:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B28A60FE7
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 16:38:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B28A60FE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GUcokzo7gc25NJKSXBMEsazkWePNsJ7U1HmJPu5tc2Y=; b=ouNpE1iWF5sapq9DmYwgGT6wO
	XOZ84C/9uZ6OeQN5Zu0tC7gBR5So6ukBHas6ElauOZHrh2KQFgNlWpaw6Gw9vWxrYNbyeyHOClMIE
	IxuyYQZFVRX1DjFIQOl6nKti50LejqjhBeC5zWpb7GgbjEawEunjv7jkM6Mf9uAf2MSp612Jtevi4
	6AZqHPkIeLhJou4fExkkBtInhUzIjVncEkRoptBYF+UGgr5d0LYHKl3RZ4IG/TvsbK4Ts1zaH0UFB
	AFvozRk/M+/I9hoiZ/T8EMqi8ZmgDDhRnjh2RVzSkCAb37B5saHQ9luwkw2UP3IDTvw35YB+bsHa5
	yhT/Uxl/g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRdrH-0077Uc-14; Wed, 31 Mar 2021 16:38:19 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRdrB-0077Tx-P4
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 16:38:15 +0000
Received: by mail-ed1-x529.google.com with SMTP id b16so23063066eds.7
 for <linux-phy@lists.infradead.org>; Wed, 31 Mar 2021 09:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EvHVTiNpxncmqmnUHDfaPgtAPjMzlqjL23gXxm4wP7w=;
 b=Qc9ML1reRfZwzolatzMLJ+NIMbdbzZYl0uUtLIp/Z5rmjKxdccvOmMiPSQ/mbKY3XF
 dLn3acNZJ43G5XJQf4HNsKhKN7AbWKucnsM9RxABhzCqWgmkeZwYNG8s3RNTKTLYtBFH
 clILf/FiIxtUpZlZtUOdd2j9HGf78CtXHZWDb3dwrNGWa4ugkzI4dgKkHufTxFZafYqf
 lAPw0mkELlCOE0/ijpkhGRK1UXoUrU8LtWpVy+Aso5RlQoX5Xp/ctfX44c2M9EkmhQAl
 k5YFNnrmFCbJlgTQTmvP2oHQL93ovkHhOlnhwlexeiukFatNBjz6VFcCmW3J/emDwrSS
 pkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EvHVTiNpxncmqmnUHDfaPgtAPjMzlqjL23gXxm4wP7w=;
 b=sUcWDFs2BJMZ+YbLE1dmwKNLUHQB4rb3SfbYd8M60K0ESUsyhMKR89/WuuDgFZffXV
 OZfOTrcB8p0M+yDMr16kszoBaGaqBg9ugMFuELNoPSKU+Z0fva+bYgxmrDYrAFpxhg7i
 udPzkbEXuTSVG03LCNlPxza8m+JHiDB8Fgfev5k5LvGdrLN068v+txDbvXlXArKlNjiZ
 xhLS0xCcdazBj+1VwRUi1tqMYl9SwXfXfV2L6Jp1Z4c+D8jxvLI69OtC3iK4Nb6e49Eg
 NPFHK3zbYO406OLqFAtsXog9Jm8nEvbA7PcBHkM+4CKzsPLEN3jvdghMqyZ/7kjzm3VX
 dW6g==
X-Gm-Message-State: AOAM531fxaGLEPiAL8ljRkdQpLEB1x18gWzMSPJqx+BSXsGXCx6/8YSp
 24pcuMBMHhUxGWq+vq0b43o=
X-Google-Smtp-Source: ABdhPJyRMANGCobgTFhalJYhZ+QN7TnYGntxs9rJQvdr/u30sa0oJOm1V57wan97s7JF2dg9HinP7A==
X-Received: by 2002:aa7:c497:: with SMTP id m23mr4823080edq.74.1617208693241; 
 Wed, 31 Mar 2021 09:38:13 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a26sm2239439edm.15.2021.03.31.09.38.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 09:38:12 -0700 (PDT)
Date: Wed, 31 Mar 2021 18:38:39 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 06/13] phy: tegra: xusb: Add sleepwalk and
 suspend/resume
Message-ID: <YGSlj85/3kkfoDiH@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-7-thierry.reding@gmail.com>
 <YGM0ZOroZolJ9zEC@vkoul-mobl.Dlink>
MIME-Version: 1.0
In-Reply-To: <YGM0ZOroZolJ9zEC@vkoul-mobl.Dlink>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_173814_037571_8157D6E6 
X-CRM114-Status: GOOD (  16.95  )
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
Content-Type: multipart/mixed; boundary="===============4095062840065635347=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4095062840065635347==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fQeIu1t7loiQgo/8"
Content-Disposition: inline


--fQeIu1t7loiQgo/8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 07:53:32PM +0530, Vinod Koul wrote:
> On 25-03-21, 17:40, Thierry Reding wrote:
> > From: JC Kuo <jckuo@nvidia.com>
> >=20
> > This commit adds sleepwalk/wake and suspend/resume interfaces
> > to Tegra XUSB PHY driver.
> >=20
> > Tegra XUSB host controller driver makes use of sleepwalk functions
> > to enable/disable sleepwalk circuit which is in always-on partition
> > and can respond to USB resume signals when controller is not powered.
> > Sleepwalk can be enabled/disabled for any USB UPHY individually.
> >=20
> >   - tegra_xusb_padctl_enable_phy_sleepwalk()
> >   - tegra_xusb_padctl_disable_phy_sleepwalk()
> >=20
> > Tegra XUSB host controller driver makes use of wake functions to
> > enable/disable/query wake circuit which is in always-on partition
> > can wake system up when USB resume happens.
> > Wake circuit can be enabled/disabled for any USB PHY individually.
> >=20
> >   - tegra_xusb_padctl_enable_phy_wake()
> >   - tegra_xusb_padctl_disable_phy_wake()
> >   - tegra_xusb_padctl_remote_wake_detected()
> >=20
> > This commit also adds two system suspend stubs that can be used to
> > save and restore XUSB PADCTL context during system suspend and
> > resume.
> >   - tegra_xusb_padctl_suspend_noirq()
> >   - tegra_xusb_padctl_resume_noirq()
>=20
> Acked-By: Vinod Koul <vkoul@kernel.org>

Thanks. I didn't see an Acked-by on patches 7-9. Did I miss them or did
you not get around to that yet?

Thierry

--fQeIu1t7loiQgo/8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBkpY8ACgkQ3SOs138+
s6H71xAApJOssnhCMYvdV0893k75SPdXH3Jje5QjqvEU9BzMkY8poGqBZ9s9kU/9
YDA9io8wQLUemmjeCJz2UzX5dshX1+cEAK1pCU1lAURTdGbYagQCp+dNXvaAI6fe
O8wPMS+BskGEysxaMqapj7vzXBeaZDu42n1oAZZJpdF50n0vkv1KAai6l9F+QhBO
T6wqqZQUHVkDjo/30bhFABsZ12JpeoiMYtls5eJ0XY/tzv81UFcpwwefaIe5InrQ
MJnYdZMh9BZnty6L/vWoFglAoeWkqrwf/NmcDvm3wPJeFLGl5pNbg8UYl84U2Yto
mYLwEfr0IZ3My/p0DS9J5t8EKdWlEHi2/6DwqomUzWTgpGvQw1OcBEms/1nAn4iE
FzVQ0CC9mEzpgMKq/s879SkZ5TRKPRyKk1A6Xk+GT/T3h0xSFm9yaqh29JoWLQMc
sENdbotG84BeW5zYJFzS5iR2hjV+9G1oaqCcJ1FZVgIm3HIPvYr4JhhRR3cv0OeH
koNssH4CEftVlZYirEAwUaNdp7Qxg8R4GAnzqAn1UaEy2o51kwSStBL5HUI+suqP
3Xn80VzPqbk6lVlTqOBO7z8J/ixOvGh2jz6QVpAupKDe8TmQJ4Ob7ALQKQZ87q0Y
6LOQdfUdyS79VUNmKwE5DtkiBK5a2k3PPIkY7YfjBETXujyfpq0=
=M/pQ
-----END PGP SIGNATURE-----

--fQeIu1t7loiQgo/8--


--===============4095062840065635347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4095062840065635347==--

