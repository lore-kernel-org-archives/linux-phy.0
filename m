Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBDDCA0FF0
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 14:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm9xeSR4HAg61voM/pCN/OQFkJ4mICmu9ujfvm2bhj0=; b=p8RFDJUa/S17V0
	o7/b4R4Alb8JeVVR6vBNn3eWip8tmTbGFywdf923Ms+v1RqYmx7N9YTnhImXwxZI9BOKW75qQ43Dx
	+T3bMKgK+9fdchEulXSIaZZh17oPrTQJdux3Z3OUNS0XzNQEqR0LVT4S5VOJWlSGheOTka74uEths
	v70sWIsQRQ5eFNpcFTc5ajOIGqoYcYRo5R1PE4vHK1bGpg93FUWY7UW6MTCQz4nEDI+cK9uDcb9ad
	lVljd16zvxGRP3JQMdGbPzjazDWnHxv/oMlKk8W/22/w/SWA91Ov7QUcJiARvJSv99l+KY3vLqANe
	ULJ7IwJ9Aq0jSIzHearQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0UP-000000066mE-1zgC;
	Fri, 29 Aug 2025 14:54:05 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urwjO-00000005OAe-2UyU
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 10:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=E2se
	b6RdzeP44v6HWYjoVuEzf39+ad3i9v38SGIR650=; b=Z+nz1taA3zHfqbeUagJY
	jvBend6sl1lhVZAyvWeeMCtt1l8k/VcROV4s4iVGxJC52/p2BsPBz4eQxfKJJJ5f
	Dfcu/WFDnjSvOK8n0xP/AMOSTXOKllyjoGPtFTk7oPbwqSZy+V6aeyqOgCM9USIO
	3WdH0Oiflcr22+8JYkgLkOL+7Ul7rSu/6Fx3T20ucjY7wsJittD3XkR98SDIMpWI
	yvJlpLBmTmKT4sp3+qgNvVwcn2byqPbzMWGak27TXFqfED6s/5STlT3aNl0Wk6uw
	8Z5ovYCpoLdvMunoGsDoSznB4DXchatRH4l/JcW7foTcpCc7jF+LtPytuvL0fBUy
	gw==
Received: (qmail 1425040 invoked from network); 29 Aug 2025 12:53:12 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Aug 2025 12:53:12 +0200
X-UD-Smtp-Session: l3s3148p1@3KsB1H49CucgAwDPXwOZADQgI+b4m0Li
Date: Fri, 29 Aug 2025 12:53:12 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
Message-ID: <aLGGmI8bpKNVaSAa@shikoro>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro>
 <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_035318_908739_D81B27DE 
X-CRM114-Status: UNSURE (   8.95  )
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

Hi Claudiu,

> I just checked it on latest linux-next and all good on my side. Would it be
> possible that you don't have commit 2da2740fb9c8 ("soc: renesas: rz-sysc:
> Add syscon/regmap support") in your tree?

Yes, I added it and it made the error go away, but still no USB. I
switched to linux-next as of today, did neither help.

> This is how my tree looks like:

Mine is similar, except for a newer -next.

Let's try your config file next?

Thanks for the support,

   Wolfram


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
