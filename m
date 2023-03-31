Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 198D4C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a20O2majgWhipuvPnLT5cyW8zQmd95/EXvQdrSU2qQc=; b=Q4KSYXpwiJQ4iy
	loMmHAu/WxEa2oFy5M/WiU28AjBxqJvp+sEuZP1MLrzv+P1jYdQH/KU1303XzR9OD9ybyG7kxSjvf
	zmVnhJ3zEFulFX+ocZHfIFyCJmlJEqzwPgNHmYxFraxysJr0TgAbxXvTBdghUn/89NpFmevHNG7S8
	Nq2LwH0+BKiabzl9+s4hLbH92oh+8RL0HVJIj3NYaWUfSDQ5KVEFjMey7D/Ufpyh0RZAXkwHNvkzo
	dB9e4sR+3X3kDSsIy6biu2hY2CBKlqHzTggaNM8lazTLMuJ5QkBbKw0ukS3f+2y+N9ckI/msARPZn
	SBqWw6DxhRF2RhNcT66Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piEtS-007Xll-2G;
	Fri, 31 Mar 2023 13:34:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piEtI-007Xiy-1C;
	Fri, 31 Mar 2023 13:34:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8BB7AB82FB8;
	Fri, 31 Mar 2023 13:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8617DC433EF;
	Fri, 31 Mar 2023 13:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680269641;
	bh=8m/coCpDPCAG/paZ3Qk5TU9S4lgF4qCpfZNEk7ocRSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OkfZA0FgreHLqxUgORZpElngsigIPIi5OMc474njbPTnUkFlJntOBJHxuG+U9Bm66
	 GM5r6uiE1cSBlOnxbLScq4aCFFkiMrYjFMsQbm8i1eZhHzRSZiya/kTyHXtVb+mxf4
	 LoiQgK3B9CYRrhz9k1Be5TjkGpLy6XlGzLFbG6nr4N2aN6IuwS6LHWwGV8FYFr3pKM
	 vhsG/LCVw4Dzbu5D7r18t2mrWwk4o29x37YQWZwqQvnUCQ7rrVFehQlWD0rIZGOqBm
	 +HmOy6ft1vpqF/cxNt8oDUK3IQ6ajW9dfVYikkx4n867yPqkJBdv0sbDFz+PrAGGQZ
	 pZxleRYZ28VCw==
Date: Fri, 31 Mar 2023 19:03:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, rogerq@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH 0/2] PHY-GMII-SEL: Add support for J784S4 SoC
Message-ID: <ZCbhRQ2B8+RrSh5z@matsya>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331062521.529005-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_063404_595801_63975831 
X-CRM114-Status: GOOD (  16.47  )
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

On 31-03-23, 11:55, Siddharth Vadapalli wrote:
> Hello,
> 
> This series TI's J784S4 SoC. A new compatible is added for the J784S4 SoC,
> with QSGMII mode enabled. Also, the CPSW9G instance of J784S4 SoC supports
> USXGMII mode. Thus, add support to configure USXGMII mode.

Sorry this fails to apply for me, pls rebase and send

> 
> Note:
> This series is based on top of the following series:
> https://lore.kernel.org/r/20230309063514.398705-1-s-vadapalli@ti.com/
> 
> The patch corresponding to the device-tree bindings for the compatible
> "ti,j784s4-cpsw9g-phy-gmii-sel" is posted at:
> https://lore.kernel.org/r/20230315092408.1722114-1-s-vadapalli@ti.com
> Since the above patch has received an Acked-by from Krzysztof Kozlowski,
> I am posting this series using the compatible.
> 
> Regards,
> Siddharth.
> 
> Siddharth Vadapalli (2):
>   phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J784S4
>   phy: ti: gmii-sel: Enable USXGMII mode for J784S4
> 
>  drivers/phy/ti/phy-gmii-sel.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
