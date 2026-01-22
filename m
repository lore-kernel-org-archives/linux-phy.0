Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38EC2D6CFAC
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 23:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDvYM2JFvYGjiiZVg7UM1dH2lcX9mMSVENssdMeolSI=; b=n1mZipo+DQBpv6
	gpDwQu4j2/7K5qOxyArdU6S+JTagoAe/1YOtslKLkZ6QPcK5Guc7FO7qVioh7H9Vjr9UVuNvE6Hyi
	J8ij1GYFpHH88PKXHPUJZGU1amoFeIMEFedfjRkGz/q5bk1f8DyYGhx/NxFi9QlrvMzHb7VnNrDNn
	y9fPemcIuVQMufNGHtJdTWg9vqOXLU0M89r3c60kUpWHSbuf3klp42DAliz0G/OudULBbNJSQrhlG
	8+35p/XbRtqCQ6h6jVg5BBsJERI3ioMXvIoHZQMszBI8l9evSAkov+gpaWD9k4RdWtKxsuuXrZiko
	NRCmICu82ZZzZlisd+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vj4Bl-00000007tZx-44Nl;
	Thu, 22 Jan 2026 23:34:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vj4Bj-00000007tZe-3HWU
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 23:34:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0166141831;
	Thu, 22 Jan 2026 23:34:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B93C1C116C6;
	Thu, 22 Jan 2026 23:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124846;
	bh=p/6yioS4UUYOkHdgzh+4CtAIpFXk6Ku7adka0gET+jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ptB9NR8l/QTiZ9mmU78HCKmRpf+bAL7GCg6CPgaPRcMVIgy7jdlU4gJzevsEp5E7M
	 sZBiA+Pt5s6Dx58uRBA2xXHoSs7LAhM85mjxoSejhKdAwZ9hs1va9xAYBqlSpbfYVJ
	 TwKuQAjNlYPDw0AuVbAYlIZDIo7/vvsaGHYuR0teZc1dTiyzokAICu9YDitR69smYA
	 jOjFfhnrCBUZq6Q4EmcNh0G3YKq+/QCdOBJUxOdrMn/Xkf78/PbwGNnaIcb6SJdj99
	 TWIA/raypBSL9qLBSygGknD/xUx89xy7W2ARqW9kJ90AnTddX3yt/BD0kRzvRItoII
	 kQnY1QLnbX5jA==
Date: Thu, 22 Jan 2026 17:34:06 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Aaro Koskinen <aaro.koskinen@iki.fi>, Roger Quadros <rogerq@ti.com>,
	Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Roger Quadros <rogerq@kernel.org>
Subject: Re: [PATCH v3 3/3] dt-bindings: phy: ti,control-phy-otghs: convert
 to DT schema
Message-ID: <176912484532.3737425.3268044409618489057.robh@kernel.org>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
 <20260122-ti-phy-v3-3-751619729433@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122-ti-phy-v3-3-751619729433@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_153407_840791_A84C0176 
X-CRM114-Status: UNSURE (   7.20  )
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


On Thu, 22 Jan 2026 17:52:59 +0000, Charan Pedumuru wrote:
> Convert TI OMAP Control PHY binding to DT schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/phy/ti,control-phy-otghs.yaml         | 99 ++++++++++++++++++++++
>  Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ---------------------
>  2 files changed, 99 insertions(+), 98 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
