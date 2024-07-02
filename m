Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 942FBC3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 11:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxhpCSHtTIW2hSIxv/SX3GOQ07PzSDckEQtbmDOUygY=; b=X+rOHUkBcQ29/A
	3orv2vqlMvTy3iWIIgoeLw4SnbnJjNZQnXFvjU/ibzIop2wTxL184j6tYDVBOeMMa37GlFC4Rv5KK
	/MiBO+gEALtwAH6DJQae4Ht+mobaAjxjaxB0ILvjeoAC9gjZ6kKKKm2kncBUSLBzPDeLNG/0Fql9b
	IUoJrJsuTLLVtHqcDW1r3yXW0nc6DQalh2rE++JQLsAs64eIyLWtcTtLTQy462GE/UZRwVpljuFxg
	ot1bBMP2q8lbztclzVU+K6vZYpFslx3NRi1JpcTUQfHJPlArAT0Vpo+IszXYw2eGG0Pfg7iKVdD4Y
	2XOGBICnUkmP8gDNsakg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sObfY-00000006TBa-1IC8;
	Tue, 02 Jul 2024 11:27:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sObfW-00000006TB9-0mwx
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 11:27:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4160761BFD;
	Tue,  2 Jul 2024 11:27:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 683F5C116B1;
	Tue,  2 Jul 2024 11:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719919647;
	bh=J1aGWYIK3dI8RIBmHO1WHSAht7+unjWyxWImHlH5rhM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=czqfXp6TB2fdguQW+IH+1cQjsVqxPhoqAVL4U0+xdcNSlfxqLcHjb3MAqNTr+NnNB
	 o6aADD0U6DupD+pvX8G8IhdoWNkF9c/2SRhJDCn2wdmB0Qt6+gyTEjrnWvbwYmjK1x
	 bGxFt/RRjlr9WYuigGZYKkzLcW8Y4KuKTDYYD+iRVXEei3XPGrGCfVzbgOT1JvMXly
	 TJPM7KrH5wrRI3YtgtmUcnjqlykDZlAhDltqtW8BdMEpuJhIUf9lVjrQbPf9at+yFv
	 bNhUlxGX3dycZRBYiQWGJVZsOr5CkmelPidTfSH/nCTQnqqbglX57j+SHuiusiF7sw
	 Il8/T2DsCa9XA==
Date: Tue, 2 Jul 2024 16:57:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: Re: [PATCH v4 5/6] phy: renesas: phy-rcar-gen3-usb2: Control VBUS
 for RZ/G2L SoCs
Message-ID: <ZoPkHNYyy2E_ONRB@matsya>
References: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
 <20240616105402.45211-6-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240616105402.45211-6-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_042730_295674_44F0682F 
X-CRM114-Status: UNSURE (   5.65  )
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

On 16-06-24, 11:53, Biju Das wrote:
> Use regulator_hardware_enable() for controlling VBUS enable for
> RZ/G2L alike SoCs in interrupt context.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
