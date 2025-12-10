Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2601ED3E768
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 18:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HMxns3+/ZMwU2oVoU3PreDOit7IeWG8ZCl18ZgkblbU=; b=n0trPmbctjkMde2+oEefO9sQJ8
	LlOkLenRxe+MuUvb3gnFCWeMety74Q/KLeonBYXdJutmWBSg98PZh3CFERxd6g3UU0zJxKkk8MfWM
	nSxuz+W7C0KsQ4joGauDbf7344IVPBuFGrEofGuok17iRh5sjKqcUMpmp6mdcbtBGoOY1HCXpXVLh
	rv7uOBV75qWO+IPZNPZCPyuIl7Xk5ymzYIf0TCH7WxcEDYTtl+cXTgOzRfWhnpmzbDJW2DN72zJBX
	hKYv2y9Z9XKK7lTGBmCJy31A2WE2AFh02Ak8HWL9m3vjgzbm4qfojpq/gT/Z8AxGAlWbGpJ1iGgb1
	SR1vBODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTOoo-0000000Fk0v-1lTq;
	Wed, 10 Dec 2025 18:21:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTOon-0000000Fk0n-1Pha
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 18:21:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6EA786013B;
	Wed, 10 Dec 2025 18:21:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB4D6C4CEF1;
	Wed, 10 Dec 2025 18:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765390900;
	bh=O+bGZbuvV5kBW7ZrBjTqnBm76ibmQ69yjYsTylWkcb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BvAVRy0j+eyq40iKGFIWrLwNVP55uSf8AD4b81YFOwB5wOjrt3gLIqkJtmaOmbx6u
	 /H1NnCpqCcJafwoaygyuMgqITpp+A0bC//qQNcSeBLmNbYti9qiozuFSyqNNzl8zdo
	 E9VIeIOQUp5PIm8e2JjCPN0UAkrM61i5UgIjNmfK069X0ZnEPtKskxo1nFFlKoV8Df
	 Gggyb2hHueVniuewm9/BFvUWr7/b4OliGyJW3GAiokao6XQM39anwQ8a6AcKS7Dtgv
	 PxsPCqT4Q6nJt2i9ekG58XqeWnOQ2dCkfF1KcEEypfh4T2sD2xk6gA08K7/widSsu7
	 9/N0llidyrzfQ==
Date: Wed, 10 Dec 2025 18:21:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Prabhakar <prabhakar.csengg@gmail.com>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
Message-ID: <20251210-persuaded-rewire-8ac93b0cc039@spud>
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
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
Content-Type: multipart/mixed; boundary="===============2241346672431340099=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2241346672431340099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IIsQrjuMkvqB7/Hb"
Content-Disposition: inline


--IIsQrjuMkvqB7/Hb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 08:52:58AM +0100, Marc Kleine-Budde wrote:
> On 09.12.2025 16:21:19, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
> > dual high-speed CAN transceiver with sleep-mode support and no EN pin,
> > mirroring the behaviour of the NXP TJA1048, which also provides dual
> > channels and STB1/2 sleep-control lines.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=3D1765=
297159307&ref_url=3Dhttps%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN1046=
V-Q1
> > NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf
>=20
> The polarity of the standby line of the chips is different.
>=20
> You must set the correct active high/low property for the GPIO, as the
> driver uses logical levels.
>=20
> Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>

What you're saying seems to contradict the tag you've given, is a
fallback really suitable if the standby polarity is not the same?

--IIsQrjuMkvqB7/Hb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTm6LgAKCRB4tDGHoIJi
0rd8AQCVqGYenKiVlmsteQjlS3YKRFO6NfcKVKty99nB08UYYAD9EvjL6s2ARUpL
Tk/sBch2w9KMamz7vNWItgV48BNsgA8=
=XC1y
-----END PGP SIGNATURE-----

--IIsQrjuMkvqB7/Hb--


--===============2241346672431340099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2241346672431340099==--

