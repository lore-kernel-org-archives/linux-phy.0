Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6FDC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 16:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9l2E0d8KkcdsDlLzwSo1QqgUfdEJUaJ/dG36mtPKeo=; b=oCbROJ1xnG7P4n
	Ph5jQie5y30isALj4kt0ADoRAD9HyKqqUF1XjDiwRoVbBFPA14JLtecnPReiMcBMu+r1TymAkBvf6
	MdOmsGO05R9eQrj9ylKzMGt7Iymgqodx6JKdld4vfy43mCA9wtO8qmOgEVtKy8uHfPj4u/nodxeO8
	2/K06SGGdePuZRmxA2EwHcIJzvCQtbjoqz1BWUbvRLkIpaQpbPlwWjwB1/dVINzuUwt2x6eBioSIn
	BcvHJ64y8lPb/SL9QAcVqhmtobKmUmlsRCrhtFuIcCQB1TY5Il40iT8AZyh0hMv/wgZXsHj1GGj5i
	Dr+2c754dyNVaTWEWR1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyRh-00EHRz-3R; Wed, 08 Jun 2022 16:22:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyRS-00EHL0-K3; Wed, 08 Jun 2022 16:21:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF69E6187F;
	Wed,  8 Jun 2022 16:21:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C00C34116;
	Wed,  8 Jun 2022 16:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654705317;
	bh=t6way+TkxDknfIT1NDrSx3IOUfKk8a+tJbG6qq0uLv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PFK8LFa5TAHTqZBspVmsXHdJohSuanlwGDSxrR6zW2yiMqaREB6q/pv3NeEltm7Bm
	 XZWortlRlc3Pf6pOGU+9g60RXWux86Br7dZ/URhjXwvNCy+/Nw9iyXGNxuKXypIzKi
	 54R0de/y2aarRD7Bs5sr26E3Hzzm4kBm/8cBEQ7NdJCQXHFwIE7Y4xZBJvq0xnEmfy
	 NkQS6jX6xQkgqHhoaeeINabxidqbpXUAXx1B3gkMmK6ACCdR7qDuGZSvNV4XLsULUb
	 oCSIY1ge5ecqVcx123W7Uu5fudsxvq+WmOjSuOF9FA58i3R7n4c037Wvj447bRwav9
	 8J39QuQWW721w==
Date: Wed, 8 Jun 2022 21:51:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chanho Park <chanho61.park@samsung.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/5] support secondary ufs for Exynos Auto v9 SoC
Message-ID: <YqDMn7GCJpOV9EH2@matsya>
References: <CGME20220607072937epcas2p4e3e1bf3258e021c20692b0d348abdd8b@epcas2p4.samsung.com>
 <20220607072907.127000-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607072907.127000-1-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_092158_744666_AE81F589 
X-CRM114-Status: UNSURE (   7.38  )
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

On 07-06-22, 16:29, Chanho Park wrote:
> To support ufs #1 for Exynos Auto v9 SoC, we need to control its own pmu
> register. So, we need to specify the offset of the register via an
> argument of syscon node.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
