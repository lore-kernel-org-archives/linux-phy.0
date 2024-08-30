Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158A8CA0EE8
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqzyTxOQHnp3uUIErzIEJYstOrx7VfiEtH8egIlrY+I=; b=VMmYo43C4zs1wY
	MRf/pORufC/TvuwmIEp2RnFmcCxOETU1w6JP63sm2PX6gr0XT73/oYaxBL4GjO4the1WQW1wFyEr0
	iTKf/e5XiSuwl5YUb+SELYEiUodhYXmpz+YWcFnvEoGUMjmgaItPjDOsVpLuvjXpJZ93Onf+762g0
	Swt99bdtmpazyIsNvvetuU/rHUfI5wttxmUl0nKZpZtMXEEMQDXg+LR+JxaMJhl7DM/mm9mr/gABl
	DEM+NJqNqIrbQUONK5vAa1pXoxPzngZlmclou+TDYp/Qdy+rwVZAH0uH3fGTh5c8yFXxpYp0m+wcQ
	4ZHzjmiReTOv4XOesJ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwdi-00000005F1c-3718;
	Fri, 30 Aug 2024 08:05:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwax-00000005EPa-0jF0;
	Fri, 30 Aug 2024 08:03:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7BB33A44143;
	Fri, 30 Aug 2024 08:02:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3028C4CEC8;
	Fri, 30 Aug 2024 08:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725004978;
	bh=V5JLcyP1XZThVqKP2FLK8yZHQp7BSEs//17dfoHaEaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Htr/ljZ4bcbC+qH3hiz+ps1PACcNUaMjDmNVw57mwJ336MuYU9kJC4HeWUQo0nfZm
	 /6gCNWrVzTDl64iW0D5MCCWXyVYMHdDIbZ7r3RarSP+gpdaVdn4mxWQeoHo9II9chF
	 lC8E2JhDQK6X3nWyOoiwIV3k2yAi+Za+6aH/edwFJTwYCxMy9IxCbvd4P+4Cfze41J
	 HCHUPeSdRxVhWy6OZO8YPG9ugnv+YuqyeTbtSpmdME3Fvcl21x2hUhj3O1aP46a4lg
	 Pt+iBmqP6HmO+4Bmu0UuIy2ZXxpaO26aRTna2oav0kll4jc6QilhpdphuN+Iz1nf/6
	 MPfaAD68BgEJg==
Date: Fri, 30 Aug 2024 13:32:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "Claudiu.Beznea" <claudiu.beznea@tuxon.dev>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>,
	"magnus.damm@gmail.com" <magnus.damm@gmail.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"mturquette@baylibre.com" <mturquette@baylibre.com>,
	"sboyd@kernel.org" <sboyd@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	"ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
Message-ID: <ZtF8rtI7e/7cK4BR@vaman>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB113468A6CA4ADBCA577670AD486882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <8faa6b6d-a013-4a71-a8b7-af02ac92d94b@tuxon.dev>
 <TY3PR01MB11346FBA77256F2156D374ECF86882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY3PR01MB11346FBA77256F2156D374ECF86882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_010259_362201_1C6CD858 
X-CRM114-Status: GOOD (  23.12  )
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

On 23-08-24, 09:01, Biju Das wrote:
> > >> The Renesas RZ/G3S need to initialize the USB BUS before transferring data due to hardware
> > limitation.
> > >> As the register that need to be touched for this is in the address
> > >> space of the USB PHY, and the UBS PHY need to be initialized before
> > >> any other USB drivers handling data transfer, add support to initialize the USB BUS.
> > >>
> > >> As the USB PHY is probed before any other USB drivers that enables
> > >> clocks and de-assert the reset signals and the BUS initialization is
> > >> done in the probe phase, we need to add code to de-assert reset signal and runtime resume the
> > device (which enables its clocks) before accessing the registers.
> > >>
> > >> As the reset signals are not required by the USB PHY driver for the
> > >> other USB PHY hardware variants, the reset signals and runtime PM was handled only in the function
> > that initialize the USB BUS.
> > >>
> > >> The PHY initialization was done right after runtime PM enable to have
> > >> all in place when the PHYs are registered.
> > >
> > > There is no user for this patch. The first user is RZ/G3S and you
> > > should merge this patch with next one.
> > 
> > I think this is a matter of taste... This is how I usually format the patches (for scenarios like
> > this) and got no request for squashing.
> 
> That is strange for trivial patches like this.

Splitting is better, this patch does one thing whereas the next one uses
it adds in new device, i would say quite a clean approach

NOTE: Don't quote the not required context while replying, it is good
mail list hygiene

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
