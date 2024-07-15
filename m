Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9C9C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUbp3SJoi3lLPSJUaFbtZVIWbJtkjqKlTnaTRsQZWY4=; b=cRpj01rRxh4txu
	1gLLt40YzAVg/LrohS5t8o7hKQ2BYh2+CR5aX0h42As76ElD291gsXmW8thIZbberCUFjKoE84K6e
	qJPIMUVdFdhn+uPZBrtnO9Ll0kymYe19eb0S1VLGfrWyF5ns8N9YHHD65gEFlb78ihtHNiDtmGGwl
	kdQuJZva8mBFKf2jF7CqJJUpfJZISpHH7sGw6EsFBKLy9i+D6Ln7dsL3tlpL+pzaoAb9296YON225
	vSlsoDtmhWDlNyehZG15VmrdPaAeRVkYLbtdqiQxN1mWK4OohV2ARCD4JZ3Fb5ADTPEcZeXIUdi5f
	Lpa4TD/m5cr30jCIQNfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTOIZ-00000007gTA-08ek;
	Mon, 15 Jul 2024 16:11:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTOFi-00000007f80-0Jls;
	Mon, 15 Jul 2024 16:08:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 080CD611F2;
	Mon, 15 Jul 2024 16:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF6F8C4AF0D;
	Mon, 15 Jul 2024 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721059716;
	bh=9GnDBj5Xnp2lVxGxh+31ziCimp0dwbKkpcW29ik9TsU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rnj+TudI4+66hO3pp2Rp4jJDIIugO1l6k4v1YPt4XIakeVrtB+bf4iBEmepvLdn53
	 sxqN+Nf5it0X2g/ESICqUw7i8tMunxRVBBWD/Zq5aHjZFV6UbS5kdFefvYt4GiyIOR
	 lJZoDq1+sxC4N4iIlF/OdI6JXwHbCLmff3/50IL0oU0TdEXFSY+eLHav7mhC/F+gX+
	 G/j7bhfimJeC6NS0n9kqYKHRuxIenR3r8jaTLDNaY5OwWgOolITBgK4gjuNsMVlUBV
	 0yNoikdEPEJbGVrgkjABBR856NfOwUD5PIJQQLA3bu6G+UCXptZXrh9YflafyI/6IV
	 d7Fnb2RCvsHWg==
Message-ID: <d4538952-add4-4210-ae0a-574cd825b18d@kernel.org>
Date: Mon, 15 Jul 2024 19:08:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 Swapnil Kashinath Jakhade <sjakhade@cadence.com>
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "thomas.richard@bootlin.com" <thomas.richard@bootlin.com>,
 "theo.lebrun@bootlin.com" <theo.lebrun@bootlin.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "srk@ti.com" <srk@ti.com>,
 Milind Parab <mparab@cadence.com>
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <LV3PR07MB1036463AB8AB5D38D003175E6C5A52@LV3PR07MB10364.namprd07.prod.outlook.com>
 <7504ea5a-335b-4152-a0f4-5be68f048903@ti.com>
 <0dc54057-d7a0-4123-badc-8f7f07f2d930@kernel.org>
 <c60a1e83-c2ad-4a04-9deb-073c69a4a06d@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <c60a1e83-c2ad-4a04-9deb-073c69a4a06d@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_090838_254186_048FD9F9 
X-CRM114-Status: GOOD (  32.58  )
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

Hi Siddhath,

On 12/07/2024 13:38, Siddharth Vadapalli wrote:
> Roger, Swapnil,
> 
> On Thu, Jul 11, 2024 at 11:04:57AM +0300, Roger Quadros wrote:
>> Siddharth,
>>
>> On 11/07/2024 10:53, Siddharth Vadapalli wrote:
> 
> [...]
> 
>>> I suppose that PCIe is the only such protocol since it can have
>>> different speeds despite a single protocol (Gen1, Gen2, Gen3...), unlike
>>> other protocols which have a fixed speed and therefore the PLL
>>> associated with them doesn't have to be reconfigured as the rate will
>>> never change. Please let me know if there are other protocols (maybe DP?)
>>> which also require such special handling.
>>
>> The constraint is PLL frequency and not protocols as such right?
>> e.g. If there are 4 protocols that all use same PLL frequency then we should
>> be able to support it?
>>
>> How about updating the patch to limit on number of PLL frequencies rather than
>> number of protocols? This should deal with PCIe multi-link case as well.
> 
> I suppose that an indirect way of determining whether a configuration
> can be supported or not is by checking if an entry exists in the "tables"
> (link_cmn_vals_tbl). That should be accurate since it reflects what the
> driver supports.
> 
> I will update this patch accordingly so that Swapnil's inputs regarding
> PCIe Multi-link are also addressed.
> 
> I am describing the logic for the updated patch below. Please share your
> feedback.
> 
> 1. All single-link configurations (1 sub-node) can have only one
> protocol and will be handled via the "phy_ops" callbacks namely:
> .init, .power_on, ...
> No change will be made to this existing implementation.
> 
> 2. All multi-link configurations (2 or more sub-nodes) have to be
> configured via cdns_torrent_phy_configure_multilink().
> 
> CASE-1 (2 Links/Sub-nodes):
> Check if there is an entry in "link_cmn_vals_entries" for the requested
> configuration and configure accordingly. This should handle the PCIe
> Multi-link configuration as well as other similar configurations which
> have a single protocol but cannot be treated as two single link
> configurations performed successively for each link.
> 
> CASE-2 (3 or more Links/Sub-nodes):
> 
> The links shall be grouped together by the protocol. Since we eventually
> have to look for an entry in "link_cmn_vals_entries", it is safe to impose
> the constraint that there shouldn't be more than 2 Protocols as the table
> is of the form:
> (phy_type1, phy_type2)
> i.e. Protocol 1, Protocol 2.
> It is guaranteed to be the case that Protocol1 != Protocol2 due to the
> following reason:
> If Protocol 1 == Protocol 2, it could have been represented in the
> device-tree using either:
> a) single link (sub-node)
> b) double link (sub-node) -> Special cases like PCIe Multi-link
> 
> So assuming the above, we can enforce the constraint that there should
> be only 2 Protocols when 3 or more Links are present in the device-tree.
> This also handles the cases of
> PCIe Multi-Link + USB, PCIe Multi-Link + Q/SGMII
> which Swapnil has pointed to at [1], since PCIe Multi-Link is now a new
> protocol in itself (PHY_TYPE_PCIE_ML) and shall be represented in that
> manner in the device-tree when it is expected to be combined with a second
> protocol.
> 
> After grouping the links by protocol, we can check for the entry in
> "link_cmn_vals_entries" and proceed to configure it identical to the
> 2 Link case.
> 
> [1] https://github.com/t-c-collab/linux/commits/ti-linux-6.1.y-torrent-multi-pcie-sgmii-v1

This proposal looks good to me. Thanks!

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
