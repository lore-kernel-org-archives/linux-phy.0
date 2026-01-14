Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28968D29FEA
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 11:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZ+smMKDEpCMgZWc0PkwDmORrAZHVYko1IJu4wAu2Zg=; b=3ZocxNkUArPohL
	YlDrAXsu+hHhrTHRA/s36p9/IToV7D9Mv+QArlInYuLsnVsKWT76/8/grhiGP0x4wbBZtOiQMIiv2
	o8gqOnvszTGqSISf2sVOWqOu78MY7LkGTPhcrPV4prA87xZKokI2iBd2hX1tUy4d39JKtkkc+hvvb
	qL1gUcFi7Y07afI0YzvwYnAKLQUem3ZpLFP7YFlTQcoBYuWsy0plvltCkPAxM8oK4iuEgWm5zsCKf
	xHGoVNOpIRU6PKgoRFHoJLxWaphPVQVoGvNgfQo+WnulbeHoGpOVksvYs/0v3O5BinnTMrKaII97Y
	we+RL1AJG6UGhE6Od7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzQB-000000092p2-1VId;
	Wed, 14 Jan 2026 11:52:19 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzQ8-000000092o1-2Lme
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 11:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=BTPE
	LIS8djx1OvkVEDR+BzQIn/xiv3BxFTaCezloF98=; b=AA8cnIAylx1xeiFkNT4T
	ZIrmdY27f3LYoZO3GRgu9YyNYNLzRuyeH48q3dx+Ek0PAHENTGgXTSyzrtt7vTQt
	n5325scCcMepdnx/OYcgu8QMPQSzDguoUnV4dh34+BqqD2S4YDZqMbR6OIkqkT/v
	OxW4Fx9WoayurfG3rqbz05Td1BBdLEXFVfIIAbFtH8PATca+96Bbmfi0zb9+TNpu
	hIe2YYAbjs89/lwtJuw0mhom4UPGL0S9inZomLXBsrPNCCRFf76yHn2NmqF4popp
	LOTgKHK8dQS1+uPIIGLkxC7nZNlt4kjn1fXF2v+J4e2tCtpdmNZVwC6ISSxq5cpp
	Mw==
Received: (qmail 2114186 invoked from network); 14 Jan 2026 12:52:12 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 14 Jan 2026 12:52:12 +0100
X-UD-Smtp-Session: l3s3148p1@WQkZvVdI3K8ujnsM
Date: Wed, 14 Jan 2026 12:52:11 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Vignesh R <vigneshr@ti.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v4 5/7] i2c: omap: switch to new generic helper for
 getting selected mux-state
Message-ID: <aWeDa6o0fOh1pGW5@ninjato>
References: <20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com>
 <20251229-rz-sdio-mux-v4-5-a023e55758fe@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251229-rz-sdio-mux-v4-5-a023e55758fe@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_035217_276434_D635BA36 
X-CRM114-Status: UNSURE (   9.25  )
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

On Mon, Dec 29, 2025 at 03:27:29PM +0100, Josua Mayer wrote:
> Multiplexer subsystem has added generic helper functions for getting an
> already selected mux-state object.
> 
> Replace existing logic in probe with the equivalent helper function.
> 
> This change is only compile-tested.
> 
> Reviewed-by: Andreas Kemnade <andreas@kemnade.info>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Despite the pending discussion about the function name, it is clear that
the final patch will not go via i2c but some other tree. So, already:

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
