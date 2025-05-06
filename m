Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5918C3ABBC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 20:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e0psQhel+yXZsZhU+spBS9UbVK6EjiMVkLo9XPxZqIg=; b=BvRuZkTAGC/qkOkOzIbX0XGFdo
	d/RRanebIY1RZDxel7Zh0sUPCA9YG+JTqy5AjaXx3onl2zD4E/sY0vgpsdsuWeQzaRk4xb2QMo6Oo
	lzwB0HBiqKngZsUiMUQc97vgpnkKOmmkenqhs2lKfNIaT0NttZHd9sYVP50ig1TO2EWLp+CTn+0I7
	kCxfcX1T6AF1TNZGd440eJEW/zXWVFnYiWfgqDkYMZKBMHyoTex2vQRsUjUWbAsVZskBTqvRD0UL4
	NkPfd7BLzRZXQjpC7Qk4yvLDu8VAwJr0RbSeVAjHWkVfoOVcdM60vAhwvlyKqTfqGA1+ySDoI6bmP
	/INnf0zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCOf7-0000000DKzs-2vJN;
	Tue, 06 May 2025 20:13:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCL3V-0000000Cedx-3MxL;
	Tue, 06 May 2025 16:22:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CFD04629DC;
	Tue,  6 May 2025 16:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C306C4CEE4;
	Tue,  6 May 2025 16:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746548524;
	bh=a7CrHfM/6OUIx5WLKSIBCgdXg/9zZ/Qq+T8aEmLIPMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kZYRKCiRG0cNb0qTnUb0L7aSdnYxnSRoliCi2wVa2VKts9Rs/iOzAinmPnkNZRNsg
	 k9zwqWQkQ3kNUU6aF/Fa2/iW/mph+bDSIIRoqpgmmCZSWMnfF4C4SeN96+gVVPidad
	 ruHmYRfZ3WbRlgggodJwX3FZMBVh305QRVIIZ2jH57ptrwRNTklXSeZu03+Q24dE5W
	 uQSgD+TpZa0GLkJUxm6KcRLlrKnjoHA4ldza3O1RjorSsNk57+14B/DIP6MetF2zqG
	 cM+wJhYXLL/1ITq1D4Vap4SKKjR0ruNqMkYq9sB866F9VbVq7/HMZapZFQqj1FU0Sa
	 AnePo3W+bn4RA==
Date: Tue, 6 May 2025 17:22:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3036
 compatible
Message-ID: <20250506-ahead-angelfish-7dd7ad36f17a@spud>
References: <20250503201512.991277-1-heiko@sntech.de>
 <20250503201512.991277-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250503201512.991277-2-heiko@sntech.de>
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
Content-Type: multipart/mixed; boundary="===============3763589913126727173=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3763589913126727173==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hWu723nQy6Wtc/+2"
Content-Disposition: inline


--hWu723nQy6Wtc/+2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 03, 2025 at 10:15:10PM +0200, Heiko Stuebner wrote:
> Add compatible for the USB2 phy in the Rockchip RK3036 SoC.
>=20
> Apart from some bits that got swapped around in the phy registers, the
> block is nearly the same as the one on the rk3128.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--hWu723nQy6Wtc/+2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaBo3KAAKCRB4tDGHoIJi
0koTAQCvRx1zKgbUctLAI7tbaIgn0fC5wRNKHgdGi0S651g4PgD8DTVPMRGZrbsi
MP1Jqz9wxZbZ51bzr8wSTkDJUnsDTAo=
=V5Tq
-----END PGP SIGNATURE-----

--hWu723nQy6Wtc/+2--


--===============3763589913126727173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3763589913126727173==--

