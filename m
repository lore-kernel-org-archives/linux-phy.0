Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61A7C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y04OC6SSHseLn0VVxH7Te50dqx93oM0UDeXdWK3Ryrk=; b=DqJTBhon29AnYO
	zxFZtbpc6wbK3ZEKXuFdXmz9dm2M+tf4EYfu4oH83r8B5c4q0Toh5D2QxGWo6fKR1QNj/siRuPzWd
	3Fqrmavq8S6UT8hZlIsgob5UnhnLm9v7lhQ+I92/wylY7yXLqrlHPmz4NPxZWjGLtJwNMS4WvnaNB
	0xViJaZTD0Eq1BRW00jrPYdjZ1IUQBYyOfqL0VqNcWFL71RS30RuB6uvvYAqbdsFAoHBVIhH6+uR0
	5GdcC6wUhoc2gptgkdcyKrKjjnut0uszb0GYjXQ45ICyt6GJslVUfQn1S4G53Vd0RA80jyBqCrIF9
	foJL+Xw9990aYejZO0Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxRY-00EPxX-Dv; Thu, 27 Jan 2022 05:35:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxRV-00EPwO-Ju
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:35:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4BFD1B82025;
 Thu, 27 Jan 2022 05:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A566C340E4;
 Thu, 27 Jan 2022 05:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261731;
 bh=eShf3b9uqaeTw/KIVZFTE+K6i4YAfGEDzgA7Jc3OfC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oTmDi86Pbqbal5l9qZsrDwlfxf9ZhrsPP7ls0gH0QyxrFnJYNpmjnQu2y7oOT9hU+
 o36gTbRcMyXWnHI0l00YiW5nz5uxDIMi8RUasbBnHCHYJc96uYmKi+jCD5tMh0Bb+o
 IKuc9pcJvncCmJ1hAncePD90gWEMN+ml8o43sdwpEIQZUbwaqA0RKjE2aAHRZa1vLN
 mDtfEQWtjJ9ycVw6358o48N3bXg8FYCGhO8tlLMffgIp2dSU/db06sMogRXnLNUsRY
 XrtT7eXa2kzbwiAoKnxjqA4RL/uPPL70G9uYKq0WdnlUXwD57ZAe+24m9uOy5jAsGX
 oYApgMDf/teuw==
Date: Thu, 27 Jan 2022 11:05:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, Li Jun <jun.li@nxp.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: freescale: i.MX8 PHYs should depend on ARCH_MXC &&
 ARM64
Message-ID: <YfIvH/f5ZoQQzUF1@matsya>
References: <393868affd830016d35f0d9aba32ccd7098c8073.1641987369.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <393868affd830016d35f0d9aba32ccd7098c8073.1641987369.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_213533_818858_42152643 
X-CRM114-Status: UNSURE (   8.41  )
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

On 12-01-22, 12:40, Geert Uytterhoeven wrote:
> The Freescale/NXP i.MX8 USB3, MIPI DSI, and PCIE PHYs are only present
> on the NXP i.MX8 family of SoCs.  Hence wrap the config symbols for
> these PHYs inside a check for ARCH_MXC && ARM64, to prevent asking the
> user about these drivers when configuring a kernel without NXP i.MX SoC
> family support.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
