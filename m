Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1D64C2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jul 2024 10:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSxbUeve66BCIlHHbWyJyKXgJaPnM4NPCOiouathQRk=; b=res8vbTCi/B1Tf
	kxp8/WLSSodMue6DnyUZoIDwwZy1Fcjo3x4XQINpvCDj+KkMZ2BPs8Zi07bZCcTg3y2q1lB+VYa8P
	VP/jHWoqkXIbtCuW6RNNzCFWUep7sk5ecIxOKqd2yZC2SxsbMEcTpXbgJTS+iU5Jx5oAxXNfa5zjN
	9mf89NHvvarDA+zeuM0WxKrxKnxPPgfSQLC78VrCX6KIhvCG+Zokijtbx7VVPrbqx9q97qoJQkHlC
	HFh5VHSMy3qZX5ZcE4dvienxgryt9MTMKeYKRd4Uqk5nBKImthLph7VKkBZFH/n/1emlws96S+tio
	Whv3t0tub0Y634B4BYTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDfz-0000000HL1c-2dzY;
	Fri, 12 Jul 2024 10:38:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDff-0000000HKzF-0WOu;
	Fri, 12 Jul 2024 10:38:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46CAcJbj110842;
	Fri, 12 Jul 2024 05:38:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1720780699;
	bh=W/Z3C2cI7ppQME+mYRiG+8nSdB35hlEhW1U12Imi++M=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=krD0HkEfig8tvJSJyGE4XpRmqkENvJjIfXJe5wHQZWb4Fzlt0tI3nK3CsFDtTdBox
	 g+kLeYhrts8u1lgOe2NV+culQpq7h2vivNmF2x1UvHLrJ12hDcG3v5v/rfTOAgahvz
	 FDCJZGuoP8498KtAhJ3hBM47t31KwGPMCAaBwpwk=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46CAcJtW039126
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 12 Jul 2024 05:38:19 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 12
 Jul 2024 05:38:18 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 12 Jul 2024 05:38:19 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46CAcHm2088301;
	Fri, 12 Jul 2024 05:38:18 -0500
Date: Fri, 12 Jul 2024 16:08:16 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Roger Quadros <rogerq@kernel.org>,
        Swapnil Kashinath Jakhade
	<sjakhade@cadence.com>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>,
        "vkoul@kernel.org"
	<vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "thomas.richard@bootlin.com" <thomas.richard@bootlin.com>,
        "theo.lebrun@bootlin.com" <theo.lebrun@bootlin.com>,
        "robh@kernel.org"
	<robh@kernel.org>,
        "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "srk@ti.com" <srk@ti.com>, Milind
 Parab <mparab@cadence.com>
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-ID: <c60a1e83-c2ad-4a04-9deb-073c69a4a06d@ti.com>
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <LV3PR07MB1036463AB8AB5D38D003175E6C5A52@LV3PR07MB10364.namprd07.prod.outlook.com>
 <7504ea5a-335b-4152-a0f4-5be68f048903@ti.com>
 <0dc54057-d7a0-4123-badc-8f7f07f2d930@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0dc54057-d7a0-4123-badc-8f7f07f2d930@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_033835_327507_C735E928 
X-CRM114-Status: GOOD (  26.89  )
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

Roger, Swapnil,

On Thu, Jul 11, 2024 at 11:04:57AM +0300, Roger Quadros wrote:
> Siddharth,
> 
> On 11/07/2024 10:53, Siddharth Vadapalli wrote:

[...]

> > I suppose that PCIe is the only such protocol since it can have
> > different speeds despite a single protocol (Gen1, Gen2, Gen3...), unlike
> > other protocols which have a fixed speed and therefore the PLL
> > associated with them doesn't have to be reconfigured as the rate will
> > never change. Please let me know if there are other protocols (maybe DP?)
> > which also require such special handling.
> 
> The constraint is PLL frequency and not protocols as such right?
> e.g. If there are 4 protocols that all use same PLL frequency then we should
> be able to support it?
> 
> How about updating the patch to limit on number of PLL frequencies rather than
> number of protocols? This should deal with PCIe multi-link case as well.

I suppose that an indirect way of determining whether a configuration
can be supported or not is by checking if an entry exists in the "tables"
(link_cmn_vals_tbl). That should be accurate since it reflects what the
driver supports.

I will update this patch accordingly so that Swapnil's inputs regarding
PCIe Multi-link are also addressed.

I am describing the logic for the updated patch below. Please share your
feedback.

1. All single-link configurations (1 sub-node) can have only one
protocol and will be handled via the "phy_ops" callbacks namely:
.init, .power_on, ...
No change will be made to this existing implementation.

2. All multi-link configurations (2 or more sub-nodes) have to be
configured via cdns_torrent_phy_configure_multilink().

CASE-1 (2 Links/Sub-nodes):
Check if there is an entry in "link_cmn_vals_entries" for the requested
configuration and configure accordingly. This should handle the PCIe
Multi-link configuration as well as other similar configurations which
have a single protocol but cannot be treated as two single link
configurations performed successively for each link.

CASE-2 (3 or more Links/Sub-nodes):

The links shall be grouped together by the protocol. Since we eventually
have to look for an entry in "link_cmn_vals_entries", it is safe to impose
the constraint that there shouldn't be more than 2 Protocols as the table
is of the form:
(phy_type1, phy_type2)
i.e. Protocol 1, Protocol 2.
It is guaranteed to be the case that Protocol1 != Protocol2 due to the
following reason:
If Protocol 1 == Protocol 2, it could have been represented in the
device-tree using either:
a) single link (sub-node)
b) double link (sub-node) -> Special cases like PCIe Multi-link

So assuming the above, we can enforce the constraint that there should
be only 2 Protocols when 3 or more Links are present in the device-tree.
This also handles the cases of
PCIe Multi-Link + USB, PCIe Multi-Link + Q/SGMII
which Swapnil has pointed to at [1], since PCIe Multi-Link is now a new
protocol in itself (PHY_TYPE_PCIE_ML) and shall be represented in that
manner in the device-tree when it is expected to be combined with a second
protocol.

After grouping the links by protocol, we can check for the entry in
"link_cmn_vals_entries" and proceed to configure it identical to the
2 Link case.

[1] https://github.com/t-c-collab/linux/commits/ti-linux-6.1.y-torrent-multi-pcie-sgmii-v1

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
