Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D832C4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuRDFd0XwIvyTgXTqVnCVvZ9cc8dHmv/uW9Epsz71VU=; b=JQV2gphLJL187g
	Pul8VLIxwc1u/8eVZElwISBQ1c4OpUjfUvhl8IzQ/Yjb3bQdgX5km8zgZ9Lf6P/Ei4haIbLrtV6Oz
	8Mrt5PP8EAka8HqcReYYXRG6OVhl48ju5N3wok9Z9k9E4fFFpJiScfdtuicHrxyx707Ta+Uu3JSsU
	xc2biFeXn1S3OaH9sC9lZbp6DcvGSD1KX8Gxpx39vIB53RSuecaRRA3VqV6fH8RPjbuAyhMaD2Fwz
	x6uKhaGwEvRFUnhCmk158F70aDaHvouphiDd++x+rQYeUK9pnV8NiPv7WAZAHgE7XVI+dFxAE7UIf
	wM2VxzeMRPCNqGQ6Nw6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKIr-006iLk-GE; Sat, 05 Nov 2022 14:37:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKIp-006iL3-4q
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 14:37:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BE55EB80159;
	Sat,  5 Nov 2022 14:37:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1CFEC433C1;
	Sat,  5 Nov 2022 14:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667659060;
	bh=hRmdDSgYmti4paFbG1NBW78QVtapx+gTQIViIeaFG8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AQvCmVzqjcmJCYw9MEKEn280bjaNC8/Ee2tt2b4zODY/a4nMkTQnj+fDv0xSaZZeV
	 lSQ264PnR7jPKVvwr7qdmjGIVsy5XNYOz2LgQxcXlBxFL8aLISo40zEQGjup/yksS5
	 GAao9ZJhemhte60FYR/Ga3KKSc3osQEOkE+1kdTy4t3pThx2wX3a0kP9seKcl7GkBV
	 Vly9E3jwauAWHfnvHpeHcXFeErjGq46KyTRwJRRbTDueDF1uI942wyt9M//jTXCdmO
	 8PXjMcxDzgXg7fcy8PZxfYd9R6sEYszP3nryakp5drhlDpm8/31zvnD6SHHGn1Qn83
	 +3t0WwiR4oQbg==
Date: Sat, 5 Nov 2022 20:07:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, justinpopo6@gmail.com,
	Al Cooper <alcooperx@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH] phy: phy-brcm-usb: Utilize
 platform_get_irq_byname_optional()
Message-ID: <Y2Z1MB/eVNtR/OhA@matsya>
References: <20221026224450.2958762-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221026224450.2958762-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_073743_355513_27E5CB17 
X-CRM114-Status: UNSURE (   6.94  )
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

On 26-10-22, 15:44, Florian Fainelli wrote:
> The wake-up interrupt lines are entirely optional, avoid printing
> messages that interrupts were not found by switching to the _optional
> variant.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
