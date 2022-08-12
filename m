Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C77AC25B0F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 22:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U0sY7f09ZX5JZxioTkGf1OEZ8TRQGI30i9wpT/OlZlE=; b=V3j7b0iFOZNdXu8z6WlA0QtLbY
	Y5CTo+iRJl78yzBRVnZrXQYXf2rfzFJTvafnHuNYJhBbGXDEEvVD/M2/qQPoQyOxMH4Bk1MHkqy+m
	aNQ3qxDubs1cMez/9iYNO8yU99DWfSKjuNx/Vtuh0KAwfsgduXlaN4VvVqyqRG3aQuW9wIVg1iX7z
	FPTDcHwdL6U2nt/tbkUJimtcXPrXPxOVbzjwrfanNb/ZHd4V4M+88XUc4jwmkT4f3rdiGOTmkGDR6
	hI/KgkwqQhApvmdkw5ysAVfqWH9f80RTayOmEMDV8gjXuIV2SQyV9gY4nduEOFFqXNBv36ymS3eRx
	gqvq5KYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMd8X-00GJq9-GH; Fri, 12 Aug 2022 22:28:13 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMczr-00FF0s-2s; Fri, 12 Aug 2022 22:19:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 13666320090B;
	Fri, 12 Aug 2022 18:19:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Fri, 12 Aug 2022 18:19:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1660342751; x=
	1660429151; bh=NVr5DzIN9NKJQUZlYZVN75R1jb8BrZu1TnV/2szNqjE=; b=m
	I5vUYZij+qXU/ROI+66uPkBL619Mef1RJBFZ+3rmE4kOSiCWpAi00+Q6sZh9VHvW
	qou+IMBWADBUCAKpyWsMEP7l2I1bD3ZusX7EzqZW1ynrre7TCK9LK+Nt1g97hv2B
	RjtvFUEj33b4MN5F/PJpHbFtNQc2x5/rK+B0VlhYVJfRK/OVArMRzrs9lMF4ZWBz
	krH23CWJkFVxh7fzNa75Y8EvnXMYbC52XoH6oRpZf4JRU6QXexBAmBxWH1/jLfi7
	ROdEARNOtsYwm8vCIkFqxw6kk6A51nIG9/o+JOBEAxy5Vg6SkMB4RGkpZUro2W2m
	/6ovzConFN92Jx94AHcQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1660342751; x=
	1660429151; bh=NVr5DzIN9NKJQUZlYZVN75R1jb8BrZu1TnV/2szNqjE=; b=3
	w2I2KtneyJRrNU/zU6nBp2HhOXWu2ohfygEjjVkPQ13+u7lCFfZSjbs015YnDvMd
	CUbjdaDO+KA4sc1Q1pgzBpLrGX4BNT5CJGymH6FrrcSHdtWD+qWDeq/2N1sEFIOZ
	n3aZ8c4D3bC48TpgJQMExeNpZsf1/Fb/B8t0eGaGZOJo1kVhasXKYCqIAaL1favL
	Ilej5dQPIAHs5L4mzv5Icf+beYBok/3urMO0N2pIOnYBcHD5xNGl+5kpaTQyZJ9I
	ngKLUscSiXnSe8jva6HP4cVGx818dfZGGHHbhEN6l9nsE2rEfbxHzd+PkSZMaF33
	rlyTHMgmILospVnGZXfyQ==
X-ME-Sender: <xms:3tH2Yncjry_pDlR5oP1yGLk1Ps59m1m5YugvR3AGnHaK8iNEr2BJeg>
    <xme:3tH2YtMfGdOOLYv3P0nF_UkMQXZMafbD86E65beOWJYwtUKWsjmi089YXMPNNDrHQ
    J4aG0Wbyhprsq90NQ>
X-ME-Received: <xmr:3tH2Ygh3Lrzmpqax50VdLw-8ZNdfayoD5O8KIacFCmNyN0MerbMBzqUcj6kx6h5HFZFQXPYY3BcAIm2lfVfV8ll4z1dAB88-eGg-cuQoYcgPPYYZlLBPkLD6NQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegjedgtdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvvehfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpefftdevkedvgeekueeutefgteffieelvedukeeuhfehledvhfei
    tdehudfhudehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:3tH2Yo9K_c6QrdiWmmZVkCK52HZaXRFSfHMIFcP5kemqa43LN69x3g>
    <xmx:3tH2Yjv97Kxp0a_cp9bEDaQjLT208DtQ2wvXTuBJ_lRKDr4up83Bvg>
    <xmx:3tH2YnFwtan-9303L_NzLLViZLKHOlFngP9HgzbI4rSCJ4aVYXPThw>
    <xmx:39H2YjFT5MFvRIsHyQBkGpvfvyygQeSFHRwAbrLugi7MP2STqKGiYA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 18:19:10 -0400 (EDT)
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts
 property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
 <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
Date: Fri, 12 Aug 2022 17:19:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_151924_133828_99450A9D 
X-CRM114-Status: GOOD (  14.20  )
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

On 8/12/22 5:45 AM, Krzysztof Kozlowski wrote:
> On 12/08/2022 10:55, Samuel Holland wrote:
>> The sun6i DPHY can generate several interrupts, mostly for reporting
>> error conditions, but also for detecting BTA and UPLS sequences.
>> Document this capability in order to accurately describe the hardware.
>>
>> The DPHY has no interrupt number provided in the vendor documentation
>> because its interrupt line is shared with the DSI controller.
>>
>> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")
> 
> I don't understand what is being fixed in that commit. That commit did
> not have interrupts in D-PHY, so what was broken by it?
> 
> The Fixes tag annotates the commit which introduced a bug.

The binding had a bug because it did not accurately describe the hardware. If
you don't think this warrants a Fixes tag, I can remove it. Or are you
suggesting that the Fixes tag should instead reference the commit adding the
original .txt binding?

Regards,
Samuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
