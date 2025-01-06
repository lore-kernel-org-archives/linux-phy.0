Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77335E77198
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 11:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQICY2sLIW8Ei22C8uQmMlv9mL4GgKiun0xocTZI0Ao=; b=DDsg32s3avA4Uz
	7Mbm5lZHBu5AwMJG1KyOnHCL7+RWQ6V4cVTM5afHVqiAFvcC1oe8R/ImeK5SR29Yh4rYQfuYRrwC6
	8IdUWD4o3GVTQM9b9qVbht8Hwnupv0JUDFODSGj8w1N7aYsJcm1jGi7UOl/xjSvwKeFbDBdvJuQ1c
	ORZVJydHXJ5imVYlCEhnJabD3XUSpTHl+1oXDVXAcILY4FOX7NQ6y1aggYLkokQA36DPbbwlsjc2h
	Zh5WdMZ5+XeHaBJ6l96PEQbhNd/AYcXr2SQW/0zuOqmwmMAQEG3io5svlE0zy/xMhB0VLD9J7dad4
	Zm3fljWtm/5V1nIhxBag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlFI-000000012Rm-14OW;
	Mon, 06 Jan 2025 11:26:08 +0000
Received: from mail.8bytes.org ([2a01:238:42d9:3f00:e505:6202:4f0c:f051])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlE5-000000012Ji-1stX;
	Mon, 06 Jan 2025 11:24:54 +0000
Received: from 8bytes.org (p54921e31.dip0.t-ipconnect.de [84.146.30.49])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 46E6B2E0016;
	Mon,  6 Jan 2025 12:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1736162687;
	bh=A2VbHCh2nvdE8f5DyLA9vLSAC91A3zhxUCopF+zUwsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s8EREmB2Oljv3DrxUsRvmMVdnIZeXQOKGmreXPF1w/R8bB/8ImGDiR6Ra4TYb+cLr
	 ZEUmRouXeJ8L3ZVWIQhFm0wXAIR9WG1jGXNVFhaii1V3Rt0p+0TJHnCg2yw6Td/2sM
	 1ilO4a1IQbNvExxFWnpVZo4xinTJsj/RXfMKH0qK5f2EzMZb7ZrQ9kKw9FNOansmuy
	 6pAJsXGw9ssTZu2UaHL/9gyItieOHF4hebKU775HU97zaC7/Fo9PvlpFOrEvP6N6Ny
	 eApdlDbnkayhisHkOXTbq7RQyOuwyzrxS3MjSog5MFJFxC+AQ+PVld/RqnRQydX7ci
	 pndIhk04I4JbA==
Date: Mon, 6 Jan 2025 12:24:46 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Parthiban Nallathambi <parthiban@linumiz.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 09/22] iommu: sun50i: make reset control optional
Message-ID: <Z3u9fuZ2n1y3Or_-@8bytes.org>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
 <20241227-a133-display-support-v1-9-13b52f71fb14@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241227-a133-display-support-v1-9-13b52f71fb14@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_032453_716853_075CB8F6 
X-CRM114-Status: GOOD (  10.47  )
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

On Fri, Dec 27, 2024 at 04:37:56PM +0530, Parthiban Nallathambi wrote:
> A133/A100 SoC doesn't have reset control from the CCU. Get reset
> control line optionally.
> 
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
> ---
>  drivers/iommu/sun50i-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Joerg Roedel <jroedel@suse.de>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
