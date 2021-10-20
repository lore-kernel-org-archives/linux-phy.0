Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18DC9C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:49:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3D426135E
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 15:49:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D3D426135E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spzenR9dj65Yn7fUNwBU36syPtDpEAMkGaFT4QsXZ/8=; b=q16hGbqTQrtSru
	Ve0Ln/YEJCzX/1A5Y0nzajdtqXnaT84sgD26Vck8eJ6QAJDVrQnuKH1AJuhHRPH9Sa840lbH2KkdB
	JigxGiMsGgaY1xLMlhyrF+hekMydGIPYZun1I9Q0WnorvtMePCpDSRrt7K474zY5Q7oc4wBqqcj/t
	rT2wyCRSmRYVpD6v8fHKmH6wSDxR3buFlGr23WRMUyIwntEPmCal4WZOqqytmVgVU13hOaUF5toGc
	KLSzXUXFhxYhs8kIWKsp1Z10GngXFmSXsTKZP762xBtqPX6KoycMVlGBl/4LOMnYe+E3Dur28tfuZ
	dj+PCaHiXa+aPVRFfrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdDqi-0057o7-CH; Wed, 20 Oct 2021 15:49:52 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdDqe-0057mK-QH
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 15:49:50 +0000
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 953581C0002;
 Wed, 20 Oct 2021 15:49:41 +0000 (UTC)
Date: Wed, 20 Oct 2021 17:49:41 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>, kishon@ti.com,
 robh+dt@kernel.org, andrew@lunn.ch, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <YXA6lZBTeA6aNxVD@piout.net>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXA3VVUGEjUR4HDC@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_084949_024094_001DAFD2 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > 
> > > Any reason why this is dual licensed, why not GPL only?
> > 
> > No reason, I think I copy this from a different file.
> 
> Please have a chat with your lawyers on the correct license this should
> have!
Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
Microchip.

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
