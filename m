Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B83C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 13:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F2TJd2/KabeIVa1VSylGyGMPOOpLLnz11HJeuJonxL0=; b=slgRWAkgzhBhv/eYsVHOYIQhdI
	sFJGlF8HvyiXL9V0oGRs75SInLZqjOeJuchygGYbMvMjqrOpEvy487dhnA5EYCvzD67oBf+Ghb+HD
	nbYGXsCEgyTdi7R8+oTkA3YFT5NJITSbyuy6GNM3ENxMjJmzWyZ8UUbvWdz1lhayAb6I1LBblghoS
	0xcFGjmw0G8B0m9DYuuU6b+4OzIn5D/nQboO45f+QFFaf7N7G65XJdiPLiAkgwIdxxdwaX0lrj+ah
	nVEPacOFasPZxKvsqQrXZu4VIYZD4Su7U8uAKjs1mxptDx07gACxLWGGvfvtgzczkhK6O5+08uO1J
	9T/rnorw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQVR-0000000EyI0-2KQk;
	Tue, 20 Feb 2024 13:49:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQVO-0000000EyEt-0FXb;
	Tue, 20 Feb 2024 13:49:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 15FB0CE1414;
	Tue, 20 Feb 2024 13:49:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182BBC433F1;
	Tue, 20 Feb 2024 13:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708436989;
	bh=GfpNgKCBhUaf5zRtwj/JahnH67sPImURQVpv4TCQjWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FaXkvi6bHhQbcaj39yvRvsuZhEBTdB++Ibay/ZZbZ/+txRBf/QRmqJG1pagpKRXDZ
	 eyot6MWvv22UJzMP+5fmKe/psXlJXU09jrDv0FQsPbw4NTQhWtuUHrbSMrCCXl2sk3
	 RC96zY64Nrr6OJc57NJapQ5rM+cMJ8Gynxn9Q0cg9cyTvK5aTeAXmuHgWDKv3a7e4n
	 QZGLQVEotqD2NuT0gkw0ysjlVSxnk4Wu7hmkCFI6uHxZvSwDLWccSmPqq3PqKFnHEb
	 sZYVZqSkb08yH5SdztuPtzJPg9V+XoIRvZAJnU6p4dwGrxFFnFIsH1Mo9FE0J9RJ1n
	 /pTtR7cOrJf7Q==
Date: Tue, 20 Feb 2024 13:49:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] phy: fsl-imx8mq-usb: make vbus regulator optional
Message-ID: <3b65d837-3614-443b-8298-2bf367c781c4@sirena.org.uk>
References: <20240220111948.2227506-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
In-Reply-To: <20240220111948.2227506-1-alexander.stein@ew.tq-group.com>
X-Cookie: E = MC ** 2 +- 3db
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_054954_338209_54715D8A 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Type: multipart/mixed; boundary="===============7887383651937332009=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7887383651937332009==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="txENs8yEexSxpYP0"
Content-Disposition: inline


--txENs8yEexSxpYP0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 20, 2024 at 12:19:48PM +0100, Alexander Stein wrote:

> vbus-supply property is optional, so instead of allocating a
> dummy regulator make it pure optional.

In general supplies should not be optional unless they may reasonably be
physically absent which is highly unusual.

--txENs8yEexSxpYP0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXUrfcACgkQJNaLcl1U
h9AMJQf/aYy0Ou1P10c8B5QPGggqS2EOOEZ967MNtms7ces5iNdvOjrnEwOEaDom
DpRg5Dm0RltYLMzeFXAY0nf5YRKOVXAKTVP1Bkjiy4ycwYhKFMvDctwc/m6Fy3CQ
zYiEaFXjp/sGFhwl8duikPEXLAEkLrEkcNMjr5aBOQ8w8KBBiQwoIvSEaKErytIX
J9vgN0Wo3SIVw3aTpzHVi6m8ryGYaMR6IpwqCnl/Tkmn6ZR6lJBxxdoY2ly+zGZ7
7cvolTM/jZ4c/shgbYEbg0z91iC6h5PlcXqhFKI4UqyLugP9Crb5T3ejitIYihSB
XU1v9dI26t/RPMcMa5Yxl3oUEj+5Xw==
=/ISI
-----END PGP SIGNATURE-----

--txENs8yEexSxpYP0--


--===============7887383651937332009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7887383651937332009==--

