Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 321D6D2444F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 23:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+hkcpFgfd4cBiNsQqY3fdhmUhAVb/Pcl/1JsD9IoDA=; b=AAlvQiIusn9qtc
	K73KH9NveLPT9/U04xubgb4dHIbKt0gL+TMGaC3IfaGiHhxdyPfVBz8ny5uY2jOxWSGVc7Lf92Qk+
	96f18NOhO0eUZF4KCEElZnehLtw8F35cxJtrEk4+bGv4aFAax7wdFmb+GJoorQyUdbIxwZMXGD/Dq
	0pJ6PWjLKlYlT6ZG5Z8ljP8k+aDMR3tjc9Aysz8EaK9Agy5l2TonAy2WU8/7LvdZhkMJlVb/ngSdG
	LyNDuvaNAvJJPt9AWf/qa1KLccBRHBaYxyx7RphcrpPxPUgIQTcMiBpRABCBNmYKxb1B+IzrQc4K6
	Vn2STbi7pWYcQY7aO6Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sz2A6-0000000EcFp-2QYU;
	Thu, 10 Oct 2024 23:01:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syzM9-0000000EDak-0dXc;
	Thu, 10 Oct 2024 20:01:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 15799A44C93;
	Thu, 10 Oct 2024 20:01:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD59AC4CEC5;
	Thu, 10 Oct 2024 20:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728590511;
	bh=dHcKPbdsy7bztUIL3nQ1holZJu15pDDcGKddst8ydn4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UNC1I7ptyGVcQ3iMOrP5ERKov1smya7HpiJEII4RIWdpt2wu7KsqFHgGH/t9An3qa
	 RZOgSbvk7Es5AqAIcKHdkTeKtkzsr8wbJpZf+4duPl7G8oiII15jtQLYkl7yiLSzRe
	 OPEdWoxPl9YGBcfo/6zCAsbHt+KYMVED+SO59Vvy/mmiqZRhd8WIRWEK/EOwmzyIqS
	 TT2YAWqdfJ/QTeoB4bXE++mq1K022rzezYV4+QFwR/o0jD2hPBddff+G5t2XLD+Dzx
	 7deBG6WcZ+sDxOHZLAg5YxrtQeTGT7AS5BgwnUyvXBS0uPifTBwT6UWeFEcqp1iI07
	 RdTit902ysrow==
Message-ID: <4f91147a-1284-4901-982e-29bcb1a5c41b@kernel.org>
Date: Thu, 10 Oct 2024 23:01:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: ti: gmii-sel: Enable USXGMII mode for J7200
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, thomas.richard@bootlin.com,
 krzysztof.kozlowski@linaro.org, florian.fainelli@broadcom.com,
 c-vankar@ti.com, afd@ti.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20241010144845.2555983-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20241010144845.2555983-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_130153_292842_4D6D0A6F 
X-CRM114-Status: UNSURE (   3.97  )
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



On 10/10/2024 17:48, Siddharth Vadapalli wrote:
> TI's J7200 SoC supports USXGMII mode with the CPSW5G instance's MAC Port1.
> Add USXGMII mode to the extra_modes member of J7200's SoC data.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
