Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A4CC3DA42
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 15:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6FnRm9UAXjcqW3jFiMclsljPEygxSc1/HQuId+Ava4=; b=zbuJl5k3HzHAz9
	CxggmDRW0hhf5jUXhF6kDFLJS5lb+cILX8A7mHMIFgQQ2j7ezUovqagdkYF7AQJ2vPDk75O7lpeoo
	O7lmNLnHKwQKwsKJelZJG4BO69bqMya0pX4BngE1Yh+X++kduYmHdJOxpvbQ7RAq77jx6zbGBeE0R
	jqryqxjMIiIgz9SS2KTSHB5KLpgkVI5HIpUw5UJeHMIEdBeTawMvbBUWt5/G0dtZS3XQLPHKIw8JB
	XIQUfmw6j/bo4sWA7tkhKXaMC8zuYm40Tstaa/LOO3vu0bi1D6JxJ1iXooUdCTgQ151gGt7j2FXrQ
	Nkxe/8wrD+F9T6cXXc6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZAG-0000000Awtz-29lS;
	Wed, 10 Jul 2024 15:23:28 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZ9z-0000000Awq8-0sjU;
	Wed, 10 Jul 2024 15:23:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0020ACE170B;
	Wed, 10 Jul 2024 15:23:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 655C4C32781;
	Wed, 10 Jul 2024 15:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720624979;
	bh=erdx/YDuY1nsaJxaC8TvXKgwHjYDK0CLut0tTlTGSmw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dr4XHeKbL4jSGYqorBqgaiHAGF06g9tVbQiAjAFxZAXBMyrO3XZAq5jq8ZVmwpcuc
	 6KOCQiZo1SJKOgakNyK9tYV6Y2e2jzeWWdodXQtkJ/V/dGdltJkUgaJoB/tLabzqhx
	 dAaPw8HYluKRUbMSPBich1n+VDLZuuxyxtCqgzW76eobmrXpLavVfHZkDTkg/Zx1nM
	 0u2rgbwrxNgZT0MmzPsu8J7GY6yPcih7aIiN9M10PHSbz68/pNzuszHwF5IDo3Vs35
	 Zbx6JBW2Y8k55FxrwUnIeCsnKepgN1l04O5qW6bU6TO7hzwGR3T/E/IxTB9BiFn4th
	 C1nWLGYx1p2EQ==
Message-ID: <acef4aeb-ddb6-4e2b-b2ac-8ac351efcf2f@kernel.org>
Date: Wed, 10 Jul 2024 18:22:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, sjakhade@cadence.com,
 thomas.richard@bootlin.com, theo.lebrun@bootlin.com, robh@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20240710115624.3232925-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_082311_631831_AF8242BF 
X-CRM114-Status: GOOD (  20.29  )
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

Hi Siddharth,

On 10/07/2024 14:56, Siddharth Vadapalli wrote:
> The Torrent SERDES can support at most two different protocols. This only

Could you please point to where this is mentioned? Doesn't this SERDES support 4 lanes?
So in theory each lane can be used as one protocol (or link) independed of the other.

Also, from code

struct cdns_torrent_phy {
...
        struct cdns_torrent_inst phys[MAX_NUM_LANES];
...
}

and MAX_NUM_LANES is 4.

And from Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml

patternProperties:
  '^phy@[0-3]$':
    type: object
    description:
      Each group of PHY lanes with a single master lane should be represented as a sub-node.

Which means it can have upto 4 phy nodes with different protocols.

> mandates that the device-tree sub-nodes expressing the configuration should
> describe links with at-most two different protocols.
> 
> The existing implementation however imposes an artificial constraint that
> allows only two links (device-tree sub-nodes). As long as at-most two
> protocols are chosen, using more than two links to describe them in an
> alternating configuration is still a valid configuration of the Torrent
> SERDES.
> 
> A 3-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 1 => Link 1
> Lane 2 => Protocol 2 => Link 2
> Lane 3 => Protocol 1 => Link 3
> 
> A 4-Link 2-Protocol configuration of the 4-Lane SERDES can be:
> Lane 0 => Protocol 1 => Link 1
> Lane 1 => Protocol 2 => Link 2
> Lane 2 => Protocol 1 => Link 3
> Lane 3 => Protocol 2 => Link 4
> 

Could you please give an example of device tree where existing implementation
doesn't work for you.

> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> Hello,
> 
> This patch is based on linux-next tagged next-20240710.
> Patch has been sanity tested and tested for functionality in the following
> configurations with the Torrent SERDES0 on J7200-EVM:
> 1. PCIe (Lanes 0 and 1) + QSGMII (Lane 2)
>    => 2 protocols, 2 links
> 2. PCIe (Lane0 as 1 Link) + PCIe (Lane 1 as 1 Link)
>    => 1 protocol, 2 links
> 3. PCIe (Lanes 0 and 1) + QSGMII (Lane 2) + PCIe (Lane 3)
>    => 2 protocols, 3 links
> 
> v1:
> https://lore.kernel.org/r/20240709120703.2716397-1-s-vadapalli@ti.com/
> Changes since v1:
> - A multilink configuration doesn't necessarily imply two protocols
>   since a single protocol may be split across links as follows:
>   Lane 0 => Protocol 1
>   Lane 1 => Unused
>   Lane 2 => Protocol 1
>   Lane 3 => Unused
>   which corresponds to two links and therefore two sub-nodes. In such a
>   case, treat it as two single-link configurations performed sequentially
>   which happens to be the case prior to this patch. To address this,
>   handle the case where cdns_torrent_phy_configure_multilink() can be
>   invoked for a single protocol with multiple sub-nodes (links) by
>   erroring out only when the number of protocols is strictly greater
>   than two, followed by handling the configuration similar to how it was
>   done prior to this patch.

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
