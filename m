Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41979C6FA86
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPeG0u9hm9gohGlQ8qsVgIS5fWYzqMuAhyRtoIg05O4=; b=lhlaBxGIHftM1Q
	RY0ROR6lwEJs0dMeFagi/9cWnItplnrFV02BoZBy+6bHUtKmAaZ1d4gXt3nIg8WGramzqXXPpcl1I
	VQjOxohDPygeSAcB6dS+T2r5g8/kmbPwj5YS2jlnvboa5HeYFzuiuMQHk4ae2VsH5aa5XOlS31api
	KQsxQg9ku/a7Ox8f5FO5xpHIl2XarficBt7ZSKOicxyhKdD5F5zXoF1jRR1QDqz2oqZmDUwXBOh5a
	KokSCMt1Y5SYKwo8mFxji/sZUoPrZewN83mi35P3cb/o189kxlaWjL+RevortB0pnGr58C+xx9l/9
	HAuJi4+MfTiUSIBSR1gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzfn-006ZdB-NI; Sat, 24 Sep 2022 07:34:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzfl-006Zca-Dc
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:34:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 002BF60C80;
	Sat, 24 Sep 2022 07:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3850CC433D6;
	Sat, 24 Sep 2022 07:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664004840;
	bh=4PhFBlqrzVTT67Bn05qUy0wEEgFrBjyYhFSRuqqEgUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KFQ08E2l/yqeU+paRt97b2jpx8fhY/+IHqHldUOdYujRkA4hAJQ2F2vxXsrJLPe7y
	 i4dV48wVcGB/UQYmxXRmg4QABMgg9O4Utsq38U6KsV25y0rBzsvSjo7fckzB9zhn9j
	 MI36NME5j+3OEc9wt5nVBxxgZqm+9asAHwdOxrKF7ZWhCG9BDGIZkeLTWOvjdXoJLZ
	 U3msiTU6RJ/6sggJS47Rzp+EBTzdLxz6IQ5m06rbbOWhIWEx3hBAOMc6hGlj7xt5Ow
	 Fa3SkRI86pu6UdJLHhEa4YrmUMcLA77yGdWJhnwDmPFbzgLGnOPiNel1shb1vpj4M9
	 qORYLdxRmrXTA==
Date: Sat, 24 Sep 2022 13:03:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yuan Can <yuancan@huawei.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org,
	kishon@ti.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH RESEND 0/4] phy: Use dev_err_probe() to simplify code
Message-ID: <Yy6y5NQaHmcj74It@matsya>
References: <20220924070300.25080-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220924070300.25080-1-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_003401_511728_BD1CF630 
X-CRM114-Status: UNSURE (   6.71  )
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

On 24-09-22, 07:02, Yuan Can wrote:
> This series simplify the error handling in probe function by
> switching from dev_err() to dev_err_probe().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
