Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EE06C47DB3
	for <linux-phy@archiver.kernel.org>; Fri,  2 Feb 2024 11:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/YrWA22k5idcwMkxjsrWylJ3epyiX1rom4Q2tRFAsg=; b=fj9avwLUR4wV+C
	hsDt7Xs7ofCMEBNS2M2WdD+RJNsm4DhDDCgofxajlo1QtyTd1xKTsaRHzUHkQZHvMPGsSQzZTOnLF
	UhWJcUiM1LYPkB1v8BphSMbnqqXCIVA4z4beqXrwREugUScFhSoExlm1n3W89zXM/i8UVScIBd2Hy
	4i9V9dBiWcKvfFarKih8XYXVTVeDAByNBK+GiRobtgOEL+G9e83Qw0PbyY0h6MDUI1RM2eqczTOmO
	aDVa+rsnUZu7cng3Yep+Ks5zuQ5Grs7MC7+mfrfG8YQPsYioqlSK/AxRb96t24OXypgb5bzo5FhQn
	vGiuFvmjEe9Y3ckdF1xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrry-0000000BJoS-0vLh;
	Fri, 02 Feb 2024 11:38:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrrv-0000000BJo4-2DvM
	for linux-phy@lists.infradead.org;
	Fri, 02 Feb 2024 11:38:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DDD2E62440;
	Fri,  2 Feb 2024 11:38:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC355C433F1;
	Fri,  2 Feb 2024 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706873882;
	bh=p5lXBrTHJqQYc6rYWZj48xlKqjP4sLrBohNcmDgpqvg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WhSeQjr3l/GbnCW9pTnVmhXQjQfBKb9n+fzZSjXV3RJXg0fFVMZAr9bR06bZ0bFAa
	 5G1tAArTjA0PcO3TQAKYElQCTLEQ8Jdy/DfcVfEqa/curg80oW/vpxvft7UjDExF/I
	 +MoyMvv3iAI6kh5o6ebkn8RQzA15nXJtLqr1jx9tiGyXo/M5SSjoCEqCZykmhUtV84
	 BaCbM9pfOIEzJVycbI3OMBAuyecMuewd3Zn+MajENWJ1ijydu0wTZzp55G304skt8T
	 KKWTofvYQ8Asnfq6lLZQ+nLCQrWBklX2Eg3U7SsB+EZiLsnfxsTVKBT4OWUV0pHT3s
	 N9LkvVBv9cstg==
Message-ID: <fb8ea6c6-609a-4a0d-ae7b-06b8500bd978@kernel.org>
Date: Fri, 2 Feb 2024 13:37:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] phy: cadence-torrent: Add PCIe(100MHz) +
 USXGMII(156.25MHz) multilink configuration
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20240104133013.2911035-1-sjakhade@cadence.com>
 <20240104133013.2911035-3-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20240104133013.2911035-3-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_033803_642666_085227CC 
X-CRM114-Status: UNSURE (   5.00  )
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



On 04/01/2024 15:30, Swapnil Jakhade wrote:
> Torrent PHY can have separate input reference clocks for PLL0 and PLL1.
> Add support for dual reference clock multilink configurations.
> 
> Add register sequences for PCIe(100MHz) + USXGMII(156.25MHz) multilink
> configuration. PCIe uses PLL0 and USXGMII uses PLL1.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
