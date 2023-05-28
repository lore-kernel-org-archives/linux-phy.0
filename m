Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB4BC7EE2E
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 17:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MT/lyYh++4wbz57sqv7lu8aR5GU1NOHVpReewBbZ1rg=; b=r9R
	HLVXsz++SpuBp1z7JOKbeRBXxpp0ThzcoQvDL2q5xY+/1GzSUr2Atynk0EyoyEHKQMU75KyQe8W1W
	53JMd83qUUjxzXYxKebDZf8RItiq2mYaERjbe6dRaYGqJF7PeytCc6vOebBmAldvLIg0s9dgU4QNt
	Hy72Lz8HJiNnBFFvQvGYerhjs7ZCCjsKPC/7LoQZt4iXmfHmF+8ABtvrLhM5r6978OUA+PleWtOuE
	FtGlCHI1zwkRttE38fDgM/xZ3xI2hRfE8n9tj6sDjGdc+hQaQNP2t2BKVid+wbyvxr3vgl/blB6uy
	wm/sfEagX3AmJPsEp28FFyP7MfHGWoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3KWA-008BD7-38;
	Sun, 28 May 2023 17:49:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3KW8-008BCh-0S
	for linux-phy@lists.infradead.org;
	Sun, 28 May 2023 17:49:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CBB8560EDC;
	Sun, 28 May 2023 17:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59ECC433D2;
	Sun, 28 May 2023 17:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685296158;
	bh=n0XjSVQJWh6Lb4Vx1+EgDOuRbghMP0wZrgLFKU4OEOE=;
	h=Date:From:To:Cc:Subject:From;
	b=Sh8tlqSnXKcRowe999sDEXJ9+eBSCjU9Nt3/MaJ3vowzueCSLkOV25UwdkpG0rzHd
	 bwmYmblWF1enu2NTzjN2S/FSu3O1vS/whk0yo5fZ+CFqGNy+OUF8imCA5CF2LOexid
	 jVWU1HYUS7u3h0dUTB77tO3iJ7HYfJcc5pW+7FiZhVyB4rRFpaUk9G2kSL7K31EEEL
	 lVx469yGit/LeQieXvJTpEtRWXunhPbruECJ8fg/HK9p6FzESqJZwXjCXVeOLfheer
	 LRPEqA8TG3508NSsy0jd5SbnElBOI9p8i/GMyEmigvFcKy9ZJIWhxeU7s16n9+Drel
	 Xk2J7W804UV9Q==
Date: Sun, 28 May 2023 23:19:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [GIT PULL]: Generic phy fixes for v6.4
Message-ID: <ZHOUGa/W46wBDwmv@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_104920_284200_49E734A3 
X-CRM114-Status: GOOD (  11.89  )
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
Content-Type: multipart/mixed; boundary="===============2708755424578279130=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2708755424578279130==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6AtvqCyFjE72FhCo"
Content-Disposition: inline


--6AtvqCyFjE72FhCo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Linus,

Please pull to receive couple of driver fixes for generic phy subsystem

The following changes since commit ac9a78681b921877518763ba0e89202254349d1b:

  Linux 6.4-rc1 (2023-05-07 13:34:35 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
fixes-6.4

for you to fetch changes up to 2a881183dc5ab2474ef602e48fe7af34db460d95:

  phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc (2023-05-16 19:4=
8:55 +0530)

----------------------------------------------------------------
phy fixes for 6.4

 - init count imbalance fix in qcom-qmp-pcie and combo drivers
 - kernel doc header fix for qcom-snps driver
 - mediatek floating point comparison fix
 - amlogic fix register value

----------------------------------------------------------------
Johan Hovold (2):
      phy: qcom-qmp-combo: fix init-count imbalance
      phy: qcom-qmp-pcie-msm8996: fix init-count imbalance

Krzysztof Kozlowski (1):
      phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc

Neil Armstrong (1):
      phy: amlogic: phy-meson-g12a-mipi-dphy-analog: fix CNTL2_DIF_TX_CTL0 =
value

Tom Rix (1):
      phy: mediatek: rework the floating point comparisons to fixed point

 drivers/phy/amlogic/phy-meson-g12a-mipi-dphy-analog.c |  2 +-
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c            | 10 +++++-----
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c             |  5 +++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c      |  5 +++--
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c         |  2 +-
 5 files changed, 13 insertions(+), 11 deletions(-)

--=20
~Vinod

--6AtvqCyFjE72FhCo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmRzlBkACgkQfBQHDyUj
g0dwPA//SW851Yy9IfLvwIP+1/3XYmj+SlYo8n07K0OxJiyM1ffeSHCxJq70db53
x6z81RkkwoNzvp73WmXt5scofLmdRoczXQr+UYj02Rtccz9756d4K8mrFooQnIOy
mZy7NhtCFhMkYx1wTrxWSHZF6uJ6BjsebZ6no8jtTS7oyE8rVU0lSG4ISlFlXFYk
jqpwrwwKij/0TNQPXlld5b2GNtfrVqFKVdC4gcVu3uG7sRLHDqBw9is+OAA3p0ef
B4s3Sb//4NUd+Rvaww2DHE7k4KIDeu4UGj9V+wAFw47zqBNqRCXcJjxvm6egiORK
gHz19pBLjLWKQSo2UcIze1xbuo+jgXxTApuzJHBxbZc/x4R9h1MXuUO8zwbNjYj5
IcBpYFafchNYFb45N517Z4QlbvuWl8o8HIgy9pmD38LzknEpRhMdFT9YPL8FVxJM
SID7isBIHngRli/9HFhzkbh56lsKylKLONcxdBf6ftLOxrHlj1gfJW20aX5RSqY/
mqisxmFuT+vXO9SYA5IkLwqoDPTJQlRTVB3DQGcFcu3TwQFlS6M86HrUO5HoaGwu
hKJ8crPI6PrjqvDD2sKfVetm+zE1Ha4R29qtVMwTXfhWPsYO2H4T4irYYD4iRd7z
rEfHTCsLFCHRcgoW1SoKWEhM+y3A0lOVsd4gdI+hAcGOdK5JqpA=
=DzrJ
-----END PGP SIGNATURE-----

--6AtvqCyFjE72FhCo--


--===============2708755424578279130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2708755424578279130==--

