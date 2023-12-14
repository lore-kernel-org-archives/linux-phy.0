Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D5ACC4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 15:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UxpNTLdYrzfrFZkiweSx0fn1VsP5m7Ut+tTV/F3+fww=; b=ShYkt0Yr1qyuaLtmutwekGzryB
	azxnH7JBIa/DdylvOrs9g9gvDiDNJ/uxldt73HBhNpDzYoALvcULm1cqCaVyvFS4ixUVnOurCaqmK
	+EhEglmugUUcrV0m4OU03nAinhVc6A6kGfgXihXOLTP/yudmUoM2onV6muxarNT+DS79WB2WENHxZ
	EKHWtf7/iGJ9Ine8DoYJhDTxnEKIL2+aL7ACyr59t57EMaxwZE5slDwC/I+Ef/ZjywBIB0tmS9+qA
	yvrFiA/y5i3UsUEbTFj68FLwRVnwpf0a/A/FetR9ZTDigp04YpOfUE70CoZ6r6v50zNGaIuyB4VaU
	+9QdTfNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDo3U-000isL-2h;
	Thu, 14 Dec 2023 15:55:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDo3S-000iqz-2n
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 15:55:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 13FBDCE1C5C;
	Thu, 14 Dec 2023 15:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E15FC433C7;
	Thu, 14 Dec 2023 15:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702569316;
	bh=WYeqYCErkROHKuIRZn/pMD0415jC0WdcK3S4UMGNdjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bF/zNNVUDSEC8MIkmwGiaywCrvo0qBDa6seF/LBNNQJIDSDx1RDK7kxhJWpS+eXjH
	 KyA2SubRXyuRShSKDkvPIh6mtdQEFOUGSr2XkGeFSFcreOkFb04oBl8Vo4Gcd5Pson
	 M8aZ52nzmMYIyC9zInCOSB1BSsFKrl2X21HSy+FhoGwtqCFz/ycU2xxzkGxGBwnOCc
	 q4M/rbJNSdPYF9pORujaImibLYrA4nahCHvrkxMjiw7ZKktj9XfUN0ycrcFSPnyh60
	 c20tCQxtRw/iPhp5mSqEGCNq+P8BZrgu9gSYbyYJ01TPkdvzEH7QofS4lyLDx/4OxH
	 7EmugigJSrS1Q==
Date: Thu, 14 Dec 2023 15:55:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Message-ID: <20231214-aqueduct-occupy-53b9d650dfc4@spud>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_075519_076214_532EB47F 
X-CRM114-Status: UNSURE (   6.85  )
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
Content-Type: multipart/mixed; boundary="===============2973977585958962551=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2973977585958962551==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="65gDSZnx9nzEjrit"
Content-Disposition: inline


--65gDSZnx9nzEjrit
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 02:40:46PM +0530, Manivannan Sadhasivam wrote:
> All QMP UFS PHYs except MSM8996 require 3 clocks:
>=20
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (since SM8550)
>=20
> MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
> reflect the actual clock topology.
>=20
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--65gDSZnx9nzEjrit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXslXwAKCRB4tDGHoIJi
0l7YAQCxHh+VuMFNf8M6bIbeG5yD+E8OPm4XNyqEpRK3LhhWoQEA54PMCR8Cq5ds
Zn5wnvBY4oYT5Rw7lm6D9DShWy+npgI=
=u2wx
-----END PGP SIGNATURE-----

--65gDSZnx9nzEjrit--


--===============2973977585958962551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2973977585958962551==--

