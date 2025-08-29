Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2261BCA1001
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 15:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mb8/GC2yZRn0OPTuhXEB5ZILezIp8okXdAJbO67QB6Y=; b=TQHbm3O+WunyYe
	5l7QVON3L1o/LVWehj8W63URaca3uhBhoy1ERLx858dblXng9lJMEj6fq+WS+Rex9Xs+VTx43bs1A
	yX2g+L7WYCXlEvU0wuoH/dbS6KU02ABQxyxAslb1rgYzen6pFtyL4xAyo6EmNb6H/UbVr0dXBPTJ9
	LhpYZLiivVTxXoGkvURuYJaFg4a/KAZVZ3sl8qyI6R5wBLPp9d8GGlYEElQ+VVl4nmou/tZQy/Tiz
	qOd8RwOw23kmBAGadxzauh/4cTD0l5jAD6D2cj/Wn9V1vfXQLkxYb7YjBlrvXflFbBP/YEY3Dfyux
	pKqVGelChckdb2EVAtGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1G8-00000006FFS-3LYx;
	Fri, 29 Aug 2025 15:43:24 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urxdL-00000005XJQ-0rEu
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 11:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=JIXe
	PVtJ1yEilNa7lXXAyCenfguPQ1RpEBwJ2aRyeSc=; b=FbW1SI+OuFQD0Yxh41AL
	WrHpMqYquPfWtaG2t+4So+hI831DlQfGhaCwEBZrDBAsAlhnfmKnYod7upMaWCZS
	o8ld1dNCJpeyCpvrPbqqPzTzPCOPr5+o3ilfxlgTrAPHWa/G9N7b90ENREYrnhew
	cI8re+s56olhwok8QDBgpnLF4DAIOxRgj1oUvckzjGLfDbrSAoaisccuomZxbjKG
	kYQ7VOwlT0MAZuRLhdjT40tkFn6H9fvKt3+2r5jlzyLOj/gHfeqzFxWuSEOZYCX7
	VTQdHU2rbvNnnSYGaj6/63x/cTZOn1SJoG0miLxV/4cMgkniGuNwhm5683RBuggr
	8A==
Received: (qmail 1440564 invoked from network); 29 Aug 2025 13:51:02 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Aug 2025 13:51:02 +0200
X-UD-Smtp-Session: l3s3148p1@P7PRon89LqwgAwDPXwOZADQgI+b4m0Li
Date: Fri, 29 Aug 2025 13:51:01 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
Message-ID: <aLGUJbA0szYQ_gN4@shikoro>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro>
 <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
 <aLGGmI8bpKNVaSAa@shikoro>
 <be706ee5-057c-4b0a-b0d3-54ca24087f3f@tuxon.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be706ee5-057c-4b0a-b0d3-54ca24087f3f@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_045108_688380_019691E0 
X-CRM114-Status: UNSURE (   8.51  )
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


> > Yes, I added it and it made the error go away, but still no USB. I
> 
> The drivers are not probed or you see no activity when connecting USB devices?

Sigh, I was so sure to have checked OHCI/EHCI but only EHCI was enabled :(

Checking with the schematics, I get it that only the rightmost USB-A
connectors on the carrier board are routed. Those two work fine now.

If that is to be expected, then for the whole series:

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
