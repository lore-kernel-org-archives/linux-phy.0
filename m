Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10A95E9D401
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJkpv0b7BwWSZLfGizo1ZEdOj4cSLip/f4/ngOPejUY=; b=avssWLczNN0fkG
	GaZlNqd32rqKeisH3EMIBhqa5N20VzZshZ8fsbxYC6+rqpGFscAMZgW6+Da300qy1L/c6bwNt+Uy2
	+DyHpTNisNsNyUSgucS7ONLmIKNhXR8x2treAlMcXvFRxKZFyLB4z2bSdKKzR4yhY8GxbW5/5mYeY
	35wwMThMjvC0ZJNIiLZj5dZoDGu6R4KhPG6c0bJjiHz7nfDtRV/E6hC2d/X3vzigD7ngV9lLfW31m
	f1qNpRHZ/Dlb1dGOgme1NhQRaqefauI0jp9gZh6q/MGI86GvhHyYqsfVZTuZLKqy+PeRJd39SahNK
	W2qMxkJiTgg/QJKJi8MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnegF-00000008ePW-3L2c;
	Wed, 04 Feb 2026 15:20:35 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnegC-00000008eOu-28ZJ
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:20:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=5kVD
	7ZK9Rq23Qxm48/E+ZFq7Pb5/q5q9CtWAw8ENk6E=; b=iDpy+5WfmKVMGBdFV1J0
	TTN9JXlJV5HJke6dbOTEr1Pm5y8G154f9cmqBmOXADSN2kRoD3SpaCHWXLPXP61Y
	/fp+4soTFLjWl9pPqXaROxx3PsbYP0S0db4hULK5VH3birII1GsFakt1p1ox2W6s
	sxjwWEgA4KDUOpUSkSNqYy617igJtb0LCGgG5Wal49PxWywiM759fVT+T2EtzsM3
	YH2NGM38qRfytJh6kerYU4wAW0Pmwb+NytZSaLf41PqSM8iEZl1Op209hizKS6oP
	C/L9xLKMoGbMEW3RVVQn6V3Z3+o+tr8zETZbaCfINoqAMrJSWBXYr0vJjflnD6r3
	eQ==
Received: (qmail 2409086 invoked from network); 4 Feb 2026 16:20:29 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:20:29 +0100
X-UD-Smtp-Session: l3s3148p1@jBqoGAFK5LAqAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:20:28 +0100
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
Subject: Re: [PATCH v8 6/7] dt-bindings: mmc: renesas,sdhi: Add mux-states
 property
Message-ID: <aYNjvPS6FVQ3JDmc@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-6-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-6-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_072032_824096_718F08C5 
X-CRM114-Status: GOOD (  10.06  )
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

On Tue, Feb 03, 2026 at 03:01:39PM +0200, Josua Mayer wrote:
> Add mux controller support for data or control lines that are muxed
> between a host and multiple cards.
> 
> There are several devices supporting a choice of eMMC or SD on a single
> board by both dip switch and gpio, e.g. Renesas RZ/G2L SMARC SoM and
> SolidRun RZ/G2L SoM.
> 
> In-tree dts for the Renesas boards currently rely on preprocessor macros
> and gpio hogs to describe the respective cards.
> 
> By adding mux-states property to sdhi controller description, boards can
> correctly describe the mux that already exists in hardware - and drivers
> can coordinate between mux selection and probing for cards.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
