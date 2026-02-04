Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94002E9D401
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+R1fN4/qTCTaEF6UIKQevFe1/QPL/FN+oX2WD5Pku8=; b=Ghi1kh1wZDdj8t
	EoKjrb6n4XxDzCoRq3MZ+y5T216e9rT9FPbVFV8WJsHdxHLEC85zDAxekWhiasqdFqgJoWZ1i7exk
	6yq80jRr5wvlZtnQ9Ab11xH4QQcLhhT6Fm3ZsI4s7/MjA1UydWtrApI9hUUd2nvqYsHh1p3DutdSG
	poMwbJy+RS12Q1rfvQM64Su5OTbMgP/S4X/5HgwMm63K89PL9MmvoGzfZdEbhEg3Hou1I30KhNTot
	/W/QYM1GguOo30pHjrJsqTQ1Ix/AuT+KJd2qXyssmhIzJwht3fE+vvm79Iz3ClkCkHTZzCk6nlt9n
	nOgEI6g7Tio78UOlc4Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefk-00000008eKj-1A2Y;
	Wed, 04 Feb 2026 15:20:04 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefh-00000008eJP-1Mis
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=RTl3
	4GdapOHrIFn2PsIr7Sa6lCunHmnETaAYG/rtoLw=; b=me/u1gQID+44jQjIesVI
	qxsadN9LfXybobPB9QcuFB8skQaPT+uIozPEagA/w+78A09XQP/zu3W07vGxYxNu
	R9DgZPmtDhZu/8vG/MA/U3QCizJ6h5rVTBV/XVv4Lgaq8n81m3swfOOhBs9+uwog
	seJ76VcdLcG1LqPz0toy0VR8+bsNUW+AcvokqjjeergnSxqvAFLMvUP6tofpPv6X
	QacoOUtIQ6/km4mduTorqF+DV44PFzt56fch+KJNRe72JaP05yGVSn9IBVae2Wu0
	hetMvSlaz7Qv2rp70r8IchiOtk2wUpMFESyLtXYmqlGyNSbMfYVYFntOAyu878kC
	ww==
Received: (qmail 2408564 invoked from network); 4 Feb 2026 16:19:58 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:19:58 +0100
X-UD-Smtp-Session: l3s3148p1@cTHPFgFKnLgqAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:19:58 +0100
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
Subject: Re: [PATCH v8 4/7] phy: can-transceiver: drop temporary helper
 getting optional mux-state
Message-ID: <aYNjniyEZ355QE28@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-4-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-4-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_072001_645229_BDD620C5 
X-CRM114-Status: UNSURE (   8.37  )
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

On Tue, Feb 03, 2026 at 03:01:37PM +0200, Josua Mayer wrote:
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.
> 
> Switch to the new devm_mux_state_get_optional helper.
> 
> This change is only compile-tested.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
