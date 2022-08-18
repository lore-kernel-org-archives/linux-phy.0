Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0793C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 19:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQizxDwa3pdUEuv7NcyeSp4sU9AViewJa719hA1SgUY=; b=sl/nRaO53n34t4
	NUAYrCsmpW5Bf754vpg0dyAofCKibQom8AJmLJLJ4jH1IsWwFoiXKs6TI+e6RoyXuN++EdT8mms9+
	O4Z/Zp7DPaxLzEfMyPj4xu4jiFiqOZi0R2zjg+8s6kyATNKn4k88p3VDvjL5cug+BDnHAt3oPYYzr
	gPj0lRe/tbjtuEnhR9btP/0HPPp5qDsU1p+KHrYzHwKZxWJehH1xLAxBVUK09Vn0HRWm0uNyNkfdh
	83lTPwF8s8q9+tnAVtA/keyHbYvgLB7ZLxI57z4i7JWQAeMo8w3Qnf4DMCAqfTuUCqPrt23czlOlo
	KrHBZ6/2Bb1ve8uICRqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlRH-008m2Y-BU; Thu, 18 Aug 2022 19:44:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlRF-008m1J-ER
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 19:44:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D82666129E;
	Thu, 18 Aug 2022 19:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B40C1C433C1;
	Thu, 18 Aug 2022 19:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660851859;
	bh=rPY2Sny802bupQgHO80LHiaN+qHFvSiRug8RSfwD7yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ow+dC5w7EzavfA5oRx1zTe9KtsEal05g896omdoiOCSZvvw1ub2lKxkrNeoeHwqTr
	 U7+ZYHAw5zuJKq7/S5kn9DVP+dqpjIu9TdYd9N387I+nZAqTjYSt0MxCC7ZN6v+1eq
	 WdoH/Mfq9YDl2tsCfj011ZVxb/EiylaaNK6PyKSLieI8jTbbIbONFRXBM2vohZsp/9
	 LlYZBNiq2Zhc/ZRHo70fJcrPz4w5EV+REhocq0tIlAcC5oAZlbOg9K7HlNsJbex1/Q
	 ldLnW2NoaaxsZH8rtyLNsC0vWKVxhBno/WfU2msETZ5I63n/eoRVBe8i2UcoREtcEC
	 NsYUzzaQjszrQ==
Date: Fri, 19 Aug 2022 01:14:09 +0530
From: Pratyush Yadav <pratyush@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: Update Pratyush Yadav's email
Message-ID: <20220818194409.zicuzhcg36qw5her@yadavpratyush.com>
References: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_124421_558358_1D5C4E36 
X-CRM114-Status: UNSURE (   9.70  )
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

Hi,

On 16/08/22 04:21PM, Krzysztof Kozlowski wrote:
> Emails to Pratyush Yadav bounce ("550 Invalid recipient"), so update to
> match one in commit 92714596cdbe ("MAINTAINERS: Use my kernel.org
> email").
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Rob Herring <robh@kernel.org>

I am not yet sure if I will have the bandwidth to review the patches for 
these. But anyway

Acked-by: Pratyush Yadav <pratyush@kernel.org>

-- 
Regards,
Pratyush Yadav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
