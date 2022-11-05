Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 582D6C4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yM4BTsxIkX0xjRlPfzhhFdsHfAX3EHFdHW/QPFj/auo=; b=SKKl/zHliNX2t4
	B8i5fPOzsLO5Az/Yo14GpK49rX5St2F9Q80dQR5lrK5QOWFp8XnKRtugUoFP6wxq/yYHP5200tuW4
	su0VAK8OorvJJjgxDtv8NO67nIwJQs+GCGv9R5kMwwN34xrltRNrIxxcY7PUVCy/HdNXsum6VBceN
	hC+NALmg0lGcMEcOacmdl1U3oxZToXxe+eJwHAvgR7kUP5DYUKSsz+dKV4kKFKsO7XIRDbH1BQsE4
	9f/XNVvDYCbWsCfMS3vtb9cH9wGnBO/Czt43rGXL5k5QuX51LbRDdGIb80kA5uFHnjjENUW1Hs/SY
	r2rbEzdAkYof9aB9GEGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDsq-0062SG-Pi; Sat, 05 Nov 2022 07:46:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDsg-0062QO-7w; Sat, 05 Nov 2022 07:46:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9F77960AB4;
	Sat,  5 Nov 2022 07:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32FC6C433C1;
	Sat,  5 Nov 2022 07:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667634376;
	bh=wgFcLvc3zqe3w819SqLtTNrlQTT04YKIOY22045Euso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uP9Ca6Mw3C8panymsWSY/f/60Ejzi/O5W0D7lwxIrSGD5hCODpG9sZ0D+WyBZY9f6
	 a1lBvoLFY9ezPA5GvinGrJduF4+JGbt5P2DP+I6ac0QGOX6Kx87lMdYwa90MCdpecv
	 WEHNjySWbW/vJjvBHv83v0tOdrXMvgz7d5MlF3Rq+0XZoE3H9fOBLoCOrlmZIuLgjA
	 PEKR+mvwVGooV+mByLo2MBpj/hi3Vaphxt3WhRPqhm00aACXDv0tqCwWZ5V6J9j9cg
	 pqx/5TD4rqX5OKAg6OMO1h0jH/e2gCni4dL/4ymqJFHBTYWQGpXJ+7/9hQtzZLToye
	 XbTnxsxxU8mTw==
Date: Sat, 5 Nov 2022 13:16:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 4/7] phy: sun4i-usb: Add support for the H616 USB PHY
Message-ID: <Y2YUxIYa2QAGxX3K@matsya>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
 <20221031111358.3387297-5-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031111358.3387297-5-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_004618_334969_E6125193 
X-CRM114-Status: GOOD (  11.46  )
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

On 31-10-22, 11:13, Andre Przywara wrote:
> The USB PHY used in the Allwinner H616 SoC inherits some traits from its
> various predecessors: it has four full PHYs like the H3, needs some
> extra bits to be set like the H6, and puts SIDDQ on a different bit like
> the A100. Plus it needs this weird PHY2 quirk.
> 
> Name all those properties in a new config struct and assign a new
> compatible name to it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
