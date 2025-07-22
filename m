Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8644C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0+3cf65lV7MUuwB8pCAGXR0ZUt7oT8Gwr6jprKOXXg=; b=RuoBvkWGUR/5je
	1ogPeuV8wvgBpS4b4wHsXJljlxJhVWyQOXz+IjKMGUtdYSFyWcmDqfzgpj8DzUFYsXWUhLWmlafcw
	wpp0sGgR5ljmuUpudUwdEy2UY5Cua5yTqnphh8KsjfrwznmNkzxPoEq7Uv/vC3uLVEiGkY+inUeDe
	9X1jl6Dd2Q9NPoYNYEHKuzp6Yryj8YJHZj3K0mhMwEOPvf2a+Yc9G/lZmnLmj8eWYVXK1sLoJ+sL9
	6oxuyXrEaNuRNzJM21fmWjN5pJcqrwlDDp+Q73Ur7sRtIkwqYBP7xAlMNQ/YPfmWC/C7poBKsVEVv
	D2MmvM3WML1f00ekpqYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDoT-00000002fuk-23QL;
	Tue, 22 Jul 2025 14:17:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBc-00000002ZKp-20Ln
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C800D46107;
	Tue, 22 Jul 2025 13:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02005C4CEF6;
	Tue, 22 Jul 2025 13:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191459;
	bh=SNlXAgT++4m4TKztvKkQemORHWb8VSygCQCGkQvTGqs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=os3M/V6064U011WPLr6/inhse5tmffGbF+A/kDc7oWH/l96EUna0n1Uwap08rd+4l
	 +5xbh88EjKUOnhZFHR9Eqgg6BhIrGn9A9F/nAccoiTcuJZP63xLjU6+DCpT1O/uI7o
	 0DT/5bakRSDKp+izCyb11VaFIS6JtV4wrL4WpBh/eJyYhkyg+pODGjeA8rHvJn+E0c
	 6qkkxrXC++tmpWviZZX+88q/l44W+Ha8NHANOf0Rh62UQZEA7TDsDQhQt9hSAQwXPL
	 YY39QLPrHsSkrPWjifBI0h1bnP1/4xy3FCyj3mfu3H5zBF925BZtwWelPAeskyjew6
	 odi1KOfkMebiw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, 
 Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20250707-dt-bindings-phy-mixel-mipi-dsi-phy-allow-assign-clock-properties-v1-1-5e34b257e1ef@nxp.com>
References: <20250707-dt-bindings-phy-mixel-mipi-dsi-phy-allow-assign-clock-properties-v1-1-5e34b257e1ef@nxp.com>
Subject: Re: [PATCH] dt-bindings: phy: mixel, mipi-dsi-phy: Allow
 assigned-clock* properties
Message-Id: <175319145662.114152.5665167328510255793.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063740_539410_B971B67A 
X-CRM114-Status: UNSURE (   4.44  )
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


On Mon, 07 Jul 2025 10:47:00 +0800, Liu Ying wrote:
> assigned-clock* properties can be used by default now, so allow them.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Allow assigned-clock* properties
      commit: 429efeb1900d4a3164e1233b392ee5f489b6c3f8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
