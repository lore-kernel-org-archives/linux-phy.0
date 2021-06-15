Return-Path: <SRS0=aWzV=LJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7034C48BE5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 17:58:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B630610A2
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jun 2021 17:58:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B630610A2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5G6hrVFYfeOX+f+ntTs/sw3WH2V+l94Jo+UzBXWjIU=; b=F+Gp0QhYFD+5Db
	5Vn6qQmYuFQoWrTS/gMgFbT0Ea5CprdIUiWGElJPZejE/2JE63imD7kswfBzZC0hlpw7EwFMiLF2w
	qP6eY9yBRfqrOW/VUaHUL5aDZ+Nhc8/Lu8s77bB/JyBOmpTJMPRULku1s5F5FSyAet3aiAROGBKkr
	6kxhp8sNT4k/C701dBc7O1nXi43Aol4T1CyaQsuUySN/sR1duMglTHLmFpi/2vQ7LvSxvFClVJhQk
	BXNOxzo3FfD7rVuH8nt2vUEVU1XPD29N0ufItohetDLPNYsYVd8pg1zeZ3YsMLT3ZPbo6nc7POnBs
	XAzQo2gcxhlPWFNu5WnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDKG-001uui-D8; Tue, 15 Jun 2021 17:58:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Fj-000ByJ-U3
 for linux-phy@bombadil.infradead.org; Tue, 15 Jun 2021 13:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
 :Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=9Eix1EXFaB3yxguDPr89xCek3ZMvAZScjmLrpVNiIyo=; b=kaBg3vKyHeJzwiOTqLwCHc15o/
 EMbkWy8OrYGp+6rmuBgEWVEbtEop3YgpO4jgvKHGYl885WE2I+9HGDxLPDMEFV3H77CWRPaU6ZLa4
 iNkPGy0XQ0/TSjj5Y9tkt2Z8mg445qeJMG5C90R9Txm2ly/D99af9B1AxT+J8P6VfAZs5lLXqeUGB
 MSwzGvq5xTnjqMRPjrS24JVxu3tM4NRXC9DTQcpsJZWCy+G+6aph9fDBAF2Ohc/PGxfJuokoirGKT
 MZKNVR1g7tzd6g0uf0BFJ0QgCKICjazDjBaV7D3i1vULQx5vBRSTDIwUHbE7xRU4YA29ufenMo1/W
 7bLaQY2w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt7Cd-007m0y-My
 for linux-phy@lists.infradead.org; Tue, 15 Jun 2021 11:26:04 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lt7CU-0003gA-A2; Tue, 15 Jun 2021 13:25:46 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lt7CQ-0004AZ-TV; Tue, 15 Jun 2021 13:25:42 +0200
Message-ID: <869864f6f85c1f1d3427bf6be32d703758bdad71.camel@pengutronix.de>
Subject: Re: [PATCH v7 13/19] phy: sun4i-usb: Allow reset line to be shared
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Andre Przywara <andre.przywara@arm.com>, Maxime Ripard
 <mripard@kernel.org>,  Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>, Samuel
 Holland <samuel@sholland.org>, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com,  linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megous@megous.com>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Date: Tue, 15 Jun 2021 13:25:42 +0200
In-Reply-To: <20210615110636.23403-14-andre.przywara@arm.com>
References: <20210615110636.23403-1-andre.przywara@arm.com>
 <20210615110636.23403-14-andre.przywara@arm.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_122602_620721_5957259F 
X-CRM114-Status: UNSURE (   9.11  )
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

On Tue, 2021-06-15 at 12:06 +0100, Andre Przywara wrote:
> The USB HCIs (and PHYs?) in Allwinner's newer generation SoCs (H616)
> rely on the reset line of USB PHY 2 to be de-asserted, even when only
> one of the other PHYs is actually in use.
> 
> To make those ports work, we include this reset line in the HCIs' resets
> property, which requires this line to be shareable.
> 
> Change the call to allocate the reset line to mark it as shared, to
> enable the other ports on those SoCs.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
