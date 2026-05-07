Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F6A2CD3442
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 17:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lbgGr8CkFDVEiHhyx+v036yfN5ZSTNR1k0xKhq3xEZc=; b=ct32uXNK46QDzE4iEqNNAwnwUQ
	FLaRi+RaPbx83C43ADVUFsM5nkRnRTdd96xzbf7LAnHDhwULfeUojyY4Q1f9GwS0ygf1A4Zj8Ga9S
	C9R2MUaVo+pT6zJMnl/0dXqMLSNvGss4I1XL5tX0LhP8Lh9kOpdhB2UIVT9LQIN5wzVH+MIj5g7rF
	0o3AjEIYLQULDrr6ueFrNaKQ5nG317zBYNtUMagSeObRfDkleMA8dd4TIuU02Av2G+rsqfI17Sr8/
	yFNKys+Gw+fP8Scl7iMrs2cQ3zwgjvAnaxvXlr44Rrvs4i4cgW/BK6lbbsYZ3raTiLut1wcNMzqRu
	eJfvQ+Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2Ts-00000004U2t-18nz;
	Thu, 07 May 2026 17:25:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2Tq-00000004U1s-32MB;
	Thu, 07 May 2026 17:25:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5AE1740B4A;
	Thu,  7 May 2026 17:25:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A33C0C2BCC4;
	Thu,  7 May 2026 17:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778174746;
	bh=BRATCdkBntVsh6dTxg3ZZlQZe9izWAZz2BngadhsNyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZEvjn09HKyh0q5X4GrpdNVlait/ttUZ8Stnp/9XxyVKhw7v6mChVOxdjP3v3jUW5O
	 OGTH8Fwm4WVZB38ZHjZ11eXi5Eym0o2JEWvSQkHu7iPLpLio/MQrmEPYVVUlQ5VRMN
	 /hO06O8UK9rvr7/Dc4vA4EjxM1ZUjC+xBamGeqw8vw4egCCUTdqCAZ5NHt5HxY34TC
	 0s2d8MHSuw3n+8N3NKNoqGzKS7Xko+XEAPpL+Ewabs5sme5og9Hefgo0nUxfGYzu/W
	 EEZzgirWT3P757sQ0hABnUDzzpg3GGkNPouMBLzqtGdjB/xYvJ6y91Hwcr124d6IrU
	 62i5Zpl0Areqw==
Date: Thu, 7 May 2026 18:25:38 +0100
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
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	Hoan Tran <hoan@os.amperecomputing.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH 07/12] dt-bindings: gpio: dwapb: allow GPIO hogs
Message-ID: <20260507-appointee-munchkin-184b6d09cda1@spud>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-8-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20260507081710.4090814-8-zhengxingda@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_102546_781558_2110FC99 
X-CRM114-Status: UNSURE (   8.23  )
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
Content-Type: multipart/mixed; boundary="===============8144114096393003626=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8144114096393003626==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YzdBYMg3lPWHS/mZ"
Content-Disposition: inline


--YzdBYMg3lPWHS/mZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 07, 2026 at 04:17:05PM +0800, Icenowy Zheng wrote:
> GPIO hogs are described in the gpio.txt binding as automatic default
> GPIO configuration items.
>=20
> Allow them for GPIO ports in DesignWare APB GPIO controller nodes.
>=20
> Cc: Hoan Tran <hoan@os.amperecomputing.com>
> Cc: Linus Walleij <linusw@kernel.org>
> Cc: Bartosz Golaszewski <brgl@kernel.org>
> Cc: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--YzdBYMg3lPWHS/mZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafzLEgAKCRB4tDGHoIJi
0gp5AQDSo+numoKPTKMVoNorzaz2xolwawU0ckw6qMrfEGBlIgD+MGXlWcHakPV1
2E3fc+bby97qY6CDyJjEJbDTUCUCOw0=
=i7uX
-----END PGP SIGNATURE-----

--YzdBYMg3lPWHS/mZ--


--===============8144114096393003626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8144114096393003626==--

