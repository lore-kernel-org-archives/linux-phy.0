Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55AE0CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 23:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c1reOM0MYDyjbolW+qXu2qlckPreExyZEuVM0YgV/RE=; b=lWKziO9QU6BD0kNrUMV1q+wxeX
	vypsDJ84gUXLQOgw8Ar/k3cHmJ3J38XUDvTMycdf5LEV3gVv/9HMoloQymqzOORubtCEqWtoNBgOb
	DcAySCblTxftPp5TQIt9LGMO116TgTnn8oYTC4CBerXK4qP+6kH4Pd1ZccShshMNXCDP9ju0ljKft
	YcPJkBJ8MXOKmdBOuuOR6Ka7H7zA6OVX+PNas8QQ6FDf3KyJPndmVyguMlyf/mN4Xc5Q7CA6reib+
	kO8oT9B/xQseCqfF0LjhH/0T6x4IB3YKPdZ34XmJQ0RNQA/cowznUbbbOMVTkx2+6lq39gH0ycNpa
	qfnaB12Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uos3U-0000000FB1z-0C4K;
	Wed, 20 Aug 2025 23:17:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uop8P-0000000EoC7-0WR2
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 20:10:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 32E69601D7;
	Wed, 20 Aug 2025 20:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBA3C4CEE7;
	Wed, 20 Aug 2025 20:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755720611;
	bh=dVse70mtSBA8O5q2x+wtq/ObMTzGEE9i3+gZOaAkwoU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mAuzed5uHG2Y1FqNxOnK+WFGbd6Sxfkd+UhojRzarpG3RxkCUyuooFIPTZ4yFMfq1
	 jjYfw3EnRfzXu8X1q5OwaZIlDQ/QMlsqSB33aykw8vK9oJSy2hMpg8Khvns80kIF67
	 clgLxGBb2w7Xl7kvN4hHoMyMIO0QGZmQfXCN71DXGXwNjsriZfT5kfKO5/ZMlfDPdz
	 v5BSZGcXg2XotCLB8d4w07Z5yGAogWISVjw8/0r8wHU+xYRMPcH5pScHK+3abol0Xv
	 ax+lmNvYTFf3IcXv/Pw1u5ORBrDp8w7dI6k62L8XurcjtU7kmdzNLGd/Ic1JeqSHZ2
	 oYHxN+AcpOSZg==
Date: Wed, 20 Aug 2025 21:10:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 03/11] dt-bindings: phy: renesas: Document Renesas RZ/G3E
 USB3.0 PHY
Message-ID: <20250820-primer-shaded-66da9fa4bcae@spud>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
 <20250820171812.402519-4-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20250820171812.402519-4-biju.das.jz@bp.renesas.com>
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
Content-Type: multipart/mixed; boundary="===============3025453375657857024=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3025453375657857024==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LXzirxQmX6U3Q32+"
Content-Disposition: inline


--LXzirxQmX6U3Q32+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--LXzirxQmX6U3Q32+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaKYrngAKCRB4tDGHoIJi
0roxAP9GJsZd/fWOmzknnV9S9oMRYhu/UFF/4btUgos9kleS/wD/YpfxnSiYK8eZ
7a060ooGfVAkpHuCTnOxiQsVMk91igI=
=Hh6y
-----END PGP SIGNATURE-----

--LXzirxQmX6U3Q32+--


--===============3025453375657857024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3025453375657857024==--

