Return-Path: <SRS0=iPW2=LI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38665C48BE6
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 05:51:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF5FB60BBB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 05:51:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF5FB60BBB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqYvNKPL7hND1I8VmUJ7wWV2DdPiSbe+DoA5GeSauqw=; b=moxybIU5LbBzFT
	aqcjuMjN4S/Mm0ytP6eYFonKcLsrZ1XJcmY12rpuXyXEHqkivlsAhh3ICkjTIBMVmRCVmwg+qhucO
	1sECT2tlKqstRr3B/RpWiRBrWbhGmsA0kE3EW03FWg5L04PZ8CpwNlEF935NWr82gfIo0ZKCVOafS
	2a9VoK2M541QD1YO48bsppyQlprbn8pU+Q2JfPpxf/EXjJgK7ECdq9/r2hKXkMTw80+sX8pVyzSh6
	09ejxLqnodqpOVbyllJzWX39ADQbYR9jm48BIXplEHZF5UMneDRn8MF4Ca/o32ewucgtoX6HXZ13k
	WcDSMESplSUf2pLMJjyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsfUz-00CcYJ-CS; Mon, 14 Jun 2021 05:51:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsfUv-00CcUX-Lo
 for linux-phy@lists.infradead.org; Mon, 14 Jun 2021 05:50:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05209611CE;
 Mon, 14 Jun 2021 05:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623649856;
 bh=KYwc30r/lp2B0B16drySkBiM9QvnXttHPWZWHoPBwVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R4PVRON784Zn6cLN1rockSMpa0A0SGXEaqR1omCd31/X7EcQGJ+xrASwE08hVf1/e
 VOQiatwTdgQff82mQ/4lP+051oS1SZan8l9d4Ouba3sfhNDJcgqvoQCJc0+2SbDSWq
 ap4jCmG0mlTzURGwfmyn1HbNwrTK5j2og5ikbQKGtoxUdOvwT6laeebeSgSMhfM9l0
 9qx0/Ul37HSiBFK6ApP5f54rbhWUcQ16u6JR1T6Tk1RDb/RaISwc5mFDI3QfcUz8XK
 AqjLKZhp13Yqd9aUyCHAb7AW62XGH8xYM2jR09WiqU9A01nRl3EfZ3J5naYPpRdEjF
 0fjTVLUfODEog==
Date: Mon, 14 Jun 2021 11:20:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/3] phy: core: Reword the comment specifying the
 units of max_link_rate to be Mbps
Message-ID: <YMbuPaSrBZ+W/uKN@vkoul-mobl>
References: <20210510051006.11393-1-a-govindraju@ti.com>
 <20210510051006.11393-2-a-govindraju@ti.com>
 <YLSNvUDJZ/v6NTuN@vkoul-mobl.Dlink>
 <615d3a2a-0dc2-0e87-fdac-e170542d33da@ti.com>
 <0150622f-8543-ac4a-fe18-f22d7862d163@ti.com>
 <7913b08e-a71c-d29d-d921-c25a87c0616a@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7913b08e-a71c-d29d-d921-c25a87c0616a@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_225057_765705_A29DC3F3 
X-CRM114-Status: GOOD (  15.03  )
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

On 11-06-21, 18:31, Kishon Vijay Abraham I wrote:

> >>> So there are a few users of max_link_rate. It would be better that we
> >>> document all previous users of max_link_rate that unit is in Mbps and
> >>> then modify it here
> >>>
> >>
> >> I was able to see that the max_link_rate attribute was used at,
> >>
> >> drivers/phy/cadence/phy-cadence-torrent.c:2514:
> >> gphy->attrs.max_link_rate = cdns_phy->max_bit_rate;
> >>
> >> and in the bindings there is indication that the units to be used is Mbps.
> >>
> >> Can you please point me if there is any other place that I might have
> >> missed to look at or that might need documentation update?
> >>
> 
> The only user seems to be Torrent and max_bit_rate is documented well in
> Torrent.
> 
> Acked-by: Kishon Vijay Abraham I <kishon@ti.com>

Series Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
