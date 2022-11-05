Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E97C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VilWwiUpAD317YNm/CvPAGrYzJCfcPBnBBEVhD1La3s=; b=o8tsSRCdmHq042
	bl0QpTwP9n4rhswDD2E3uyUWeqYRCB6icmQzvS8E4UbOCNTJWJJLG4e9j/aujtATWz6vA6fwqUfXt
	74y8ObEZ0+GAr2+O7qqlCQn6GO8835KkpgXyyHwfnmWofICwwM8FT9p6w147HSlS+iOg+x1JGbvek
	B5VJLrhG6T3hr61594ouYVVkChVTAPDnmJ+R8c+GAqni7oYpjjPcreuGro6xUn/Lf3qxuVh9vI5f5
	r4scHFQIeFs3TFZDNTGiiyywiuUkFyHLuyHqLbgJ/USUrmWj44eJ9HqTEWcXUOnIVAO0oCNsnbtD9
	8bsR29YSi6XC1awZ3a5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDse-0062Q5-RE; Sat, 05 Nov 2022 07:46:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDsU-0062O9-LC; Sat, 05 Nov 2022 07:46:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 35E67B80E8E;
	Sat,  5 Nov 2022 07:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638E5C433C1;
	Sat,  5 Nov 2022 07:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667634363;
	bh=ZMfmPuWolJn8ktVOTHMoYyWkBeMkqiNVrOl5KM0JWvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SneXIkaebf8BXOSLqFYRmCDoknqfoJREJxf+eTq2xaA8uaL95vcMaZBGHF30FJQz6
	 SXMat3Rj1CPsNwlRMCYsb6CaYxnLmf48BdYmcJOIM8Rn59PC4zlNVFT5Et3qQojgSg
	 EacO5/+e1dZNV3SnnVi9K+mc1fSvbocYu0FY/TEaqO5Iu78kf2Tdtj6vl9btoJVkUQ
	 FNHiRMSwcWTwwfQVhZi3l6ndL33xOplmAM9TO0IpYp/a1Kl8OB8GK0C+BtTlBht800
	 +6MeGSPt/oKlTLUUG2Kz/MmT9iNRinuwfiAqkg4X/tPdczhPjxmWyT2s5+hJxtBMsq
	 TISVDqFpvQaZg==
Date: Sat, 5 Nov 2022 13:16:00 +0530
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
Subject: Re: [PATCH v2 3/7] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Message-ID: <Y2YUuMljH0/3Ggm3@matsya>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
 <20221031111358.3387297-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031111358.3387297-4-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_004606_854563_ADCB59CC 
X-CRM114-Status: GOOD (  12.15  )
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
> At least the Allwinner H616 SoC requires a weird quirk to make most
> USB PHYs work: Only port2 works out of the box, but all other ports
> need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> the PMU PHY control register needs to be cleared. For this register to
> be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> 
> Instead of disguising this as some generic feature, treat it more like
> a quirk (what it really is):
> If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> this one special clock, and clear the SIDDQ bit. We also pick the clock
> and reset from PHY2 and enable them as well.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
