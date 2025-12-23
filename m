Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A1F2E6FE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX1KKAkbZDy/hnDQEdHdwGGHB9AGdBpSZG/PGg9aMt0=; b=LOb4okLt34bhFI
	nTB7rgZAQ5lW2X36rOUDlDrNSEhvhsI+GF2PqsaJHf2VgR893B/Up89FUcy3OgcCxg0uPc/b4U/AY
	xjiJYBq9ZnJEu/x1m+P5VEPvnplh2PguzUdvFU+Zc7TmHBhH6twfoK/5N46eO9XDpqzCsi+KvkFaf
	/Mog1c35BlHk21if7Rs3HH5osZdRZz9XjK7jj2PeYLtTDKBXbq6QFykxtbMNc2qDUZyKafVKXWGnW
	2HVXbx8YmLIF2WKcKUpXv1+9yr1wVR31lL3q6f43uhWvaHXIaPv9hXY3aPVWt7nQ4PiTYfp/zJXLz
	BN0HXAfvtgmxeg7G3LPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY5xg-0000000Foaz-2bUL;
	Tue, 23 Dec 2025 17:14:16 +0000
Received: from mail.andi.de1.cc ([2a02:c205:3004:2154::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY5xe-0000000FoaK-0iFX
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:14:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=W2QYj+Rp/ihQDRGeJxJWo7r32vv1mpFGwwybC+Tpkcw=; b=ydfrMiRjmmu47GyHyrYMYssfkJ
	HMcK/nzzXAgAFg3OTFQs7+aVFPGNiepo0KKdNVp9MhlTYE8XTq1euoC2O0S0c8SxyGepYV4BiEiNX
	W2UNq3AcPHQwbhVj+YaIGNoKK+H1ZzdsMCxPUZhP5p5nTnfBz3iZ3bnb7A2eU44bgbLbDabxF8KKD
	XOG9hzQkMoaQ2ub5lCTcF2UcM21MWJwJY1XsfDyFWlV9SrwFAzF2u7aKaxHI4/RPIza1tE0SV7Yom
	TolVoDNd6GD9w56z/QL3+6HrQSMQM24VqWDUP23VNW1H2ENDElUJrkb3hjpaAvHM2L8RRI3WcDZW6
	BKMfj8VA==;
Date: Tue, 23 Dec 2025 18:11:43 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Wolfram Sang
 <wsa+renesas@sang-engineering.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, Roger
 Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Vignesh R
 <vigneshr@ti.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Mikhail Anikin <mikhail.anikin@solid-run.com>,
 Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton
 <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 4/6] i2c: omap: switch to new generic helper for
 getting selected mux-state
Message-ID: <20251223181143.10d35211@kemnade.info>
In-Reply-To: <20251210-rz-sdio-mux-v3-4-ca628db56d60@solid-run.com>
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
	<20251210-rz-sdio-mux-v3-4-ca628db56d60@solid-run.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_091414_217629_3BBB407C 
X-CRM114-Status: UNSURE (   6.63  )
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

On Wed, 10 Dec 2025 18:38:38 +0100
Josua Mayer <josua@solid-run.com> wrote:

> Multiplexer subsystem has added generic helper functiosn for getting an
> already selected mux-state object.
> 
> Replace existing logic in probe with the equivalent helper function.
> 
> This change is only compile-tested.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Andreas Kemnade <andreas@kemnade.info>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
