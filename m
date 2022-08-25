Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88ECBECAAA3
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 22:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gzo/K2frU0Yeglq5oXDnPEGkTKkXxXS46Gou+2SnXKE=; b=PMdwO61Tnnmbkp7MLDSrnNzsEj
	5ry0ri/roDx6rMKahuZkzqt1JMVteLmNIlLFDTKJdoe6wqiaUxbjUrz2mi7GgJNTGNi9t3vQiF7H7
	zFC3vcIroL3+qQPQIPcrOLEyq7nr0MiZmKd0ocOCT+dpEtoYgSAtiZZ3sBkhVURKJL1rDlLaArqTm
	hFdq2Q1gIhmBenjTh5DGdE4BZzftz10Z6F7dHGVk7tlyoUT51Srw0n00cjRKse6Az6wI5w3KTfyH8
	VNcZQLWyN1S6x7+Q9N3Ole2fsxUyQgum2WK4+oS1phIr2cI38vqiPI7NSL1gutJ5EsIiFY2ccyH24
	0D0gRTng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRL8z-003mzT-WB; Thu, 25 Aug 2022 22:16:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRL8w-003mxf-AB
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 22:16:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 211B8B82ACE;
	Thu, 25 Aug 2022 22:16:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C98C7C433D6;
	Thu, 25 Aug 2022 22:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661465762;
	bh=oMO0r2PGZ5pvJlh8sDqdmhevcoM4UATKWh0arxsvz5I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=JGpRYIIoGqGS+HVVZc4CYzKeMYw5XMgwZIhD8VGy0ijnDBtpyHOKqHgkRRhZVF5aA
	 AG35HURhnk5mPPRo4n4r2USLHtHOPB0lpjJNKpIgUIj5H9Jv6hQzr7yfuzyBe6vNsp
	 N5t7RKi0WSoa7tksX+KQdMCyvqN9nEOqJ+LGzqsakNvlWv+NUJKCOHuKgoPi/oe1JU
	 CTCL2Y+ogG/6sOWE7pLe40ljjVCzTInkAMT0NdyaYhsSxnwuBDR1Ori/xqOCdgOCog
	 QDlFfYTm5u8qS9Dzp6ThQp4aqiX1HD4pDATx1SYnHeZCKezevWpns7XVCqJHHKIwh8
	 +Sh8G60/woACQ==
Date: Fri, 26 Aug 2022 00:15:58 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Damien Le
 Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220826001558.5cf887a5@thinkpad>
In-Reply-To: <20220825130059.5kat4fhddwj2nf4r@pali>
References: <20220813010033.erkdwf24arlz7zer@shindev>
	<20220813010351.fauxwpi6w4d4shmn@pali>
	<20220813013534.l5hzxv7mc5fylx7m@shindev>
	<20220813093214.6ved4ka3l2thkn2n@pali>
	<20220813115338.uq4xbznngjradzi6@shindev>
	<20220813120108.vaiwnzhofz6hy5kc@pali>
	<20220813124729.qondfc7z5eoeoq7p@shindev>
	<20220813125052.hjd6lhh4fcc7jl5u@pali>
	<20220813230233.3hyvkoexqitfnlte@shindev>
	<20220813231050.l5xadzdpavmmtdbq@pali>
	<20220825130059.5kat4fhddwj2nf4r@pali>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/VdXuc1zjTY6G+or8E6gZaUA"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_151606_726178_BF8B630E 
X-CRM114-Status: GOOD (  41.00  )
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
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--MP_/VdXuc1zjTY6G+or8E6gZaUA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Thu, 25 Aug 2022 15:00:59 +0200
Pali Roh=C3=A1r <pali@kernel.org> wrote:

> On Sunday 14 August 2022 01:10:50 Pali Roh=C3=A1r wrote:
> > On Saturday 13 August 2022 23:02:34 Shinichiro Kawasaki wrote: =20
> > > On Aug 13, 2022 / 14:50, Pali Roh=C3=A1r wrote: =20
> > > > On Saturday 13 August 2022 12:47:30 Shinichiro Kawasaki wrote: =20
> > > > > On Aug 13, 2022 / 14:01, Pali Roh=C3=A1r wrote: =20
> > > > > > On Saturday 13 August 2022 11:53:39 Shinichiro Kawasaki wrote: =
=20
> > > > > > > On Aug 13, 2022 / 11:32, Pali Roh=C3=A1r wrote: =20
> > > > > > > > On Saturday 13 August 2022 01:35:35 Shinichiro Kawasaki wro=
te: =20
> > > > > > >=20
> > > > > > > [...]
> > > > > > >  =20
> > > > > > > > Ok, thanks for testing. It looks like that reset code has s=
ome issues.
> > > > > > > >=20
> > > > > > > > Could you please test this change?
> > > > > > > >=20
> > > > > > > > @@ -1393,7 +1436,8 @@ static int mvebu_a3700_comphy_probe(s=
truct platform_device *pdev)
> > > > > > > >  		 * To avoid relying on the bootloader/firmware configura=
tion,
> > > > > > > >  		 * power off all comphys.
> > > > > > > >  		 */
> > > > > > > > -		mvebu_a3700_comphy_reset(phy);
> > > > > > > > +//		mvebu_a3700_comphy_reset(phy);
> > > > > > > > +		mvebu_a3700_comphy_power_off(phy);
> > > > > > > >  		lane->needs_reset =3D false;
> > > > > > > >  	}
> > > > > > > > =20
> > > > > > > >=20
> > > > > > > > It should replace reset code by power off at beginning / pr=
obe time. =20
> > > > > > >=20
> > > > > > > This change also avoided the "ata1: SATA link down (SStatus 0=
 SControl 300)"
> > > > > > > message, and my SSD was detected as /dev/sda. Good symptoms f=
or me. FYI, I
> > > > > > > attach the console log with this change. (This time, followin=
g messages were
> > > > > > > printed. Not sure if they are important or not.)
> > > > > > >=20
> > > > > > > [    2.937376] mvebu-a3700-comphy d0018300.phy: invalid COMPH=
Y mode
> > > > > > > [    2.943581] mvebu-a3700-comphy d0018300.phy: invalid COMPH=
Y mode
> > > > > > > [    2.949679] mvebu-a3700-comphy d0018300.phy: invalid COMPH=
Y mode =20
> > > > > >=20
> > > > > > Those errors are important, it means that power_off did nothing=
 and was
> > > > > > skipped. So test did nothing.
> > > > > >=20
> > > > > > Could you please replace mvebu_a3700_comphy_power_off implement=
ation
> > > > > > with this one and try it again?
> > > > > >=20
> > > > > > static int mvebu_a3700_comphy_power_off(struct phy *phy)
> > > > > > {
> > > > > > 	struct mvebu_a3700_comphy_lane *lane =3D phy_get_drvdata(phy);
> > > > > >=20
> > > > > > 	switch (lane->id) {
> > > > > > 	case 0:
> > > > > > 		mvebu_a3700_comphy_usb3_power_off(lane);
> > > > > > 		mvebu_a3700_comphy_ethernet_power_off(lane);
> > > > > > 		return 0;
> > > > > > 	case 1:
> > > > > > 		mvebu_a3700_comphy_pcie_power_off(lane);
> > > > > > 		mvebu_a3700_comphy_ethernet_power_off(lane);
> > > > > > 		return 0;
> > > > > > 	case 2:
> > > > > > 		mvebu_a3700_comphy_usb3_power_off(lane);
> > > > > > 		mvebu_a3700_comphy_sata_power_off(lane);
> > > > > > 		return 0;
> > > > > > 	default:
> > > > > > 		dev_err(lane->dev, "invalid COMPHY mode\n");
> > > > > > 		return -EINVAL;
> > > > > > 	}
> > > > > > } =20
> > > > >=20
> > > > > Thanks, but this hunk failed to compile with the error below.
> > > > >=20
> > > > > rivers/phy/marvell/phy-mvebu-a3700-comphy.c: In function 'mvebu_a=
3700_comphy_power_off':
> > > > > drivers/phy/marvell/phy-mvebu-a3700-comphy.c:1229:17: error: impl=
icit declaration of function 'mvebu_a3700_comphy_usb3_power_off'; did you m=
ean 'mvebu_a3700_comphy_usb3_power_on'? [-Werror=3Dimplicit-function-declar=
ation]
> > > > >  1229 |                 mvebu_a3700_comphy_usb3_power_off(lane);
> > > > >       |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > >       |                 mvebu_a3700_comphy_usb3_power_on
> > > > > cc1: some warnings being treated as errors
> > > > >=20
> > > > > Do I need to add mvebu_a3700_comphy_usb3_power_off() function? =20
> > > >=20
> > > > In my original version of this driver I have:
> > > >=20
> > > > static void mvebu_a3700_comphy_usb3_power_off(struct mvebu_a3700_co=
mphy_lane *lane)
> > > > {
> > > > 	/*
> > > > 	 * Currently the USB3 MAC will control the USB3 PHY to set it to l=
ow
> > > > 	 * state, thus do not need to power off USB3 PHY again.
> > > > 	 */
> > > > }
> > > >=20
> > > > So please remove mvebu_a3700_comphy_usb3_power_off() calls as it do=
es
> > > > nothing. =20
> > >=20
> > > Okay, I tried with the edit and result looks positive:
> > >=20
> > > - "invalid COMPHY mode" messages disappepared
> > > - No "ata1: SATA link down (SStatus 0 SControl 300)" message
> > > - My SSD was detected as /dev/sda
> > >=20
> > > FYI, I attach console log and the patch I used.
> > >=20
> > > --=20
> > > Shin'ichiro Kawasaki =20
> >=20
> > Perfect! So the issue is with mvebu_a3700_comphy_reset() function.
> >=20
> > This function is not in TF-A code and neither in my original kernel
> > driver implementation (still available here):
> > https://git.kernel.org/pub/scm/linux/kernel/git/pali/linux.git/commit/?=
h=3Dphy-mvebu-a3700-comphy&id=3D4588902a3528195bcfdda9f9e1e14262a1955df1
> >=20
> > Marek, this function mvebu_a3700_comphy_reset() was implemented by you.
> > Could you please look at it, why you added this function and try to fix
> > it? Is this function needed at all? =20
>=20
> PING? Any progress here?

Not yet, sorry. Maybe we could do something like I am attaching, until
I have time to play with it?

See attached file.

Marek

--MP_/VdXuc1zjTY6G+or8E6gZaUA
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=a3720-comphy-sata.patch

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index a4d7d9bd100d..064be967a58b 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -1171,8 +1171,12 @@ static int mvebu_a3700_comphy_set_mode(struct phy *phy, enum phy_mode mode,
 	    (lane->mode != mode || lane->submode != submode))
 		return -EBUSY;
 
-	/* If changing mode, ensure reset is called */
-	if (lane->mode != PHY_MODE_INVALID && lane->mode != mode)
+	/* If changing mode, ensure reset is called.
+	 * Reset can currently break support for some SATA disks, so don't do it
+	 * for PHY_MODE_SATA.
+	 */
+	if (lane->mode != PHY_MODE_INVALID && lane->mode != mode &&
+	    mode != PHY_MODE_SATA)
 		lane->needs_reset = true;
 
 	/* Just remember the mode, ->power_on() will do the real setup */
@@ -1388,13 +1392,6 @@ static int mvebu_a3700_comphy_probe(struct platform_device *pdev)
 		lane->invert_tx = false;
 		lane->invert_rx = false;
 		phy_set_drvdata(phy, lane);
-
-		/*
-		 * To avoid relying on the bootloader/firmware configuration,
-		 * power off all comphys.
-		 */
-		mvebu_a3700_comphy_reset(phy);
-		lane->needs_reset = false;
 	}
 
 	provider = devm_of_phy_provider_register(&pdev->dev,

--MP_/VdXuc1zjTY6G+or8E6gZaUA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--MP_/VdXuc1zjTY6G+or8E6gZaUA--

