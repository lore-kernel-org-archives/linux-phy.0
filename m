Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6E5C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 04:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RqCLwEiA1t1lj4xIDSlZBJ1dElPttpkQ/4lFNc+bWFI=; b=m7cqIVCn4Yru2u
	jo/5MYJWujCeVVwEO+vQH7Ffsz1dDWHkzkClTdUELU4VmlX4tcpZ6Q7ULyAFeDtkFGk6LoaDx4zz3
	qT0mDzQwDbWomw1oPAnjICAVnQXOhXdhC7WxrAUldV4kFbnaK3UNbJmu7tSx7njxLYFkXzMnjZ48F
	+gVL0imbtEnE7uG7LzIDwiqVF6+5U+i3f38O4HVIXG+nX27QDiN8TViBIUQwg0NFkXwvsdpsJpge7
	C/thgXoxLWQlY6hCF5rNWb9Y4nfiJ9inM0m02oH0P9b7cVig5qlsK5y4Ay6LOcqGrU9Ii40GdBoxC
	puARGbVc7H/YHOAi+hUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTZQX-00000009FKt-46bf;
	Tue, 16 Jul 2024 04:04:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTZQD-00000009FI1-1fO3;
	Tue, 16 Jul 2024 04:04:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46G444dJ119126;
	Mon, 15 Jul 2024 23:04:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1721102644;
	bh=1d79WYKf1M0avjCQpPvE4gEYXICeLVGDCbwUPcm6h5k=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=A2f2+Dsol/8YlH7fmjIgFo3nQjpeTUwZqNNXCuWoVlVHtvZUmUOmku8J5t8DRqUSS
	 hD6pPMzPaBOKV1KaOYZUYsqKyX9FJ5OSkuC2UrcUM9g6ckie9C/AmL3R8Dl0e9DZB4
	 QTsVSidg62nmTo3y1MCc0DJg39lhstmDZ0R6DgRo=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46G444TV111778
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 15 Jul 2024 23:04:04 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 15
 Jul 2024 23:04:03 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 15 Jul 2024 23:04:03 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46G442cK086362;
	Mon, 15 Jul 2024 23:04:03 -0500
Date: Tue, 16 Jul 2024 09:34:02 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Roger Quadros <rogerq@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>,
        Swapnil Kashinath Jakhade
	<sjakhade@cadence.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org" <kishon@kernel.org>,
        "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>,
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
Message-ID: <cf060fa7-f4e5-4740-8102-f9403cbfcafd@ti.com>
References: <20240710115624.3232925-1-s-vadapalli@ti.com>
 <LV3PR07MB1036463AB8AB5D38D003175E6C5A52@LV3PR07MB10364.namprd07.prod.outlook.com>
 <7504ea5a-335b-4152-a0f4-5be68f048903@ti.com>
 <0dc54057-d7a0-4123-badc-8f7f07f2d930@kernel.org>
 <c60a1e83-c2ad-4a04-9deb-073c69a4a06d@ti.com>
 <d4538952-add4-4210-ae0a-574cd825b18d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4538952-add4-4210-ae0a-574cd825b18d@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_210413_635914_93B1BFB2 
X-CRM114-Status: GOOD (  17.21  )
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

On Mon, Jul 15, 2024 at 07:08:30PM +0300, Roger Quadros wrote:
> Hi Siddhath,
> 
> On 12/07/2024 13:38, Siddharth Vadapalli wrote:
> > Roger, Swapnil,
> > 

[...]

> > So assuming the above, we can enforce the constraint that there should
> > be only 2 Protocols when 3 or more Links are present in the device-tree.
> > This also handles the cases of
> > PCIe Multi-Link + USB, PCIe Multi-Link + Q/SGMII
> > which Swapnil has pointed to at [1], since PCIe Multi-Link is now a new
> > protocol in itself (PHY_TYPE_PCIE_ML) and shall be represented in that
> > manner in the device-tree when it is expected to be combined with a second
> > protocol.
> > 
> > After grouping the links by protocol, we can check for the entry in
> > "link_cmn_vals_entries" and proceed to configure it identical to the
> > 2 Link case.
> > 
> > [1] https://github.com/t-c-collab/linux/commits/ti-linux-6.1.y-torrent-multi-pcie-sgmii-v1
> 
> This proposal looks good to me. Thanks!

Thank you for the confirmation. I will implement the above in the v3
patch.

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
