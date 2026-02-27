Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70722FEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMSzmUoVDXTDXoY4HRiUiz0SkhsLb3kiS0ykUm8rQ9I=; b=BPrqycq9UP4H2C
	M6bGyfdxlLzthu5A9JsZQDXS1l4PtKhjMqq4bfwY0jq9NFvHARmv6/4xLIVhOYVQgvC89IPbjvYos
	e/kzVOkMoFI75amOa0O+AwRnDjhj4C3mgOSza9HXNGMvOATL8ckvUY2U5F6aZZvdmDhs8uemigsH4
	PpPRmsb5xzorHJl1hm7esH6T/Zu2zs5MBj+qcp1/MhhQev6HVKkWRs5wCYjY6B9wt158pbGSy+qkL
	8mkT9g/1/IZWiw/V43nX0FcPW2kG0uJOufve5YqcV4Gg9sFdBfQO03VkkVPlO7884rwLUsrDInqFo
	PoZhddBaSu/6B7/2I0oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmX-00000008d3B-0pUb;
	Fri, 27 Feb 2026 15:29:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmU-00000008d1U-2PwM;
	Fri, 27 Feb 2026 15:29:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A36A401FD;
	Fri, 27 Feb 2026 15:29:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D5F0C116C6;
	Fri, 27 Feb 2026 15:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206170;
	bh=O/q+TFseq2hzCJfcTUGyfDbN1lRfrdm/shZP4tSCQKY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NufdE3Hq78VHJsKfkOBnnvEn6PQyOYzTyvw/Sn3LImY1RlF0VKi0oE6gn/KR4lzw1
	 5c2ZfT7Ajfb4ENbYw7vqZ0tFgNtG7O/uhOU3V4rFrkLig2HQHl5jnZBRKZJN7KBKqq
	 bV7LxFr/7Hoqi4JNB5BNpshmLV5aIAk0kf54bsJpCFVilWL7RMSIhEeHbaxLndjsbk
	 K/KQY02ZeEX3r5aJnexEWmsytBwQBo6L3OzcqyV8M2k9O4Z28JiShmz8VfrbWD4xa3
	 /Mlo76GBgzk915ueSIQpFeZCHHRuj16Ba9CJMBq39yejEkw3IY7OMdzxLsxhQ27c2o
	 WDkhOowyhlCIQ==
From: Vinod Koul <vkoul@kernel.org>
To: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Janne Grunau <j@jannau.net>
Cc: asahi@lists.linux.dev, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dan Carpenter <dan.carpenter@linaro.org>, 
 Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
References: <20260215-phy-apple-resource-err-ptr-v2-1-e43c22453682@jannau.net>
Subject: Re: [PATCH phy-next v2] phy: apple: apple: Use local variable for
 ioremap return value
Message-Id: <177220616687.330302.14977409521915392205.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:26 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072930_640206_B2EF6801 
X-CRM114-Status: UNSURE (   6.17  )
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


On Sun, 15 Feb 2026 09:02:51 +0100, Janne Grunau wrote:
> The indirection through the resources array is unnecessarily complicated
> and resuling in using IS_ERR() and PTR_ERR() on a valid address. A local
> variable for the devm_ioremap_resource() return value is both easier to
> read and matches expectations when reading code.
> 
> 

Applied, thanks!

[1/1] phy: apple: apple: Use local variable for ioremap return value
      commit: 290a35756aaef85bbe0527eaf451f533a61b5f6c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
