Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E00C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 09:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6O/Rj3jNpNu5RVs1t6Fb5+Qu7x+QeUHjzVAmHryjLo=; b=ZUJnn9ZNhhy3nr
	QUs4GQPvnFJrSjPzcpTj6mWsnIGHReWr24jTcWd9p1CmUUcmKBux4eQMydw4eEfVOTGf3GzzCqgvY
	7ciwEiwXbANtPHRtX0NsX26m4I6FqwAw6LrVvqN1uyN4abhXNArX4VOSPlu+TN4XSrHPCDC+UyLxV
	N49e7Xbl1iHY93hebdW/TuJraT9luqZCTxfcauieIxom4989eV4gI20VsaiMx9TYef19TU/jKxuuE
	37yhGrtyFjO9k/DSqEfPHmymDP8th2evEWUcWtc4ywqKhj3AHqdvYFQPSl+GLda2On5W8LIdhq8Bc
	9JOQxK4Z8pyRGR5Fb/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6NO-008FLV-Vj; Wed, 20 Apr 2022 09:11:54 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6MF-008EpU-84; Wed, 20 Apr 2022 09:10:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 82E07B81DBA;
 Wed, 20 Apr 2022 09:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E3B8C385A1;
 Wed, 20 Apr 2022 09:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650445840;
 bh=9MV5jDT7yaxD0Y/INx8ZEMUimUtMRYELWJFX5EOCeVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9sd9Eic1kwq3VkW1SHvpdM2kSxxtlfhAPnpHtfgL/V58AcSPr3xgikyF+pm3Hea7
 rNCd6SRT1UfIYBRWvio6p6STbH9/QkxBroqTzk4Jyt2Gi7WE/tCg5+itkXmjh7n0yw
 9L6ksgAvuwj8lzBc+OHzFQhhcXV3BDIVDPX9RQazYZzgl+a4ljhT9VbMiaDvRrkmqb
 iR/3YwsMxQFf80hwdIUquLUBDLqc9lnomCa3zUYIDziiwpFyyo+NxUsfMvzwznmxzY
 lT6QvHB5/JBIeFU9aQfytI11Hc7rUCIILHY97EfKhUGX8kLZwNaKzvQiPaW3TcyKLU
 r6pCYb/0FFV3A==
Date: Wed, 20 Apr 2022 14:40:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Message-ID: <Yl/OC4p93E2HiG3m@matsya>
References: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
 <20220415152138.635525-2-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220415152138.635525-2-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021043_492653_C6E3E2C6 
X-CRM114-Status: GOOD (  12.27  )
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

On 15-04-22, 17:21, Paul Kocialkowski wrote:
> The Allwinner A31 MIPI D-PHY block supports both tx and rx directions,
> although each instance of the block is meant to be used in one
> direction only. There will typically be one instance for MIPI DSI and
> one for MIPI CSI-2 (it seems unlikely to ever see a shared instance).
> 
> Describe the direction with a new allwinner,direction property.
> For backwards compatibility, the property is optional and tx mode
> should be assumed by default.

Applied to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
