Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E93CA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eWXc3ckplhzrv8wN6atOBbsd/v8slkS9acUlMW2VjRc=; b=LiG0n3wUKksP6dSTuCq/21Xueq
	y+9N/mnqt0EFickbDgQZhO8yFmlVz9HQWyTO6aPOsEgJWdBdRypFcA4/eyUl3DMmoCTnubMVP7H9D
	eX22qO0r4aI6dqhCcYrakU4VZw+q8/OsyuTKySCPxvGe332hBhMfBCkngXfntQHBJS213vb1vl/4j
	Z9bn9K/bSpz0g79ZHdFjStAO/gCYyssumQFR0ktK4nvjj4dZJkbwa4rPlfbbDBrEagtj0jfDX0Gm+
	ij4tOCEqAPiHDlgvqKrIuRFubwzyDf6QhE96C08bKQwdHJTidr+p2/ox5MMWTnF9RUmXVrT58K8bo
	FJTE4ozg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphv0-00000004BT4-33cb;
	Sat, 23 Aug 2025 06:40:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upV02-00000003CQl-222k;
	Fri, 22 Aug 2025 16:52:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC92E5C710D;
	Fri, 22 Aug 2025 16:52:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27602C4CEED;
	Fri, 22 Aug 2025 16:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755881541;
	bh=yaK/J9Mq7TMSJEOF0Q/1YTVBPo06y0I9D1S4aI0nInk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MTtKvyPnUlzqGaBwQRa4ApDd1eD78Vx/uDltIbOsZNeZ9FXqn6LgBoNYdVvzP+TLZ
	 G6Hwwgw3IH6QrbydGfUJK4dMRu/KjXCWM/Wta1Xu/Qh5m6pzO9Xodry7FgmAgQ6IE5
	 jfXRK1i9nIV6INAtYBguAK1DdUCfICmhNJ9q0eLH0D8hTMS34d1pXz1WZW1MwChISY
	 k+xpxj061avk6wAg6MlLci7qBS03EzI6oo8vxoAFQo/1sxpv8Otf/cLiZKSDuNfZNm
	 eoiKYpA4/RnHKr6ZVV2VELIfrwrqL/VJpgE5O5Zkarg6FdiWPBdoJUpiKj1vfs0SNb
	 vuOwjd6H1Sf5A==
Date: Fri, 22 Aug 2025 17:52:16 +0100
From: Conor Dooley <conor@kernel.org>
To: maudspierings@gocontroll.com
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1051
Message-ID: <20250822-gout-denture-688eeb65b6e0@spud>
References: <20250822-can_phy3-v1-0-73b3ba1690ee@gocontroll.com>
 <20250822-can_phy3-v1-1-73b3ba1690ee@gocontroll.com>
MIME-Version: 1.0
In-Reply-To: <20250822-can_phy3-v1-1-73b3ba1690ee@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_095222_555155_5B15A640 
X-CRM114-Status: UNSURE (   6.36  )
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
Content-Type: multipart/mixed; boundary="===============7909548797006488105=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7909548797006488105==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="417/6ibRk/SLnFGF"
Content-Disposition: inline


--417/6ibRk/SLnFGF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--417/6ibRk/SLnFGF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaKigPwAKCRB4tDGHoIJi
0pC3AQCDOtsgl3v4+3MpC8nave18XEmONgIFklHfXnBS5G3TwwEA0mnpdzGtsgfJ
aa1SEma1o0J1HMb0GPVTGrRvFhFXVgI=
=SrOb
-----END PGP SIGNATURE-----

--417/6ibRk/SLnFGF--


--===============7909548797006488105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7909548797006488105==--

