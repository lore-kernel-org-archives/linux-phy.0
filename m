Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A938CD7360C
	for <linux-phy@archiver.kernel.org>; Sat, 30 Nov 2024 17:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2+EGYeYS91QEqLrbipWlfjNTSvM9E6WdGn1uAp+G6Ek=; b=KFFt/VTDU/DadVYC+bn1Lo13Mr
	TsCGUam9uGYaIodDEfJF6qRl1XZi74yaknxV+eBcft7mJG/pRipUEXKLkXt27+Iu7EfJKVsBd9PfN
	5IOplRKbFTg6joFTaGN2lE5qxGVAcN9OEJgW3upYjsIKosY3Svt3qxt4NnBnsDnY0jSnFgRywHF68
	1MRM5FgiWDIRjfovGkTgOMJU8url1dP3kW95BsFeveXPZASmsq4zKdlltNbX5clbYITui4xjKAXkC
	Ga5tPUjjjqv3dSQwi4+lr1Nbr4JEya5NAz/SPZvGqIdosiHFbBkF5Vm2vwGebQNn6Vo3DSv8bsKmv
	mgxrcBfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHRPX-00000002Mtx-3VlO;
	Sat, 30 Nov 2024 17:37:39 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHRPU-00000002Mt8-3nd8
	for linux-phy@lists.infradead.org;
	Sat, 30 Nov 2024 17:37:38 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-385dece873cso832340f8f.0
        for <linux-phy@lists.infradead.org>; Sat, 30 Nov 2024 09:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732988255; x=1733593055; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OHsN6TaNp1079VuBOcy+ma3PsSKaKXviIRckoZ4F6Sg=;
        b=BQWWsLTrQSLNg9Mxsv7wn2S7Ko4w4Ws06wQn0uLS6qIRKEs5b4fCfjWJAQzFERbMpn
         hwMMZD6T+/AU9FzS4VcJ6wOf6MD+Swc8OqJqk469Rhbl4OkJtHiPC6eKhVtH6s5brdfS
         mqPyltrVNnYylbzNOsfAQK2+pNNp+B7cI32YoonDzBvlR86R73bUsqB9EZcXjkmggr8o
         iOA41dyu2W42qxxl5F3JSwC+hRdqxvrgIURbeQlru7s2zcc+n+4t6sGvRGHPtrzmfpdj
         6tTDlmWsAMWPrOGbN8iZzMil4uFXKgHRv/sNRo6iM1kEmS46VTgABwg4nGZASmS8NW7e
         Y0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732988255; x=1733593055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OHsN6TaNp1079VuBOcy+ma3PsSKaKXviIRckoZ4F6Sg=;
        b=BmJpz/S2Bx7MqSMbygHg8mtLTHO/ZXYF6tHwjfeaHib3+9Svko7QvrdMxtSZHRsAnu
         SoiCdWOIY9is5d24gUIN2le9gWkPVgqoZsF//ltvJJnNcyhDsdD9FbPJ2W38K1GCdQyy
         CWVDGSTULUbbVe2PCUWZINFVB6CMBpoq0bEMdwZbNKkzyz9DlnBDb4UAFVJKUSVt+UWO
         IhBIJR6VXVr+bGNdMXMJndcVnMxGox6XpbJ2grz9T1RmgBZK3cEpmO8vdIKij5N4m/fb
         NJgIaRXLaNu8LBNWwmeJymR936GCQDA0TyI+jPfIYxU/767hfVyPybN5AGwD+DIXtZcH
         li2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIr1QNCwQKRpWwfIayEl16i5FXo5qZd4CnhfCubIKvuvqCpdhDxLSijPq22N88VYKbQ+bCSpTx1Ow=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcPIXjo1RVlZqUK5eu0bel6RMGj+TMSG5okGxbzqoLEvNz2Am1
	GrbpSKJbqWHbn9JmjBwS7fF4J37H0q4jNJIC819770UN3ZTAdXT3p2G8jsKNys8=
X-Gm-Gg: ASbGncugE+dHZL4YR0gEsHirloQeWg+jRV3DuLm0NLlmzzOj3NeZpa1Jka79XG6cGGA
	5WQwN0yTtvXRfLf32pjuSPRka560P+zb34YL+70U7sde5XH3eNMQJupPSrkGMSMZqDHfIgqhy/q
	JXVIZAu65NK9GsxrzUxLruw/3jhFvYT8ygK50Aa92YX47tkV+bFz+ousXHJasOgCgJBHFMcc08H
	YXYSufYujfmR28VF6cC6G0xVgJuTudTf23HPSOTzRM2TN9UF1YR8o4=
X-Google-Smtp-Source: AGHT+IFwFQ2rSjeB0u3yaS6t10AI+CYIIMAsPZIeMkH7fQN0rD+w3+XGwsQFyRldnEvjiwCvxiOdhQ==
X-Received: by 2002:a5d:59a3:0:b0:385:cf9d:271d with SMTP id ffacd0b85a97d-385cf9d2858mr8248469f8f.21.1732988254848;
        Sat, 30 Nov 2024 09:37:34 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385eb10bf7esm453594f8f.14.2024.11.30.09.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 09:37:34 -0800 (PST)
Date: Sat, 30 Nov 2024 18:37:32 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, glx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, 
	aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, frank.li@nxp.com, 
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v4 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <gyt3z6jisr4cea4wwk32hgzbatbczibppgrv6copcl4qo2chlx@w5kcqulhoe2p>
References: <20241125093316.2357162-1-victor.liu@nxp.com>
 <20241125093316.2357162-10-victor.liu@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20241125093316.2357162-10-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_093736_943543_E26B38D7 
X-CRM114-Status: GOOD (  10.79  )
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
Content-Type: multipart/mixed; boundary="===============8986687973486225543=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8986687973486225543==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4chv2ajqebpzf4n4"
Content-Disposition: inline


--4chv2ajqebpzf4n4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v4 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
MIME-Version: 1.0

Hello,

On Mon, Nov 25, 2024 at 05:33:06PM +0800, Liu Ying wrote:
> +struct platform_driver dc_de_driver = {
> +	.probe = dc_de_probe,
> +	.remove_new = dc_de_remove,

Please use .remove here. Also in a few other patches of this series.

Best regards
Uwe

> +	.driver = {
> +		.name = "imx8-dc-display-engine",
> +		.suppress_bind_attrs = true,
> +		.of_match_table = dc_de_dt_ids,
> +		.pm = pm_sleep_ptr(&dc_de_pm_ops),
> +	},
> +};

--4chv2ajqebpzf4n4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdLTVoACgkQj4D7WH0S
/k4Tewf9EssJcTTmbhrMd+Z9OEMUakhfq+ufnw7+fdnL5bSz1UG4O6BpXKdSHEOG
3GVGRRTto7bFTDc8d6AjAymdKak5N9qoiKUvbjXBcqqw/yrQnatqoSbVaGXl1AhM
bC3ACa2Jk+hpxBLZ0ADQNIsiTHt1JsD25oyDT+LdjtBWwGcao8CWuPNQY9vu/+np
jeqbvSKy0ZxJyb9DtQkAErXp6TDgbDIus7W/t+SER/BSZVQuZQH1cZ/Il8Fyf41K
jlKO+ARu3pWEngcNyxZmR5mUzZdh6+0Gfoy31/tdmao58gaN/fLFirQ0NruQFDEM
3M2Ee3lQXE8MXaOGn2uhWj312eKAZw==
=RpIh
-----END PGP SIGNATURE-----

--4chv2ajqebpzf4n4--


--===============8986687973486225543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8986687973486225543==--

