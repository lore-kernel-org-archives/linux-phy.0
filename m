Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856EBC5AC82
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 06:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ARJleXtmsg2Kfr2kiX2uCizDkOOKxriliyrDMQh8sY=; b=Yb9uZqDY//Wrsfzho67UBDkZHz
	zTHkyQzHov/z50XepEmumm5HuEMQBRtyEeoqF3is8KRwvtSIm+poS5RcpJ+qzklXf85MVvr8O6LR6
	VeSw0UON8dJtIrT8LO3jEQiib1gmRHweIJzxyHnRl6Uvbem1GA4diMfBulbbSG/JRiYPi/gFgZrwK
	tPKgtH1t+J6kOg2p5VFL3eWoIuP4rlNBYNTvgw8V/LbgR3fGdvSYfTRzwVl94dBF1HQ2mhko/0M//
	oGWhlxY0tSW8Xo+vfuw5WI7Eqys+q4UR2Q1Y54n3Xj6fhp6f/gdIt3K9kUdTZU3aTNwAlJmYomVFT
	1IvfY6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsESj-00000007CBA-4579;
	Fri, 07 Aug 2026 06:53:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsESh-00000007CAX-3z13
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 06:53:49 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4955de8797cso20224395e9.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 23:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1786085625; x=1786690425; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nUIF+ZoBfnPhDtlVbHIbfV3H6x1dAyvkNT/RRT7NjLI=;
        b=pETEp/X67WV1Pq3Hn9+mM6dPd+On+nmMihue1f8NyvG8QgovGGWMRVTlQLwt2XwOsk
         uPR07bap09m0ZdLdA4Tzkhyelh/kSzOSq5n7tmauoujuuDNOunRwl1E8GUWTeWX29vh5
         SXEScR99TrCRcLZb7KyVLDIGcILbVHxJi1rtYtIWOfAQiBtomA36sIWKfYvS1uhcn7IR
         3lXU6Qds4XG8qFxQ1O84m+98NHS9TxPF7hUylE/R4SoMDlZ5k+ZDewJzRE/i3KES1dNy
         cV5XF2w40Ox5nd2IEW9y1fV0rLyx5jdx8r2UqIRvN6j4t2Ge8+E6O7XcKcI4LMfpquj6
         hW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786085625; x=1786690425;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nUIF+ZoBfnPhDtlVbHIbfV3H6x1dAyvkNT/RRT7NjLI=;
        b=ccz+jLtIBK7AuRXYGY/WBQCXfhazv/PSeTHorBmk4d8A815wQkExOEBFCMlIK0iri8
         Mdt+MDf86YHC2FEIN8g0RgjvDZNOlPwlJb+bschZO7xLoRbac5qc+cMx9wDBPhNcCIjo
         8vMZdyDtbU2q07tPGn4BSNL/IpzOcTzwVAwp7k1j2aUXabrR/28tNeLR3TDhs1J3ptNd
         PGQoEf8bdwZ5mNCEWHItpNw52BOk1f9Gcwgrp6VRTjGrrUu0ZzMgjBavVj15iegWE1iO
         AisM0NHp23s7LgGE59sKaY7YnieMBdj+SmT9Y2A0BOo/puVTVIn4E0qpVuEaCluSpxcq
         20LA==
X-Forwarded-Encrypted: i=1; AHgh+RrBFMy9R6QbU9eP+5SdZUB4B/tAXBf/+n+jRtTWTUaddd5uwp/E020xYIwBnOyNkFmI3tfWj0haxfk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+r1mQv01cOhmDmTQ3EIJT9zy7h7errolP/a7nJ0j/Fo1euxp6
	sl4IyguvF3ay/A/PirvO9slN2ZaGVn/88qsxwVPtEucRuYp3rVmMpLdhxf/+h4Ii5MQ=
X-Gm-Gg: AR+sD12KBnc91nnmeMvgj7A3lA7wGm/wYTeCjJYqw9ncBwLYj1dXOwDgTXrMwWnUwzF
	IfvIxKvl+ydpwF/NMRI/ueMOh2xy8pc2MS1LpjuyVdPnBNKhjvq3QOw3JSAlON0f4b3TqBHmYan
	iBjSwnD19QkSMMj4MHLLbNLMPDynbPgmQFBedvKMzNoUXOhNgkW3sr3vwQMOq0Xwr8DXTLfwqsG
	kWsE6PAzQBLcjBfyWwbBt8aZZtMN9Hk4Vb6bBSDg+8UzhggGfI/FohQLtotTIDNa5A5Z5J6u/PO
	ZsQaYAOSjM80rMwdCF0QTFswALVvbAv6kiiqOljnrYORKOrou1zbxWuzUoBwozyD31pO0zQH9X9
	JdNw8WsxIIApae9RqgFGKD5uQtIu27tzfhB0MiQyFItUXEiG2lbAXIsm+Htp2yAx8h253MCsCCy
	VJYjgHtE7MTXrhwWRVK0El7QC9gyDElolisdscIhvYAaV2RNUpYpMCjQcLutZUigy/DdU0Iklpo
	SQlSI44ZMLB7TuLpR9VZeeDRAgHzF0Xkem02kyZPTyB3+THQFYl
X-Received: by 2002:a05:600c:4fcb:b0:495:5890:8f6c with SMTP id 5b1f17b1804b1-4995e084875mr16392445e9.7.1786085625549;
        Thu, 06 Aug 2026 23:53:45 -0700 (PDT)
Received: from localhost (p200300f65f017104bf0aa590e17c3201.dip0.t-ipconnect.de. [2003:f6:5f01:7104:bf0a:a590:e17c:3201])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4995422016fsm98840415e9.8.2026.08.06.23.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 23:53:44 -0700 (PDT)
Date: Fri, 7 Aug 2026 08:53:44 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Cody Kang <codykang.hk@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 05/17] phy: spacemit: add Innosilicon DP TX PHY driver
Message-ID: <anWAmitXSFRUw1W2@monoceros>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
 <20260724-k3-display-v1-5-f22a10a52867@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260724-k3-display-v1-5-f22a10a52867@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_235348_002329_F8F0F69D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============7781261538110786981=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7781261538110786981==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pjrvltbz7ftd6xiv"
Content-Disposition: inline


--pjrvltbz7ftd6xiv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 05/17] phy: spacemit: add Innosilicon DP TX PHY driver
MIME-Version: 1.0

Hello,

On Fri, Jul 24, 2026 at 11:16:37PM -0400, Cody Kang wrote:
> +#include <linux/mod_devicetable.h>
> [...]
> +#include <linux/platform_device.h>

Please drop the include for <linux/mod_devicetable.h>,
<linux/platform_device.h> already provides of_device_id.

Thanks
Uwe

--pjrvltbz7ftd6xiv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmp1gPUACgkQj4D7WH0S
/k5t1Af+IUdmJ1rwWz3XTKVvTnkiumXy+BBJlthTfpRB3pFeiGILfF6fTXLHen+q
HI5KuCh4tnAo/jb3zLCDqO0RRmh14m5WlEgbMnFB9NGgBsbmj77K/WjLo2asTvFN
zTn9nrSjAtcmoJs0h4hIB3zaaueCYiWTGq8S2lIKH5D3xMUy61+006h2s5Dtrzlc
fHv743vCRkGoaGQWxHvpsgkx8Sp7WXEwZQyMaRvSggG2FiskKlV5pyM35siiJuAA
re4sCShFRtGFOhGjKK+mM7y8skzgBNqDocWT4sYp0QYeW6w8nwNHyKh3KUN//afs
1fDWRTlDMEJQqbI9K3OToPHbVguUIA==
=glOr
-----END PGP SIGNATURE-----

--pjrvltbz7ftd6xiv--


--===============7781261538110786981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7781261538110786981==--

