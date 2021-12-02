Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20459C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 04:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQCoWuz3KBHGG1e5Jz+rmZvWIHgsv+8frkVj77USJcg=; b=EFLKSecwzJi7cP
	CZNrkqXC9kg2/kwoxHbzGMN0geEiyfXbSiybIOBAwt8MXShHH0hsQi/2SJ1plvJQosH7wVV86R+B/
	q/mMSPwB389418/S6Wgd4tc5Ic48LuUpbyrO5eOyH/YjAA61JMU+btjSdwT/7ZaXyKaTfgWLR1wZj
	JuBsUbD6i9pJp0tDhL9/iAB2wuFYS0XOLdoui6XLpG5fUaru9+R8eCc1eZh55Cg3GxqcGTgR20rpy
	cHAEFLKnTKehobxpR3BuPG7eoj3y2NjRUupFgK5arTB5F6+dt8vF3e9CWW95j9HkNSNUWoPydWj1U
	VdmUYKAigEDPGDvTVC9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdZN-00AtER-Fk; Thu, 02 Dec 2021 04:19:41 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdZK-00AtDD-4J
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 04:19:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D8278B8214E;
 Thu,  2 Dec 2021 04:19:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4EB1C00446;
 Thu,  2 Dec 2021 04:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638418775;
 bh=SOAozQIF+luS66u+i8c/hscFZWQwcThBt1+hqRfufUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T3LNTyZlfrKU0Vrqc/xSzov6qt690gCjpAvx1bT5JTUNmf9U13mXWPExDL2BZk+M8
 9wef3iWBfGonx//M7I/f7lZmAs1fyPd4bGONvGdFQuZt4j0ZGV5jQ9sgWN8ry9Xcp1
 d/gyljtJrsu58DW8+rGAtqpA/QzeiUdMs4EEqu/cKjCwrFNpMorlxbriWLv15KxMld
 K38U6GOB1/JfB9a2wJ0ejpAnIaz6d6h1IedR4lmEniUB7PuBhmKJodtrkaiT/vIXlQ
 ph9ymKGUv5Ey0HNho90Op4osqGYrK7M7eavzuJLYP4c5b1huduaHbaWgb0deY+Lo1V
 aXEdTtT0QGNYw==
Date: Thu, 2 Dec 2021 09:49:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, linux@armlinux.org.uk, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: lan966x: Extend lan966x to support multiple phy
 interfaces.
Message-ID: <YahJU1B8YP/o4j0C@matsya>
References: <20211130101015.164916-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130101015.164916-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201938_347556_23A2E2C4 
X-CRM114-Status: UNSURE (   7.36  )
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

On 30-11-21, 11:10, Horatiu Vultur wrote:
> Currently the driver is supporting only the interfaces QSGMII, SGMII,
> RGMII and GMII. This patch extend the supported interfaces with
> 1000BASE-X and 2500BASE-X.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
