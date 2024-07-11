Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3657EC3DA47
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 07:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwPMI30XwqSFwg+PAlBgQdBD+sCM6gML4ZAkjvwW0a0=; b=p8VzgDRMHhYAsd
	lZf9RvBla15BYX8w4yyLq509TlMNUM0r/dj6K4tTN1XToGEzMCQVoBECZMHWxcRpjJh9vSlr6aSxU
	Fayh4bgyG4rSRUkTafpokhgYL/ehjoWB5pM6nikFFXGmSSrM6Da9rTQHGjaJ72zOVT0WQJc93DlYO
	ckbe6XThfJw0mUrkKlSL8jI4oj14XJeWdUZNdw8ldRKOnCIT6FVa4TngdHxXdeWkSnNeLicALg4pt
	eRdAhf2w/xU7LEG1CKjj+YE56obY88aAdgplBLvciqoYJHEg0zm690ew1E0pZJRKGfk5jsgJKHb8W
	x5TQUicwwYLRdGDN+viA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRodW-0000000D5Rv-3sOP;
	Thu, 11 Jul 2024 07:54:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRodD-0000000D5LQ-39vx;
	Thu, 11 Jul 2024 07:54:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EFB5961BDC;
	Thu, 11 Jul 2024 07:54:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06C58C116B1;
	Thu, 11 Jul 2024 07:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720684462;
	bh=73g+B7p7ldQTHzImC+1MGrXi9U00jiWoL/Y/qUkftSc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=u1kldPbieR8qmwpR8CEtZiRyFirGHAQ73TKWbePCSHXCsu75n2HJkSnen8eAFO4Ur
	 OneC0lgLQZZW4Y+EbeTD9+y1xyV9NmarW3KQv5pbu5YyHrgZuQT1VtCWnnGMbcG0Qp
	 o/UpNKuQGCUIUftBYxZMiG0Ic4cszA3fwbzJLusE7SzCiSQPSuPV9e5PFpZ8R4JQaE
	 uDlSdpcrUHTM6gHKKs/RfzaiL7wWmFTLA/kNXvg/HRcL8nX1gil56VW5R/BdnO7c6U
	 xJqMcF9rVUVswLcMUc/A1mYZPh6xfnd8cRuya+ny39oOsgpXFYY+Lfx2kpFcsynenB
	 DITxSJv2N6Wnw==
Message-ID: <d77a11a6-bcd8-4bbb-ba37-bde5b0631c69@kernel.org>
Date: Thu, 11 Jul 2024 10:54:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
 sjakhade@cadence.com, thomas.richard@bootlin.com, theo.lebrun@bootlin.com,
 robh@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 srk@ti.com
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <acef4aeb-ddb6-4e2b-b2ac-8ac351efcf2f@kernel.org>
 <1cf302f8-c458-4221-a8b6-b586b671929e@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <1cf302f8-c458-4221-a8b6-b586b671929e@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_005423_921432_E34D82D7 
X-CRM114-Status: GOOD (  46.64  )
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

Siddharth

On 11/07/2024 08:13, Siddharth Vadapalli wrote:
> On Wed, Jul 10, 2024 at 06:22:53PM +0300, Roger Quadros wrote:
>> Hi Siddharth,
> 
> Hello Roger,
> 
> Thank you for reviewing this patch.
> 
>>
>> On 10/07/2024 14:56, Siddharth Vadapalli wrote:
>>> The Torrent SERDES can support at most two different protocols. This only
>>
>> Could you please point to where this is mentioned? Doesn't this SERDES support 4 lanes?
>> So in theory each lane can be used as one protocol (or link) independed of the other.
> 
> The Torrent SERDES has two PLLs. So up to two different protocols can be
> supported. Please note that protocol is not the same as a link. I am
> defining the terms below for your convenience:
> 
> Protocol
>   Analogous to PHY_TYPE -> DP/PCIe/QSGMII/SGMII/USB/USXGMII/XAUI/XFI
> 
> Lane
>   A pair of differential signals for TX/RX. A Lane is configured
>   to operate for a specified Protocol.
> 
> Link
>   A collection of one or more lanes configured for the same Protocol.
> 
> Since there are two PLLs, at most two different Protocols can be
> supported with each PLL configured for the frequency corresponding to
> the respective Protocol.
> 
> Each Lane can be configured to operate for any of the Protocols with the
> SERDES level constraint being that at most two different Protocols can
> be supported across all Lanes.

Thanks for the detailed explanation.
> 
>>
>> Also, from code
>>
>> struct cdns_torrent_phy {
>> ...
>>         struct cdns_torrent_inst phys[MAX_NUM_LANES];
>> ...
>> }
>>
>> and MAX_NUM_LANES is 4.
>>
>> And from Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>>
>> patternProperties:
>>   '^phy@[0-3]$':
>>     type: object
>>     description:
>>       Each group of PHY lanes with a single master lane should be represented as a sub-node.
>>
>> Which means it can have upto 4 phy nodes with different protocols.
> 
> I respectfully disagree with your conclusion. MAX_NUM_LANES is 4 since
> the Torrent SERDES has 4 Lanes. Additionally, the description:
> "Each group of PHY lanes with a single master lane should be represented
> as a sub-node."
> is referring to a Link. A sub-node is analogous to a Link. Based on what
> you have quoted above, the following statement:
> "Which means it can have upto 4 phy nodes with different protocols."
> doesn't seem obvious to me.

in the pattern Properties:
phy@[0-3] means phy@0, phy@1, phy@2, phy@3

That's why I said it can have 4 PHY nodes. But looks like code doesn't
match the documentation.

> 
> Setting aside the Documentation for a moment, if we look at the SERDES
> driver, it will simply reject any configuration specified in the
> device-tree that has more than 2 sub-nodes i.e. Links.
> I am referring to the following section of the driver prior to this patch:
> 
> static
> int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
> {
> 	....
> 	/* Maximum 2 links (subnodes) are supported */
> 	if (cdns_phy->nsubnodes != 2)
> 		return -EINVAL;
> 	....
> }

OK. now looking at hardware capability it looks like we can still have 4
subnodes (phys/links) as long as all of them don't need more than 2 PLLs.

So Documentation is correct from that perspective.
We will still need to update the documentation to reflect the 2 PLL/protocol limit?

> 
> In other words, irrespective of what the Documentation says, more than
> two sub-nodes are not allowed. We cannot specify more than 2 Protocols
> with just two sub-nodes (Links). So we can configure all 4 Lanes of the
> SERDES for at-most two different protocols, which does match the SERDES
> Hardware limitation since it has 2 PLLs.
> 
>>
>>> mandates that the device-tree sub-nodes expressing the configuration should
>>> describe links with at-most two different protocols.
>>>
>>> The existing implementation however imposes an artificial constraint that
>>> allows only two links (device-tree sub-nodes). As long as at-most two
>>> protocols are chosen, using more than two links to describe them in an
>>> alternating configuration is still a valid configuration of the Torrent
>>> SERDES.
>>>
>>> A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
>>> Lane 0 => Protocol 1 => Link 1
>>> Lane 1 => Protocol 1 => Link 1
>>> Lane 2 => Protocol 2 => Link 2
>>> Lane 3 => Protocol 1 => Link 3
>>>
>>> A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
>>> Lane 0 => Protocol 1 => Link 1
>>> Lane 1 => Protocol 2 => Link 2
>>> Lane 2 => Protocol 1 => Link 3
>>> Lane 3 => Protocol 2 => Link 4
>>>
>>
>> Could you please give an example of device tree where existing implementation
>> doesn't work for you.
> 
> As I have pointed in my response above, the existing driver rejects any
> configuration which has more than two sub-nodes in the device-tree.
> Each device-tree sub-node represents a Link. A Link can constitute of
> one or more lanes. The existing driver prior to this patch only allows
> specifying two Links. In the examples I have listed above in the commit
> message, though there are only 2 protocols, since 3 Links are necessary
> to represent the configuration, the SERDES driver will not configure the
> SERDES, though the SERDES hardware supports such a configuration as it
> is still only 2 protocols being configured.
> 
> While I am not the author of this driver and therefore cannot be certain
> about it, my guess about the author's rationale behind the existing
> implementation is the following:
> Given that the SERDES supports at most two protocols, the SERDES driver
> needs to prevent the user from specifying more than two protocols and
> treat all such requests as INVALID. One way to do so, which the author
> seems to have chosen, is to limit the number of Links supported to 2.
> Since it is impossible to request more than 2 protocols with just 2
> Links, such a constraint although more limiting than required, does the
> needful.
> 
> This patch on the other hand tries to relax the artificial constraint
> imposed in this driver by redefining the constraint to match the SERDES
> Hardware limitation. So the constraint of at-most 2 Links is replaced
> with at-most 2 Protocols in this patch, thereby making the constraint
> reflect the true Hardware limitation.
> 
> Also, apart from the configurations that I have tested below on
> J7200-EVM, on a custom board with the J784S4/TDA4AP SoC [1] which
> has 4 Instances of the 4-Lane Torrent SERDES, the following configurations
> have been verified simultaneously with the current patch:
> 
> SERDES0 -> 1 Protocol, 2 Links
>   Lane 0 -> PCIe, Lane 1 -> Unused, Lane 2 -> PCIe, Lane 3 -> Unused
>   (Link1 -> Lane0, Link2 -> Lane 2)
> SERDES1 -> 1 Protocol, 2 Links
>   Lane 0 -> PCIe, Lane 1 -> Unused, Lane 2 -> PCIe, Lane 3 -> Unused
>   (Link1 -> Lane0, Link2 -> Lane 2)
> SERDES2 -> 2 Protocols, 3 Links
>   Lanes 0 and 1 -> SGMII, Lane 2 -> QSGMII, Lane 3 -> SGMII
>   (Link1 -> Lanes 0 and 1, Link2 -> Lane2, Link3 -> Lane 3)
> SERDES4 -> 2 Protocols, 2 Links
>   Lanes 0 and 1 -> Unused, Lane 2 -> SGMII, Lane 3 -> USB
>   (Link1 -> Lane2, Link2 -> Lane3)
> 
> For more details regarding the above, please refer [2]
> 
> [1] https://www.ti.com/product/TDA4AP-Q1
> [2] https://e2e.ti.com/support/processors-group/processors/f/processors-forum/1383684/tda4ap-q1-limitations-for-configuration-for-serdes-lanes-when-using-qsgmii-sgmii-and-sgmii-usb3-mixed/
> 
>>
>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>> ---
>>>
>>> Hello,
>>>
>>> This patch is based on linux-next tagged next-20240710.
>>> Patch has been sanity tested and tested for functionality in the following
>>> configurations with the Torrent SERDES0 on J7200-EVM:
>>> 1. PCIe (Lanes 0 and 1) + QSGMII (Lane 2)
>>>    => 2 protocols, 2 links
>>> 2. PCIe (Lane0 as 1 Link) + PCIe (Lane 1 as 1 Link)
>>>    => 1 protocol, 2 links
>>> 3. PCIe (Lanes 0 and 1) + QSGMII (Lane 2) + PCIe (Lane 3)
>>>    => 2 protocols, 3 links
>>>
> 
> [...]
> 
> Regards,
> Siddharth.

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
