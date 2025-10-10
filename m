Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10FDBCCA476
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 14:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cs5URLMvjtoBaXsS40u3qKnyvw1ID7lb5Qr3oscOe0I=; b=EELyzk1ct6kTMeU4ZCbnPK6iKz
	ubFA1j8O5fs4cari1H3IBnapNDXEVy18WU6yBuaOvu+Wtxk18LpCOcrmiBHyboDhnc8iMm5OzqNGw
	rEP1+R1VHbQyAWMNXWTOmJP72lTNtbgAjkFOAUNG+z6HUVNQCD7nDrSifz09CGfwBMjbQKLIHca+3
	8Vu5GkhdPCMaWwCVjybrvl4WE3H3l+JlUO6XqQWcvawgmPlMVPOCCdbMZ2lJWa0taObsbIEKBNKxj
	JDbKAb597krQ5sUFquP0Bpysripyy5h7hCx4sqRnsz5lvq7+gz+eWLdw1PrZbpiQ+wqdbjdPeWLZx
	OWOcy9tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7EA5-00000008h4O-3ISW;
	Fri, 10 Oct 2025 14:32:01 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7EA4-00000008h3s-3M6l;
	Fri, 10 Oct 2025 14:32:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3D00D6266E;
	Fri, 10 Oct 2025 14:32:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D1A4C4CEF1;
	Fri, 10 Oct 2025 14:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760106719;
	bh=wEhFTZooq1SoHLK/XSZtmAYLO1RTIgJF4XL0BWpSf6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FXpCUjjH9b/60w57JjvE1ZeBOKiZcpafsYdqPVv+0bN4+mCBf8fyZNgsOzG1MSJoT
	 P81HDDez/i6P/08T6m9e2/P5JQH3TEcTmzHeq5WLMQZj+o6mQhjpEt2rz3wzyj8X3Y
	 aIR5xPdCs3Zs//fY3zOCHI5xdoI2W7PBp99rvspB1EA9oWBODKnvMveUlLGnkZ+7EZ
	 iY1Ztt4jHYz/yxJ+Zh/7antlDGDH7v7sm8xIWGkwaB8l4NdZfiZ3qr4SmKa22Yjt1c
	 mYGuEwetaX1bykkHnzvHQ8/CdGZxgHtqL7kyyDGJWsMRTs2zbz0z7NhQDkAXdiwHTF
	 2+l8nLEhYJcvg==
Date: Fri, 10 Oct 2025 15:31:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: imx8mq-usb: add alternate
 reference clock
Message-ID: <20251010-eldest-padded-98f9852a1248@spud>
References: <20251010-usb-phy-alt-clk-support-v2-0-af4b78bb4ae8@nxp.com>
 <20251010-usb-phy-alt-clk-support-v2-1-af4b78bb4ae8@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20251010-usb-phy-alt-clk-support-v2-1-af4b78bb4ae8@nxp.com>
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
Content-Type: multipart/mixed; boundary="===============0359834191835126270=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0359834191835126270==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ReRyNSNdhTFV+Mx9"
Content-Disposition: inline


--ReRyNSNdhTFV+Mx9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
--
pw-bot: not-applicable

--ReRyNSNdhTFV+Mx9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaOkY2QAKCRB4tDGHoIJi
0q3mAP9j5GE2F7HQWGUYyOU9k9MhsEyyX3rvlNH5Tnd6R2lBIAD+LQIwhk0KoqWh
PzUa4lYpWpc9tc/dr16rfSTrs9YE8wk=
=mQj2
-----END PGP SIGNATURE-----

--ReRyNSNdhTFV+Mx9--


--===============0359834191835126270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0359834191835126270==--

