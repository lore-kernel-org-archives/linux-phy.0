Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8FDEB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 09:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rofCfKQLpy9P60UuVOUQYlaEBeiugFxGFthJvFinAo4=; b=NCXR6LmIule67OVGLDD+qkIr8d
	S7bz8tglFg5N/CSGjAj6BQ6ZZFSHemjhO85TCPG/I7udoBlLHAzslhBUbq0yeC7x+O8wA6lpKnr3L
	4iEBFZ+x9pjIoCaViMBxk2h03yVeUEBqr5qAy8h2XqFe+8+odml6lra/8jRS7D97JydTCWDaU+yUV
	2seHZiqWwKLlWCcg9fBFOgnwWxz6JWoH7FeCHW5+K1AypYZFyqVHqCQT0MuOtXKGAoqBX/U4ElVy3
	cB7f84mk54EWGQjEkrK0yqAVhz0RJCtGaIuHXqyOq2K5lrQzmqW0dcz0bR+eBgxD3XQdpW7YFtq4A
	ZaQcJD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJWDk-00H3Ag-1b;
	Wed, 12 Jul 2023 09:33:16 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJWDh-00H39i-2Z
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 09:33:15 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:2b42:575f:41f:104f])
	by andre.telenet-ops.be with bizsmtp
	id L9Z82A00U4w94eT019Z8Ph; Wed, 12 Jul 2023 11:33:09 +0200
Received: from geert (helo=localhost)
	by ramsan.of.borg with local-esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qJWDc-001Bva-DG;
	Wed, 12 Jul 2023 11:33:08 +0200
Date: Wed, 12 Jul 2023 11:33:08 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Vinod Koul <vkoul@kernel.org>
cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
    Konrad Dybcio <konrad.dybcio@linaro.org>, Yangtao Li <frank.li@vivo.com>, 
    linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/5] dmaengine: qcom: gpi: Use
 devm_platform_get_and_ioremap_resource()
In-Reply-To: <168909383153.208679.15343948792914219046.b4-ty@kernel.org>
Message-ID: <c3373ebe-2f52-bed7-7f59-98e1268c9af2@linux-m68k.org>
References: <20230705081856.13734-1-frank.li@vivo.com> <168909383153.208679.15343948792914219046.b4-ty@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_023313_975995_EECB0AE5 
X-CRM114-Status: GOOD (  15.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

 	Hi Vinod,

On Tue, 11 Jul 2023, Vinod Koul wrote:
> On Wed, 05 Jul 2023 16:18:52 +0800, Yangtao Li wrote:
>> Convert platform_get_resource(), devm_ioremap_resource() to a single
>> call to devm_platform_get_and_ioremap_resource(), as this is exactly
>> what this function does.
>>
>>
>
> Applied, thanks!
>
> [1/5] dmaengine: qcom: gpi: Use devm_platform_get_and_ioremap_resource()
>      commit: d9313d9f1fbc14cae5147c5130bea54aa76ad65f
> [2/5] dmaengine: qcom_hidma: Use devm_platform_get_and_ioremap_resource()
>      commit: a189107deb574fd08018bbf2fe5cd86450a54b13
> [3/5] dmaengine: qcom: hidma_mgmt: Use devm_platform_get_and_ioremap_resource()
>      commit: fe6c2622473f3756a09bd6c42cffca6fbdce391c
> [4/5] dmaengine: shdmac: Convert to devm_platform_ioremap_resource()
>      commit: 0976421c5a339b1b1a89cfba4471a6de761130ed
> [5/5] dmaengine: stm32-dma: Use devm_platform_get_and_ioremap_resource()
>      commit: b402a7eeaa35aaa3300a4ba6bd5b381112ae183c

I noticed all your new dmaengine[1] and phy[2] commits contain a
"Message-ID:" tag.  Presumable you added a git hook for that?

However, the standard way is to add a Link: tag pointing to lore
instead, cfr. [3].

Thanks!

[1] https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/dmaengine.git/commit/?h=next
[2] https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=next
[3] https://docs.kernel.org/maintainer/configure-git.html#creating-commit-links-to-lore-kernel-org

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
