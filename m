Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8917CD42BBE
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 18:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F6LA5lZnU25ylj06mA+AY1cS1CrToHyDupkGRmX5XdU=; b=X8DTGgXxvuua61BOICvbQJ/bPt
	STMEJKE2ci04AH6ysnyiXN4mS7caYw0rIH44/N+bToeDUZNrmIkQBv389eubODVsaOfQ0NHx2ai37
	uqnIywkHDUtWh53LpUxRsIdG0NN4RLvKZIiAXRi7kjPTiCayFYOCLEP4UVcTdz8Ht6a1pfbSZaiU3
	jC4jYvaRltDRx3AdwxLxsX70rGyKqSipMnzvO5GHcCxBSvQLnzBjCDGzZh7gATwD3xnwCztTCtuqB
	06CEALJBdGlzHa75IT9GssXOEixqSH4tQuFrXUyvX9prVEG6HuSaSQk9Jd1aZCR+MHyVUgqo26oLX
	pmhTFZoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAvGw-00000004Ucf-0PAx;
	Tue, 12 Nov 2024 18:05:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAv4a-00000004RdC-0MVC
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 17:53:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09A645C5493;
	Tue, 12 Nov 2024 17:52:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31227C4CECD;
	Tue, 12 Nov 2024 17:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731433983;
	bh=XqUNyTnAoGvRFc6NJPZM4dR65hK+xRVPAx60WZKWV8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HZ8phrHBXgWmY6Le3uWwD8HAdgijCmsUqHlhDEFOTv2h+sUwCGIKvJeU+Cnm1Dd8s
	 junEAQHfwv1QFWuPQ/A2AP8Zp/VF7q8NOP40eaeN/5lV9pfUcmSa4k0p72FgvaKDDT
	 MKQuGnSk/47MqHH4VhUOAOzPjFMl4Hex1sVg3fjVAQ2Gt5peQ9W/4VPWMG08mY7vGo
	 x0k42M2WmIQ7ugO1t7nWlwzC+D92/xoV56n0IrH8rURnFAkIUubgSko4UMKqJ7ov5r
	 eN1IMDMt8ctRwYSTNBxfCBgYJw4zLpRzH0SuJGE64sNzETVR42x0ewo3sj16bLDs3C
	 z4Z83R/RQJXQA==
Date: Tue, 12 Nov 2024 17:52:56 +0000
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
Subject: Re: [PATCH v1 5/6] dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB
 DWC3 bindings
Message-ID: <20241112-elderly-dole-796d0fdb373c@spud>
References: <20241112091355.2028018-1-quic_varada@quicinc.com>
 <20241112091355.2028018-6-quic_varada@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <20241112091355.2028018-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_095304_187869_A9555971 
X-CRM114-Status: UNSURE (   6.95  )
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
Content-Type: multipart/mixed; boundary="===============0880255410722830793=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0880255410722830793==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b67RiRvDG6Y2cJDb"
Content-Disposition: inline


--b67RiRvDG6Y2cJDb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2024 at 02:43:54PM +0530, Varadarajan Narayanan wrote:
> Update dt-bindings to add IPQ5424 to USB DWC3 controller list.
>=20
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--b67RiRvDG6Y2cJDb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzOV+AAKCRB4tDGHoIJi
0hFaAQCvFgly9dNrOCutUGFvxUKQ846YGdIJo7xDmgt0KhovzAEA50rIU3ptcPUJ
7NP5qXgIXb0vtITBaxLJjOe5F6QwKA4=
=6Woy
-----END PGP SIGNATURE-----

--b67RiRvDG6Y2cJDb--


--===============0880255410722830793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0880255410722830793==--

