Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9037EC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJueRmU+exyB/BEZSIwX+4KXv3+RTZp8Vu0PSdK3sc8=; b=uFNFYF/ceHXtgL
	RRjdcWOX/R4Lrh99gqJO0Zil/xL+cHtGxWpYp8nNE5NW1p+XhGsbmILAY5SGlYMep95Lyu5YLfq6H
	ZMY2nDAhkQ24HFImNuOsxoWtZNs++8OgoOTqMCy6jnyUbiUlFZVYrwL3FZlk07y3PGouyqp5uh7nX
	TTOmb7+34kajsyUSJl7SwHMVWtbgKUC9k7zdHHn+pYWtx88CytTLGkZRryV2s/LEAumAeOd/Tmp9p
	8SXQDCu2+TERpC0HZMsE+SosdbJImKcM+gTmreumO4OrqPRkINRIJf1AxjRWjReC4oY5ZXyApPJRh
	CdtFP97lelZVdQap5BIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdU8-003phT-0g;
	Wed, 12 Apr 2023 16:38:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdU4-003pfh-0T;
	Wed, 12 Apr 2023 16:38:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8A1FA62AAE;
	Wed, 12 Apr 2023 16:38:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 612E7C433D2;
	Wed, 12 Apr 2023 16:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681317491;
	bh=DA9dZWpLkveydvaCYivnaEBGFsLFJHBYYfsYWozWMLI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kgw217cnaXLquBC3MNroJEenOaEumLqDLqJCn710iVsGHCPfX9dIQcy1/vDaXlJAF
	 vKhAnMVqzo6bxnOzZkhIJ9MTukXhS1JOf1vybzrC3kxloGR4YVS7MgMstUffbIje0a
	 v1/bpc8lanO5NKePdIb+HbveCJSqPJAJYpgn7wnCI5a9uyjvwGogbAAJGgvGh01TtQ
	 UY1GT4Iwo5kZEGesHGhmk/hAwLmGAlhm09e5rJF0N2+QenegtFwdWu0iGne/L8KzUd
	 qjOE0zm8ZzEsLUZx5Ow0+LHvLHvAzwwv2UnVbnyP/MKDHs0CJHudKVSDgt/oqhxTn4
	 OyiDBBZkGUxoA==
Date: Wed, 12 Apr 2023 22:08:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH] dt-bindings: phy: ti: phy-gmii-sel: Add support for
 J784S4 CPSW9G
Message-ID: <ZDbeb/9+xWGzfAZ3@matsya>
References: <20230315092408.1722114-1-s-vadapalli@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230315092408.1722114-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_093812_221320_F7D4FFCF 
X-CRM114-Status: UNSURE (   8.64  )
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

On 15-03-23, 14:54, Siddharth Vadapalli wrote:
> The CPSW9G instance of CPSW Ethernet Switch on TI's J784S4 SoC supports
> additional PHY modes like QSGMII. Add a compatible for it.
> 
> Enable the use of "ti,qsgmii-main-ports" property for J784S4 CPSW9G.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
