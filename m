Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C8EE87820
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JVXWp6wKmfQdLTTWaZ0LbeGxcf/MCmbgNra2szLVyiA=; b=RvaqRPWNrB2ySzmjwucbLSF6WH
	8Qn7vurBlGhRtkuCv1BI8AyUy/KQXXkW97R6k/GKsAP/5v2I6xH319ks3/18Xz6aIJ8sg0tKYG5dy
	aZaiB90noKpJcYVEKF+6M53fNgCqyZDos3CK4JnPKbsGOIxNYhHcQD87e1SYu00Gah6LarbxHRbCN
	7PfAenSf6vfoaoHve+VjMRd6S1kXFscnesCFQz7HUDlsQUWtwcCD+Zo0B4fiSP+X/TC0B+12vy8EX
	3DII0FpVcGpW0tPHZiHQk2j8NOIQcFPTYlGwABLROktUdtLveWzdmXM67HNNwT1+cicZut0kyUDeH
	OQ9TgjLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnFT7-00000006asf-3NL1;
	Tue, 03 Feb 2026 12:25:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnFT6-00000006asW-1IWN
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 12:25:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 63578601E3;
	Tue,  3 Feb 2026 12:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2242FC116D0;
	Tue,  3 Feb 2026 12:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770121519;
	bh=zmW9iZ8OTMDOnUFlsSj9dHUE8b3JXtp0PZ2MDJrb9Rw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mi4ndnHQpEXB8yLdqJdVP31htPDKnXXQG4QWtfNa0SM2+lbmf5xFl5ix4bAUaW+ZG
	 a7jw6DqnyPAnhCxZ9Jd5j1bZHhyq4r1jhp1991IikVHHburF/5iS4KlpMxoII4ARwN
	 LRQxmzKDdqjApDYsMVuYFa3HMfEtuXxq1JONgRkaBMHYBhP50mBv1469e0SiW3I7lD
	 zNrtTwdrt6HxiEyymnuEvvicoXwf5BPG6+iv9QUnoUqPO9HlxDsD93TUmW3bmJww/X
	 YExGY3L6Ey382/DlP9AYGn8VGoufvSL9xgewVIbob6ahC1D2r/mhHAvgtjSREeUN9a
	 5cm/BW6mWtrXA==
Date: Tue, 3 Feb 2026 12:25:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Venkat Rao Bagalkote <venkat88@linux.ibm.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>,
	=?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>,
	linux-kernel@vger.kernel.org,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Subject: Re: [PATCH phy] phy: enter drivers/phy/Makefile even without
 CONFIG_GENERIC_PHY
Message-ID: <57002ace-400d-4cc0-8225-3dc326e5c528@sirena.org.uk>
References: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
 <007a2100-0913-4a8f-82d3-8118664fc1a7@linux.ibm.com>
MIME-Version: 1.0
In-Reply-To: <007a2100-0913-4a8f-82d3-8118664fc1a7@linux.ibm.com>
X-Cookie: Do you know Montana?
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
Content-Type: multipart/mixed; boundary="===============4881629872568016842=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4881629872568016842==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h62oFimrhVL7k4f2"
Content-Disposition: inline


--h62oFimrhVL7k4f2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 03, 2026 at 03:26:47PM +0530, Venkat Rao Bagalkote wrote:

> I still see linux-next build failures with next-20260202. Can we please have
> this patch merged.

> Mark, can you please pull this one.

Patches aren't applied directly to linux-next, they are applied to the
various trees and then merged into -next.

--h62oFimrhVL7k4f2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmB6SkACgkQJNaLcl1U
h9C52Af+IUUoMAI2QCfbuabrqV+840eg/Nk+Gopoh1c98ZPyewZMPNznIYkvtWLM
rVWnRdeZYDX8zrCkbzJcTeF6eSVAAClLrEvzFMVTsNlIcujYo/92kEszJ5QlQM+3
P2KxmXJB+oDd2dWsay6+X3m3tiYlezSKEldLtShYpt5TmxhHE07pxAaZUeeVFw4E
A1P5PTxiZ7SfaKf98hgJqlEqF2JMZ6axLYIEw6ROdDx2q8FGrNq8f3Mf1uJXQJYI
fmtfSZ/+/o1loG2Cp70hUAlYjrYZf2CdivyqChk6Ka8ZrU1aNBweFdP7CMOarpMo
T8wG9KNr+clGOB9cK/lg5julQmMP4w==
=Od2n
-----END PGP SIGNATURE-----

--h62oFimrhVL7k4f2--


--===============4881629872568016842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4881629872568016842==--

