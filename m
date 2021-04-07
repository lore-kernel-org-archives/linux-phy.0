Return-Path: <SRS0=XdcK=JE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41725C433ED
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 00:20:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A186A613C4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 00:20:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A186A613C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:Message-Id:From:
	Subject:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VEh1JeqlSFV7s+Cq+D68t5rO8bYARmkaCnXbIDAp6Ig=; b=mlWtr2gW8iBnz8Y0FZhK6qkYS
	cmqios2ATOAhMOb0z/F7RyQWk0w8QNvw0qXMje+qE1QA8rNb+NeQYb9lBZvpA8/6WkLKAmh7X8dJr
	BZ/lUXpwoLLMTFZs9hYaTtUSwcxOWZZPa9U3ls0cmJyaW9B63uQFTz/Ydwu/FqUAmbY5VN678MUIW
	McdkxXBhWKv+AfvJ/hNPo6hPhKaGPSy+VPkoV7skKoI/JlG5Shk1Xzp8PmHiFliRShWSrwXWE+KO/
	XVfjsXOlIJS5HrUVJtfORXwRo+kfPNaWom4mM3NMA2WqSibHVkdjsdmbmoNKJIamdb3Q6IiBGdm8m
	uo00Rxdaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTvw8-003fR2-IB; Wed, 07 Apr 2021 00:20:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTvvd-003fPC-5z; Wed, 07 Apr 2021 00:20:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 12A42613D0;
 Wed,  7 Apr 2021 00:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617754813;
 bh=68ezURRB4IzMUiiFsKN47apLoSsRPZ+MXLR9pJgl0dk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HPpNXmeN7inrJ64lopW5zGrefa3HtQKEBPDRvgn0KYeDZRczof5Q+UZ0OkP0qnjql
 S+aUIJwJ7XFF15zfSnehdq8yeZThdHndKYi8eIIVD+ciGECReXqV3rf9LclM7X3IYg
 XGH/ydAu5JZ2T0u2yxWGanAGwe36u/9uRehE+sKJyvEmt8KUctPvIS5pvUYcMRomml
 YyfvQxa1MqSwNMgNzS0nRRz8jfd/aSK2SGfUsxXwSGRXeLZpU3YPT/zQqkNGaxkzT0
 hERcyipbn7h23+vXd/K2gL0ml7Xk+j2QNMIDyntL4diD1BvByCveWSAqLtSfs69qfS
 H9tIqVivSFHLQ==
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/1] time64.h: Consolidated PSEC_PER_SEC definition
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161775481302.4854.4555470311488320359.git-patchwork-notify@kernel.org>
Date: Wed, 07 Apr 2021 00:20:13 +0000
References: <20210406102251.60301-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210406102251.60301-1-andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: davem@davemloft.net, yangbo.lu@nxp.com, vladimir.oltean@nxp.com,
 heiko@sntech.de, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, UNGLinuxDriver@microchip.com, kuba@kernel.org, 
 kishon@ti.com, vkoul@kernel.org, luto@kernel.org, tglx@linutronix.de,
 vincenzo.frascino@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_012017_646963_5285A0CC 
X-CRM114-Status: UNSURE (   8.73  )
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

Hello:

This patch was applied to netdev/net-next.git (refs/heads/master):

On Tue,  6 Apr 2021 13:22:51 +0300 you wrote:
> We have currently three users of the PSEC_PER_SEC each of them defining it
> individually. Instead, move it to time64.h to be available for everyone.
> 
> There is a new user coming with the same constant in use. It will also
> make its life easier.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> [...]

Here is the summary with links:
  - [v2,1/1] time64.h: Consolidated PSEC_PER_SEC definition
    https://git.kernel.org/netdev/net-next/c/a460513ed4b6

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
