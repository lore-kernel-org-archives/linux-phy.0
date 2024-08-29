Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17519C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bt4W7WzDoSvC8WpK01Vy1fUOShAI3baiVSDZvkl/N/A=; b=3zN8+tfe5aeTCb
	cIpgBNeRe8Yws4jrzFzJnxGZPvq+9ixs1P907qMuNgEAPNzc8+626xV7nGOQKuHokOMoe2EXNtdke
	wIv+2hX3SDSoS2GKQwcHgjeGoYr4W1E9JCoM46r3SUC7pI2DFLWi4jvHNFqYM/IKEaDag3m+wEtgx
	3e9WEUiNqodxK7PQriA6gCUztax6Mpq9EY0fwUfyCq+WDmxVXFdoV+ehx2FGq9bDI3LdSzk5U9MNY
	r5VnV9C8WPPURs0/EUbnlPzSlpcLcLhDqzqHm/R6/4bBBiS+3Y3RGjyqHFAuleXLqdWljQWm55l3L
	fHvrzwsZmab4kL6lqimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkTb-00000003ILv-2rfQ;
	Thu, 29 Aug 2024 19:06:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSk-00000003I8W-0cGZ;
	Thu, 29 Aug 2024 19:05:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 44A6DA429B3;
	Thu, 29 Aug 2024 19:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1368CC4CEC1;
	Thu, 29 Aug 2024 19:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958340;
	bh=+SZQLpVJ8uBaeU5qY67xtR7CmHxItAC/gNqe+glMAAA=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=S1hxIe0d3E9kfj8avwxgwVbTtvOGTw4P+3UGKoWkQuF+7HVc8SEn4EeMA5uRPmqBg
	 7o6343p/clSm9eaKNrZY9gWvxtP2DmWpyGh4lle7dUWjtgv7KPfDqjvHWL3kYQXJMO
	 644GgMJ3IWv0kIhJAPujtHdNUc8yXgg9Y8UwR0qV/4oe/5kk25beT4yTazggEnA67v
	 3OQ/LfengsI7bENaTX5r92eWGhiQ0TdZGSOgtDzmeYSuek6IXCoVUUrqfVJl/mPU2V
	 hK53BiXzlfpobX5moPQinJ5IFz1lXjs06nhDS9TQnTHenQkAGjFREcZ9XAmbgbE757
	 ngYEmMVXY9Hig==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
References: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: socionext,uniphier: add top-level
 constraints
Message-Id: <172495833772.405683.9269300572581371262.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120542_282795_C4BCB50E 
X-CRM114-Status: UNSURE (   5.04  )
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


On Sun, 18 Aug 2024 19:28:35 +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clock-names and reset-names.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: socionext,uniphier: add top-level constraints
      commit: 45a4237b9be24d6c93db9da2b2180810c5bb2929

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
