Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96065C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:08:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F6F861A63
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:08:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4F6F861A63
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1ZcWH+a/VWkszKvGf+3EEvF0KPDAO4LIMNwxva6ozQ=; b=CoqPL8X9FfJM8E
	RVXY6O2vdZi8o4gYfa1/zisSO/+8OYl0lvtacqZGnPmbc+mWBlkn+3vjxYr64VdVTKGcLS/B0gIYc
	kW0dw0/dn3qXLoGYKZ5P5n6P4gGY3QVomnXOiFGcsE7qzqn3bl8OaveDmY9b+Wh9HJjQTEOGJDcnF
	/Nx5vMHxtecVfExAC6RC2vcaI0N0okgNJ46KjI7jUksAKF421DDEVbkRK3vHrMxCOzxepRfbBEYNh
	GdTLxluGu94JqX7VuoU7MpwjK+sed4PE/zGDNMfH4ys+KLrt0/O73wEkXN66wDWUaYXH8tVk5Vt0S
	5fj9buB2dFWfoeOuJ9WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDaR-00GyyZ-RJ; Fri, 01 Oct 2021 08:08:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDaO-00Gywo-2y
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:08:06 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 19187pM1037544;
 Fri, 1 Oct 2021 03:07:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1633075671;
 bh=02HFq9shx1CP3eM+WRt/rKuUcya0lp5fR5fw5zRHBx4=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=R8JL8wrtWHhnkB6F1QGVOrRtf1MJkZ2eS/IN2pUROPbhLJLzxV/1pk6u3N8qYD8Xg
 0W1tawCIFSxHV5parfR5y6cX9TN0mmJKt5Anrj4ZnKnZxo/x9VLmrnVCVU32q3YXc6
 392EScJQd/oo0gX4gIvL+0/szZdLb7KWYDZfkB20=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 19187pq3076502
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 Oct 2021 03:07:51 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 1
 Oct 2021 03:07:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 1 Oct 2021 03:07:51 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 19187out092472;
 Fri, 1 Oct 2021 03:07:51 -0500
Date: Fri, 1 Oct 2021 13:37:50 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar
 <nikhil.nd@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay
 Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <20211001080748.nr2gzredoqtqj4xx@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com> <YVapVLnGfSBZCDTY@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YVapVLnGfSBZCDTY@matsya>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_010804_315242_25474F9C 
X-CRM114-Status: GOOD (  28.64  )
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

On 01/10/21 11:53AM, Vinod Koul wrote:
> Hi Pratyush,
> 
> On 17-09-21, 22:58, Pratyush Yadav wrote:
> > +Rob
> > 
> > On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > > Hi,
> > > 
> > > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > > protocol. Add support for Rx mode. The programming sequence differs from
> > > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > > paths. The mode in which the DPHY has to be used is selected based on
> > > > the compatible.
> > > 
> > > I just realized that I didn't follow-up on a previous revision on the debate
> > > about using the phy sub-mode to distinguish between rx/tx.
> > > 
> > > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > > good fit either. My understanding is that the compatible should describe a group
> > > of register-compatible revisions of a hardware component, not how the hardware
> > > is used specifically. I guess the distinction between rx/tx falls under
> > > the latter rather than the former.
> > 
> > I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> > for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> > only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> > supports Octal SPI (8 lines).
> 
> Those are hardware defaults right?
> 
> > In addition, I feel like the Rx DPHY is almost a different type of 
> > device from a Tx DPHY. The programming sequence is completely different, 
> 
> Is that due to direction or something else..?

Yes, it is due to direction. Different settings need to be applied for 
Rx mode.

> 
> > the clocks required are different, etc. So I think using a different 
> > compatible for Rx mode makes sense.
> 
> Is the underlaying IP not capable of both TX and RX and in the specific
> situations you are using it as TX and RX.

Any instance of the underlying IP can only either be TX or RX, it can't 
do both.

> 
> I am okay that default being TX but you can use Paul's approach of
> direction with this to make it better proposal

Ok, will update this patch then.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
