Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C87BC77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 13:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=89OkimpBClRtV8CBc/I7Srzfk2dHoI8iaxruinQ941Q=; b=eX3
	rq6P7BlZwzHc9Sdyp5LpiguzEAwSNXnUVv6iFroGZ569cfeOF278HgDitBRVSrbu+qKM6ZZ0mpkbD
	ATn4IKIFXssGP/Ef/eFzv2YczUe9+wclBWIzPPxqoEMfeL9u1+N12/NORf9ztOG9LErQTncbeFisO
	shCtq/LtA+SbjPFLAXwZcXHCMRaMmIx75ihHqTwLDPta6id04/h33oatHk6lWK0vGxSdS5GOdQu7Y
	r9QsAJkF8t5bL07MFg8spJn5lkONSU5wVswIM74a/dMrYNBQlDFd2IfmKc0fIiQvV3v2k2dcMQHIc
	s+2vB448gYimgJQWpcjg8fDBEJ/qgFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puvfp-00B0jl-2J;
	Fri, 05 May 2023 13:40:37 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puvfm-00B0ik-2R
	for linux-phy@bombadil.infradead.org;
	Fri, 05 May 2023 13:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=EVklULZWobJavjTtgpCvH2nNyWQ73f/vto/gVwCYhHg=; b=mRFBd0DqWRjTKuFHUd6sWkWCk0
	ZluziF2L9o+pK+d04+gQAF/NOATHOK0HmRQSVbTlxQUOfu7fYeFVGbWc9vQgH3xUkJhkrQTaT8dms
	MQ4pMUfB9+3KkenSfjlHnoYt32BuKwvRpGtN/hekwWe5VIaBsVxpOgqaz6lQvzxS0dvRJJMKSTaYk
	bv5VAf1DWMYj6kgA4Gb3+Hf46owahVSG1xq4zBgsIEBETrNonyGMGY+9euOmL6SuqsCMT0MKiJ8G1
	cYcjRmS7a/QdGez+OZhIeDsCBZq/2re4NEbayUUPSAQRsNfpqY5SD81KAWD6TF1qa6ulmFBUCsSsB
	q4axFkcw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puvSv-003GDA-06
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 13:27:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CA3E463E17;
	Fri,  5 May 2023 13:27:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBC54C433D2;
	Fri,  5 May 2023 13:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683293232;
	bh=RPMkakcsgGg/pEMX/kFbjCNm3Vpjc9Hgy/zjJOCFcqM=;
	h=Date:From:To:Cc:Subject:From;
	b=rMVtuDb5bKIPa9WIwI/JINrOiAYV7vBJgFmTVmiKkj9fIoNuDMmA8frzgfKUhVEFk
	 8TQ2e6MML4yZZp4jUDV7bXxoO1lhuLYaBvsugAMrYbeb+4+yRJIUXFJYJ8f5SUMc3i
	 oxso3w2rqCCwy3PLNnMwH75TqKjUA7P0XvTF+JuuojyN7ju/OTFMFOkjqQMnh6k1YA
	 ZtK9yUSmdW8PzT5bGYvmePjJje3PSlB+VcET+sfnwnsC3Tlv1s9qc2unXgUFF/dB2x
	 QtTWmsZYgthoqPTxJzIVA/KMAphicjgkt7wXGSNvTkbRS575JM5kqfH7aadFXq9YoM
	 Ug9sqIrI1JERw==
Date: Fri, 5 May 2023 18:57:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux Phy <linux-phy@lists.infradead.org>
Subject: [GIT PULL]: Generic phy fixes for v6.4-rc1
Message-ID: <ZFUELDT/xaxm0lmP@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_142717_241697_0D63A0B2 
X-CRM114-Status: GOOD (  10.98  )
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
Content-Type: multipart/mixed; boundary="===============5492164184254872753=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5492164184254872753==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X4DcDbEFAfyTRw2S"
Content-Disposition: inline


--X4DcDbEFAfyTRw2S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Linus,

Please pull to receive the two fixes for Mediatek driver warnings
as reported. Kbuild bot and my tests indicate that this fixes the reported
issue.

The following changes since commit a0106132372120dd0abf5ad7636614e5aeb5da08:

  phy: cadence: cdns-dphy-rx: Add common module reset support (2023-04-12 2=
2:16:16 +0530)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-6.4-1

for you to fetch changes up to 9d9ff3d2a4a567b543b71c2967d2ccc5e0ac6816:

  phy: mediatek: hdmi: mt8195: fix wrong pll calculus (2023-05-04 23:12:11 =
+0530)

----------------------------------------------------------------
phy fixes for 6.4

 - Fix for mediatek driver warning for variable used uninitialized and fix
   for wrong pll math

----------------------------------------------------------------
Guillaume Ranquet (2):
      phy: mediatek: hdmi: mt8195: fix uninitialized variable usage in pll_=
calc
      phy: mediatek: hdmi: mt8195: fix wrong pll calculus

 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)


--=20
~Vinod

--X4DcDbEFAfyTRw2S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmRVBCsACgkQfBQHDyUj
g0cHgQ//Rb+Q6bxeU0x33Vvcoy+Acbl8G0EYR2+apDdM2Nv3+4AulrkFto3eWFTp
yjWM6R/2PMcwEVMoc/TyGTfnGPHpFhrI6gyoLeMtT3dA5yBsIIQXuuaZbOyvqOKX
gzGwvsMFCMZEslvRXfG2IIRwIATsM7Pbm9EL5p4n2PofI1L1Bhpm32ccoQ3b5GKd
ADogUaP4cWYVfQ5Qxf56PQD895wDfaVipn9NTPCrq4rrmXwWgPUbNn4Od7+Cszpn
FdzZja18J3zs74vRpvvEa2LsF5RyvV4jcmPLuba52X5p4UUg4wfHYpmUDbnQLOfF
Ovtx4SMyURNQVn0yRby/x02sUvJkw0SuBwBkGuKXSWRwcxeThhFM91E6rQ8STxK+
4ujT0jNzRGGbtKJmFr9HuNrDvkPhbha9602y7o4O9h1widdPyJsOmZgCbyAwKKD/
PvxHBZDvdiN/KYXtbRP8buTQYmjgnjKOdPlfkWfMu3Tb4Ci9mx5wsVRkXfO4Dq/q
S1GEikj13tmskcBX5HuTdtJ+rDSJJTsl+GKWS2gwkJ/KpJ+cJZolzBAJ0Bb0nkcY
M7NKAdjH1k9LesXRDe1k9jNFOCGS4DwqTgCukCi90KXdKUm2Opia8u/6S/EcDUwe
fHI3sGGa07V9TDc2Lsg7N8VeafEyyhlX4m9zAkKEFC+MTdB0SAE=
=fVZq
-----END PGP SIGNATURE-----

--X4DcDbEFAfyTRw2S--


--===============5492164184254872753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5492164184254872753==--

