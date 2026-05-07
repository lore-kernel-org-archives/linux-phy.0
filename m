Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F70CD343F
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZoYMp8Kd7VarvoMMrLHv5/yKONIvv2Be93JORNgZpY=; b=dc9WBdv6Lv7ojJ8N6GHU2G7Zcg
	GKVXityemC4ylR9wXu+KYo3EQAOrji2OZofcwvfISgf4bCszloiK4H7l0bh4GDNMRcRmPgALzYiFJ
	0roX0osaUV1kmbgqeJmG6eaauw/xLlOaoHDQZRU1hzs1obeQZYZUtf0agw0ksVEYlNBZu0Ir0eoGz
	BEB1fWysI0v44i0ykR+RDa2VyAbZYTJ+0b7e3Twb0Kc3QkrzSDAFch9aGEhT3tRnHH44dM4sXb6dF
	6xP5lxCMOcnPWP7MwU2+vkH09hc3nBSPuJeetIcqaYeYQzOmzv3EN+bgV/38wKDjXP4gRxZXHopYS
	dNUevHVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2UQ-00000004UCe-1y9n;
	Thu, 07 May 2026 17:26:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2UO-00000004UBs-3Vws;
	Thu, 07 May 2026 17:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D95E418BD;
	Thu,  7 May 2026 17:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AEB6C2BCB2;
	Thu,  7 May 2026 17:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778174780;
	bh=CxvcpXiBTI6/kR/4dGt5iKAcJgtLGpTZNAw6IIDOULc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TnVTMWfu3FPehm3F1/CX0IgK4P0BjumaGCE3NVe8In1lyxz22/zos6fAqhl4BAJM0
	 jHlmt5whs4S1P4IWTALrAgMn1rBrXGgtHY+rU6BQMcy9un0imsTYecrzf9dAnjPo29
	 wwFW2SG/NsF1cJY5gsye1rVOLYcrg27JTmLsHRyZ4AIVDXcs2+k93e15eGEqQFGxiE
	 Aq/7BkB9sKzOv9svHe4NAg27LAt8748GqNYEVinIRxhQi+NFat3WWGpDu3kQqRWqDP
	 ChnY/0mdOVmsMMWt3QkCWP4CJfEvQDpgw5H9GhkYLgd5gV+Bm6ivwkQv123NuUg3wh
	 lzlqM5M7ZmKRw==
Date: Thu, 7 May 2026 18:26:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 04/12] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
Message-ID: <20260507-that-creation-b6e7d297f924@spud>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-5-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20260507081710.4090814-5-zhengxingda@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_102620_893129_ED922EC8 
X-CRM114-Status: UNSURE (   9.07  )
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
Content-Type: multipart/mixed; boundary="===============1305470081511524593=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1305470081511524593==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zJEybQaft2oIsmIm"
Content-Disposition: inline


--zJEybQaft2oIsmIm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2026 at 04:17:02PM +0800, Icenowy Zheng wrote:
> The TH1520 SoC features a Synopsys USB 3.0 FemtoPHY with some custom
> glue logic configuring PHY parameters.
>=20
> Add a binding for it.
>=20
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--zJEybQaft2oIsmIm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafzLNAAKCRB4tDGHoIJi
0pFNAP4piyDsMp91OML/qoSMafgNp3vZmLDMs4hb57FWbv+ARwD7BwJiTYBqEgwL
O4OyVRx7Y7tC6EIkADbPYmok4xSUOgQ=
=Nper
-----END PGP SIGNATURE-----

--zJEybQaft2oIsmIm--


--===============1305470081511524593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1305470081511524593==--

