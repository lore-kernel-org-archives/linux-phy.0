Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6D20C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR/zJiqxANMTeaibAW71RCZak4ecdvT5uq5n+GyfD9g=; b=pCdnoEu4909VUR
	uDlnqg6tlNPj6e3peg1EDEmGM4iCa1zb6NT1SbvJE7FTnNGUy2/GfYGNi6yrVJSGDOUlFi9cLd2Aq
	2MGnP9gDpLuVUdsfi2VOZ4jOQyZ1L6AmHOJqJo644SHhJ7Tm1gAGee/1L2HvAJtZss+Ry5NOhd7gh
	93+dxOVV19mnLXAtmQ5Mn4gILmeEFrs6/MjJ/Wud22G52kog/nTuv4WVlpKok0tXn/MqyKuWynV14
	zPEVfKf0MkL63a+TwTY+Dtt0cWcYnVYcKuL+LycwZuvLNZzhfoMyir5rzcIWNgN7hQxKTKk3OMgsi
	+RLnZBW8uKQCeC4MLX3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1Y3-00G3fQ-WB; Thu, 12 Jan 2023 17:39:32 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1Xr-00G3cP-Fu; Thu, 12 Jan 2023 17:39:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 40688B81F05;
	Thu, 12 Jan 2023 17:39:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DA4EC433EF;
	Thu, 12 Jan 2023 17:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673545155;
	bh=LZYuTZSSPTCVVSKRkpW2/c8JVDxXZJdj7wXB1kN2alo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qzG3CxDpSr5Z2+G60lQ4y1EPmDe/i8bUrbPgDF2CubZojWl6tOKzOCqyE8PMyfxTV
	 Gj+LD4i3/HlfazJY9b7m9t54EHF+s9Wx8aKt5cirNzybguPK1/2olsNeH3AGesxnvm
	 MYJWtHvMJvgt1lArN+T0GQgmaxN5Ctht1Y92asA6cob3Q/muouNaA2TaVp02/ivfrY
	 0NWlNr+BmoJT7BZOosGkD1c3icSjvjSVqiFQJAaOdJx0/gqOdQkk7csh5DwF+PCagm
	 FxpMhzcx2R456hMFw058Q50StS47E3xxIlV7pW/T9AiJnzbBLQKFGikX18KZl2TgJW
	 x92APt4JTL+fg==
Date: Thu, 12 Jan 2023 23:09:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Icenowy Zheng <uwu@icenowy.me>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v5 0/3] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <Y8BFwPZ0DRGImo5O@matsya>
References: <20230109012223.4079299-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109012223.4079299-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_093919_697684_EE6209F4 
X-CRM114-Status: GOOD (  16.57  )
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

On 09-01-23, 01:22, Andre Przywara wrote:
> Hi,
> 
> this is a rebased version of v4[1], with no actual changes. I haven't
> received any feedback on the last version, but technically this looks
> mostly approved to me anyway, we just need to get around to merge it
> now, I guess?
> 
> This is a spin-off of v3 of the suniv F1C100s USB support series[2], just
> carrying the USB PHY bits. It's now based on top of v6.2-rc2.
> The actual binding and driver changes in the first two patches are
> straightforward. Since it came up in reviews, I reworked the quirk
> handling in the phy-sun4i-usb.c driver, to become more maintainable and
> readable, in patch 3/3. For a changelog, see below.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
