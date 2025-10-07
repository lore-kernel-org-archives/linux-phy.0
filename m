Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E062CCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 09:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQHk1EhdY4Nkr4QtOrLdHUBtDv0+Eu7jaPX9xCoCohE=; b=1jFyMAYnw9SZd3
	yc2T3j/zDZTDmQAOrzYRa/Ui5Q98tck3AKNeScU20ZdWK/OBdsX7gU6AMU20OHbAFDaT9PaKJrpJs
	dIvXGnzobNoukeNOsXJcZzf1/iLOoGFksuWV6KEUvTVoXJidEGsgGEXGJwkEF6Re848eMUDptuhOD
	CkcxPh8SqMrpjiKvtyOEwjXnI40xZS6cOe7F247zSJ6ujRo5QMlj5BkWcZTz7aYVPKyNVXw2uG+ss
	65F4fMtMYSdiApV7DUI6LhcQdeNUxM4PXssmVB3EUU7z5zRNzwAUF3T0wC7zqBWuYNO+8BrA56Xzq
	KMvODZ9MRVbd4R7RauGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64F9-00000001j26-31VN;
	Tue, 07 Oct 2025 09:44:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v64F7-00000001j1I-023g
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 09:44:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v64Ep-0004ZM-CM; Tue, 07 Oct 2025 11:44:07 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v64Eo-002NZS-1A;
	Tue, 07 Oct 2025 11:44:06 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v64Eo-000000003Jb-1BSq;
	Tue, 07 Oct 2025 11:44:06 +0200
Message-ID: <01fc3101ab2e3898932afeaaaf060a6676cdf323.camel@pengutronix.de>
Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for
 OTG mode
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Biju Das <biju.das.jz@bp.renesas.com>, Tommaso Merciai	
 <tommaso.merciai.xr@bp.renesas.com>, Tommaso Merciai
 <tomm.merciai@gmail.com>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
  Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I	 <kishon@kernel.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>,  "magnus.damm"
 <magnus.damm@gmail.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-phy@lists.infradead.org"	 <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org"	 <linux-kernel@vger.kernel.org>
Date: Tue, 07 Oct 2025 11:44:06 +0200
In-Reply-To: <TY3PR01MB1134635745721CC005B35702286E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
		 <20251001212709.579080-5-tommaso.merciai.xr@bp.renesas.com>
	 <593eb851ae6ce0ec03ddeacf436180b6538fdd1e.camel@pengutronix.de>
	 <TY3PR01MB1134635745721CC005B35702286E0A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_024425_157933_29661316 
X-CRM114-Status: GOOD (  19.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Biju,

On Di, 2025-10-07 at 04:02 +0000, Biju Das wrote:
> Hi Philipp,
> 
> Thanks for the feedback.
> 
> > -----Original Message-----
> > From: Philipp Zabel <p.zabel@pengutronix.de>
> > Sent: 06 October 2025 17:32
> > Subject: Re: [PATCH 04/18] reset: rzv2h-usb2phy: Set VBENCTL register for OTG mode
> > 
> > On Mi, 2025-10-01 at 23:26 +0200, Tommaso Merciai wrote:
> > > Add logic to set the VBENCTL register when the USB controller operates
> > > in OTG mode. This is required to ensure proper USB transceiver
> > > behavior when the device is configured as OTG.
> > > 
> > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > 
> > I had reservations about this driver before, because of the opaque register initialization sequence, and
> > I was told that no, this is a reset driver alright [1].
> 
> The latest hardware manual document about VBENCTRL register which sets source for VBUS selection.
> s

I still can't look at this, right? The USB2PHY control register space
appears to be documented in the "RZ/V2H Group User's Manual: Hardware
(Additional document)" (under NDA).

> > Can you please try to find a proper abstraction for this, because drivers/reset is not the correct place
> > for USB OTG mode handling.
> 
> Sorry for the confusion. This driver is not handling USB OTG mode. It just configures VBENCTRL(one time setting)
> that selects the source for VBUS_SEL. Actual USB OTG mode handling is done USB PHY driver
> which sets host/device mode based on ID detection.

So this is a mux for the VBUS_SEL signal?

Why don't the USB host controller drivers parse their "dr_mode"
property themselves and control USB2PHY VBENCTRL via the mux API, for
example?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
