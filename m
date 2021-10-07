Return-Path: <SRS0=xS6O=O3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6018AC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 12:16:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E72461037
	for <linux-phy@archiver.kernel.org>; Thu,  7 Oct 2021 12:16:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E72461037
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JQj/fTrwkECx/Hbvyg080K08awuN+4RqjUnhVtBcIU=; b=J5IeCwv05n1s9d
	P9ziuZ8W0tCN/6FH70sYZCtfqjvqmf48PMpzZH1y7N29q/DPdJs/D6DGj/CVkW5vKthfNJVeBYorz
	ONa0bp4Dafov89dxpcRA8K+etoAC4gG0H+W6wM7kWMESdQTmUoApRQeKvyEbctWim3QKMYwwgaLJL
	bdyEZa0OKQGg8BF0ZVp1ccxKSTyZbpjPYIXzz5o2CzkLxnadayB4btD9/z5NOCzDdP8cJLSE2d2+H
	Gdg7sBdNXU1hsmtAdF2xLg3GDa5CiorYaNRMXBzFN6gLJrOzsninr2i8KjTNAmFSuCweoMhlwKSDo
	p9h1Ezz20TAVJVAaBLiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYSJt-00HE7X-B0; Thu, 07 Oct 2021 12:16:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYSIf-00HDgk-02
 for linux-phy@lists.infradead.org; Thu, 07 Oct 2021 12:15:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 197CEew5110477;
 Thu, 7 Oct 2021 07:14:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1633608880;
 bh=j6adkrGlMOpYlmjotVznItdFpUqevVwAnoGcm4wqQig=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=DclmbGZVt7L9NxqWwXuV4C3/T+BbXENXCwuBUsExLT1jZKjbrjkza4Gu/xeY3wWhQ
 O3w4Xz17VCyDqkPSC3NQ/45snQXNSl3FiJNY54z9IDS5OKMAwpkostllmAfLtDzDn2
 Cw+bN39D1ywxTjXU6FQXnl5zYpJJiVJjamEP0Gu4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 197CEelh108154
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 7 Oct 2021 07:14:40 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 7
 Oct 2021 07:14:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 7 Oct 2021 07:14:40 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 197CEdxL100865;
 Thu, 7 Oct 2021 07:14:40 -0500
Date: Thu, 7 Oct 2021 17:44:38 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Vinod Koul <vkoul@kernel.org>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Nikhil Devshatwar
 <nikhil.nd@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay
 Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <20211007121436.jkck2cue5zd3rys4@ti.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com> <YVapVLnGfSBZCDTY@matsya>
 <YV463gUvYauhDP/l@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YV463gUvYauhDP/l@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_051501_293760_CD033AC4 
X-CRM114-Status: GOOD (  33.77  )
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

On 07/10/21 03:10AM, Laurent Pinchart wrote:
> Hi Vinod,
> 
> On Fri, Oct 01, 2021 at 11:53:16AM +0530, Vinod Koul wrote:
> > On 17-09-21, 22:58, Pratyush Yadav wrote:
> > > On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > > > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > > > protocol. Add support for Rx mode. The programming sequence differs from
> > > > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > > > paths. The mode in which the DPHY has to be used is selected based on
> > > > > the compatible.
> > > > 
> > > > I just realized that I didn't follow-up on a previous revision on the debate
> > > > about using the phy sub-mode to distinguish between rx/tx.
> > > > 
> > > > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > > > good fit either. My understanding is that the compatible should describe a group
> > > > of register-compatible revisions of a hardware component, not how the hardware
> > > > is used specifically. I guess the distinction between rx/tx falls under
> > > > the latter rather than the former.
> > > 
> > > I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> > > for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> > > only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> > > supports Octal SPI (8 lines).
> > 
> > Those are hardware defaults right?
> > 
> > > In addition, I feel like the Rx DPHY is almost a different type of 
> > > device from a Tx DPHY. The programming sequence is completely different, 
> > 
> > Is that due to direction or something else..?
> > 
> > > the clocks required are different, etc. So I think using a different 
> > > compatible for Rx mode makes sense.
> > 
> > Is the underlaying IP not capable of both TX and RX and in the specific
> > situations you are using it as TX and RX.
> > 
> > I am okay that default being TX but you can use Paul's approach of
> > direction with this to make it better proposal
> 
> 
> Given that the RX and TX implementations are very different (it's not a
> matter of selecting a mode at runtime), I'm actually tempted to
> recommend having two drivers, one for the RX PHY and one for the TX PHY.
> This can only be done with two different compatible strings, which I
> think would be a better approach.

FWIW, I think having different drivers would certainly make things 
easier to maintain.

> 
> It's unfortunate that the original compatible string didn't contain
> "tx". We could rename it and keep the old one in the driver for backward
> compatibility, making things cleaner going forward.
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
