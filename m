Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1192EC61DD6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 22:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e27EyUWhBAFk+GP0KY3KzyL32IC5s2Ce7FNGbB0j5mY=; b=uaAg/O8fuLMYeh
	RXK8jAs6ssRVtns86eR95tSYmAgOuA94Q0qjqlaiNpenbLUdXrGhDJ1906BTDyXTpmVv3Z6jY7zkT
	NtHX1WHMRK+Jy09+i6nAmUBkf8NZPhraR0N7xenN0Y+IsY8dis/oz/fZMNUZqYdTIWWXNipUNa6/B
	zhMPRXAOtk9vlhAymba672AuxpJ+wJxYdPdnM6Fs6K5PDAdwg41KQX315i9Xssr7xVbjM8JmbsNnN
	5gfA2SyDfjm7oBpGYsJEnNgyhsZ7xUCRtRFvEDFu8K7Hjr5PE9nIbAY6+/YzY+SamuRTNcS1m4e4V
	NeAhqOnJDZ4kGLCOkZZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1tNA-0000000Fzpg-1h2Y;
	Wed, 02 Sep 2026 22:24:00 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1tN5-0000000FzoX-2DS1
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 22:23:59 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id AD5414E414B9;
	Wed,  2 Sep 2026 22:23:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 682F45FF79;
	Wed,  2 Sep 2026 22:23:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C898611C795A7;
	Thu,  3 Sep 2026 00:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788387828; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=WYk4FNP1vreOpbsIcYyMXKlgV124hwvOajDLIuuzHrM=;
	b=Hsl907RxhvM5OKbp5zT4sP1a5g1yLrMhcO+HShZown8lOdBH+BnT0SyRlBMlk8hUOY1krb
	JIqR4LmjtpWkXVSS1VqEP5Gp0ZCx8h/jn3O9ntVTZ8pPUTQahIY1/MZRNht9hm74AA/gSk
	Bi6Vchv25i8u2PZqgqny+GrTEzPf+XkuMTuLRx1xWl/meYF+lhgG3ETQoJRh5r0Ci15Gjq
	AueIB5XXKGt0H4MoWuOyCH3FPDvM8XpSPa4m30H5b1DWFRV65ZVHYy587IJobAMW0yjkae
	oDKR0TFuC8yYm26+U/DJwCRXXS3pT7mst8eLn2+qQLzABqCqO3ULLB+Lhu8LIw==
Message-ID: <50fdfff1-1597-48bb-b164-116d5ca4e865@bootlin.com>
Date: Thu, 3 Sep 2026 00:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 01/10] net: stmmac: move XPCS lifetime
 management to platform drivers
To: Coia Prant <coiaprant@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-2-coiaprant@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260901150111.141037-2-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_152355_718652_51ABA2C4 
X-CRM114-Status: UNSURE (   8.22  )
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

Hi,

On 9/1/26 17:01, Coia Prant wrote:
> The current XPCS creation logic in stmmac_pcs_setup() is problematic
> for several reasons.

[...]

> 
> Existing platform drivers (intel, rzn1, socfpga) are updated to use
> the new callbacks by moving their XPCS creation and cleanup logic into
> pcs_init() and pcs_exit(). In their pcs_exit() implementations, the
> pointer to the destroyed PCS is explicitly set to NULL to avoid
> dangling pointer references.

Hopefully this covers all the glues out there, fingers crossed for
the qualcomm one. On Socfpga at least, no breakage reported :)

Romain may be able to run some tests on rzn1 at some point, but I
suspect this is fine as well.

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
