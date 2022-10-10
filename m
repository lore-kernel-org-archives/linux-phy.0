Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E876BC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 10 Oct 2022 05:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/RQ1SlVpFDPAtQ/O1tJxHpcFNnBM/b1ufX6ihC0+DQ=; b=ONQIvQErtz6HXc
	xXQ0gj8SPf8XbrEHGy1TbXKVUUW/d9pOpbWtUGDhpSrY94rJUTVazAzbKRtUUeDz41vjy9HEA/VQV
	Rve2cJiVEwEhBUHCHNtFScIKnEnWplmFJ4s3lSWtDe9mVneA7KnzY06loE/DkBn8hFI/gtBv3HY3u
	lAyBbe9qoLp0oMG+yYojrKQTkUmrrlfgZHjRvqtwuATdkxSsdrwEQcB5c7iK3esOcVy08fn7o8jbf
	CxTSucZi+umEZhepetqwEe2JgRv+KAm0cG2MrbCCN3Fm191zkiTqrqSoUwZgtg/OJQiOvXz5Es40P
	IXmBzrQzkHeGpDzVrXCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlCc-00H5He-Bx; Mon, 10 Oct 2022 05:19:46 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlCZ-00H5Gr-3K
	for linux-phy@lists.infradead.org; Mon, 10 Oct 2022 05:19:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E75FEB80E12
	for <linux-phy@lists.infradead.org>; Mon, 10 Oct 2022 05:19:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE54BC433C1;
	Mon, 10 Oct 2022 05:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665379179;
	bh=HaGmHno5erThB6Bn0fYha6MKL7fBwTI32d41TKkMykY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rx0Ath96VHMbEDYGaqMT2zQ13EDipPadTQEx2jmANH0z+EqDnRXyJ5jCfUSQR39l4
	 hM2hAOgxZJxZVGzZCm2vfqJ40g4iZNSTl5F/8KKsaaz8oaOrhwNbIOI+0nNr3O8uZm
	 CxUZagacTpkavKoBpguBEz+13vr8LprmR7bbCW7KHKJrVnhd/yi3p7V7oHJ4ZpK4wI
	 PpQLeOF5EYovk6x67XoPzeZ9ao/LHq8wXeWZ7IzoSzZooEOUnoKq3En7fPal+bxmWB
	 n57dJTtkCirZRO8b4/JdSGJQcC+z4mpAllzBL/FSZOndJPt0NyoL/pFejO5BEj15Dy
	 MIJE0rBJWSUBQ==
Date: Mon, 10 Oct 2022 10:49:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY
 registers before USB 3.0 power on
Message-ID: <Y0OrZ8d4GBC0Cp8q@matsya>
References: <20220920121154.30115-1-pali@kernel.org>
 <20220921050300.riwyofdncxscrwe3@shindev>
 <20220921080557.jdg5wywpa5qxcyo2@pali>
 <Yy6uaaZUbZsBSqrw@matsya>
 <20220924083127.oht57ivvsr4obrjr@pali>
 <20220930234541.hsf6ryketcdukpia@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930234541.hsf6ryketcdukpia@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_221943_457805_B8BDE8AD 
X-CRM114-Status: GOOD (  31.82  )
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

On 01-10-22, 01:45, Pali Roh=E1r wrote:
> On Saturday 24 September 2022 10:31:27 Pali Roh=E1r wrote:
> > On Saturday 24 September 2022 12:44:49 Vinod Koul wrote:
> > > On 21-09-22, 10:05, Pali Roh=E1r wrote:
> > > > On Wednesday 21 September 2022 05:03:01 Shinichiro Kawasaki wrote:
> > > > > On Sep 20, 2022 / 14:11, Pali Roh=E1r wrote:
> > > > > > Turris MOX board with older ARM Trusted Firmware version v1.5 i=
s not able
> > > > > > to detect any USB 3.0 device connected to USB-A port on Mox-A m=
odule after
> > > > > > commit 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Rem=
ove broken
> > > > > > reset support"). On the other hand USB 2.0 devices connected to=
 the same
> > > > > > USB-A port are working fine.
> > > > > > =

> > > > > > It looks as if the older firmware configures COMPHY registers f=
or USB 3.0
> > > > > > somehow incompatibly for kernel driver. Experiments show that r=
esetting
> > > > > > COMPHY registers via setting SFT_RST auto-clearing bit in COMPH=
Y_SFT_RESET
> > > > > > register fixes this issue.
> > > > > > =

> > > > > > Reset the COMPHY in mvebu_a3700_comphy_usb3_power_on() function=
 as a first
> > > > > > step after selecting COMPHY lane and USB 3.0 function. With thi=
s change
> > > > > > Turris MOX board can successfully detect USB 3.0 devices again.
> > > > > > =

> > > > > > Before the above mentioned commit this reset was implemented in=
 PHY reset
> > > > > > method, so this is the reason why there was no issue with older=
 firmware
> > > > > > version then.
> > > > > > =

> > > > > > Fixes: 0a6fc70d76bd ("phy: marvell: phy-mvebu-a3700-comphy: Rem=
ove broken reset support")
> > > > > > Reported-by: Marek Beh=FAn <kabel@kernel.org>
> > > > > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > > > > > ---
> > > > > > Shinichiro, could you please check that all USB functionality s=
till
> > > > > > works correctly on your board?
> > > > > > ---
> > > > > =

> > > > > Sure. TL;DR, this patch works ok for my espressobin v7 board.
> > > > > =

> > > > > Tested-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
> > > > > =

> > > > > I prepared base kernel v5.19.10 applying the commit 0a6fc70d76bd.=
 Regardless
> > > > > whether this fix patch for Turrix MOX board is applied or not, tw=
o USB ports on
> > > > > my esprssobin v7 board worked as expected. I confirmed it by usin=
g USB thumb
> > > > > drive. The drive was detected and its partition was mounted succe=
ssfully using
> > > > > either of the two USB ports.
> > > > =

> > > > Thank you for testing! Anyway, please check that USB 3.0 device is
> > > > working fine. Because as I wrote in commit message, on Turris Mox w=
as
> > > > USB 2.0 device working fine, but USB 3.0 not. And maybe check in sy=
stem
> > > =

> > > update the log now?
> > =

> > What do you want to update?
> =

> Vinod, could you describe a bit more what is needed to update? Because
> this patch fixes regression - USB 3.0 support on Turris Mox board.

Sorry to have missed this...

Somehow I misunderstood that the USB 3.0 was not working and log needs
update... I will apply this once merge window closes

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
