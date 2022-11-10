Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A48D8C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N76vOyH31IOqrw+y+aLsDsMFEFR/TPvEzr0T1bm5aBo=; b=krwZSEUuvQ3tMF
	PQxDdOa/rzVLbhaCzH3ce9U1t33ew8Q1qCUdeV6ft/fk1Fze+xwf/j/875CTk1X7cz2rlRo1csdiY
	xQqJ9PGp0mfN47IH3h2vvukAM08OM4YEFUk0QKIkHZvL8Pt8ydAU/+9ishCo84/+XsIKbXrJzDK6g
	fauRs6nDvq0+lr2fsyclp9HbzBL0eHsVJ2kgRnh/iyoqqLQofhMz+xa9kX2CY27Lco1AXXN92m1CA
	WDrmbHPo8WBrtDBRbtmL22zwfDajtnE4QrOeS0gNET0CGKnPuMZP0LwFKswQsiZmmkZC2TUXBBh9j
	0qWe56MbNgQPCF1Kev+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot26P-003qre-3P; Thu, 10 Nov 2022 07:35:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot26E-003qpV-8s; Thu, 10 Nov 2022 07:35:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A79BDB81F30;
	Thu, 10 Nov 2022 07:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 595EAC433C1;
	Thu, 10 Nov 2022 07:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668065743;
	bh=TaM1TxLO3us2TGPm08YT2OLxKkm7+1jQOLmHX+nTxUs=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=FhuMbQ73heOT2dapg/pppR1HmLpIQJVtocv4fdf8y5qcOBLmyQ6M96SahddpTJQXD
	 4HoHfKCdOwiRJwWJ0mwmEzHiYA1kRAzrHGIldZNGhfwxtd+AqTSv6XCV7ipYosiNWM
	 t8Tlyt7afMq2oww/GYt1NvoS6mvZv6iEAeqkLCGTxLX4jX/IPPKQu7GDpPBGSsw24W
	 HxrAhF//fyG2YvLIJwfSYC5WBgEaYaiBQEnPsQz0MX1sPynScUHY+TPyhlzR/q7DXo
	 lzT/cUP02ZpkKOm6KaGAdQIx5noxUtGStIHCaNn4nfgDbYCO9GnBU6lxzYe6vsrbPh
	 KZeMAiedIVp4w==
Date: Thu, 10 Nov 2022 13:05:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <Y2ypy0CM8rJGu2g4@matsya>
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221106154826.6687-4-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_233546_472935_00C93F22 
X-CRM114-Status: GOOD (  11.81  )
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

On 06-11-22, 15:48, Andre Przywara wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
> 
> The F1C100s SoC has one USB OTG port connected to a MUSB controller.
> 
> Add support for its USB PHY.

This does not apply for me, please rebase and resend

Also, consider splitting phy patches from this. I dont think there is
any dependency

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
