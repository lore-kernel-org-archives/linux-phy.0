Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B00FC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRgWqYDlW2SsjHNV10isn993an/XCBqdHI4vBm1gD98=; b=QUAH0o4Ao6X4av
	iXZApupG6ctugAF9vlDeT5CQ3C7tF9T4azJMMHxH+w3CNHyQE/lcC0a6LL6/qu5dSy5NnE7KLxiTt
	JTvjIzc33sDMxTaMi8hn0vjKaoJogq+p8Mb1ZoF7w8hT9t5y3Xgx0o0LtvUb+XcWQKHjxJE8KqTpO
	e7XaxjoRbo5bgXgxcVnpmqghvTJe7E8+mbdD7xyzsRpYWt3zFJuqcOn78Jynu+LDP3emKjNuSmJBH
	m+2Skx3riNuRL8O6K6LHmgQnv7tGfFP3ykedEOeE83WHmBz2jh+xwjKzxLB4E3OlnD8nJKNzO7QuI
	SuiLSgFFEfuUgvTqUGzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpOfB-000vFQ-LC; Tue, 23 Nov 2021 05:48:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpOey-000vCc-KY; Tue, 23 Nov 2021 05:48:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E28E60174;
 Tue, 23 Nov 2021 05:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637646484;
 bh=s5g41jYrdtxlXA66zVRRQhw+GXrmib0rXuZHEcHaZWI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uIDUW0ytL9AgGAD0JVqJu/WnY8a+CxtN/MO5tEZdwN65QEuvwdYUmq+Ute2eSv9oo
 guOQtGiMEUutwnOA140LRGGcbdtuPrEyeSbTg4lZfDlCDGjUnHfAb2OxCINfYZwfva
 1aD+GyVwOWBoBmgGNYBcoGHWFNHazz6AFKVVxOaHuPId5K1GdZjjbXsjEQVYUaxWuY
 tgS1vqaN9IGMc+qS9yqsGML2ixVs6uZBHwOwVvgF7sozq0aRo+g7BlKtAfm4cDhRBT
 1awQZcMEPMTj1eF4op3CX8QIUDO2oTtp8S55+oNkGXMefXqhwpEp/4/X6l/6hvmx57
 zwtBiUlt7e44Q==
Date: Tue, 23 Nov 2021 11:17:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, kishon@ti.com
Subject: Re: [PATCH v3 0/2] phy: Add support for the HDMI TX PHY on
 Meson8/8b/8m2
Message-ID: <YZyAj/Co1e0SLU4+@matsya>
References: <20211020195107.1564533-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020195107.1564533-1-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_214804_717747_5ADB8AF8 
X-CRM114-Status: UNSURE (   9.04  )
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

On 20-10-21, 21:51, Martin Blumenstingl wrote:
> Amlogic Meson8/8b/8m2 SoCs embed a HDMI TX PHY. Unfortunately there is
> no (public) documentation for this hardware. The best thing we have is
> the 3.10 vendor kernel, which unfortunately doesn't document most
> register bits (only a few are named there, the rest is all magic
> numbers).
> It is possible that this is a TranSwitch HDMI TX PHY based core, but
> this is pure speculation.
> 
> Adding a driver for the HDMI TX PHY gets us one step closer to video
> output on these older SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
