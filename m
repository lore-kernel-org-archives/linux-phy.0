Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 644B2C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGGPJy7fOTysLJJAw7CLaiU/Zp/3DeIQQu8qXa5TTwQ=; b=V997bpXZBvYzF5
	emx8a7S8YZZ9wGGmaT5TD6gexelBZifC8XkGlZynDYllSPotaKnHkwYX9m0cWVcjPyLmrND4MepYe
	Yez+sXi3tm0ZSVl8hwYSOzCUoMR6LHE3vTNr2K2quutVMIE7C6/MZqloJK1P5rR7jwz0TjlFiG/R+
	PKn5Cc7vo3dEwY+/OvJ8GPiOUV9DkB5wt7X0JmmmA7b5oQNEwLSTyn0nrxzdubypNxXSW0wZ9OrBl
	zDtwIKKTPk5Wa5ptHAVmyebS9k4BqN9MPG3HqH+DNPZduXW+Qa0p7Z56+Mp6kYFSz0RxS9/G9dtlQ
	FlLx69cg/x1XvC+IHgcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvYe-0064KO-09;
	Tue, 16 May 2023 14:21:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvYZ-0064Id-2X;
	Tue, 16 May 2023 14:21:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 36CFC63376;
	Tue, 16 May 2023 14:21:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20626C433EF;
	Tue, 16 May 2023 14:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684246898;
	bh=MwJW9qECEUezZaNFCk5dvGd5LQA0WLC9PlOo5V0Szu8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O07aAXle6UZY59B29dlg7giCM9zC+nl0L2AfWg+B/oCeecFIUJ6ucQytbpbJxOtz7
	 Eqg7pGh2LLmu16ltEMCbXXLLmHjynher+DYHr8jp09yJSeeKfg0NjmlZD2QFKaToEX
	 UXjRQxzUHVIs65KQS200+OQra+3vCMo4GunjMCl1/WXj1zYAvUBCLdrD6r2o4ylqNH
	 GCRhNXaseb1i0AKGNFQtAyxPIFYn1oHMhnkAGt7nJVNqhh1/xINTOaTCadf5WIa02o
	 08kYCB3QKEb3fhvhJ/Dov+TD20amWGgUxOSlA8sdSSBh5BBfcSaxeziYsWRKlQzE/A
	 GmWEUwGiy07GQ==
Date: Tue, 16 May 2023 19:51:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kishon@kernel.org,
	kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] phy: freescale: imx8m-pcie: Use
 devm_platform_ioremap_resource()
Message-ID: <ZGORbzUJkNaI/U4l@matsya>
References: <20230428052758.38636-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230428052758.38636-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_072139_867439_04813718 
X-CRM114-Status: UNSURE (   7.86  )
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

On 28-04-23, 13:27, Yang Li wrote:
> Convert platform_get_resource(),devm_ioremap_resource() to a single
> call to devm_platform_ioremap_resource(), as this is exactly what this
> function does.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
