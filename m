Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B3FAE77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 16:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOisVpZTe4RdvO+/7tuX9Bu+ZkhJs83co1qBsjtu+ws=; b=br0uZ3Y45z/QtI
	0WuYW/Fxy3miv4arPrMLka42SVY5H90KtIBKphbieNFJolxZn/GXaoJecBKnaXEem6w7MQuwarz5g
	nv/L+pJcDCa+OTBT6pcOyleUpxIa5dHApuzevreJgR64MaoIFd89YqUiwrTEFJDbTTPSljCDFzv6a
	H/R8oO6mhibuYPO9uRYAJzpV4vBTQW4lTiWrWv1V9pw/kJZOlW6z0lelULH4jWx1lJon4UXjUc9wt
	/o6Ez60d25Kt7essFubAgUhz7F+Ss0WaoTKLhzOXc8a5RVRmzHUaAVrXggB6Z8FzuSzO6fFKtJYlg
	gaukD52sQpl4TyWZiR1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvYd-0000000Cig1-2ux9;
	Thu, 09 Jan 2025 16:38:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvXQ-0000000CiPY-1Hpl;
	Thu, 09 Jan 2025 16:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=z9UpZErrRhZJ+XNr2Saci0uD2nfZNP71lsA6Oz7DQJo=; b=bKfj3VQVGMeppeg4/TDvlx1VLe
	WD+I3kq6zztiZ2TRBeVccS7rAIJR4bv+yvL/88CwZaKABVrkteVxwskAKfBv3qbq6TbDbPUwZ0WVL
	TCD5P/A9zpdYc47gkSrsb86riW7Qq03DLt6eaeFetz/PAIvID/k84kx9KaAuMqEBq4MKnepyfMsWD
	PYn4T/7zwxQOcpLDxdxDeoqsxlZlVXytT15EZsiMD3SyVxRjT14Iy0hccEvTH72+63Shm3/ZTqiM0
	XQpx5sQxwyM9wUUTYkfL/yYpOyLbELsSXWtX0WFMkm2lp7YG4xLki6gMn1RoxHqHOaa+a+AVoEtPg
	PmArH0Ug==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvXM-00000009bbJ-3Ys2;
	Thu, 09 Jan 2025 16:37:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 23665A41D8E;
	Thu,  9 Jan 2025 16:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B56DC4CED2;
	Thu,  9 Jan 2025 16:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736440655;
	bh=opVj4qwPeZ8l6G/zjnTvro5wIRNDYuHiT3FUvYD4s9U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O3aVV7G/5kF/vhcv6ndRTIPPnIyhiM+1jWDJESlb5WpwQE1oaYeO1QFu3bacPvuTZ
	 2xUnbHR72Ny2rTa/euv/q/1v9W6u+1DCKJHJjwzjnUlpI2VYol/yTPFOlrwcsDdaIM
	 vbZp/6iTGlxEBGhysDKDNpiKB9Qt6su7bks3Mvh1Xe4DL5DNu1z/Gjkoi1yG14pj4j
	 1HznXUJSKT7vA3O4jfIfgYFnlWtx839sstoW9xgWEym0Nyzi7LJJW6LckENBi6PxTd
	 MpTA+0E+WiwnpmZ9I3GKkprhkTIT3AUemumlHUYSqEMMzOfhtFGdIp2kD1D2D/vtuz
	 GXeRBGBaREmHA==
Message-ID: <4c6dba11-91c6-4251-9153-6461a4da42e7@kernel.org>
Date: Thu, 9 Jan 2025 18:37:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: cadence-torrent: Add PCIe multilink + USB
 with same SSC register config for 100 MHz refclk
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, sjakhade@cadence.com, thomas.richard@bootlin.com,
 christophe.jaillet@wanadoo.fr, u.kleine-koenig@baylibre.com,
 eballetb@redhat.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20250109121614.754466-1-s-vadapalli@ti.com>
 <20250109121614.754466-3-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250109121614.754466-3-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_163737_454430_DFAD4D1A 
X-CRM114-Status: UNSURE (   5.53  )
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



On 09/01/2025 14:16, Siddharth Vadapalli wrote:
> From: Swapnil Jakhade <sjakhade@cadence.com>
> 
> Add register sequences and support for PCIe multilink + USB configuration
> for 100MHz reference clock. The same SSC is used for both PCIe and USB.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Co-developed-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
