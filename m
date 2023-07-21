Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F9C7EB64DC
	for <linux-phy@archiver.kernel.org>; Fri, 21 Jul 2023 13:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YJnDcVIRcD0mUWlFiOKenKPo4xdBcQUyR2uX5YVfRIQ=; b=nYA1tCW6wu6OVEEE2Nii/OQ0dI
	nTvKDmFjcypuaI1/QGaMxZQ6pYZ2Q+rwaeRqmFD+lHESs1a6U/ArOr4I3so0KJ4eo+zjR5O7ZkxKJ
	OxObGxMnfzRz60LN3Rj0LqAAGr8Bxi3VuGjcDU83Iu0xM6r1iewCygAUKmf8moufGgwt6kKkd1PwO
	LY32gUBmR1eSykRaiRbMQ2SgmNMIRN5TVm3pohMBHIJwPdBOjIo7CracJIhfowSTtxLcWuzKb2S9/
	GwE8ysb6ZxZO/aq6LB/bjvBr4ctm+tg4W6VVCRmpaAWOisn85DI9cze8W32Cfp9Ut/ku9ZWehYKbs
	tcaxy+iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMqbf-00ECje-2h;
	Fri, 21 Jul 2023 13:55:43 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMqbc-00EChx-30
	for linux-phy@lists.infradead.org;
	Fri, 21 Jul 2023 13:55:42 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-992f6d7c7fbso315520266b.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Jul 2023 06:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689947738; x=1690552538;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUTml+j0BKcM+haAeIip69fhehsDqEFXRsZ2bgoeHNs=;
        b=Z4SVq1N4Jb+zb+PMQ9MDYCPFL5uBWO5QOdXVfkLipaPjpJ7GjH3cn6h9O1MMQ994/U
         QVS/wtFa2Zyn/JsTx36gX5MTFBUT6GA0O0YzjjVEDeFpNyMpRGezci3DsjRWBoKvNrua
         y20KEkKqQpkMJFrZ+xjHT/wKZdgfXr6E7+5nr2ER7BdroAq6a64e8SzMkLcqKEdjUvRP
         vT2xWw1C07MD1P06YCmnuby+TSJ8A5eA1Wdw7AIRM7hj9qa9luMTeYEw4wyajR/wAOIJ
         Tg3E9LdNsMnt1V/QtdyOwbMXY2fitQUGsBKBy+wmxgkNnlRcJH0h68ZYDKnU8NeWk6lq
         qsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689947738; x=1690552538;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WUTml+j0BKcM+haAeIip69fhehsDqEFXRsZ2bgoeHNs=;
        b=KtgHpzuAUwKfk6+hpvv7pP5OKEHiZE2PXG8zv2mGQnoAyaNmD4WNUKiOJ6frPgd+fy
         BlF/NOMhHcaWdLmUECXjQAV6M/fP/W3jvFgqYUSeiWjhTndotpUp28pru+z6Ajr0Zrb0
         hwsJ6/gAPS80OGOc533WAhT8nXkAVwL5HJWCtNK+ZzkoikTllQCTw5UGPLoNRiX1MhjK
         XrjuysPdOt3iM79hig2rRR23oDzBqtHD6u8ey9BfxFABewAqeCiI18ZlG8Z47L20yCXA
         0SWWujVEbB51DugKTgDUcEuqDujMnRNG6Pjk4Lr0HdTtth2rDdMCcV5TLA8bDxoNEYbl
         eTEw==
X-Gm-Message-State: ABy/qLbF/xDFB2QYRZQ+pvCGX+BY+oEk0uvGEnJ374o9NEtXU9Xaha9B
	W4plRKojw92BxCL2yztgr54=
X-Google-Smtp-Source: APBJJlH12b3UgDv0tSheU2gyswihEDjvN9eEW2IOO0q9dK9Kc2Su63zlxtNb3lxNpVzJqyKhpLrlow==
X-Received: by 2002:a17:906:7a01:b0:992:a0c7:8d2a with SMTP id d1-20020a1709067a0100b00992a0c78d2amr1828274ejo.54.1689947737589;
        Fri, 21 Jul 2023 06:55:37 -0700 (PDT)
Received: from orome (p200300e41f1bd600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1b:d600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id k9-20020a1709062a4900b0098748422178sm2226858eje.56.2023.07.21.06.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 06:55:37 -0700 (PDT)
Date: Fri, 21 Jul 2023 15:55:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Yang Li <yang.lee@linux.alibaba.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: jckuo@nvidia.com, jonathanh@nvidia.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next] phy: Remove duplicated include in xusb.c
Message-ID: <ZLqOV-ShmOKcldcZ@orome>
References: <20230719003614.5506-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
In-Reply-To: <20230719003614.5506-1-yang.lee@linux.alibaba.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_065540_965708_628DFD01 
X-CRM114-Status: GOOD (  13.30  )
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
Content-Type: multipart/mixed; boundary="===============4943096035454330905=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4943096035454330905==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aiG/Z8uoJevjxZrs"
Content-Disposition: inline


--aiG/Z8uoJevjxZrs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 19, 2023 at 08:36:14AM +0800, Yang Li wrote:
> ./drivers/phy/tegra/xusb.c: linux/platform_device.h is included more than=
 once.
>=20
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=3D5930
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/phy/tegra/xusb.c | 1 -
>  1 file changed, 1 deletion(-)

It's typical to list the maintainers on the "To:" line to increase the
chances of them noticing. This is obviously correct, so:

Acked-by: Thierry Reding <treding@nvidia.com>

>=20
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index ed30866e7647..142ebe0247cc 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -12,7 +12,6 @@
>  #include <linux/phy/phy.h>
>  #include <linux/phy/tegra/xusb.h>
>  #include <linux/platform_device.h>
> -#include <linux/platform_device.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> --=20
> 2.20.1.7.g153144c
>=20

--aiG/Z8uoJevjxZrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmS6jlUACgkQ3SOs138+
s6EFLw//dG+cVN7R6it4gQ+baHeWZRJwGmi2xEyeqmjVhZ+9c99KL63rmtIhsL7x
b1+Qz3xit8FltZdDIYd+CJrW//1cxzvtt0KKHTMg2+91D2DZVpC7DRIl8Nj/2L46
q04tHomOlrQ1vxzOvKJSxKVTai9Xk2lABp2Tz4EtP7An42s4mKUYxF68nXVxESkN
w6F4uf8xVhkqbvcPmcnms8sQeIs5C+DCx1wUIWF8ucKcF+PcOTs2xFftgeoivpdv
s9OgAzvGg6+KSDp2Ngx8iIoDHZWMFoFMqi01fOvnzXtj2gxcFzIts/E4NCKG/yJz
dZfSYlDAQ6/WmG+KHgqXVMMe/4u4FYIJI8KiLEtNvQjAH+lc9NxvhimBEMRoY2LY
PjpCxYfNWCzxuY1Dzckb1UB0671gRsDDkcH09pJeiOumV2cKWuSErLMDbOzEVeT9
gr9tzQ24D6Vzwdyu6zKzzKpFfIzrNAyW1FwrVtx+XsXsOJbNe62o2IXCTqXEUFf6
rDRwPsDGYw7gPkGigoFokOzaU8pXIPSkGh1GaCOFwwzPY2eXR4PMC88xoJu4lYds
7nTOHYURaPsA0YEW96iZAYQdPeAUXqze8ZI3hdWJrv6KX1idVacy+sKDcRVDo3ty
w7nV2GydZ5JTeuVjiXHgjjYLp0FRQF6H2azbIGma7obEJaCfMQI=
=fsKZ
-----END PGP SIGNATURE-----

--aiG/Z8uoJevjxZrs--


--===============4943096035454330905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4943096035454330905==--

