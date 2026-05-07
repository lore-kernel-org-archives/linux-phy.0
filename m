Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 562B0CD3442
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 17:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=whoxRz+Y0ytX0YDjnUFaWuZaar65qs8z0Xj7dDhH/YA=; b=AlFi7xDy/7Ck5Q9V+CVzcgkMQ2
	nzvCPsHu+7jf6gvqVSbV04xNtaZU69NFz+Q2I9qrq3/wuo4enDI1KlE7VxaViSs60j9gFL+5LRk7f
	1crmC+Xiy4aHCZtBaoKuRnFuh8ROGb8rZzaUEWcUBE7lyMbOMNTu+yobZnkDw94SVNbbC+SzqK7AI
	CmyN9Sp2Mn5ljR2jx/2XeEgz4j4s4Ja3NQjy1R18aoW+e4xSTGkFW3xbDV3ZLPFN3mAz8dve7XWT7
	io3mDE/0lJC/t9f0Zx3Pmz4L9y91H4eTldkLwb9t4mOPFjORPMNfNoJYsoa3vLJmTivQBQJtX1QeH
	Qqkt6AvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2TQ-00000004Tqc-03W4;
	Thu, 07 May 2026 17:25:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wL2TN-00000004Too-0e6E;
	Thu, 07 May 2026 17:25:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 51ADB43689;
	Thu,  7 May 2026 17:25:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C12C2BCB2;
	Thu,  7 May 2026 17:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778174716;
	bh=K8jMkHMZxPz+n1rEKyGtdtouBs+Nm+NdaoS8omC6jIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VICY621rCMrKv4q8tZ4Dp7bUJmDfVpmYwpJRM0JZDqxdTrDmJ2w7+i2esPqt3jj62
	 X0jsR/OvG2a7hnqfuz1hLShZZGtRlPSzl+9IsCw9LQDdgsroApmKczyneeopzhxsPk
	 FP2qbA+lFSAfhlOOHkihNle4ZMqFsyjuqlgBe1CyBXhl41/AxUOIGsaGXPuLkg7Q/3
	 dh8RI6LUP8wnYPU0B1ucMSImCParqYxH0mjZTPGGaQU7HNetCTlZhcQmMlWVVXkVNd
	 GzoyB0zZwmIlva79rldI4ZxPTvY/m3csktHtWe8cGIgpJ5HiN4QV+GrbZGoF0YBQ9y
	 lcxSQTRfg1FzA==
Date: Thu, 7 May 2026 18:25:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: Re: [PATCH 08/12] dt-bindings: usb: vialab,vl817: allow ports
 property
Message-ID: <20260507-escalator-important-0105ccd73bd6@spud>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-9-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20260507081710.4090814-9-zhengxingda@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_102517_211333_11349C56 
X-CRM114-Status: UNSURE (   6.03  )
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
Cc: Drew Fustini <fustini@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, Rob Herring <robh@kernel.org>, Icenowy Zheng <uwu@icenowy.me>, Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Yao Zi <ziyao@disroot.org>, linux-gpio@vger.kernel.org, Paul Walmsley <pjw@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Philipp Zabel <p.zabel@pengutronix.de>, Han Gao <rabenda.cn@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Fu Wei <wefu@redhat.com>
Content-Type: multipart/mixed; boundary="===============6512163694703008801=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6512163694703008801==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nZtZj26UQ1XQEAQt"
Content-Disposition: inline


--nZtZj26UQ1XQEAQt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--nZtZj26UQ1XQEAQt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafzK9AAKCRB4tDGHoIJi
0rndAQDJ23LQ9WQwWM/XfJKivc5KbhVY0JCID0/Kp8ObE+DdlAEApUj38tg4kRpa
DHm/ajsN2EwgPzKWoFFe1mv24DwCsgw=
=dqpO
-----END PGP SIGNATURE-----

--nZtZj26UQ1XQEAQt--


--===============6512163694703008801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6512163694703008801==--

