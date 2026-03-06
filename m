Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE63FCB613
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFNnhW4SkapstgAa7Fvf00OWe00YBQ8D+X+A2l+OqF8=; b=T4h25ZCAHj4E9H
	kAnwfbn0skSrg5MorJKbXz7fOijksaumiV9fASmXSjs1QoD5Rb/kg7lLRpnT16MfANnof+X19Cb2I
	dMMgWBTRxyuUAqe04NpkzEkz+Xns0Kk2gtbLgzZOXQlAnnp8rIz9AtullhakHBCWs42wsG/SLyJgh
	FoszB63jOZwSPSYvnJAaroYOxQ0fiqjbrQgQsB2lkqV09Sqf5xz9eANBAqejf0UhCo1cEAmXX8I0K
	oHFKzN08+RC9n9m8r6b9CnxCLldFB1OJjMgYF0ohYzoewEGxuG3SgppmazxeHiIzbDCsvpppsAStF
	Vt9NYMItoXJnu8ndtTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXAH-000000042ke-1sQP;
	Fri, 06 Mar 2026 15:32:33 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXAF-000000042kB-1zaJ
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 15:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=/plQ
	uPXVcBaLPypqZ33pHs6uD47hDeoGcKqm3CV4JKg=; b=ZhdWF2CrB1OCdDkJHZtA
	JfTOlvS0uOzPkyIa1i0YLFeRoTTEy66ZvFG/L5txZRNrErvg2+1wtOzYSPtKKrCk
	C8hx9u9Pq4vBfMbaxCXxbbIduGg8wMtMKP6cMeltFFUxyXsBi844LmD6t4E4shQC
	VyUjOJ0mTq5wuWMo1YCHvuyIcMjZXDbF8c4yWwTkIBvb8b2fXPWCbg+PduSSbtoc
	ELA/4zd3Z8i3BuCBbQJe0NS5pGRVNMwjwSH6nYTGQbQWwMxGVDzwLcQ+HzfHcgnO
	bZD356c/LZpupu7xNLulohpsR5xelk9GQ6jj3c8qHYBHsuyfZkTyMbB7bz7ojgyE
	ZA==
Received: (qmail 1689275 invoked from network); 6 Mar 2026 16:32:27 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Mar 2026 16:32:27 +0100
X-UD-Smtp-Session: l3s3148p1@zQSpwlxMYq4gAwDPXzF+ANZpdrMKUeLI
Date: Fri, 6 Mar 2026 16:32:26 +0100
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
Subject: Re: [PATCH v11 2/9] phy: renesas: rcar-gen3-usb2: rename local mux
 helper to avoid conflict
Message-ID: <aarziuO2KVlAydDe@shikoro>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
 <20260226-rz-sdio-mux-v11-2-c2a350f9bbd3@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-rz-sdio-mux-v11-2-c2a350f9bbd3@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_073231_875668_4E2F7F70 
X-CRM114-Status: UNSURE (   6.24  )
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

On Thu, Feb 26, 2026 at 03:21:10PM +0200, Josua Mayer wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
