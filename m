Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D90D42BBF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 18:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bPV/MncafFTZFR3IlJ8FuaoyGg5aBzn7ll0f76JQa/g=; b=ft36KtYBYNX18IwuUFmhRVo/Ga
	6OiOAbmnW2KU598/SkWkNfeVEjMvry+E6Y/eHlXK2ExDM+klK/glv57/ce4mro0G7VGGp69RFoCUx
	SatU/eEUCGb9SRjFOO9gCXC8znwsP7gQDeLOoSLeQg7kz+OsLlaAMYykHbHg0eia9J8jVTvfCmXgF
	6t5DDk0XGEsNUSKW1Qzcy6SLb/ndELecC/ytzWYUd1CUPTDdulaA2O2jPQYTMRLoZxXwUzcca6tSe
	ir5fW2bRDRAO7eBJKBiWFpWag0Er8qUSsu/zFkWzkTDBzcmOzB/A4U7QcZzW9gmdFvf2G5O7A1Npt
	4c6iqK+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAvGw-00000004UdJ-31Om;
	Tue, 12 Nov 2024 18:05:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAv5A-00000004RlL-3hAE
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 17:53:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 12C8A5C5780;
	Tue, 12 Nov 2024 17:52:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5973BC4CECD;
	Tue, 12 Nov 2024 17:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731434020;
	bh=mjaZInMpBAbkCA4E5OU9QfNO4D8qD2vAuWT2Q/jQS5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lnnh/sKjKv+RHS6oskPYA9NGkaNCdP4vd0WXfoFlrUDn84S/nQAlO5NzSz3qwh311
	 HTwIG0mEMfVsjmOyEvvE3kdYvg0eHb+bOFvdyJlIeDY4wT0oIKprFKrdZbjYUWXSbA
	 pQUNTWd3v0z9/xNOo4HnvGgxJ9z5QvfKHAR447HGTNI34YnwKJX9cR5UPcNAs94ZXR
	 0jq+IETui39IiQjL2Djq4PauC+9LZWz7Z534CxkTB/Y6vqpPik5yF8kva4PL7TynfZ
	 irQ+QhLcsPcvWpw00lPKZwS1+Cv1gHNjOwSnubFg9CR2SdXyUfZxJDsBoX29B6HPR6
	 ftN8cu6PiN7Hg==
Date: Tue, 12 Nov 2024 17:53:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
	andersson@kernel.org, konradybcio@kernel.org,
	dmitry.baryshkov@linaro.org, mantas@8devices.com,
	quic_rohiagar@quicinc.com, johan+linaro@kernel.org,
	quic_kriskura@quicinc.com, abel.vesa@linaro.org,
	quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 1/6] dt-bindings: phy: qcom,qusb2: Document IPQ5424
 compatible
Message-ID: <20241112-proud-moisten-13900b835e29@spud>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-2-quic_varada@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <20241112091355.2028018-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_095340_992351_AFC6F7AF 
X-CRM114-Status: UNSURE (   7.06  )
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
Content-Type: multipart/mixed; boundary="===============1286607867839379570=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1286607867839379570==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HEptGeQSGxI0F2Id"
Content-Disposition: inline


--HEptGeQSGxI0F2Id
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2024 at 02:43:50PM +0530, Varadarajan Narayanan wrote:
> Document the compatible string used for the qusb2 phy in IPQ5424.
>=20
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--HEptGeQSGxI0F2Id
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzOWHgAKCRB4tDGHoIJi
0mTcAQCv3BSj7k0bxTkdDbn6NXaI13elDe2ReD+NRb36KT9RTQEAuViXZO3eWe0i
l/g+guT1pbcTWXO5vT9c0xpTwap0OAU=
=lPxM
-----END PGP SIGNATURE-----

--HEptGeQSGxI0F2Id--


--===============1286607867839379570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1286607867839379570==--

