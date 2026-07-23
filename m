Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89D4AC44524
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 07:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy6Vh1PBtz7pQdtxVPw5DwbHGyoH7RWKE6QmjW2htow=; b=1SAF96nOySNL+0
	c9eJLUcEYYW+A6eBIMQpPprTYQi7soZeVyo9dlC9+VO7hEmOwJQEhG8b0/UIisRPN4EcBUClXnVKL
	L6KyyPu3m6GfJp28Do0P+EL6zWaJbtlSljvES90Nu9Y7WxRXYlSdpgs3B2jF+AVnd615A8tNfS84p
	eR34ugFhQJJ8JeSlKw6eP3XRgaPBqn3EsSk62KRk9yPjQmqVgXNPDFF/NmQPapfxQwgm8D3cciUut
	D9uEh1nMQsZ6ThfjZPhBc1L5D5jkX7Ybn8BjjHsSRj0jV5PmBJTFlOwIZ4kjmT78rahqnbBxf+fYw
	KAUl7iDTPy3Sv0peVMTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmneZ-0000000DccY-2Iwq;
	Thu, 23 Jul 2026 07:15:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmneY-0000000DccS-3yMl
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 07:15:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B124B40A26;
	Thu, 23 Jul 2026 07:15:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A0801F00A3A;
	Thu, 23 Jul 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784790934;
	bh=pxXqmWFdsHN4uueFgMNSRMaEPcC8fW7BOmHHfUgtmTA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hniyd0zSqTh+oRMdwoQfnRl/0B2kVJkU9xHDmz14OuVC49OnUJn7vE6hMqLG17IQA
	 6rp80+KIJCqVAtpusx8dDcf0GowqAhWY1L7jAuau7nq+s562fu7llHdeoqEG4tC1zZ
	 EZglyMUrkS7qOFzbtjrHzBxCBubYqtDfJvdI5bgTBvMAKkpvjGhrzEW6Rfe7Ya5bU7
	 5sq04/DFoUh8yO0/cCKI/STM0Y1VjswQwskxuzbAEwZkGtFWldBRcoEl9oV/AxNGq9
	 A8H0ACRpm36D/djWED9aQ0HldzaoM2t5LsiYgmDemP22kPGGFbaZw1FSAdBur2KEn/
	 4jSr8wOi5Q7qQ==
Date: Thu, 23 Jul 2026 09:15:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gokul Praveen <g-praveen@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
	robh@kernel.org, sjakhade@cadence.com, vkoul@kernel.org, yamonkar@cadence.com, 
	s-vadapalli@ti.com
Subject: Re: [PATCH v6] dt-bindings: phy: cadence-torrent: Update clocks for
 multilink SERDES
Message-ID: <20260723-venomous-nuthatch-of-inquire-dade7b@quoll>
References: <20260722061831.1045884-1-g-praveen@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722061831.1045884-1-g-praveen@ti.com>
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

On Wed, Jul 22, 2026 at 11:48:31AM +0530, Gokul Praveen wrote:
> For multilink SERDES configurations where each link requires a
> different clock frequency, the SERDES provisions an additional
> reference clock for PLL1. Hence, document it.

The pll1 is already there.

Also, the TI variant does it or cdns one or both?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
