Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC18C3DA47
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 07:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoFXe/cGxMb3iKOM+RPQj23GQc8RkAUHO8jnXPbIXxQ=; b=rOaQGCiuINjSqt
	fTyvmCBBBWbjtOq1j15e5F9ghSenxbfrrkg7c3QMs2uSdza1abSzde76QQDQZaKwT8/uE8r3OzSwr
	ODq2tuytmo8nfcvQVdHG9bjoxJIoQDYUZS32J8oKJIaBeR8LVSGAmrbXAooYXD0IncqqQwEkQRluQ
	1zaB8hvVQ3b7B7EHrldPqB7lFXNFkuHRvnY7orE28Ng4Q7VyFKW1r6Wh0A9YdMVKaBD9FLuJVt/aF
	vswPK2z76KmWHpxyVi3VnsSDqMbpNSpiBS7kZSdJwlX460v2bPD2peCRvm8jnnx8M+dy5xd8O8f4W
	7sJp2wFVOMePDMIPrQZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRocs-0000000D5Ev-2Jsg;
	Thu, 11 Jul 2024 07:54:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRoca-0000000D5C3-1rB0;
	Thu, 11 Jul 2024 07:53:46 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46B7rbZ2080766;
	Thu, 11 Jul 2024 02:53:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1720684417;
	bh=O2yihfRWjVbYRd8r0aBV3Gq7SQjJHFV6kCLF+0hqCyM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=zE1fhSQ6C3ChPNCHMUV01qEZ7mae6LlMSAeQ9xRljTyMFYY6j5mysCLXXPnsBxbva
	 ZGwqcsWDMLpsuGekEemAAqJiwkml7qtD/XSm/jMabTmLWU+K3y0w7z38Hit5NooOOH
	 DEoSxH4LjpseErnw4sVBrUeNYhyJgZ6dxoeZ8ZyI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46B7rb9d019973
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jul 2024 02:53:37 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 11
 Jul 2024 02:53:36 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 11 Jul 2024 02:53:36 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46B7rZ4p029518;
	Thu, 11 Jul 2024 02:53:36 -0500
Date: Thu, 11 Jul 2024 13:23:34 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>,
        "vkoul@kernel.org"
	<vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "rogerq@kernel.org"
	<rogerq@kernel.org>,
        "thomas.richard@bootlin.com"
	<thomas.richard@bootlin.com>,
        "theo.lebrun@bootlin.com"
	<theo.lebrun@bootlin.com>,
        "robh@kernel.org" <robh@kernel.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "srk@ti.com" <srk@ti.com>, Milind
 Parab <mparab@cadence.com>
Subject: Re: [PATCH v2] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-ID: <7504ea5a-335b-4152-a0f4-5be68f048903@ti.com>
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <LV3PR07MB1036463AB8AB5D38D003175E6C5A52@LV3PR07MB10364.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <LV3PR07MB1036463AB8AB5D38D003175E6C5A52@LV3PR07MB10364.namprd07.prod.outlook.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_005344_595663_F5971753 
X-CRM114-Status: GOOD (  32.30  )
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

On Thu, Jul 11, 2024 at 06:43:01AM +0000, Swapnil Kashinath Jakhade wrote:
> Hi Siddharth,

Hello Swapnil,

Thank you for reviewing this patch.

[...]

> > - A multilink configuration doesn't necessarily imply two protocols
> >   since a single protocol may be split across links as follows:
> >   Lane 0 => Protocol 1
> >   Lane 1 => Unused
> >   Lane 2 => Protocol 1
> >   Lane 3 => Unused
> >   which corresponds to two links and therefore two sub-nodes. In such a
> >   case, treat it as two single-link configurations performed sequentially
> >   which happens to be the case prior to this patch. To address this,
> >   handle the case where cdns_torrent_phy_configure_multilink() can be
> >   invoked for a single protocol with multiple sub-nodes (links) by
> >   erroring out only when the number of protocols is strictly greater
> >   than two, followed by handling the configuration similar to how it was
> >   done prior to this patch.
> 
> The assumption here that "a single protocol when split across links is to be
> considered as single-link configurations performed sequentially" is not always
> correct.
> e.g. If there are 2 PCIe links, then this is a case of 'Multilink PCIe' and not 2 separate
> 'single link PCIe'. Multilink PCIe has different PLL configurations than for single link
> PCIe resulting in different register configurations.
> Also, for multi-protocol case, in cdns_torrent_phy_configure_multilink() function,
> the existing implementation considers this as multilink case of combination of 2
> protocols which has different register config than single link of each protocol.

I suppose that PCIe is the only such protocol since it can have
different speeds despite a single protocol (Gen1, Gen2, Gen3...), unlike
other protocols which have a fixed speed and therefore the PLL
associated with them doesn't have to be reconfigured as the rate will
never change. Please let me know if there are other protocols (maybe DP?)
which also require such special handling.

[...]

> > +		phy_t1 = fns(cdns_phy->protocol_bitmask, 0);
> > +		/**
> > +		 * For a single protocol split across multiple links,
> > +		 * assign TYPE_NONE to phy_t2 for configuring each link
> > +		 * identical to a single-link configuration with a single
> > +		 * protocol.
> > +		 */
> > +		phy_t2 = TYPE_NONE;
> 
> As mentioned above, assuming phy_t2 = TYPE_NONE is not correct here.

I can update this patch to handle it differently for PCIe multi-link, but
as of now I don't see any PCIe multi-link support in the current Torrent
SERDES driver in Mainline Linux.

> 
> FYI. I have shared few patches to TI earlier removing the constraint of Maximum 2 links (subnodes)
> in the driver specifically for Multilink PCIe cases.
> Please check first 4 patches in link below.
> https://github.com/t-c-collab/linux/commits/ti-linux-6.1.y-torrent-multi-pcie-sgmii-v1

The patches you are referring to above seem to remove the constraint of
a maximum of 2 links, __only__ when one of the protocols is PCIe [1].
However, that is not necessarily the only use-case for multiple links.

Please consider the following valid use-case:
SERDES Lane 0 -> SGMII
SERDES Lane 1 -> SGMII
SERDES Lane 2 -> QSGMII
SERDES Lane 3 -> SGMII
Representing the above in the device-tree will require 3 sub-nodes
(links):
&serdes {
	serdes_sgmii_link1: phy@0 {
		reg = <0>;
		cdns,num-lanes = <2>;
		#phy-cells = <0>;
		cdns,phy-type = <PHY_TYPE_SGMII>;
		resets = <&serdes_wiz 1>, <&serdes_wiz 2>;
	};
	serdes_qsgmii_link2: phy@2 {
		reg = <2>;
		cdns,num-lanes = <1>;
		#phy-cells = <0>;
		cdns,phy-type = <PHY_TYPE_QSGMII>;
		resets = <&serdes_wiz 3>;
	};
	serdes_sgmii_link3: phy@3 {
		reg = <3>;
		cdns,num-lanes = <1>;
		#phy-cells = <0>;
		cdns,phy-type = <PHY_TYPE_SGMII>;
		resets = <&serdes_wiz 4>;
	};
};

Such a configuration is valid since it is still using only 2 different
protocols. But the existing driver doesn't allow splitting/alternating
protocols. So any use-case is forced to conform to a consecutive allocation
of protocols. This patch enables the aforementioned use-case and this has
been validated for functionality on the J784S4 SoC with a custom board [2].

I believe that this patch can be extended further to support the PCIe
Multi-link configuration as well. Please let me know your thoughts on
this.

[1] https://github.com/t-c-collab/linux/commit/fd87922da100b1ed30015333e037c506c510e932#diff-814f5e3b47c89595aa30310ec07ab7aa8ac96f2921f524c4f5cd536a2c3c5adbR2488
[2] https://e2e.ti.com/support/processors-group/processors/f/processors-forum/1383684/tda4ap-q1-limitations-for-configuration-for-serdes-lanes-when-using-qsgmii-sgmii-and-sgmii-usb3-mixed/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
