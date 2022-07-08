Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B17C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 05:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25J6eKu6ju/633PRzcpNRHpppSOdgGdAeUT/H1Gq5+w=; b=RwA9HhOemBTfEl
	C1Xc+ePwKKHu4PdyVSAPxORoFNF3KMzn5ujPGGwwQniz24TqFECoLP9Elp4QFRk9SapUqQawMtCem
	uoSfNjGBK9g+RqmVtu3RxeU6ver09Mefxs14c0Jm8P/rKvy8xneCpg53e8aHu085vB/RgUiAM/2Yi
	bUoP7euaHrObWS2GbZ9FzH0u/9OtWS9QuEcaW78aQBor6Bzv8LWceK6DZG7PSd0PX1zABbsYHKQgh
	Lx9i34ZD5gFgVhI2odKc568OlFzXd19tYn21sh5mWPd3G4cpZ8G5n0+4L7JRuXGT0o1J1sBrf2uzu
	MWr+0EYPvHpADI04aHUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gJI-001nXl-Fi; Fri, 08 Jul 2022 05:13:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gJ8-001nVX-4E; Fri, 08 Jul 2022 05:13:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5351462454;
	Fri,  8 Jul 2022 05:13:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0490FC341C0;
	Fri,  8 Jul 2022 05:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657257216;
	bh=TVxw4f3c6BxDVpwVJ2VA4stLowfR6hRCJ/QSqBXWbfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gI8kZorh+G7XF1ljBnBwvt3aav+Bxm7g1qZ3ZH0crR+KJWra0Rno4bkXdOXSgQYzA
	 SMz0J5cB/rEWg3rUBSxE8clZfHD/teBjVJZOTv44vkZayMH5lXCKUfdOO2jFqxBKMW
	 rXD9WK0emqkQrhdFQ6TfbZHx7SdYXWQBlR0Uqki0sP7tl22VG/UygvyEc/uR9ex4gu
	 u3KvKm8FA1bONqs45NUIlH3/p/c4m1tdQN36FBPCI6njFl+B2yLg0eyheicuLvTuUY
	 fSUPTsHjzyl5Z3ZQeKfRV1mxpNbA26Me6dijkMUl7sZ2gVLhOR6s1aKlh1IcgJe67J
	 p7oy1ZtunEetg==
Date: Fri, 8 Jul 2022 10:43:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kishon@ti.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH v4 0/3] phy: freescale: Add i.MX8qm Mixel LVDS PHY support
Message-ID: <Yse8/MjjmShPpltv@matsya>
References: <20220706034810.2352641-1-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220706034810.2352641-1-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_221338_246967_F4765783 
X-CRM114-Status: GOOD (  11.95  )
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

On 06-07-22, 11:48, Liu Ying wrote:
> Hi,
> 
> This series aims to add Freescale i.MX8qm LVDS PHY driver and dt-binding
> support.
> 
> The PHY IP is from Mixel, Inc.
> The PHY IP supports two LVDS PHYs, thus two LVDS channels.
> 
> Each LVDS PHY may work by itself to support a LVDS display device.
> 
> When two LVDS PHYs are enabled simultaneously, PHY configurations and reference
> clock rate have to be the same since there is only one set of PHY registers.
> In this case, the two LVDS PHYs are usually used to support a dual LVDS link
> display device, one as master PHY and the other as slave PHY.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
