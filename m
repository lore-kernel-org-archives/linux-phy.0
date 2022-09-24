Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3887EC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy+BlYFQ0jnVPYeO1mwLmnDt/WENvLl+0eQ0jGR9TqA=; b=VlVJjLKKXtNjgZ
	Ij3CZyPd12FFJgFjKsZaJ/eScJCGxbRW8aUwFSWdX5RsVZt7LHi3snfu1hEey37FOJqdNXXbt5unn
	zwckyOXHYdTMceiyZC9lBkQY6ieL/YaTEWDJOXBS2sii29j3/pgBk37VQNMaCuL7OjbsDj8xk/Uhj
	OA+ovfehfS++uvoHaBpfVnIAhHkYN8wLYisd0LkbD2ALlpWd9QgE1KMn2uD9AbxX9KCMIHVhxyNfF
	f5uxP1jEbEnSMi5pnHO5Kgp/eTom1PpTzzb2E2PPG/mSYhiwzGapxxMzrQtxvfl2i2TKRi37Dcmo7
	K4MtYmukrvpr2GXrrd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzNK-006YPP-M8; Sat, 24 Sep 2022 07:14:58 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzNH-006YOo-RF
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:14:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2186EB80D82;
	Sat, 24 Sep 2022 07:14:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 503F7C433C1;
	Sat, 24 Sep 2022 07:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664003692;
	bh=yFTm/FVYOxOnX82hlQYnJ9zyQLMQStELUrkKWp1iBOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nY+K2jomYMCfKj7L0KM9IkUlMAIE4FpVCt1dwg1e7k2TKImmhwsppEKH3KNjxfczz
	 ObroygEtNfJqyL07zQ+Nh2NjzOL6Iib9TvttHlMgWIU8j0S1h2YSidHaO04QAjX9y1
	 O14zCg9CpuYBT3+iVmvn59pGZvs/NoYf19m6p+c68jRoyddoKDdZoBmGddo2BCK6Mi
	 Nxdq/3iQHqZGQ0DfoHflCvr4AwdHr/+GgsFB7eT9mfg+Hspk/63dXWoqHnxxcz4UFu
	 dXgiQZzcNY2l/OOUBJNjClYt/7qQA03NTKktxYvf6I1cJSaZHdO4Vw6mOPpSjMJSir
	 3wJgJthUxgSkw==
Date: Sat, 24 Sep 2022 12:44:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <Yy6uaaZUbZsBSqrw@matsya>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921080557.jdg5wywpa5qxcyo2@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_001456_240523_CE5BC7F8 
X-CRM114-Status: GOOD (  30.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21-09-22, 10:05, Pali Roh=E1r wrote:
> On Wednesday 21 September 2022 05:03:01 Shinichiro Kawasaki wrote:
> > On Sep 20, 2022 / 14:11, Pali Roh=E1r wrote:
> > > Turris MOX board with older ARM Trusted Firmware version v1.5 is not =
able
> > > to detect any USB 3.0 device connected to USB-A port on Mox-A module =
after
> > > commit 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove br=
oken
> > > reset support"). On the other hand USB 2.0 devices connected to the s=
ame
> > > USB-A port are working fine.
> > > =

> > > It looks as if the older firmware configures COMPHY registers for USB=
 3.0
> > > somehow incompatibly for kernel driver. Experiments show that resetti=
ng
> > > COMPHY registers via setting SFT_RST auto-clearing bit in COMPHY_SFT_=
RESET
> > > register fixes this issue.
> > > =

> > > Reset the COMPHY in mvebu_a3700_comphy_usb3_power_on() function as a =
first
> > > step after selecting COMPHY lane and USB 3.0 function. With this chan=
ge
> > > Turris MOX board can successfully detect USB 3.0 devices again.
> > > =

> > > Before the above mentioned commit this reset was implemented in PHY r=
eset
> > > method, so this is the reason why there was no issue with older firmw=
are
> > > version then.
> > > =

> > > Fixes: 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Remove br=
oken reset support")
> > > Reported-by: Marek Beh=FAn <kabel@kernel.org>
> > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > > ---
> > > Shinichiro, could you please check that all USB functionality still
> > > works correctly on your board?
> > > ---
> > =

> > Sure. TL;DR, this patch works ok for my espressobin v7 board.
> > =

> > Tested-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
> > =

> > I prepared base kernel v5.19.10 applying the commit 0a6fc70d76bd. Regar=
dless
> > whether this fix patch for Turrix MOX board is applied or not, two USB =
ports on
> > my esprssobin v7 board worked as expected. I confirmed it by using USB =
thumb
> > drive. The drive was detected and its partition was mounted successfull=
y using
> > either of the two USB ports.
> =

> Thank you for testing! Anyway, please check that USB 3.0 device is
> working fine. Because as I wrote in commit message, on Turris Mox was
> USB 2.0 device working fine, but USB 3.0 not. And maybe check in system

update the log now?

> (lsusb) that USB 3.0 device was really detected as USB 3.0 because USB
> 3.0 devices have supported also fallback USB 2.0/1.x legacy mode.
> =

> > I also confirmed SATA port is ok (my SSD card was detected without error
> > message) and three network ports works ok ("Link is Up" message on netw=
ork cable
> > connection). I did same confirmations with the latest firmware (TF-A an=
d U-boot)
> > and old firmware (with version date in 2017). All looks good for me.
> > =

> > -- =

> > Shin'ichiro Kawasaki

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
