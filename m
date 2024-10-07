Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6787CFB446
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkA/3TEh6xJuhK2Cak/kB0X1i4d0gIBg8SYrQ77wz7E=; b=rpZ6PPgk51n13n
	goUZWGvjGWubt1RgKSig411DKLWw3IQQD9M/VUWlKtDAza2UK+zbO/Rno/Utx4RJ0Wi+19v0CPDJU
	lWh4nHINb64iUG7FOjMnoDkoq0qchl9hXoUF2cqsRysCLRGL72yD6FCHGpC3TbOBmq+7sLrMiJOn1
	zObfXi+rs6ke8drv7qni91c2b/EEa63s2jAHcFWR2uSJBZOtTHT7jUr7XQ9Y3juF+WjEFFiy5mRO3
	4GMDw6Rwki5XeljPJSMsYDVyEYrhUBP7a7qTtgyOYeOxsMovvXnE+/5JTkJc4WuniWhj42jUKgVJE
	Cscjj8D8AzC3oeMlYQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyi-000000031dc-1JVC;
	Mon, 07 Oct 2024 15:48:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyf-000000031bz-46Bo
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 15:48:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F0BE25C2732;
	Mon,  7 Oct 2024 15:48:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B153EC4CEC6;
	Mon,  7 Oct 2024 15:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316132;
	bh=Gh9ajqPoQnJUuZc9tYe+iYr+Iu41onmPi9i3M1+Dq14=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lWRuCFBFXN9I3S+L6FNYC5leJICEIhmOVccppeA4OaRo/cDp1ilMmnYTntzorhEIX
	 NNcY0o2pqpyPOSooPqhsis7a28Yl5pTLChwfRpYy+8IBfcSWRQMeqidP3ecyzf8Fmi
	 Ca69yzkvRzExzM0iPGRoQ9waVpJLbJQPxp8Z4tsUl0Kkkk8Z3alhA4TzHJR5phh83N
	 5in/M1bhDSMhrlwoA0XnyCDOO3+iv6m/gfnbc0FR6R4lju01Js/HM8EYJTtU2CCtSl
	 9KnYq/2TGp6ZLNCexGiXmbpOfwTQtfEy4rnAXSHJqevQhxulj42zSkxl/V8uMAwmnj
	 6NJSJyLGZcXQQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Josua Mayer <josua@solid-run.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240704-mvebu-utmi-phy-v1-1-9d3c8eea46e5@solid-run.com>
References: <20240704-mvebu-utmi-phy-v1-1-9d3c8eea46e5@solid-run.com>
Subject: Re: [PATCH] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by
 dts property
Message-Id: <172831613135.134526.5113681936204889250.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:18:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084854_097641_E825F0DC 
X-CRM114-Status: UNSURE (   5.78  )
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


On Thu, 04 Jul 2024 16:57:43 +0200, Josua Mayer wrote:
> CP11x UTMI PHY supports swapping D+/D- signals via digital control
> register 1.
> 
> Add support for the "swap-dx-lanes" device-tree property, which lists
> the port-ids that should swap D+ and D-.
> The property is evaluated in probe and applied before power-on
> during mvebu_cp110_utmi_port_setup.
> 
> [...]

Applied, thanks!

[1/1] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by dts property
      commit: d6c496f05e98c6d25ac73f23fd0075913620de56

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
