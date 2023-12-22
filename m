Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4E47C46CD8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtKKs+P4I+YkAY1bnnPAYnPkwHUfCafWbiP6kn/nNLU=; b=yvDf68icTDMSRH
	hN2OTeovg4PeRNUoBnah4hDoUgAlkM68sLP5UGLGfXRsEdFUnb3oitm7+dP4QmJn4ulfsqSNsq2jY
	4xJuHK6N2h/vsSE3gRH2rth5FeIweGtuXGHw9BVF356yhlvclLCdYdviNO42ODZ8omIlwmSsSIPQX
	w6fP4vc8AyMPaFvqg/FmlebCgjglNHI+/wG7Qi26YoSFGF4P91OO9478aDByBtsN3ptReYYus4SNj
	70ZmidlHgo+u2DDyopFEoMj+H/LFPLzO3sEFDvhvCboWJ5xRU9UTVr8cRy4GDG3oTlGoG/P2btZwe
	GnPw0WOWutDq7MBCcXug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcUi-005Vni-29;
	Fri, 22 Dec 2023 10:11:04 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcUf-005Vkw-21
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:11:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id D9BFFB8220E;
	Fri, 22 Dec 2023 10:10:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAB3DC433C8;
	Fri, 22 Dec 2023 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239857;
	bh=PtfRni5YqYtTuUAHF7+Ii/Rg3HK/H67M5rIFDHSJDOY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JdDR7GqQHpTsZfYKBmXqJUNy0sIgvcldcipE2UH90vHdK9Iqn6NqbM9HGIz98WuLt
	 a2doMCQ39qAAcnMfGktgxkQtCL5OLxlrBndl4YGBDECddhpRNXbNcmy7XltpONNswH
	 sEyuDgegUOIlMtH946wPiwHj1SEOP4w31PZek2tyQ1a/Co+l4rOvLNF2/GsKhjOqIB
	 ZZ5xBIqIvWzvURMyFRLQQb+ban6Ap/5GTFoEoveLzUVhXbXN+whoexnuIBg/OtZImp
	 WCgvpfd6TI3c4qyVoLewETjWE9R9WhLpELU6uUTbv8gyXtiAJQ/AHRf/kOAif6DPUR
	 bHklAbFb6YK9g==
Message-ID: <52ac755c-46f0-4dc5-b179-b31b660eca1f@kernel.org>
Date: Fri, 22 Dec 2023 12:10:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-2-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221162051.2131202-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021101_808711_36BFF1EF 
X-CRM114-Status: UNSURE (   3.94  )
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



On 21/12/2023 18:20, Swapnil Jakhade wrote:
> Add a new optional input reference clock (pll1_refclk) for PLL1.
> Update bindings to support dual reference clock multilink configurations.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
