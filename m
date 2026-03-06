Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01096FCB613
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 15:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2qCLpfrCxhefUiwibnmqHs/SjNpOuVmCmS9PG17OD0=; b=kvsyeojUl53EOr
	WBUy5O0xzx3VjcZksiXe31NJxMvkDV+6k+SrjUhwNsv9+KRqPzk0skMMqdiPqL9mCQ1mqnz9fPLSv
	fWyjdzqlNUy/KB4l8yrMl3glrqmI6fViEFfJMkUwkj6y5M+j8PqZ924R6cpipwcXv38JfGhkBzWmb
	XuRjYsHEnInvGAfYi+F0W1qqSTCBCojC4wKnbdgl8V7FN+AqAsfnO+AVWIGn/P0ZogTHH21iGKaLa
	FkdTRSixZqNrCWKGk7FqiXtVbaBPNOiXZIiR9leua9Qv2iaEutj/Vh8mJgbVttzqFIV9IINiR94/C
	JacebxoUnEa5om//o0SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXB1-000000042o9-35Cx;
	Fri, 06 Mar 2026 15:33:19 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXAy-000000042nq-1m8S
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 15:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=s1cu
	QDsG6Zp0lohUD8JZqduywcTu0nS0IvyfvMb/LrU=; b=gXFLd6m4lL00z1Xt4Zqf
	qJZEngkn4txbzsE9YboB6vNiiLHq9kK4Yy6DbDaVV7ej2b9clDQsNuaGoL+G4u+s
	tMuFLvCFIAswE4xSzAlhfZCsz94+szcxvXqlsBSuMLgZw3zmSvg5cIKGvJHMoPjf
	TiIdwj3SrpOY5Ep9KUFN+wnRqZyAlTCUHY/MBe2kBw8WUX5C3phbY0SbLWygO/Y+
	ihkeA/mhE1DjVSONYL9+tWnUI0BICh/0jfJPaYusZTIGdJPyx6YXZIbr4lKkXXCG
	FiLUo0Daj33caZU8BTifdOi+7jARPrtwbF4QWP0wfIieF67Utbenrk7UnrgDj/iG
	yQ==
Received: (qmail 1689643 invoked from network); 6 Mar 2026 16:33:12 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Mar 2026 16:33:12 +0100
X-UD-Smtp-Session: l3s3148p1@lHNXxVxMMN4gAwDPXzF+ANZpdrMKUeLI
Date: Fri, 6 Mar 2026 16:33:11 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v11 5/9] phy: renesas: rcar-gen3-usb2: drop helper
 getting optional mux-state
Message-ID: <aarzt_BsQlwFI8Zb@shikoro>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
 <20260226-rz-sdio-mux-v11-5-c2a350f9bbd3@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-rz-sdio-mux-v11-5-c2a350f9bbd3@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_073316_738726_F795B69B 
X-CRM114-Status: UNSURE (   8.40  )
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

On Thu, Feb 26, 2026 at 03:21:13PM +0200, Josua Mayer wrote:
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.
> 
> Switch to the new devm_mux_state_get_optional_selected helper.
> 
> This change is only compile-tested.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
