Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4051F3ED4A
	for <linux-phy@archiver.kernel.org>; Sun, 12 Apr 2026 00:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsdJF1XUJ8ElNg6P9xA36JGCY2ysxShfJ29hc35yWyY=; b=Aza8udA1Ctq5VU
	ULE6zWrnNTsa4k8rP7sD54wO7EPRdiK8Vq/fWE/wYQWghz0GcQ6LePwgq7LM/pngepIUSC5ccrlwe
	kNQWElPRjbrOcuumzzxE43lln3rwFZJidlME3NkrigBReYbTAJbVjRzJ5jzhhvCwCd4mKP39wPTTv
	0VJV6TmXPBCJ5g5DMkJZav+YPJr70ahs3mxsW8VEOKMjye8XF62SjTfkUjH7yJl5QE+LxcTBYYiJk
	lD2F0RGWcxAh+usERnc0lGcdRqFrjejfLVdHIfmVPX5ToeGqPNm0SlMVtPsiJzOSOnLeVzZF0rQoz
	thqEgOQs0Q1NOlLg8VnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBida-0000000DuuU-2OxB;
	Sun, 12 Apr 2026 00:25:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBidY-0000000Duu4-0Dh0
	for linux-phy@lists.infradead.org;
	Sun, 12 Apr 2026 00:25:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5107B439BA;
	Sun, 12 Apr 2026 00:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 229E5C116C6;
	Sun, 12 Apr 2026 00:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775953515;
	bh=jC+7wE8oC9xbk+dHMqt+gP24pzKu1oVB11qgrU0Vvww=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=GRMDwjlmc60AlAZfLY/n5TPWlzxmJnp5nk31S9gkaQ8taO/cSeBIaOy4C4D4fSzxu
	 Wzes7GaYSdbwURm0gVNSDIvQtPoSTaccIi2+kMUoP65SAskZ4JUy1kRj8z+AiAL9+G
	 7EAN9CYiy2/DHGka7a3cjNDm45WnjGHOltNc/+1+pWZkPTe6O9uh0B5Gfkq7j9sFWv
	 X6yj8WwLc5COS7w2So+ItoUKMtr692KlRd/bHOUPkaxyeNF6rVm2Nb5XXjkCKbrSJG
	 PRAV8TFHaYU2mCt61YeFun2FVk0q5qkSnWS6xqYzbq6/K6bU7umUFA5Le/ZloMdA/h
	 +ROCp761w1DhA==
MIME-Version: 1.0
In-Reply-To: <c6dbf9b3-3ca0-434b-ad3a-71fe602ab809@gmail.com>
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com> <c6dbf9b3-3ca0-434b-ad3a-71fe602ab809@gmail.com>
Subject: Re: [PATCH v2 net-next 2/5] net: phy: make mdio_device.c part of libphy
From: Stephen Boyd <sboyd@kernel.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org
To: Andrew Lunn <andrew@lunn.ch>, Bjorn Andersson <andersson@kernel.org>, David Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Heiner Kallweit <hkallweit1@gmail.com>, Jakub Kicinski <kuba@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, Paolo Abeni <pabeni@redhat.com>, Russell King - ARM Linux <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>
Date: Sat, 11 Apr 2026 17:25:12 -0700
Message-ID: <177595351299.5403.14005254929672297956@lazor>
User-Agent: alot/0.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_172516_112300_F4D78AD9 
X-CRM114-Status: UNSURE (   6.95  )
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

Quoting Heiner Kallweit (2026-03-09 10:03:31)
> This patch
> - makes mdio_device.c part of libphy
> - makes mdio_device_(un)register_reset() static
> - moves mdiobus_(un)register_device() from mdio_bus.c to mdio_device.c,
>   stops exporting both functions and makes them private to phylib
> 
> This further decouples the MDIO consumer functionality from libphy.
> 
> Note: This makes MDIO driver registration part of phylib, therefore
>       adjust Kconfig dependencies where needed.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
