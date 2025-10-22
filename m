Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F420CCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 17:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQJdHaKM7J+I5DK3fmeurm0UUCZppbW5ByWAjdQVUl4=; b=SRnqMBP+3aRZ+9WcSBqRd3PfXM
	O0etW8/+GR5r/PoAohU674gpPc22t6v5DYTGzlAvyDskPagKhZTJBOg3b7ocJdIij3KK3A1C2DZ1U
	NyYKQeQCCeGTF5KV5jaaaXCo0OMOB/YczYlLXqslsoueMmx+Ij4CxL7EQYxQS6FgjblWRyK1Usd3p
	fAjyMOV6UBj3tjTh1VZnmJTE0HaREILzgPQnXNwpXxX5okxC35PIxORG1VTds2cBPwpI9uAQ7vo+x
	zX0c18Z0k7NlOF/AjWpj3Cyxwn7dGlpMQV2TYySn91ZATNRCSDnjIwzY6NTnMT14PwQL2lcKl+SXE
	IjTWompg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd3W-00000003txf-2hfM;
	Wed, 22 Oct 2025 17:55:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd3U-00000003txH-15e3
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 17:55:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DD51244131;
	Wed, 22 Oct 2025 17:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC358C4CEE7;
	Wed, 22 Oct 2025 17:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155723;
	bh=cUY8ixQPrzQuIjFkkA9Tc0PQzAYbO569D26Xok769Es=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AKpquUQO8FVraQ/ev144KQ2j9NcIMzPxRY4ZPDrJQnIwdq/JoHa68apGYatwdYOeg
	 16nQDf9aPiQeEYhYuXnLqNLRw2vsjl4bUPWbx7vjUo3Xwqqxrt8LDmhiU2zvNanqZh
	 ulfrek87XtRNnxcIevyLVl0PCKS3WcDpCmYMu2uxgKfIvg8vpHya0zPyPgsInUFEfI
	 7AZWHIxgDzl3wqHTMHIntUFrOFnJqTVytJDnkhrXIeLmT5JKo6Ws7a/ULAnx5UZLGp
	 IHwuI/Vr74+5WqmXmrfeVbooAvLzohwSUB6q0vvuCNWr0y9OR5J/CnBBLab7g9FnSD
	 0tHNcVBqtFncw==
Date: Wed, 22 Oct 2025 18:55:17 +0100
From: Conor Dooley <conor@kernel.org>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 1/7] dt-bindings: soc: mobileye: OLB is an Ethernet PHY
 provider on EyeQ5
Message-ID: <20251022-patchwork-plunging-67232b409322@spud>
References: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
 <20251022-macb-phy-v1-1-f29f28fae721@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20251022-macb-phy-v1-1-f29f28fae721@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_105524_316797_63BFDD99 
X-CRM114-Status: UNSURE (   8.51  )
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
Content-Type: multipart/mixed; boundary="===============6941984385208977238=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6941984385208977238==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Jjc5Mh3+CKARWUf/"
Content-Disposition: inline


--Jjc5Mh3+CKARWUf/
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 05:39:03PM +0200, Th=E9o Lebrun wrote:
> OLB on EyeQ5 ("mobileye,eyeq5-olb" compatible) is now declared as a
> generic PHY provider. Under the hood, it provides Ethernet RGMII/SGMII
> PHY support for both MAC instances.
>=20
> Signed-off-by: Th=E9o Lebrun <theo.lebrun@bootlin.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: not-applicable

--Jjc5Mh3+CKARWUf/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkahQAKCRB4tDGHoIJi
0jnPAP92K/a04IoaqEzduGVMzofF3MGpr5b00WTiq05i+6Hp4QEAooMhYLXairhe
IkapkJAWV3a5p89HjXfu2eN6G5+0mQc=
=9d0M
-----END PGP SIGNATURE-----

--Jjc5Mh3+CKARWUf/--


--===============6941984385208977238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6941984385208977238==--

