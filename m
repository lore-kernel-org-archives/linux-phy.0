Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6CA6E7C706
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 08:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7Sh1NHZG8gtogW1T1EUCbsYtgL8DE42m7cBfgnp39I=; b=Q0Mu6SuDP6cGAC
	MUcJMDWlFLwCmGtvkSSD1yBy4HT5iTnlvPnL4vwxpF7DaQEi/1KQHtbwOQZhtZATIWulZksrbFdjw
	dURtQ7ytmOI3YL6RI11152Xs2MbUYqah+QVM7FCJK8igAqgkPf6He/Kle7KKRp+/bHUq9/gJHaBaB
	O9qXjxLaubAIycgeJNS3U+ZzYuwu5vdjg93VlNarKEdgK0kxKCOtk293MK8VAcDs9LZLZj+8bpniT
	aQyDpMf9KizBbGlkOKZ6pfrJWFdApHW7HCSKHymiCqr3pLJafRHAciDVJavf5K4d6RZ1cGM9pq8ns
	HVZ1+pG6W0SM7mFbD5+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMHt-0000000Ez0V-1Xa4;
	Mon, 09 Feb 2026 08:06:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMHr-0000000Eyzk-0xzi
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 08:06:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 77BDA44161;
	Mon,  9 Feb 2026 08:06:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED53DC19422;
	Mon,  9 Feb 2026 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770624386;
	bh=zEzOJjpOXU99Hg+Ob4CvIWFFPfptLCL1jvRZD9c9JfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wj6Uv8B/pnBKCk2iKXVD6C1McjKDob7VJ6nqQyBA9h4c+ibUvxyRrRm6hL8g/mjPR
	 9H4rFvxdCFtH2hL74+PHYWCc/yDhB3zeZBtI6eEEtxyoV2R0XpJsqF8SEBj1i7W05M
	 8L0gGdaeTu61wNccXP98d/ir5c6PX0gBtSG/xxiWTz8K+mQBdxNqw1zX3HGJz0mZUz
	 jICctpJ55qe9FRhJqAzadufmR6LKhXpJD1nCJBc2AxFDf2kYp4xmURwACmN9EEeb5Q
	 zXzuIek0jWOVq9ZJ5ezCbTl0aI6pX3uxCVxI4SutTZM5d2Yf8XlSdwHEJlcWJf7nMC
	 hbBbC+yDZOO4g==
Date: Mon, 9 Feb 2026 09:06:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <20260209-magic-conscious-seahorse-b81c8b@quoll>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_000627_301025_0A0DB61F 
X-CRM114-Status: GOOD (  10.50  )
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

On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> refgen. The refgen itself requires two separate power supplies:
> vdda-refgen0p9 and vdda-refgen1p2.
> 
> Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply

How does the driver matter for the bindings? If I add dedicated driver
for refgen, then I change the bindings?

There is qcom,sc8280xp-refgen-regulator so why there cannot be
qcom,x1e-refgen-regulator?


> and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> conditional schema to restrict these properties to only Glymur PCIe QMP
> PHYs.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
