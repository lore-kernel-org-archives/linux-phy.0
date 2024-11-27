Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86966D6ACF1
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oIm81qF/Mjsa984GzXzpJk+Vbj77AqV9WI6BvTIjtdI=; b=Q9UUyE0fY1hINEVXJ50Yv8dBKq
	5IyndqauOKCpsJzAfr11cIRN3FZLLCFzENV4X3ZkC3UQ3+bG8t2WEmYxN1rg68+XplUFX2i2P4Te1
	aS9/4foxSgD4X6mhAyOVSY6jOFs5ybp9+b0NSyn4gFh/1GlivuJRqmLTUJEX0YjCAPwjiohJpWqwX
	D8hpn9cujTZSHPcEg0jOha/r37xqVMCnrpdTDxOBeW0HUu4Ee2YoUwrzSmmSAhfWoXQkDkiJhp1HW
	3oXKLJMJxRKJRk5Xb9n+Tfaz2FxrpLKAiew3emY2ItRXQC82CrxTSdrGA04v3jc7Z31aDtkQqX9bC
	8PSfOl4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKX7-0000000DafA-1J7Q;
	Wed, 27 Nov 2024 16:04:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKUx-0000000DaH9-0dtx;
	Wed, 27 Nov 2024 16:02:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5C251A4394F;
	Wed, 27 Nov 2024 16:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 687FBC4CECC;
	Wed, 27 Nov 2024 16:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732723357;
	bh=TL+I7JUh7Aq1InjR6Z5JlWDmp5BdWL7K2gWShIAH5n4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QP/WO6fF1/JucbsBoAFCrhfNdZNn/vJDCSkL5EJUDHbD4Q9W6J5PIX49asB5E3UC2
	 sZUunSdX7ixSk1o5R9DiiFZDGfX6WAtLtUvkuE7hqdc87MSUvvEJRK9V9AiGgzsqXe
	 LVA7woAMlL1n5vVE2go2T/tCQ7LSxkQzqujgAPQGZpBo0jpPvSAqh2Cja/LKDi8B1p
	 4dbn8lQihck31K332LiyQ6CWqlD8QNFWFu3A7FLxfHh3JXC1lU60aamuoeCDgBwaCg
	 sMDH6NT+qc466C8dtKzwYfxUzo4lNyLQtrBEW0ayK68UOrUNfh/uXEs7q2+izeiaPK
	 fPQAVxr+7iFxA==
Date: Wed, 27 Nov 2024 16:02:32 +0000
From: Conor Dooley <conor@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add optional
 orientation-switch
Message-ID: <20241127-pushing-baboon-4afafcf8322f@spud>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
 <20241127-unturned-powdered-d9d1b695732d@spud>
MIME-Version: 1.0
In-Reply-To: <20241127-unturned-powdered-d9d1b695732d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_080239_259568_FB4B531C 
X-CRM114-Status: GOOD (  13.62  )
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
Content-Type: multipart/mixed; boundary="===============0260347628031355060=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0260347628031355060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IhBg84JsEwDLC8Yb"
Content-Disposition: inline


--IhBg84JsEwDLC8Yb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2024 at 04:00:59PM +0000, Conor Dooley wrote:
> On Wed, Nov 27, 2024 at 10:58:12AM +0000, Andr=E9 Draszik wrote:
> > orientation-switch is the standard declaration to inform the Type-C mux
> > layer that a remote-endpoint is capable of processing orientation
> > change messages.
> >=20
> > Add as an optional since not all versions of this phy currently support
> > or even need the orientation-switch.
> >=20
> > Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Actually, this patch unconditionally adds the property to the binding.
Is it valid for !gs101?

--IhBg84JsEwDLC8Yb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ0dCmAAKCRB4tDGHoIJi
0tYAAQCWP68TjQ4VMdnkNOjU/mfYGe+iMPyKEG8O7I36Qm4hGwEA00p1NoQKRQ8X
g2sEFghrV9k7tx8dNqsT6X7yI8Ehrgs=
=PrlU
-----END PGP SIGNATURE-----

--IhBg84JsEwDLC8Yb--


--===============0260347628031355060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0260347628031355060==--

