Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BF4C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 10:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXABCvSPxAZTU2Wy/GXOafVLgF1mB0twbgV3I/SkQOs=; b=h7LuIt7UD7ndNF
	nNlfWjWbceAlPZHljo+fs9wfIn3GGnHf34H4+ESGS+dHlIqqxg0MVrgRCVrwqWAMoJQqH3zmasK7D
	5zjmmNkzz+OjAW470qbOpC9hKHM6V/0wqU1lU4jMU875MpxjIxyf4tAvFy5bBBF415VXH/95NSUWf
	KkGFt4OenGd/FSnEZtNl2t70BgOPOdUOEWv32vsyhSveBOH+WvSG8iabcLl7VuAoCmzBqGVf1GY1g
	K9r6mKDauT1DpptbZ4TgoJaNzymwkf66zso9YI+pzfFXTXvkvNQw17vooGvossC7k7eBDuLI/IbJa
	INB0zKkGrqZr+P3jUcNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauVg-0000000FPck-2E8T;
	Mon, 05 Aug 2024 10:00:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauV9-0000000FPXW-1OrK;
	Mon, 05 Aug 2024 09:59:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4759xUSg078589;
	Mon, 5 Aug 2024 04:59:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1722851970;
	bh=3rtJY+6qU4cO9BoI/EfcOK26NGFpLzHMQaxOKgKpC3Q=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=UH7X6rAoa8wPzGo1zK48wzenSZhFTz+z256LhYaPmQTIkSwAHfWePWp6d50TOTaX8
	 H4HhD8ImNNZ+gH9qe6oTmYzdv/XopC7ghFOFPPXVs6h/W02w6oh3MB97rfuhbD+jlu
	 rgJdYFjVsx26vwzVO/Md1VEdkGOkuml8Y22dufuk=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4759xUQj084019
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Aug 2024 04:59:30 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 5
 Aug 2024 04:59:30 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 5 Aug 2024 04:59:30 -0500
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4759xTnN049991;
	Mon, 5 Aug 2024 04:59:29 -0500
Date: Mon, 5 Aug 2024 15:29:28 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <kishon@kernel.org>,
        <p.zabel@pengutronix.de>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <thomas.richard@bootlin.com>, <theo.lebrun@bootlin.com>,
        <robh@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v3] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-ID: <d2329736-9697-4d73-b2d2-2b83c129221d@ti.com>
References: <20240716102442.1605280-1-s-vadapalli@ti.com>
 <Zq-15_enK919eUg_@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zq-15_enK919eUg_@matsya>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_025939_486277_29D8B47F 
X-CRM114-Status: GOOD (  16.31  )
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

On Sun, Aug 04, 2024 at 10:39:59PM +0530, Vinod Koul wrote:
> On 16-07-24, 15:54, Siddharth Vadapalli wrote:
> > The Torrent SERDES can support at most two different protocols (PHY types).
> > This only mandates that the device-tree sub-nodes used to represent the
> > configuration should describe links with at-most two different protocols.
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
> > Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> > ---
> > 
> > Hello,
> > 
> > This patch is based on linux-next tagged next-20240715.
> 
> Sorry this does not apply for me on phy/next, can you rebase..?

Thank you for pointing it out. I have rebased this patch on linux-next
tagged next-20240805 and have posted the v4 patch at:
https://lore.kernel.org/r/20240805092607.143869-1-s-vadapalli@ti.com/

Regards,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
