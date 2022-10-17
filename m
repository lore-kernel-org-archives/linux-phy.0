Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1328CC43217
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 12:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vm1NM4N7TnVYlS8osBYVgtuN8Vm6/jKSZhB2jJUmoYc=; b=hUnAxAkX4PJlLW5nC4w0gcAGEr
	CDJEBO7QDNRLN/LMG9CECEAhsFaLcQKKhqOuBjORFFhlAMqHyTjlfgPAy7EGcyhlYb6TZqctgCSr8
	h0TRKwQU6uiO77RYarZ0cI9FQmnOpIPIaOin0usVQaE81frz31o7iqXKCj5y99e5cP6wY1nH/oP1R
	WoNC0d+rgOaLZuFk58ZqLRtwbI0gg7JAzwuuXA+UxhME8vLsdL2mSz04d9fbZwUySclna7tI/LvZ5
	UJWGSPZTXcXUC9YNZDWnPKJXri6C/UXmgvisEpwz5EBvYK4KzbWuZ+9pUgL9qkfD4AIKVVU9un9kV
	ghNN+XlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPUj-00BjTG-Iu; Mon, 17 Oct 2022 12:45:25 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPUY-00BjQJ-69; Mon, 17 Oct 2022 12:45:15 +0000
Received: by mail-ej1-x632.google.com with SMTP id q9so24749752ejd.0;
        Mon, 17 Oct 2022 05:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWmxqGF/038fMoL0OujOGP+aUEXKzs6WrKb2H91XwNw=;
        b=EFPUYe56DLRb3jgtTvrgrWMjZcb2OFrMZW/fKGOSYVmpPLtM+MB1FhSMEMTC+mmOpM
         oZKQzByoqLHCiacPyzOg15lHZW25asKMonWrwGf9xFik0n3XFA4GipB9Skv3lYTtGBrw
         2HAIRwA+aw3ygewkI9Au7Hn1qKd8Z1s4qsnLPkAC691hzgDKgJojC8AiH1QvzC7MhkCp
         lD9qpS45onpnbXrBuxbQtCy56E+lWY8x76Tio4rOVKtGK3ixVkOlyDVP00rppM5U+bS6
         cLTUGnW3R3KVOrSo9uh+EWC2TYXEIJfMFLK8cwKb8pF3BqOztV6yiV0Z+WISL50PNpYq
         AbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HWmxqGF/038fMoL0OujOGP+aUEXKzs6WrKb2H91XwNw=;
        b=LwGvTcGzZ2VpLIGxVukr0oVSHtha8vAMitWVcPGlbnArA8cOMnK4cCtkh6SLlYCMnX
         7GMRgyOKh3z++/WlbU4RZ6Tz0Un5e46kWz4x3n5RcyFgfVbJmmu7axiT4u0YgwsNAHD+
         yMieZGURkbz37xr8mpImM9oPH//l3zcaVLQQM/+muxPV0moPWjxEZ3mYnFVL5ONsMTrJ
         PwFlWrxWo7Y/3ncp/VhxhuIvukT6BatKyiRgNKoQJOckxzdhJxqOMm/e/4+kKTdzAFdA
         MHxbUFViua2NvHcj030bdx8FTTj/TtAIXJwebsiHhCOzYzDgDfiVrSeSD/w5MemllLni
         ruvA==
X-Gm-Message-State: ACrzQf0JKap5aAoTc5gd3sVP0mAO+tCNI1BIP5tFDTrkCLj7F+e5CBN7
	eVTHsmRr/2DWQRCgOHcspDY=
X-Google-Smtp-Source: AMsMyM7mhW15Nb2oDKxIsTla97uYTBzTlYARXy6rnD14TSiS80WugSwHh2x9mLvRwyzeCzQXuBw9mw==
X-Received: by 2002:a17:906:5d04:b0:722:f46c:b891 with SMTP id g4-20020a1709065d0400b00722f46cb891mr8593565ejt.4.1666010708172;
        Mon, 17 Oct 2022 05:45:08 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id p6-20020a05640243c600b0045b4b67156fsm7294536edc.45.2022.10.17.05.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 05:45:06 -0700 (PDT)
Date: Mon, 17 Oct 2022 14:45:04 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Cosmin Tanislav <cosmin.tanislav@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nandhini Srikandan <nandhini.srikandan@intel.com>,
	Rashmi A <rashmi.a@intel.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Sumit Gupta <sumitg@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Joakim Zhang <qiangqing.zhang@nxp.com>, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples, again
Message-ID: <Y01OUPVLczqzuj3b@orome>
References: <20221014205104.2822159-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_054514_245282_E1D73B86 
X-CRM114-Status: GOOD (  15.35  )
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
Content-Type: multipart/mixed; boundary="===============7648048873237063576=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7648048873237063576==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ENKGIPZJ+FvcFLFo"
Content-Disposition: inline


--ENKGIPZJ+FvcFLFo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2022 at 03:51:04PM -0500, Rob Herring wrote:
> There's no reason to have "status" properties in examples. "okay" is the
> default, and "disabled" turns off some schema checks ('required'
> specifically).
>=20
> A meta-schema check for this is pending, so hopefully the last time to
> fix these.
>=20
> Fix the indentation in intel,phy-thunderbay-emmc while we're here.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../arm/tegra/nvidia,tegra-ccplex-cluster.yaml    |  1 -
>  .../display/tegra/nvidia,tegra124-dpaux.yaml      |  1 -
>  .../display/tegra/nvidia,tegra186-display.yaml    |  2 --
>  .../bindings/iio/addac/adi,ad74413r.yaml          |  1 -
>  .../devicetree/bindings/net/cdns,macb.yaml        |  1 -
>  .../devicetree/bindings/net/nxp,dwmac-imx.yaml    |  1 -
>  .../bindings/phy/intel,phy-thunderbay-emmc.yaml   | 15 +++++++--------
>  7 files changed, 7 insertions(+), 15 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--ENKGIPZJ+FvcFLFo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmNNTlAACgkQ3SOs138+
s6FjaRAAjTcwhjc2StE06L8/1hqmMcPI/MCBfZcFFcC+zH7z+tLcW29ZRegOLWAo
Rnix/qmiwHYlde5STzozQYYbrLGPN7rBoJKd5uDXwWc0fYOxosOHHDv3q/shRLO4
EpOLNfcMImYQPOV3ni8nH8mNdR62bloiyCz/qG6ASKu2x22ZmHpqYv1TC7H4WNgM
He1HB8XDWbgXdtsXDbKEEDN9gXaFTYCkPH3G5tRq7aWl6bIakBQRzPLjCnaUnznw
NgP7GbBHYIigaGGPAzSBjUHQuJ2zLithJGZ2ISxqGUrtI1dvw9N3oaFGyTUBOdej
sU1+ml7aIYT9bi2ES6xiDuNaVOclaefRw6GxwoRUGlcCa81/N+3zf3RlD6fZ0JxN
B3zvkKn0c7KoZ8MgpouBFNeC4aIO2VOB8FH5eGSnNwz5Sh1+MgIBMKlu1Hq/6zu5
Ih7hVnpzzLirkDdr1mOcnw/4Ok/z92c7UajhH2kv1iK0Z85NitRcCfvdexGoOsQ/
0lwQ4iZ5sMZu++FcGxPdMBiL0ehEbfhPKNjzS+44rbN6xldqYfyiTs0F+s8tZ4VR
Ak8u7RQJ/3zdYi4KH9BgyUeHh7AjyyeYcNAsk7DkuBFtu9GIm50vMSP4oMWShsZv
4omD7j8WnVAveBPTXeKD+1jQztY1gjGbHFSxdgZyKUpkgxb2/Jk=
=QfTP
-----END PGP SIGNATURE-----

--ENKGIPZJ+FvcFLFo--


--===============7648048873237063576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7648048873237063576==--

