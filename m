Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A776BC433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tg7E8d8Wg+OCEnislbYu8qCNkPFWasBNU92+VqqGys=; b=wGCEcKnlPcz+DW
	RxK7OEhHmMWP37uOJb/8Lnez6q9k3Cmkph08aJFVm8m9qs5CYaBs1mDyu6snMktM4ioVyfVSmSDGZ
	YHKU/y28ohBUhsd1lNR0bIbuPhNeXlHQEM311YDgR1aaooQC3UnyPE0GtUU6aElXAfymj/4jiYAgC
	mvqM6V0wRrFgdtWQcER7nPUCY4mdvQr10Pn8pUcQ7ArbO5PxrCjCgI9CVMVg7NpnR0pd2Sw3yUQyp
	MbetRQbM4G/Ekz6UuSRqGMfh1unHj0sDVdctWGAPCsFQyFLczVi++idTs1Aiz0Cz8S2jMciVYC4wR
	Gz57YPMzgxwyPG3MBUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDsV-0062OZ-2r; Sat, 05 Nov 2022 07:46:07 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDsK-0062Mw-FF; Sat, 05 Nov 2022 07:45:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BF568B8101D;
	Sat,  5 Nov 2022 07:45:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95302C433D6;
	Sat,  5 Nov 2022 07:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667634351;
	bh=oR4nin9GL/nLMFNCIKIq01MhwItWEG8E93FtnI2llfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e/mNHZ+RpReyyDqxhUaRYAgyXHdz37fOA57eOSMjuAoNIVU/78Q/gJSbnWirNhPzk
	 nwINsKMyhyq5PGTaIj3pLqa5MXkdC1Q5C3FbzXKDgjAaT4I33HENPmf6gq2L21YMd4
	 HI6MKxv9eN84lFPb+CTGBT/sHtuvcvMmWuj0RNhEof6KwpPyc5EtImLES8HIcGAZtt
	 zEdo4RLupRlBOGnC4nyzjsL2XtN4UDkG9bBuCaTybVUj1oKrHilr1GztdrYCOJEAU0
	 tYqRSS/Y31LGF6w8JqQz9hKvIpcHgmvJnUbyADXuGQPEqscqy+H/JGkJoUog1HHSM3
	 gRkaxZaxQmXkA==
Date: Sat, 5 Nov 2022 13:15:47 +0530
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
Subject: Re: [PATCH v2 2/7] dt-bindings: phy: Add special clock for Allwinner
 H616 PHY
Message-ID: <Y2YUq1IWzjlkVOuz@matsya>
References: <20221031111358.3387297-1-andre.przywara@arm.com>
 <20221031111358.3387297-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031111358.3387297-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_004556_675725_1514F382 
X-CRM114-Status: GOOD (  12.04  )
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
> The USB PHY IP in the Allwinner H616 SoC requires a quirk that involves
> some resources from port 2's PHY and HCI IP. In particular the PMU clock
> for port 2 must be surely ungated before accessing the REG_HCI_PHY_CTL
> register of port 2. To allow each USB port to be controlled
> independently of port 2, we need a handle to that particular PMU clock
> in the *PHY* node, as the HCI and PHY part might be handled by separate
> drivers.
> 
> Add that clock to the requirements of the H616 PHY binding, so that a
> PHY driver can apply the quirk in isolation, without requiring help from
> port 2's HCI driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
