Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06202ECAAD4
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 12:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VyMhL+2kUTHvdW+n4/SYMT4UPEqBAkCSsPGUdDH2Mew=; b=xruRjonvmqaXe1z9BDg+bs99wE
	EroK+TFEwJvmtNTEG9KZLGu+zkEWVAwErJCyIRKIgoUuJ/2PBsdaezxObrC1mY+wYMqbnwmbuXGmO
	TzBigxWP+20STa1jv/W/A2VM6/VJawv+QJYSL0zW0VsSOOZbkcN9O9wGU1DIyhrtvAV0yxzoharQy
	McRgv0CNucAqg8nwdBAsIRZ7nmtTsuPiKsy5SA4CZVOha8IzJc3FCKNZrYfDmqrqmw0FhN3dgwTZR
	JUHbt4Sg2IV3fdUEyx4Frh0kQDJTu9pTJyVq6T+0pWDCIexsLkLb7OIo8FnftHV+fXatan3o0oojP
	tW9WQB/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY5s-002Lrk-Eb; Fri, 26 Aug 2022 12:05:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY5m-002LnT-QQ
	for linux-phy@lists.infradead.org; Fri, 26 Aug 2022 12:05:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4368CB83103;
	Fri, 26 Aug 2022 12:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 419EAC433D6;
	Fri, 26 Aug 2022 12:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661515540;
	bh=gGJIo1WoSC5kqhfThc7Qj9GOPyH7yyHa9wP+SbYzUcM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=r+BmhINSkHHJsl4u/Tk83hch+W/iDGdpIFKXVkJXJChuL3WAwLPjEslqv8nm7GieD
	 m6irDqUlmskQtHjIKkOmL1x9zMGVQNXKBHDBhJKBH2wsGhjXbK+HOXz9Y4Rj4RUK/5
	 voC/Jy7/zQnbOcHMJuQB2+gpxp+SrJhOV+U++0c4TlaXcK6w9HN8hQC3YKaYAhlEBo
	 GCeWIFsxk0i1hNHN4UJzKnDO9VOOf8dt06TqwvLyLP/6B/0E0D/ttDJCgC1xQPrgIB
	 bz8Am9uDj/rCluq5D5XgxMwJ4aIhd+NgmrI6TcPQcKkCN29GeLi46psz36Zk1XVdFM
	 1/cWq5PlLof2w==
Date: Fri, 26 Aug 2022 14:05:36 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, Damien Le
 Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220826140536.68eee458@dellmb>
In-Reply-To: <20220826050019.kvb7vca6fiwzajcx@shindev>
References: <20220813013534.l5hzxv7mc5fylx7m@shindev>
	<20220813093214.6ved4ka3l2thkn2n@pali>
	<20220813115338.uq4xbznngjradzi6@shindev>
	<20220813120108.vaiwnzhofz6hy5kc@pali>
	<20220813124729.qondfc7z5eoeoq7p@shindev>
	<20220813125052.hjd6lhh4fcc7jl5u@pali>
	<20220813230233.3hyvkoexqitfnlte@shindev>
	<20220813231050.l5xadzdpavmmtdbq@pali>
	<20220825130059.5kat4fhddwj2nf4r@pali>
	<20220826001558.5cf887a5@thinkpad>
	<20220826050019.kvb7vca6fiwzajcx@shindev>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/RgWP3XTHDu40GlSHvwYX3Mh"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_050543_209685_6F7A5C1A 
X-CRM114-Status: GOOD (  24.72  )
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

--MP_/RgWP3XTHDu40GlSHvwYX3Mh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Fri, 26 Aug 2022 05:00:20 +0000
Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com> wrote:

> On Aug 26, 2022 / 00:15, Marek Beh=C3=BAn wrote:
> > On Thu, 25 Aug 2022 15:00:59 +0200
> > Pali Roh=C3=A1r <pali@kernel.org> wrote:
> >  =20
> > > On Sunday 14 August 2022 01:10:50 Pali Roh=C3=A1r wrote: =20
> > > > On Saturday 13 August 2022 23:02:34 Shinichiro Kawasaki wrote: =20
>=20
> [...]
>=20
> > > > Perfect! So the issue is with mvebu_a3700_comphy_reset() function.
> > > >=20
> > > > This function is not in TF-A code and neither in my original kernel
> > > > driver implementation (still available here):
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/pali/linux.git/comm=
it/?h=3Dphy-mvebu-a3700-comphy&id=3D4588902a3528195bcfdda9f9e1e14262a1955df1
> > > >=20
> > > > Marek, this function mvebu_a3700_comphy_reset() was implemented by =
you.
> > > > Could you please look at it, why you added this function and try to=
 fix
> > > > it? Is this function needed at all?   =20
> > >=20
> > > PING? Any progress here? =20
> >=20
> > Not yet, sorry. Maybe we could do something like I am attaching, until
> > I have time to play with it?
> >=20
> > See attached file. =20
>=20
> Merek, thanks for the response. I applied the attached patch to v5.18.16 =
kernel
> and observed the "ata1: SATA link down (SStatus 100 SControl 300)" messag=
e is
> avoided. It looks working.
>=20

Hello Shinichiro,

would you be able to test another patch I am attaching, on clean kernel?
Whether your disk works or not...

Thanks.

Marek

--MP_/RgWP3XTHDu40GlSHvwYX3Mh
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=a3720-comphy-test-2.patch

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index a4d7d9bd100d..3bba2a02c71a 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -1104,6 +1104,14 @@ static int mvebu_a3700_comphy_reset(struct phy *phy)
 
 	dev_dbg(lane->dev, "resetting lane %d\n", lane->id);
 
+	if (lane->id == 0 || lane->id == 1)
+		comphy_periph_reg_set(lane, COMPHY_PHY_CFG1, 0,
+				      PIN_PU_PLL_BIT | PIN_PU_RX_BIT | PIN_PU_TX_BIT | PIN_PU_IVREF_BIT | PIN_TX_IDLE_BIT);
+
+	else
+		comphy_lane_reg_set(lane, COMPHY_POWER_PLL_CTRL,
+				    0x0, PU_PLL_BIT | PU_RX_BIT | PU_TX_BIT | PU_IVREF_BIT);
+
 	/* COMPHY reset for internal logic */
 	comphy_lane_reg_set(lane, COMPHY_SFT_RESET,
 			    SFT_RST_NO_REG, SFT_RST_NO_REG);

--MP_/RgWP3XTHDu40GlSHvwYX3Mh
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--MP_/RgWP3XTHDu40GlSHvwYX3Mh--

