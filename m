Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55189E9D403
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAf39GoMLU99jBQ3jlhWqC1Fnz8QQTDPybGKdAtLgK0=; b=3iGs/gYAaXdqMZ
	PhVC8SCqEOmWkz+8M/gxteuimeu/7snVXl7SI8L9RRkoMHCb5f4vagF20k3lSaw2bp8AporBKETax
	uDxMqMN68wdhW/zkjkn1SgTIKEVIoEhFyxyRr+UmtM37GxY4TS8frF5yHqqp0HTXrrD683f4Ttta3
	AktcvbkbYOlS/tspAMhaeFL58oCAnNc68X5BfgDPtC/mwGM2kL3Y2FzlPbTpu6CDciXotQ3N3Wgsn
	EGUf0ZroqG4sfs0mrsrDJ5nSEQdQCPnElH09wvebQ0/WxZW99r4C0thgLzFPqPTdgztkZgUAYEx2I
	z1j0z6eai8u2LZLhIzzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf5w-00000008hD5-3wie;
	Wed, 04 Feb 2026 15:47:09 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf5t-00000008hCi-3z9A
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=9pjd
	1Z0abUIs/vb7jSYDYMKbNGzdvIiPE6k3qOxN4n0=; b=mVzufcXf2pCcfgow2H4I
	4WfypG+vvaw0CzCW++E6pTpghodG+FWoDs6BVs6KJ0S5ax+QoUq9WKejdXaFgdDC
	zLja6YCEkfnadgfeB1VGSe2SCvda7B7N7i2L8+ThOPWO9qFK20FjQCcWYDFmzdBC
	20U6oQTvaFskSjER5kpMuCM4lZEjNlShSfl00FqW0aiQcE2/I0pnskekj+3kXGSG
	4vayQRhLxRv0jJveM/536o64o1xRf/RQb4L8pfKRfs7W9BdcEh6qNzsELNadNr4O
	XcQcEjfYwfip0kGKCO/okuRxMzt2MGQVFxckDlBloIeyrt5bstYIvkkuhSTgNxB3
	cg==
Received: (qmail 2418933 invoked from network); 4 Feb 2026 16:47:02 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:47:02 +0100
X-UD-Smtp-Session: l3s3148p1@UtCVdwFKnOkqAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:47:01 +0100
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
Subject: Re: [PATCH v8 7/7] mmc: host: renesas_sdhi_core: support selecting
 an optional mux
Message-ID: <aYNp9Uqj-Sq67T7N@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-7-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-7-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074706_265937_FA9C3197 
X-CRM114-Status: GOOD (  11.84  )
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

On Tue, Feb 03, 2026 at 03:01:40PM +0200, Josua Mayer wrote:
> Some hardware designs route data or control signals through a mux to
> support multiple devices on a single sdhi controller.
> 
> In particular SolidRun RZ/G2L/G2LC/V2L System on Module use a mux for
> switching between soldered eMMC and an optional microSD on a carrier
> board, e.g. for development or provisioning.
> 
> SD/SDIO/eMMC are not well suited for runtime switching between different
> cards, however boot-time selection is possible and useful - in
> particular considering dt overlays.
> 
> Add support for an optional SD/SDIO/eMMC mux defined in dt, and select
> it during probe.
> 
> Similar functionality already exists in other places, e.g. i2c-omap.
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

And to confirm the obvious, no regression found on a Renesas SparrowHawk
(R-Car V4H) not using muxes:

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
