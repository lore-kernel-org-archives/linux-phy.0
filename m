Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C76CA0EED
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 23:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sLXGng1jlVjXdMyqkrlVz2zZm33BVLZs22qJO+6TKlo=; b=GxpueD1HIFo5zYHGyo0HCKZ52G
	MCcw9hCJLZ9WI3G7cKdRHCBR3N1/MHlLWKdA7tz+upAdsf3sXR1Gw1sdWVrpCzx9DdnLODVOgMaga
	W8gbSTIQue0nWtMxftH+kmVs3auwNpkRuxNs25dXZGG3iA6xge5iURfLp91o9tJoU7Kb8EezhKlj5
	pkaoLZiUu6izPKJhBS8Zce0AKvkP0xHJZo12CgwACGw9BU+9ZSN1gNUfunxyVSvPZpOfz/MunhDlb
	OK/I0Qc/ykKz45h9ztduMnTaDn1sPdziOcPhP6nectFY/hXixabRWFQvLtaQPC3eSRIDIrmgCwrq5
	URt34Jgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uos3e-0000000FB90-3TWq;
	Wed, 20 Aug 2025 23:17:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopAk-0000000EoXy-01fV
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 20:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 28AA15C6B24;
	Wed, 20 Aug 2025 20:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26DBEC4CEE7;
	Wed, 20 Aug 2025 20:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755720755;
	bh=AJMpxTtu9ORwc3IjKO1y9Jr9sD2s2UqoyzgJQPmeDDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=re9SEYaVlaWSOaXwyVqd3S6CaYsivjx35lZeUPIDt3UrNfEVLJ7OKjJr04AejGtmz
	 CqWlViYduI47Vc8V1Rgsaads7kKdKGuzPan1vuk2VDTVlFXO6/4YZfJ0RrJB7r1Xc/
	 aX/xvupj5baxEPCEXx8NlglwuDWWyiFNi3fw+50h/Bg3Bt53JPbiYEMg72O8PJbTjQ
	 N/+tILx1cz9ARZ6ta8xZmwQmhM18nhgG3ByDJRDrkL14FCjzn1/F14C3eaUAgi01mh
	 ICZhE3q6cEG6jUvTg4IdzNSFlNH/J0J4U/lfdEnwgVbxpVq/naemg5lfA4qK3otXiu
	 NOoK/2p6RscvA==
Date: Wed, 20 Aug 2025 21:12:31 +0100
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
Message-ID: <20250820-commodity-curator-1f580789885b@spud>
References: <20250820171812.402519-1-biju.das.jz@bp.renesas.com>
 <20250820171812.402519-4-biju.das.jz@bp.renesas.com>
 <20250820-primer-shaded-66da9fa4bcae@spud>
MIME-Version: 1.0
In-Reply-To: <20250820-primer-shaded-66da9fa4bcae@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_131238_087443_2A461A50 
X-CRM114-Status: UNSURE (   7.46  )
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
Content-Type: multipart/mixed; boundary="===============8624687978854315154=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8624687978854315154==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bCH9mOQO/aowJKBV"
Content-Disposition: inline


--bCH9mOQO/aowJKBV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 20, 2025 at 09:10:07PM +0100, Conor Dooley wrote:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Now that I look again, same applies here with the different filename and
compatible. Copypaste mistake? Or why does the compatible not match the
filename?



--bCH9mOQO/aowJKBV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaKYsLgAKCRB4tDGHoIJi
0oG0AQCuiSe3fkytZB8sfmU9zi2rhLAgrvaN1TTt28ZbsSNIgAD/Rrl8leB8/feP
PTf1dAjEv+tmCyyvbDhh3N8G3CwFgAg=
=Rs73
-----END PGP SIGNATURE-----

--bCH9mOQO/aowJKBV--


--===============8624687978854315154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8624687978854315154==--

