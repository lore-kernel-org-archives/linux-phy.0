Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 353CEC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AHah3uBZJaP9lYrivdt/Vg86H/WwwbNADue48GuoEj4=; b=ijEJRWEL/L6nOVYgHPDWyC6bZJ
	vqJUnxODywgU21aj8pF8H7g+igL3BtOgoaJkGYq3TedasyM/4KN5uwmE1sqFEwSFIIHdFXJ2ZO4qZ
	IXjk3B4QZmmFhAA2ioKOrTNjCkwCWJFOYcSNEffxrgObxvFpEK0kU6vd5bSkzSUXYb5Io1Ulj9pUg
	tQ1wsWCret8e5lsUabD3TzWkPd8YKxOYXC1F7R8x1DJih3y03v22m4Ly49yw3eYDEC4xtyhF9Me1k
	trapFxzyxI+q5fLD9UC9BHRevW6+NHw3wtzbZsLmKHehNPUWTXhk3v6A8Ws4OXg1SG+hJiPNQz4UM
	NXJiC18Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRUo-00Fef3-D0; Fri, 27 Jan 2023 16:22:34 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRUi-00Fece-7Q
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:22:29 +0000
Received: by mail-ej1-x633.google.com with SMTP id vw16so15013479ejc.12
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4OTyOhq5ph49i2Sy9LKLfnqL2EM/Rj+cmCGMdBMlfw=;
        b=gDkOvsj4AhTDhnfA/Kn+Keq9CFS5AmQp8SUXAJ8gb48RU0fjRQwfo+R08Yjx5rfp1u
         A0+zAslnSpWmUaMoOsonoenmeLthUY3aJ85PiRMUJ3JikBfOfHSsg9h2OLphc5w5uW1G
         smtHqMYI10XofhnqWSpYG4io9JpXpHwf/tJIGIp91dC2N7Roby/nC/lGjc/Uf1EzOZnv
         2kBwYZjEoVF60meKfDKkqC3UofRq8moWDuKJODsTVVUEtuW/tIhvkhN7SnO6RR8LMzfb
         hbdno94WAfN+nSO597u2TwnM1bLVaCczr/KSZpRefNZfHscCnTGfd4iVuB0T/meWU05x
         lsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4OTyOhq5ph49i2Sy9LKLfnqL2EM/Rj+cmCGMdBMlfw=;
        b=xKbbvkukmBlds8xqw+eLhdysUK9viUU3jLrdJERnoLMEQf90KbAIUKU36Cnn4MslrE
         feLvcze0Ll77gDYB6/nHHF9FurbtiV74nyKsjbkhjil1TBRCF6qpQmwhcyd2cT1sEOMt
         j/UkxsyhkV4PEtZz4bY5j2YHKNqiRLg1Lf7qquD4BmggtBpnKW1qaHMPm+odYeTENqte
         Y/DAV2FIv65EAor4cslOZNTYqSkBUsMM+2jcN8IWA0AwkBXVunEuqBwW8SBKzAPqBnEW
         5RGsIR6axSiP6fX4MTN5cqNclZA8QuaNHqBTfXLpKGsJXFCWhQDKk0bk9P+pWzcxYA7p
         7Wag==
X-Gm-Message-State: AFqh2krhAP5tJ0aRaS1/xcbx95m75RhzmrQMOJePc+AU5FAHYGXAgrxs
	ZTbFWvRHe3C00Y+lycd3BS4=
X-Google-Smtp-Source: AMrXdXt2OhjgoI53tjT3nvzAVMGrKi73ulioqKoNtQWBcgvgIEJFCLLgKNEfR5QSlEe4xYwFMFtj4g==
X-Received: by 2002:a17:907:6c16:b0:86f:3dfa:4016 with SMTP id rl22-20020a1709076c1600b0086f3dfa4016mr47989890ejc.7.1674836542928;
        Fri, 27 Jan 2023 08:22:22 -0800 (PST)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ja23-20020a170907989700b00872c0bccab2sm2524552ejc.35.2023.01.27.08.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:22:22 -0800 (PST)
Date: Fri, 27 Jan 2023 17:22:20 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-phy@lists.infradead.org, waynec@nvidia.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V6 2/6] dt-bindings: phy: tegra-xusb: Add support for
 Tegra234
Message-ID: <Y9P6PJ9xPVst/um2@orome>
References: <20230111110450.24617-1-jonathanh@nvidia.com>
 <20230111110450.24617-3-jonathanh@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20230111110450.24617-3-jonathanh@nvidia.com>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_082228_308311_CFFA2B47 
X-CRM114-Status: GOOD (  13.21  )
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
Content-Type: multipart/mixed; boundary="===============6971508081613097672=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6971508081613097672==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b0gkupGM8zWoxRNZ"
Content-Disposition: inline


--b0gkupGM8zWoxRNZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 11, 2023 at 11:04:46AM +0000, Jon Hunter wrote:
> Add the compatible string for the Tegra234 XUSB PHY.
>=20
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> V5 -> V6: Added Krzysztof's ACK=20
> V3 -> V5: Fixed compatible string
> V3 -> V4: Added patch
>=20
>  .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Hi Vinod,

can you pick this up into your tree? This applies on top of the
conversion patch ("dt-bindings: phy: tegra-xusb: Convert to
json-schema") that's aready in your next branch.

Thanks,
Thierry

--b0gkupGM8zWoxRNZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmPT+jwACgkQ3SOs138+
s6EmYA/9FJsPyQ6dWaqhDXMyzc1HR5Pr1gLqJZksMN7R4k/xvryrwbYCO19IfrD0
gilOAeiniIpxcKV4CMr0dvMGI/o9UbrAOcxE85oP2sBiLiUhBQ0QEAFKAQskQOOl
o8r422cr/CJYDC9OAW1xITSvuWwamJAec7n/lqyYvWr4urMlsT6mDZEpNlKCVfNQ
lQSfQcN7mnGjzKwycbt5GMVpupDhPRvmNLSVUey6owxULZBdcrPC0b/K5hVElX6o
rWAkcwh77s3nhwJuPOrREIhnyNBiK3K8x5FM6ncP6l9ndlTHQU4yFVyze0jFPH8c
QQaFAPTn/axKu+mSZxjUK3OEsGy+ybAplBivH6pY3qEX6D2oYUJ4Ie6Jx1GqGPzh
Nkv914gkdMfmB4HdaQOELyYseKrLaEmy6AmTNMOpumKv0/8ucV/19s+cqdLWNlOh
ELjd4CLeOzvYxpA0u1OlOBLNEeBHeg3KY0C9ted8q1RJSOnxLzF4C1ujj+0kFp8U
/zp6FoLkbchfc50rIxLszh9hfRcyoG25H3jXYDY1xenxhv4Iba5sAILts5/IvI9c
ZyenKl3sU/pyQDrv8DhFJluIJotQ606moVk1PxJhRv0Yt34Eaa6+TNszezcPnPWU
kkEf5UXWBofFCYl0f8XVqcFDGmo0tdYTfbi4pK6RSEehe100xVI=
=wD/W
-----END PGP SIGNATURE-----

--b0gkupGM8zWoxRNZ--


--===============6971508081613097672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6971508081613097672==--

