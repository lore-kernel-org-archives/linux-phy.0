Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5F8C05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yft2GE9zIsaZ0mza9eLqch4NxRdbwkgJ+4ffI2wews4=; b=AgKMWT0s4OXNgw
	cflZEdq7GhZmKxnNYK10O2dlnkFe5mSW1O2l7PXVaXf09u2JRwEr0bOlW+nI/ttOcWO8N87HHNAbZ
	LHIhOWlAYrNz8kGrdTB1mMvELkGpXfDAtuc94eerrebH81+Yp+LKkHr1VZ8G3eQt0rk4JYhSf9SVi
	E1GAjHK1VE/UiizxXdPrbQggp7J53rissd2yMwEaMyChsXkDVNe/jz7yMiN9KmIwAJ9J0ewDD6EMG
	r68IZPFdAx1uUEB7mfYeTL1x6JEWtTZa+Dbri1UZNntChOBWGN700r4VjS+ZABygeU6Ycup6gkAQ3
	vUnKEFF3J3O/1oXurpZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwXE-002BGZ-6w; Fri, 03 Feb 2023 13:55:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwKP-0027Bc-NQ; Fri, 03 Feb 2023 13:42:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 33D98B8287A;
	Fri,  3 Feb 2023 13:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39156C433D2;
	Fri,  3 Feb 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675431726;
	bh=RnwQVyGFLcxgHt6nfUiqt/UjT70bTIiQ8XkNhyLtBdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LQNXdeb8gqQj1nVZXdb6t5NXlNJswHnII/ZLBcQhY5bfBg3rCzpfGaVampjRbGXoT
	 K7m+tLNGHe0YcTZDHzKBo0mZqSXuNmSH9mEbXC0Nxx30GP7BkhNDCo4mqcFar6nXvI
	 XVHSwmkyNCgh30t0MS+7yM+c9ukaC5MG5d95AfKFTEWM5xalERuSLNGyP1N0REMhMf
	 L6bqjGeqT3rhumyOZguejAfl85h37WPyFTx+lKODUZUF+CZdDhPlYbqmS2rpD0oDae
	 OuHdFPqhAKG1mqmNJO6bJB0UpbZ8tH+1DGCa1Lq4qpyXhLfekm8kx5UAheMMm32rb9
	 iwilUKGp4WCCg==
Date: Fri, 3 Feb 2023 19:12:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, replicant@osuosl.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	Martin =?iso-8859-1?Q?J=FCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 5/8] phy: samsung,mipi-video-phy: deprecate syscon phandle
Message-ID: <Y90PK8TKilJRItU1@matsya>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-6-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127194057.186458-6-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_054209_970215_B4ACBDCB 
X-CRM114-Status: UNSURE (   7.17  )
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

On 27-01-23, 20:40, Krzysztof Kozlowski wrote:
> The MIPI phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
