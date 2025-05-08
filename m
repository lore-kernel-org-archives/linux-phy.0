Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49111C3ABC0
	for <linux-phy@archiver.kernel.org>; Thu,  8 May 2025 12:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XSM+MIpJUR9OBovGkZiESLZLkIRQWKzCcu8fGD3KusU=; b=SunIYt+eERSNh139dBsdBOXSJU
	MUYoqh8KZbhAWsdw7MZnCq3QCiWSsEyEc5rQM4g9qehAIcmk1OhRdHt+n5IwARuqPBMnEyJQAydGH
	oyuutD0QvtnEC0vZ2cWFYYcqzd4pqZQCrEWDHCGVbJ+Rdq2O05HwQeIcOpWsyhEWP5XQbF8WSJczr
	oLKRg5I4Ve/qu8c+U1Vm9WmgidO44cblWyJ2hOdkYe4eHH9tf8FZrfogxMwvTwHw689b7LQhb3B4G
	BAwOgFYNmGFw1HMnVqaZmczfDazVzwIz2IRA/A15A5pYwW+U8/yQ+VElq3jfZglmQBFOxqer+7idb
	4YHVRKwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD0lX-00000000gHR-3Vnc;
	Thu, 08 May 2025 12:54:19 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD0jD-00000000fmI-0Kq9
	for linux-phy@lists.infradead.org;
	Thu, 08 May 2025 12:51:58 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so6461385e9.1
        for <linux-phy@lists.infradead.org>; Thu, 08 May 2025 05:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746708713; x=1747313513; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9+poLtgRl3YswVuFjH83SYhzG62e+vyKcrdqXqme9d8=;
        b=HAkQNpbNS1Sx/rKSKSFd9JZPiChqaZdR+vZvi/GD6+XLRhPxX8VOAzX5dWQ7RRYroy
         vGLLHjj9rh1nADQsyAYBP97IvtXFETruaQoQyLnQFXFacaMfWUQ7+dzLe9WHIRJWT56r
         m0mPNM5UYn+CJ02ph37ZvNNjCgVT8hwTZcIW56U02ZdXP5klxDwLMgmObDrpAP2UpSKV
         GMrwCXd43UsUiCyHxMoBoqhVwJYuAqBC6ZGeDL10qYoPj2azc7KMYzKRi1q7iGqONJoZ
         7sTfQvXab2Y6fsbOvFGqcxyk11MKQQPp/dgqA6VqiryVvUS0GW7+QYmo4m9i32VhQj8A
         OTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746708713; x=1747313513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+poLtgRl3YswVuFjH83SYhzG62e+vyKcrdqXqme9d8=;
        b=K4WHj6LHAOz9kr58HdCXsKJXHqx26AmXromFBlT1IUBxtBRdbn2fcL5rZsDrWTQboW
         yYneKsUuh6U1NSza2lU79uvas6hsqanp+ZN2xPxw1Tpb8xrf95lgD1DxX2QlFvAjWrzk
         VPsGAC6G5NStwCLXq3wmgNVkUUDdAxOn9WUYXjxgL4ZdQ1WpwpcUeL0hZTIZN3JWF3ld
         yuVntPxSb3E1JkcR5MZWkijlv6Act58nVW0tv/lT8IDHd9QtVHtb84rzPHkIoNqBc8dW
         8RE/Uuqv8u2BmfLRVIQAgovoOiPfuUGNQ3e294AWTgr5R3Y3JVNXa6mBW5NeLEKqJU5r
         Yd0g==
X-Forwarded-Encrypted: i=1; AJvYcCVtUtZ7JH/K3nrR12yPr0R8axapz8/bsGTjaooaS7tBUue0S7kWBrLelN83WK+KuJhsXEAD/tF4aQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbGbTUNdh0SB1g+SiCk0as0X2kVxjFVKGaSZ+Tv4M6nttoQi1I
	/gun4SHrPLYqkuTAKsgqygPh9NHQuaX7uLPjmjabtJInJf6j5NnX
X-Gm-Gg: ASbGncv+1c/N/u0uVS23V5JyRZkphYWo+1R13CQ0/au17VsON8WnESQ+wWHjfbQC5se
	NZi03h79DUtUCAocsA82wudHrbpc04ERgVAb1+tZH/3QwsBJJSith5keAVRmL2Fy1tVfnJfF9Mx
	y4NUE4YeYIGUNm4L5ROkG7vAp1kL15z/WxCo9nLwiFv/Z5qAPU1cY5T3uWnLwJlrCmlPbhzgHeR
	W4JzOtG3uAkIz0qYPNQOBtFSpaDUfHxMGzZg33xLykhkEiOrOTxGxZIzsTgSkGUBTryagCbklI1
	g520R2DyoB+qQRVb3JVGrkhqZVXuZGrayEXl102r3h3dG5dpVD1Vdt78FCUqB2gxYq8WnDbIcdZ
	e9tteqBD0D6DOfcL9KguKu6ziBe8=
X-Google-Smtp-Source: AGHT+IHVSlhJMralJFr9IWaJ7jXu9jFCPuVq0amV8ZDacIm7OK3mc30KO7OC8MlMXD5l3NVwjuycLA==
X-Received: by 2002:a05:6000:1a89:b0:3a0:b334:6a9f with SMTP id ffacd0b85a97d-3a0b4a1cea4mr5607453f8f.58.1746708713006;
        Thu, 08 May 2025 05:51:53 -0700 (PDT)
Received: from orome (p200300e41f281b00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f28:1b00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b178absm20420127f8f.97.2025.05.08.05.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 05:51:51 -0700 (PDT)
Date: Thu, 8 May 2025 14:51:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org, 
	bhelgaas@google.com, cassel@kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, treding@nvidia.com, 
	jonathanh@nvidia.com, kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V4] phy: tegra: p2u: Broaden architecture dependency
Message-ID: <fun6ylsmdelzfbkkpwpwtosbqm6frfht4w3bmbz327n3ax45be@lsf263lixqv3>
References: <20250417074607.2281010-1-vidyas@nvidia.com>
 <20250508052021.4135874-1-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20250508052021.4135874-1-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_055155_115687_13EF3883 
X-CRM114-Status: GOOD (  13.38  )
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
Content-Type: multipart/mixed; boundary="===============8656119974698552505=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8656119974698552505==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wmto3kffev62osw4"
Content-Disposition: inline


--wmto3kffev62osw4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V4] phy: tegra: p2u: Broaden architecture dependency
MIME-Version: 1.0

On Thu, May 08, 2025 at 10:50:21AM +0530, Vidya Sagar wrote:
> Replace the ARCH_TEGRA_194_SOC || ARCH_TEGRA_234_SOC dependency with a=20
> more generic ARCH_TEGRA check for the Tegra194 PIPE2UPHY PHY driver.
> This allows the PHY driver to be built on all Tegra platforms instead
> of being limited to specific SoCs.
>=20
> Link: https://patchwork.kernel.org/project/linux-pci/patch/20250128044244=
=2E2766334-1-vidyas@nvidia.com/
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> v4:
> * Split the Tegra194 driver and phy driver changes
>=20
> v3:
> * Addressed warning from kernel test robot
>=20
> v2:
> * Addressed review comments from Niklas Cassel and Manivannan Sadhasivam
>=20
>  drivers/phy/tegra/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--wmto3kffev62osw4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmgcqOUACgkQ3SOs138+
s6HAlA//eAMTTH+0j8sG2MTK9y5u2xfSYDwexaFRibonLsN1IzeiFNRwNWwzRTF7
tyQbWEtL+NY/gVjBt8yof3kgqw6NqmLZl4jxZmuSVmUMEsu7PcnuxhQii785Nfle
oKd2ktw6GT23MXXPwLN4Mn8p1ZCs/5YKMwvVuqXE9+FpGLwOlErznH//s5BaSV7Q
NS4bLXbZ7rsWXEto0kOz6ChIjCVxDPCx8IjMZL+tPpG2TVTjfs4fA9pbgYBqIx3Q
mFTSm8848LJBD246+1IjplqkphF66gXhXAMBEHnb4HWXKexrjKFZagqs5p4etVE3
KtX9kOF9nm6IZgXqbAKYV6pwDDQqzi2cfgD3nQ9Q2SBs7KAwi/uuTbi8Lz1xa994
zmJ9pRek1ykr/HYzkK5Kt4EjLDr7sxL5ZI6UwVTUJkbiqplRsjIzmXsSKB87kDR9
Oekyiz2EsO8V+RTgE9IxKXCE16y62Kw8Wi/dMt/I+mOTeaMnG2EhAJIJCGQCZxS5
hx3QhlV/VZoX+RWlpvFC7jW+esPrcJqLrIpirwztd0jYrKi5Xuyqh8lL1T1PMARM
n6yuFi2KbMeBa3xR5PIzYodyozHwc5m90N59J7qYAFqfBk0oiuFiJWqhVjpw7whj
cqm9HGGQ2bPRbrYdKKfmPVezxiMNJfnfmpWXy075zTaTXunAHGo=
=ifgb
-----END PGP SIGNATURE-----

--wmto3kffev62osw4--


--===============8656119974698552505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8656119974698552505==--

