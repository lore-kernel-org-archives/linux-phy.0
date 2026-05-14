Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6670CD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhNkgNGvdAeUl3ujIR8FWcCfiendCnBBhMFbQRI+JgQ=; b=GyRjNQrxlln5iA
	v5ZQuSi7zW8CRHF6xYgbOkMKRAROGznQ+eee2KH+tsiUe3/JpnjfU3xrVzy1e437GpHdzelDQ8yXt
	9jPjkL8TP5wT6N5jTFBMlfAPXRy1FgylDEpeHP7ch6f3leRFqT4GOLb32q529V5DA1ynWrEuKIbtW
	tzb0Dzpe5FnwDWhFoFioyTjFcbMBA3q9IOPZFl9jdEPjxdX9E0qfFiDxt+dxmPIv1RxkqFuhGndsw
	qX+OjUdPbvB1XycZ9pQZVmA2OclYqoUnezcgxGKiRTGWGap+eYLF+UEtwKVZkF+hVkR5rqqq152Ml
	HY6KrDyfEsvxe1LJM/ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYl3-000000061W8-2kuH;
	Thu, 14 May 2026 16:17:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYl1-000000061VN-3f7p
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 16:17:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 565A460138;
	Thu, 14 May 2026 16:17:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FF02C2BCB7;
	Thu, 14 May 2026 16:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775475;
	bh=BYqQQ29yfh1mseNE/GSkBWUVdDHRIVpP+Q4sT3Vda9U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eEs2oPpizkwcFs6WNmiNuMMDcwxIpzLbjsv0kBkJnrsm4bKwS3mwklHwyg11Y7v8C
	 sTDn8yT0FLvv+dH4qJ0US4qPWwtYoGOnX/qGaCF7e8/Sadd6rS529AKGt4a7rMriWg
	 UldR6XUe6q2qF7kHF0JCpBZuMpiy0FVpOn2fr43+6PMSp02AVy0DRqSWbs6YGwp61E
	 J6/0Qvy7IZNCFSirTGNhH6+A7kddPXIO8V6N3WBwPY3cW/+fP65TsGX0dxy1dg/RzG
	 uQVPaS723FrXQX2G2FMcjp3s4/F3HnYOw5bXo5NYovZAUHPHJ05mf11lEOvapCc9yw
	 Rg9tjifKR26RA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org
In-Reply-To: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
References: <20260511150023.1903577-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH phy-next 0/5] Lynx 28G SerDes: 25GbE support
Message-Id: <177877547268.1092446.15204675916496337123.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:47:52 +0530
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


On Mon, 11 May 2026 18:00:18 +0300, Vladimir Oltean wrote:
> This is the remainder of "Lynx 28G improvements part 2", previously
> submitted here:
> https://lore.kernel.org/linux-phy/176850672122.1082429.444623229961712368.robh@kernel.org/
> 
> but split up into smaller portions (merged separately):
> - https://lore.kernel.org/linux-phy/20260226182853.1103616-1-vladimir.oltean@nxp.com/
> - https://lore.kernel.org/linux-phy/20260321011451.1557091-1-vladimir.oltean@nxp.com/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: lynx-28g: add compatible strings per SerDes and instantiation
      commit: 1561f12db08b1da1fe47ce9a5beff11adfd90ac8
[2/5] dt-bindings: phy: lynx-28g: add constraint on LX2162A lane indices
      commit: 37056ea140242681ccf706f63ad8c7366d89f5e3
[3/5] phy: lynx-28g: require an OF node to probe
      commit: c9d80e861034e2f3618065dc02b1de828aed24f6
[4/5] phy: lynx-28g: probe on per-SoC and per-instance compatible strings
      commit: 8c57247f5d9734d617862d320bd3894eec898298
[5/5] phy: lynx-28g: add support for 25GBASER
      commit: 1cab8fba5073962712fae3b763417af95ccf476a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
