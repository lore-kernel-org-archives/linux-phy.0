Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65A9E9D401
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lhGIlY4FrZIeKZeswJk31TRmtDha1MY8W7ePsT/+Cg=; b=J1XKdQ9PBw/xg6
	4K6RJarwSfftIslJxxVfTVe99BJhjIbacpjs9nsIU/JMAwApp2iSbJmR83Y+CRHtbU1AbC299cvo6
	aNTtNylGkigSDGWVSMobOpJJtroiw1fXv8aB7+SOcHMgulj2dAcJmuumb/hBxivDJ2Bu3dd2qEPrR
	9zFKH8VruGmD+msD/l14/3cf0eY8yY6ElNUr0cvrjdkyXlIsT1gFqmHNaD2exUH8kjmWtYcjWKPxe
	ij+6XsoVxAYWE2QuXGSwRhI7oDwbOj8pzEEHpRhfAAePuhQb48QuEe6wPAKKr5fKVn44A4Y+IQBX/
	+HVnOeBxLLa75MNCl7Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefq-00000008eMU-2FyR;
	Wed, 04 Feb 2026 15:20:10 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefo-00000008eLe-2IVQ
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=WcYB
	VxLBzN05bdXXm58VZxYg22L2CN5+zoOZnZfZw14=; b=TITSY7QDqs41Sop+siRd
	1tho1l/9ahyccHqLCXwIZHSw2EG+FWoC3cF17Xrh6/1JwiADM5p62YTCUvLHvvmz
	Uv4tut+UaxTcxX1oYGZJmrOZuZMP41+OMfPOdATpFJDy/QFOyQxbLQPdDoUE2O+z
	sSYsXVQ3qjIywdhSs/hZGp3DnDYmTCx3/QRnpcSaI48107S4vlW+Bj6ko0g+iGQI
	z0tTofr3YylcIRA6RWZfyNxRtgKP1GZgSJaOKa9ZCT6fTLeR+FuX5inFdeY/KvsW
	5ya/d+f9BpkFJYy11kEkq0QZqhlOlK4O2r7F+dl3syMxTMWwP0DBm9lvmuL9VRsZ
	cQ==
Received: (qmail 2408822 invoked from network); 4 Feb 2026 16:20:05 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:20:05 +0100
X-UD-Smtp-Session: l3s3148p1@/YExFwFKwpUqAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:20:04 +0100
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
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v8 5/7] i2c: omap: switch to new generic helper for
 getting selected mux-state
Message-ID: <aYNjpO3uJqO4N4r_@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-5-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-5-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_072008_864667_C6BB5347 
X-CRM114-Status: UNSURE (   9.08  )
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

On Tue, Feb 03, 2026 at 03:01:38PM +0200, Josua Mayer wrote:
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
> Reviewed-by: Andreas Kemnade <andreas@kemnade.info>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
