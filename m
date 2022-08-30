Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3803ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnAgQXVFTsR772O9fd5Lh7KDGu57CjauPmze5dXZQcM=; b=jIRsKa43+oKNI+
	oZmvjsxrbduTK9mhff9P0jN5GdEq5YHNe357Z/efx/p5aNDyGr1vnOxjB1Gm1Ko2nopEqKQzL+LT+
	hlaPDfRIMqqKuP7S3ZYqer9p977S3EX6JfQrVx/0CC12ySHHDYjirEz3i13QCoUMlL4ruH9BwWQzZ
	YgNl81nz7Zi4IRbQDprmuRPLUWwBzvhO2Nd8vyi71vS5rzWwaBxXQy9cTR2pzHRbRbWQ1GIw8SWHZ
	Ouc+tUT9ZkxIT9h9G3HjLju8ktn+uy9qqjhAVvdaQwsXv5HxiSfIhugkg0GHTVc7EwEBWZ2LfrCc8
	CoY1Eq8W4zglAa7Eg2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvja-00EmCG-9b; Tue, 30 Aug 2022 07:32:30 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvjK-00Em1q-Qi; Tue, 30 Aug 2022 07:32:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 80422B815D2;
	Tue, 30 Aug 2022 07:32:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1B7C433D6;
	Tue, 30 Aug 2022 07:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661844731;
	bh=YSQSyCm+NnDwfnhiAk/mJMc9Ar3Fe0i/3+D9gGk12bI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tAGRN8Y3w5NUOiyL3000pg6rDMPwstazBnp7Yb/sD1vXBCc5voBV7rvyPS1OzwHyF
	 yqHNywXF49S92ectCKpVKc8ntCHSMF5Pthjk+0B74sSVzOydXXM0ltOpQkbN/j586N
	 Yd5IRTTlFBFH84EBFSJyCK7k/2yTVpid3IpyPH0kRXcdwY415fj94kNgYlcDyUcZkh
	 6/KwNgUvBR588TD4GytBVqnhIOpzhn4HyQbxzRznypyxkNq/D7tw1UvZ/tsxDqFrnK
	 CKIPv1qYKaz4Cq7K5stKxbbaWza/ZHsscUQXYT/OZe7GUS0RPf45er7La3EV0MEIw3
	 SK/owzJzeopTA==
Date: Tue, 30 Aug 2022 13:02:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chanho Park <chanho61.park@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH RESEND v2] dt-bindings: phy: samsung,ufs-phy: match clock
 items
Message-ID: <Yw2899yMRxQIiUHS@matsya>
References: <CGME20220725000713epcas2p38d5c9d7ccdd06dd50267b72847cadc18@epcas2p3.samsung.com>
 <20220725000249.30509-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220725000249.30509-1-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003215_029702_9ABAC428 
X-CRM114-Status: UNSURE (   6.95  )
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

On 25-07-22, 09:02, Chanho Park wrote:
> Below error is detected from dtbs_check. exynos7-ufs-phy is required
> symbol clocks otherwise only PLL ref clock is required.
> 
> clock-names: ['ref_clk'] is too short

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
