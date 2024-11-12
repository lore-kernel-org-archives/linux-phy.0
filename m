Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D29C1D42BBA
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 18:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DxAFgY8xHiSQiL/rkLzDbU0dpO/HkX9rVcZc5dofOrU=; b=GyJSGURsmR3aQmZ8ZCYT+aYOyR
	WKd0mSiGlJlkg37fW1SPrqo9wjzYSswM77fBV6JhG82cI04zZ1WnEsKJjBD/QF9ZvdaPqS+pyFHp2
	4qnOZXIxWTwtzluZeZymWie57oWB4fwrtRFa1xW8pG2NF1Ge+d/U13q5+97bGWD/eyzE+0plz3b3t
	4zL6wDt7xRJmMdsTRXws58n5+n4te+HEkJ7x31XZsQrx0ue5L9s6dQn9AaCqini+6envEw6j+Z5zQ
	6KYeiTxCc7Dvp0AaDpRXDO+Giuv+dbM1Fa8LAI4aazbqgr5wi2pwEyi+AxnXzQRuzpAStTVFvwdgk
	bXLGIvdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAvGw-00000004Ud1-1j2p;
	Tue, 12 Nov 2024 18:05:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAv4r-00000004Rgg-21cq
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 17:53:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A06395C5493;
	Tue, 12 Nov 2024 17:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A28C4CECD;
	Tue, 12 Nov 2024 17:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731434000;
	bh=CdNwh4TngMkwAITvnYjnGJi43aRzrH2WAmIdAF6r2Dk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c33DwffK4W91A1K6v2sh8AoMP06Tnu6dfrknLd0+J4QkGUyXjZQHYhRW1tRln+1X4
	 DRe+T0NHBsOtHkpyMEHJ5UD9f78QqPJ26ttMalzIZAn9Vm3LeVAPRNcNjWx1WJg26e
	 wySH0Sul5B3fyUr9Tvt9pRpUFyGlIDR4/YhbQ0IQC7zdp5ugQ7NHGzg48QK6gjl1j6
	 UxO40FAHMGRCpN9Xa32bvUV+Kn1cK1gqjK6fayAHaEus0tzgNV43DMztJSuUMIbXTr
	 n3cKHyOZ+CG/3nM/caaimGBd4Tl96xQL1xts1Xk+cfDmCaxb+hfsTlxLkTK+Gqr1ON
	 NHGA5RH5GuNHQ==
Date: Tue, 12 Nov 2024 17:53:14 +0000
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
Subject: Re: [PATCH v1 3/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ5424 USB3
 PHY
Message-ID: <20241112-salvation-dad-3a0577bcb9ce@spud>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-4-quic_varada@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <20241112091355.2028018-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_095321_581622_EBF2C934 
X-CRM114-Status: UNSURE (   6.46  )
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
Content-Type: multipart/mixed; boundary="===============8942179926324749176=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8942179926324749176==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uEd4HNO5pLge7WAs"
Content-Disposition: inline


--uEd4HNO5pLge7WAs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2024 at 02:43:52PM +0530, Varadarajan Narayanan wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm IPQ5424
>=20

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--uEd4HNO5pLge7WAs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzOWCgAKCRB4tDGHoIJi
0r5DAP40niOs5uZ96CY9WXnzZbHEwAwoHSs3p/xuq3PQvb7fxwEA8iX6Sj5WwHTP
gO1xpITVwnGMUTH2usuOvbTBbT6rnws=
=JwNr
-----END PGP SIGNATURE-----

--uEd4HNO5pLge7WAs--


--===============8942179926324749176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8942179926324749176==--

