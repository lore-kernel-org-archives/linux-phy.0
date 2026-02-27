Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA704FEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dj99+cgYAbZMVOeZtOwBzgjOMtyJ7GbB2agtCGzS0ws=; b=XhCM8vNeQ/sDA+
	N+8gpkAK8OYSvUZvn7L7449GHRxmmvjikHGq09cxnZ1g/GS+IMlJFU+MEA18B7dafXOc0IBoZhBg3
	zq1TdDKZaAnfG5zIbkGGFq3qSvdgY/4Hq6Gz9RuWYicVKyfIeWDB4eiJG/LMXn+eq0BqxB8GjYzDg
	hKG28ptkLvVVaAsBq61DEzvksJFl5EoYhaVz/ChipTj01A204FCpjwBSeOHv5N9zy9i3GK35g5MxY
	/uX3UTQhcycmWLsU0k39wsXnnHlCV2I1EwNtiAEU3oTaXymcRMQhW5Gao0O+VqRZj5gbEnJGuVYIi
	LP9zSNdE8lYiS2bUcoCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmW-00000008d2Z-2rWN;
	Fri, 27 Feb 2026 15:29:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmR-00000008d0H-25mk;
	Fri, 27 Feb 2026 15:29:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED1DE60008;
	Fri, 27 Feb 2026 15:29:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF8CFC116C6;
	Fri, 27 Feb 2026 15:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206166;
	bh=v2SnPgmE4aBKZuGEkA9sLyr5Vjf+EYiBiHRo6uwPals=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=O/qYyFKtkB/8FN6zkZaveH5pQniLFNln7sGd8BosO/+P6uhwFcv/rME9M+/VemePk
	 ZpBg6z4rTfI3g8nLqC/F7F10b/5Lu+BdgSxr4fsV7UZNUG178gXM/26BgELXsGAmne
	 7koxxxBNBNZ83UKtTmxEJsr+Win625jVj/dxeT12ml7W8/teMdfmXEuGLD5k+d40ur
	 ycDp4l7A49SqVOEbqd6wXcySAOPCF9KGCubVe1zIqj7dq9u543g564VP23sCuWVcdY
	 wMIPLRPD1Cb91z8TNwVfdSHfu4i4yVEpX+1t1TTMHhbUlE3k3foRSYzcVkoPwABluZ
	 bVcQy9LjSSBBg==
From: Vinod Koul <vkoul@kernel.org>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] phy: apple: atc: Make atcphy_dwc3_reset_ops
 variable static
Message-Id: <177220616334.330302.2835774532682598962.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 16 Feb 2026 12:04:14 +0100, Krzysztof Kozlowski wrote:
> File-scope 'atcphy_dwc3_reset_ops' is not used outside of this unit, so
> make it static to silence sparse warning:
> 
>   atc.c:2026:32: warning: symbol 'atcphy_dwc3_reset_ops' was not declared. Should it be static?
> 
> 

Applied, thanks!

[1/3] phy: apple: atc: Make atcphy_dwc3_reset_ops variable static
      commit: b3fddddf3fb49c7472e73680d6ea5d771f9514e8
[2/3] phy: marvell: mmp3-hsic: Avoid re-casting __iomem
      commit: c77eee5b44b8d32d471cf17fa193b395e321ef37
[3/3] phy: qcom: qmp-usbc: Simplify check for non-NULL pointer
      commit: b6b7d1ae0653dcaa356be31c0de221311e922ccd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
