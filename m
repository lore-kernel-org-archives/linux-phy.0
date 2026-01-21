Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBC9C44501
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 10:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lzUamslBICKNTwDJnPp70rfQ3wn0IBkfG7Zcf63qy8=; b=e6e1R39YXc03ju
	mITSI3zXPdPffzKszZdUAaT7wqCwbpzpu7hK3nOsEvy7w6J2vWmzufQW7qD3dN9qlIed/8Yr7RwUQ
	okeH7Yo2t7J3i+3uEMMTDcF8JLYiIS7dAFmly6aPm+eTIiCFCeVk1uF4vfWlubs3thfkYDmx+uwm5
	5TkUOE87yBSqRknvIQ4IJ9Cc1WOY1LVnUTuPpz7NPgEBUy1VMrdVfemo3h5UozI/kZE0AgVa9ghit
	TpwGZn2NnM00prpefu841QtQlcbKt8dVEmxUKYOtNlbpYBkGuzhj8hL2jTO9vKF/tlsKvKw/UDhbV
	PFj5HAjo8jLXN7I+9dOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVf7-00000005IOG-0rOq;
	Wed, 21 Jan 2026 10:42:09 +0000
Received: from mail.andi.de1.cc ([2a02:c205:3004:2154::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viVf5-00000005INw-0vdj
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 10:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=zscoPbAmvaBIRYYbo4mpG1SqTAb008m2Pl3AR9bRiGQ=; b=dz7OEZuASZtsmaiXkF8jYgXP9a
	w3cJUYrWcpA7PBV9qalUgu2ggp/lw9eEeLq/yQ10tZxqa6+dKqBxX8zFtKQJF4ov9bCKHNZS0mckw
	08Wrc+FQfGmYpoeUar0EoVjZAhlMx1c2KhemQRwK1e6paEcxhmt4CJKneVPqHv3O3Asgh8x+igIYr
	NquodIvuh4+iBo4qN8fMpXZu1WlQmYRS3/qHc5Sp+oh3yIqNlHRTPdETZfP/yAi+s+JBmAMmlaLXh
	aqGGUWxUhpQVk4c6rB63PLMXq40LMY9yrD4MeYgvJ6XZKCRUGWr4wM0LW3n72nCn2PA41+BhcdDzD
	R6GWy8Rw==;
Date: Wed, 21 Jan 2026 11:39:41 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
 <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik
 <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, Andi Shyti
 <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Wolfram Sang
 <wsa+renesas@sang-engineering.com>, Yazan Shhady
 <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, Mikhail
 Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v6 5/7] i2c: omap: switch to new generic helper for
 getting selected mux-state
Message-ID: <20260121113941.68328962@kemnade.info>
In-Reply-To: <20260121-rz-sdio-mux-v6-5-38aa39527928@solid-run.com>
References: <20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com>
	<20260121-rz-sdio-mux-v6-5-38aa39527928@solid-run.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_024207_268021_7D140217 
X-CRM114-Status: UNSURE (   8.91  )
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

On Wed, 21 Jan 2026 11:20:42 +0200
Josua Mayer <josua@solid-run.com> wrote:

> Multiplexer subsystem has added generic helper functions for getting an
> already selected mux-state object.
> 
> Replace existing logic in probe with the equivalent helper function.
> 
> There is a functional difference in that the mux is now automatically
> deselected on release, replacing the explicit mux_state_deselect call.
> 
> This change is only compile-tested.
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Andreas Kemnade <andreas@kemnade.info>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
