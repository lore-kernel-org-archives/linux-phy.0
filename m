Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D044C43217
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 19:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ly2nxapqjla72SnbTLBHJTnZ4e4elvZUHF0OnWcmUAY=; b=eOoNU+0pDgaxljpEIDj3a045aY
	97hLQtFCqaw0Wtxv0ElBPS8ZdwtMMKswb1BCnm1eYjXqdBwatmvoUPI6RZrMTZgWS64lx0zph0mvJ
	OGrUc+xjZlJfAF7xJREX8Bpc42ydfwLyanZAwi2MLJga/hjLalI6tQz2+VxguksPNcPkCRvjnxjj1
	Dyn9EUToCVS/Hk+VYVFQiZ8floEtUMYKG2SjA2uqvHeXKEtJg8Uik/RAaqiehJQwdF7yfM/AGnNOL
	TkzUo0xc//51FuN9XmsKddF8uybtFfYo0OfbfLyBQpcr9tnIJcZmC8RxCsm67Wi6YF0JOCmV4DiR6
	Sti9S9lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNJQF-0025I5-Fj; Thu, 24 Feb 2022 19:05:03 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNJQC-0025HC-Hh
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 19:05:01 +0000
Received: by mail-wm1-x331.google.com with SMTP id i20so402740wmc.3
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 11:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aFSvFpoW7B9DJRHLFArsN58BcbVn7XQ4fEO+dHkCaWo=;
 b=fZ0v/Uavza86hMkYeQ88kaG9Ke4iew/K3geHYwkYFX7iQ72z9S+duCZ3M/Cy9OY26T
 7Av4baaaBUWDkQcmej4uRef68cv3FW2nsYO5pDhptA0ymBuT8T81RicWVuqcyYC4jSHX
 JNFHGF5FLz7P7gf4JsZJ7hhvXN1PNVJ4xQ0xQe918/tUKLbYTQSVit/8z5x4st22nrVu
 gEDrBHsIoiIGMEqLFF4sElodexG4L6MPWiMMOwHQgKb03IP3XQw/PyNVbY0sY+4JTbZv
 Iy6vyw/YaPv5SlIXTKd5B9QYz1t+JzRyIcr42NPPPXLzOiuU5hzkVtXQTn8YKoX1NuVw
 vPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aFSvFpoW7B9DJRHLFArsN58BcbVn7XQ4fEO+dHkCaWo=;
 b=JdCn0NWyjj+RRcRt/XfCTKKPy3mJvlxBUgvOFBHu2LEgHPa8IPnt/RF1I+we5/tsbZ
 ky1MT0W+mAcC4qhDih/RJ6FoejDpdcbN6C9p/DmHj0Tsggx3T7GL7z6NWhEuNVkzEGLn
 +wUFisGsIB0LUJM0ohi8Q36d5sRLBVtlmugKHLXdAxeyJUJzmHFpNX3n6kjUHWFv3zsi
 GfeAzJGDGIHKAM2tJyM/DWVvOybDiar852t8uRPvLoJyFZfc0pjomRtyrn6g8pDXZpmS
 KFXnRBMAJqQ4nI4ainkCQFPETcnCuvTK+aRhXHNY0CcmuOF9f0RMlc4sCzDBXMGWhyXq
 kpiQ==
X-Gm-Message-State: AOAM531BL38mr0i578aHYBIrnuWlh0AsQCjzns+906Al7PRFUEwa87Eu
 p6PVl40BDdSFvdmPl8uWTYo=
X-Google-Smtp-Source: ABdhPJxEBiw9aeUuGCsx8c5UEPVIxpUCdiZ7rWpSlDfBThBzsm2aLMCXfyQ/P8GC3tsejywBnxc64w==
X-Received: by 2002:a05:600c:500c:b0:37b:b8a5:856c with SMTP id
 n12-20020a05600c500c00b0037bb8a5856cmr13093838wmr.65.1645729498536; 
 Thu, 24 Feb 2022 11:04:58 -0800 (PST)
Received: from orome ([62.96.65.119]) by smtp.gmail.com with ESMTPSA id
 f9-20020adffcc9000000b001e9e8163a46sm245157wrs.54.2022.02.24.11.04.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 11:04:57 -0800 (PST)
Date: Thu, 24 Feb 2022 20:04:54 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, jonathanh@nvidia.com,
 kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 p.zabel@pengutronix.de, mperttunen@nvidia.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com,
 mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V1 03/10] dt-bindings: memory: Add Tegra234 PCIe memory
Message-ID: <YhfW1rXr+5/o7E5N@orome>
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-4-vidyas@nvidia.com>
 <4e2bec9b-4759-b699-fa7b-974f5f43da9d@canonical.com>
MIME-Version: 1.0
In-Reply-To: <4e2bec9b-4759-b699-fa7b-974f5f43da9d@canonical.com>
User-Agent: Mutt/2.2.1 (c8109e14) (2022-02-19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_110500_622703_667DFB92 
X-CRM114-Status: GOOD (  26.06  )
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
Content-Type: multipart/mixed; boundary="===============3427448933562650113=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3427448933562650113==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="P1IEsKe5Ui8//ysj"
Content-Disposition: inline


--P1IEsKe5Ui8//ysj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 06, 2022 at 12:33:27PM +0100, Krzysztof Kozlowski wrote:
> On 05/02/2022 17:21, Vidya Sagar wrote:
> > Add the memory client and stream ID definitions for the PCIe hardware
> > found on Tegra234 SoCs.
>=20
> I could not find dependencies or merging strategy in cover letter.
> Please always describe it, so I don't have to go through all the patches
> to figure this out.
>=20
> >=20
> > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > ---
> >  include/dt-bindings/memory/tegra234-mc.h | 64 ++++++++++++++++++++++++
> >  1 file changed, 64 insertions(+)
> >=20
> > diff --git a/include/dt-bindings/memory/tegra234-mc.h b/include/dt-bind=
ings/memory/tegra234-mc.h
> > index 2662f70c15c6..60017684858a 100644
> > --- a/include/dt-bindings/memory/tegra234-mc.h
> > +++ b/include/dt-bindings/memory/tegra234-mc.h
> > @@ -7,15 +7,53 @@
> >  #define TEGRA234_SID_INVALID		0x00
> >  #define TEGRA234_SID_PASSTHROUGH	0x7f
> > =20
> > +/* NISO0 stream IDs */
> > +#define TEGRA234_SID_PCIE0	0x12U
> > +#define TEGRA234_SID_PCIE4	0x13U
> > +#define TEGRA234_SID_PCIE5	0x14U
> > +#define TEGRA234_SID_PCIE6	0x15U
> > +#define TEGRA234_SID_PCIE9	0x1FU
> > =20
> >  /* NISO1 stream IDs */
> >  #define TEGRA234_SID_SDMMC4	0x02
> > +#define TEGRA234_SID_PCIE1	0x5U
> > +#define TEGRA234_SID_PCIE2	0x6U
> > +#define TEGRA234_SID_PCIE3	0x7U
> > +#define TEGRA234_SID_PCIE7	0x8U
> > +#define TEGRA234_SID_PCIE8	0x9U
> > +#define TEGRA234_SID_PCIE10	0xBU
>=20
> I don't see usage of these...
>=20
> >  #define TEGRA234_SID_BPMP	0x10
> > =20
> >  /*
> >   * memory client IDs
> >   */
> > =20
> > +/* PCIE6 read clients */
> > +#define TEGRA234_MEMORY_CLIENT_PCIE6AR 0x28
>=20
> I see you use them in DTS but not in mc driver. Don't you miss anything
> here?

This is along the same lines as the APE and HDA patches earlier, so I
would expect Vidya to add a memory controller patch that makes use of
these once the initial Tegra234 memory controller patch was merged.

Meanwhile, I've applied this to the Tegra tree, on top of the other
patches that add memory client definitions and resolved the conflicts
that ensued.

That way, by the time we get around to the next cycle all of these
dependencies will exist and applying the memory controller patches
should become easier.

Thierry

--P1IEsKe5Ui8//ysj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmIX1tQACgkQ3SOs138+
s6FaSxAAqaAzeWrUt+ekUE4mYyQm5IsTvaxzM49tL5qE1eNmGPw0X17Th4N5CWV3
2JlZfn6hU7DOFnnsF7geN39pLOgbzhN5HQ/NKCxTeujNG7/yvwk875MYj5o2AmQJ
9EpbM2xiCmzbo0D0hkOds3Dj9WePSeXHm2w7kUUfr9PoA+pVyCfifnkY0edD63Yy
YhzPsJA95elzU1ysJ0o8mk205CKZelQrPDCtxAmlJczjBQBJfUP4t2/oXxRSlVur
IRPs/WSItsh3EL4fvQcaIs24Tac2omhPNtH+qp0cF+YdHiB9pJ6s7DaQ1zRDvvTT
Do5H3/Px+v9Oh6WKAZaJDljinfWB8kUAsQQCTBP9nCYCyP43lfwEJW+4x5L4lC2t
sAW4lGM/Jk2psaIVOpR1i07aw8QlGr3S2PUQwYr/3xTC7LSlDG14u8ss4+oFRZsT
Z3w5J/7de0jirRMlV7MJunUNA9L51VTW9F/k09+yKlfuBNlm3etc0LQGw6W+ntwg
DJTn0vdhIiugRV95QF+BrDUYaFhu6Rmla2+1Rq79+lMWLnIpGNDVV1vfd7wSK4LU
Zz89jqQoBaH47WAxgNkTWMNmZ7KannprydkrX9TEE+u1P0RCpnDsT3iknLylP/R5
fCxa8AkIJZhDsoL9fRD2qpF+qzQELgJyW4yqSEUqPOFnh80bQDA=
=WK2m
-----END PGP SIGNATURE-----

--P1IEsKe5Ui8//ysj--


--===============3427448933562650113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3427448933562650113==--

