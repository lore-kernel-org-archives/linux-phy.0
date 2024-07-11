Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4D0C3271E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 05:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeZsNK1cw43+s5+MAwxsJtUtRCZM+cK9nrfZZe8uD4E=; b=gHbJjRhhsWgXW+
	C2C64+aehQ3wT7K1BtU4d7AujnTW/wsfwj/919Cnwxa+U+EqlXEQZNlV3g1tE1Kf7jvT/ykyyipDm
	LnCGqfowoqoJe8Zns3t8oLQe6yal0uSOD9iwAa0VEhSCOtrHNSHUHdXEUkZZiMJ5eJaBvBz7mBBNm
	L73UFMFwbTD59A8+dTY3b2Bduf8kWKjybXxut3tvwCk//nbHZuP2Xk76lDl9Xu8k2Ch5aA9KhRj8v
	XFmWWlxfkcKaZPx/eZDg1L1LnI0qf8NtMxeK3vnK+vg22xlshFqM0dsH7m8M6H6OPTNX8gk3pnmif
	1KwZQdKHoGijr02qn89w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRm8C-0000000Ckde-1Thc;
	Thu, 11 Jul 2024 05:14:12 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRm7t-0000000Ckba-3qRa;
	Thu, 11 Jul 2024 05:13:56 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46B5DiLn127176;
	Thu, 11 Jul 2024 00:13:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1720674824;
	bh=ThsiRdwwxLluRT5PAJ8j/goz3wuFWwBFn18XKgKEHfY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=suhvk2sWa7fTp/emthNfDKW7AlGUh64HB1lcxcLRSKa0WOmhRtbH6Qgf8Wqw73nOz
	 nxKlPfL7RuK8sWvVxVkMhLXn6GsZcQegNVYF5tSH+XUY+WGku2NW5JFsrktcZNczSl
	 QcLqwkkCDTZqq+b70kdmcEqWc5+Y92/+bcsmD+Bk=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46B5Di1l002736
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jul 2024 00:13:44 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 11
 Jul 2024 00:13:44 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 11 Jul 2024 00:13:44 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46B5DhEk072337;
	Thu, 11 Jul 2024 00:13:43 -0500
Date: Thu, 11 Jul 2024 10:43:42 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Roger Quadros <rogerq@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <p.zabel@pengutronix.de>, <sjakhade@cadence.com>,
        <thomas.richard@bootlin.com>, <theo.lebrun@bootlin.com>,
        <robh@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-ID: <1cf302f8-c458-4221-a8b6-b586b671929e@ti.com>
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <acef4aeb-ddb6-4e2b-b2ac-8ac351efcf2f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acef4aeb-ddb6-4e2b-b2ac-8ac351efcf2f@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_221354_134125_95395AFC 
X-CRM114-Status: GOOD (  38.90  )
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

On Wed, Jul 10, 2024 at 06:22:53PM +0300, Roger Quadros wrote:
> Hi Siddharth,

Hello Roger,

Thank you for reviewing this patch.

> 
> On 10/07/2024 14:56, Siddharth Vadapalli wrote:
> > The Torrent SERDES can support at most two different protocols. This only
> 
> Could you please point to where this is mentioned? Doesn't this SERDES support 4 lanes?
> So in theory each lane can be used as one protocol (or link) independed of the other.

The Torrent SERDES has two PLLs. So up to two different protocols can be
supported. Please note that protocol is not the same as a link. I am
defining the terms below for your convenience:

Protocol
  Analogous to PHY_TYPE -> DP/PCIe/QSGMII/SGMII/USB/USXGMII/XAUI/XFI

Lane
  A pair of differential signals for TX/RX. A Lane is configured
  to operate for a specified Protocol.

Link
  A collection of one or more lanes configured for the same Protocol.

Since there are two PLLs, at most two different Protocols can be
supported with each PLL configured for the frequency corresponding to
the respective Protocol.

Each Lane can be configured to operate for any of the Protocols with the
SERDES level constraint being that at most two different Protocols can
be supported across all Lanes.

> 
> Also, from code
> 
> struct cdns_torrent_phy {
> ...
>         struct cdns_torrent_inst phys[MAX_NUM_LANES];
> ...
> }
> 
> and MAX_NUM_LANES is 4.
> 
> And from Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> 
> patternProperties:
>   '^phy@[0-3]$':
>     type: object
>     description:
>       Each group of PHY lanes with a single master lane should be represented as a sub-node.
> 
> Which means it can have upto 4 phy nodes with different protocols.

I respectfully disagree with your conclusion. MAX_NUM_LANES is 4 since
the Torrent SERDES has 4 Lanes. Additionally, the description:
"Each group of PHY lanes with a single master lane should be represented
as a sub-node."
is referring to a Link. A sub-node is analogous to a Link. Based on what
you have quoted above, the following statement:
"Which means it can have upto 4 phy nodes with different protocols."
doesn't seem obvious to me.

Setting aside the Documentation for a moment, if we look at the SERDES
driver, it will simply reject any configuration specified in the
device-tree that has more than 2 sub-nodes i.e. Links.
I am referring to the following section of the driver prior to this patch:

static
int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
{
	....
	/* Maximum 2 links (subnodes) are supported */
	if (cdns_phy->nsubnodes != 2)
		return -EINVAL;
	....
}

In other words, irrespective of what the Documentation says, more than
two sub-nodes are not allowed. We cannot specify more than 2 Protocols
with just two sub-nodes (Links). So we can configure all 4 Lanes of the
SERDES for at-most two different protocols, which does match the SERDES
Hardware limitation since it has 2 PLLs.

> 
> > mandates that the device-tree sub-nodes expressing the configuration should
> > describe links with at-most two different protocols.
> > 
> > The existing implementation however imposes an artificial constraint that
> > allows only two links (device-tree sub-nodes). As long as at-most two
> > protocols are chosen, using more than two links to describe them in an
> > alternating configuration is still a valid configuration of the Torrent
> > SERDES.
> > 
> > A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> > Lane 0 => Protocol 1 => Link 1
> > Lane 1 => Protocol 1 => Link 1
> > Lane 2 => Protocol 2 => Link 2
> > Lane 3 => Protocol 1 => Link 3
> > 
> > A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> > Lane 0 => Protocol 1 => Link 1
> > Lane 1 => Protocol 2 => Link 2
> > Lane 2 => Protocol 1 => Link 3
> > Lane 3 => Protocol 2 => Link 4
> > 
> 
> Could you please give an example of device tree where existing implementation
> doesn't work for you.

As I have pointed in my response above, the existing driver rejects any
configuration which has more than two sub-nodes in the device-tree.
Each device-tree sub-node represents a Link. A Link can constitute of
one or more lanes. The existing driver prior to this patch only allows
specifying two Links. In the examples I have listed above in the commit
message, though there are only 2 protocols, since 3 Links are necessary
to represent the configuration, the SERDES driver will not configure the
SERDES, though the SERDES hardware supports such a configuration as it
is still only 2 protocols being configured.

While I am not the author of this driver and therefore cannot be certain
about it, my guess about the author's rationale behind the existing
implementation is the following:
Given that the SERDES supports at most two protocols, the SERDES driver
needs to prevent the user from specifying more than two protocols and
treat all such requests as INVALID. One way to do so, which the author
seems to have chosen, is to limit the number of Links supported to 2.
Since it is impossible to request more than 2 protocols with just 2
Links, such a constraint although more limiting than required, does the
needful.

This patch on the other hand tries to relax the artificial constraint
imposed in this driver by redefining the constraint to match the SERDES
Hardware limitation. So the constraint of at-most 2 Links is replaced
with at-most 2 Protocols in this patch, thereby making the constraint
reflect the true Hardware limitation.

Also, apart from the configurations that I have tested below on
J7200-EVM, on a custom board with the J784S4/TDA4AP SoC [1] which
has 4 Instances of the 4-Lane Torrent SERDES, the following configurations
have been verified simultaneously with the current patch:

SERDES0 -> 1 Protocol, 2 Links
  Lane 0 -> PCIe, Lane 1 -> Unused, Lane 2 -> PCIe, Lane 3 -> Unused
  (Link1 -> Lane0, Link2 -> Lane 2)
SERDES1 -> 1 Protocol, 2 Links
  Lane 0 -> PCIe, Lane 1 -> Unused, Lane 2 -> PCIe, Lane 3 -> Unused
  (Link1 -> Lane0, Link2 -> Lane 2)
SERDES2 -> 2 Protocols, 3 Links
  Lanes 0 and 1 -> SGMII, Lane 2 -> QSGMII, Lane 3 -> SGMII
  (Link1 -> Lanes 0 and 1, Link2 -> Lane2, Link3 -> Lane 3)
SERDES4 -> 2 Protocols, 2 Links
  Lanes 0 and 1 -> Unused, Lane 2 -> SGMII, Lane 3 -> USB
  (Link1 -> Lane2, Link2 -> Lane3)

For more details regarding the above, please refer [2]

[1] https://www.ti.com/product/TDA4AP-Q1
[2] https://e2e.ti.com/support/processors-group/processors/f/processors-forum/1383684/tda4ap-q1-limitations-for-configuration-for-serdes-lanes-when-using-qsgmii-sgmii-and-sgmii-usb3-mixed/

> 
> > Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> > ---
> > 
> > Hello,
> > 
> > This patch is based on linux-next tagged next-20240710.
> > Patch has been sanity tested and tested for functionality in the following
> > configurations with the Torrent SERDES0 on J7200-EVM:
> > 1. PCIe (Lanes 0 and 1) + QSGMII (Lane 2)
> >    => 2 protocols, 2 links
> > 2. PCIe (Lane0 as 1 Link) + PCIe (Lane 1 as 1 Link)
> >    => 1 protocol, 2 links
> > 3. PCIe (Lanes 0 and 1) + QSGMII (Lane 2) + PCIe (Lane 3)
> >    => 2 protocols, 3 links
> > 

[...]

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
