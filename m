Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 803B8C88E72
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 23:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q3Ekr3RaK+ADs+tax0Mu6u7KDsBQQZpxWdwDweBrR4=; b=gRZTeLc8YQO3Gc
	RnNPisC8dSZ+nrC2fNzDq1QkP3+xCMR9npvHmSBtqIj3L1JwC2SK4FgCFBvzEv3XFzM8Oeb3GS0iq
	hXw/DGdH3yrXl1EAPd0zlnAI2e4HX3Iz0jc+Jcc4lVXMDO4dmX/o9nKJMKhlGenmFE4oNvKMIpx7u
	UsLQHHC52jkhQFYjNlMjggMx4nFiXaOgzArohoz+KMPY7MmXK2jl+1sPA7DxTDP9sCbpDYo7BeGqP
	bzEIMlx7PGe9iXtRbj7ZzpD2N3xyUuyx+1eDl3iXGwQpeH+tmqJxkvLlcSLKrVin1/Fse906Z53ZI
	oGtgsDFjdGJxJwWUeZlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6GFX-00000004s1G-3nhw;
	Mon, 14 Sep 2026 23:38:11 +0000
Received: from m101-out-mua-6.websupport.se ([2a00:1968:0:9:109:235:175:106])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6GFU-00000004rnR-2grj
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 23:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=palvencia.se;
	s=mail; t=1789428823;
	bh=57CV0ODspZehrGEH+otFsUBqkwpzxPHm6Pa1D+qTYsk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=escwVh9k0khvqVyx48hm0OutobA5BT6nHUHrMBRKjtstQHolUlz+DrPUlclymwgbT
	 fIZH6SAvw9XUNHqjG8ckjsB7X2NjKlUsRceQl/bfZurUEIdaiTlGd7OzlrCtfFnAjJ
	 109vaF0z2lYO+VlLzJE5dmdb3+32hqxnWP30QFcOeFMRrZF6kZbVxq7WLA9bMpSd8Q
	 cE7LkhtkpZYjt+Ew2b+XVLUXCJrAoSWc3DuLjIJ/knhBQoq5SjxBil0Kt5khPD7Ndy
	 ksnWR5WQT+fqYUDnuosfzcsKVWsRx48RMIHsFI+KOlecDMzGb7JCx1PwqldopCnBMH
	 mlOqPmJ9WAeAQ==
Received: from m101-u5-ing.websupport.se (unknown [10.30.5.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by m101-out-mua-6.websupport.se (Postfix) with ESMTPS id 4hkM0l4KPrz1ttD;
	Tue, 15 Sep 2026 01:33:43 +0200 (CEST)
X-Authenticated-Sender: per@palvencia.se
Authentication-Results: m101-u5-ing.websupport.se;
	auth=pass smtp.auth=per@palvencia.se smtp.mailfrom=per@palvencia.se
Received: from rpi (unknown [213.204.219.80])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: per@palvencia.se)
	by m101-u5-ing.websupport.se (Postfix) with ESMTPSA id 4hkM0h3w7Mz2XZd;
	Tue, 15 Sep 2026 01:33:40 +0200 (CEST)
Date: Tue, 15 Sep 2026 01:33:36 +0200
From: Per Larsson <per@palvencia.se>
To: iuncuim <iuncuim@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 6/7] arm64: dts: allwinner: a523: add DWC3 USB3.0 node
Message-ID: <20260915013336.68ee3611@rpi>
In-Reply-To: <20250816084700.569524-7-iuncuim@gmail.com>
References: <20250816084700.569524-1-iuncuim@gmail.com>
	<20250816084700.569524-7-iuncuim@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Out-Spamd-Result: default: False [1.90 / 1000.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ZERO(0.00)[0];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:35790, ipnet:213.204.219.0/24, country:SE];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_X_AS(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	BAYES_HAM(0.00)[26.18%];
	LOCAL_OUTBOUND(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,csie.org,gmail.com,sholland.org,arm.com,baylibre.com,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev]
X-Out-Rspamd-Queue-Id: 4hkM0h3w7Mz2XZd
X-Out-Rspamd-Server: m101-rspamd-out-4
X-Rspamd-Action: no action
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 804
X-purgate-ID: 155908::1789428823-3D7071C6-CF8BE965/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_163808_984966_67BC591F 
X-CRM114-Status: GOOD (  10.04  )
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

On Sat, 16 Aug 2025 16:46:59 +0800
iuncuim <iuncuim@gmail.com> wrote:

> +			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;

(Sorry for the more-or-less necroposting)

This is the only mention of irq or interrupt in the entire series,
which at first led me to believe there was something missing given that
there's a "Nobody cared" message appearing when the port first detects
something connected to it followed by something about the irq
being disabled.

Now I read in the text of another patch (adding a TrimUi dts) that this
message comes when an interrupt storm is detected, and given that the
value in /proc/interrupts goes from zero to 100K in no time, that seems
likely to be the case here as well. 

What is this interrupt supposed to be about, and can it be handled
better?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
