Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67412C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 17:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6y03T3KKN3K6x0Em0OryFm1cUSNgBG9Q6V/shSbRuk=; b=znNsNHSLIRWdqO
	9IjrhEhRt4HGC6bZUt+ZT07PyLH/MxOD7lLCCqlbfXlpy3EytMxO5WVanl+nCw6PxQLTr4cSWcmVi
	cTXSwTGQc/c6kaDbEI8ocEFpK7zGWaYrixRNZzjULO8bvqZRoLvLHBxPf7InShg36rIzYPIvF/b5S
	qILvaQIba9q9bpmQX4rkCcO51HL85eyJCOi0TrCMOnuV+BMMtQcWFl95r0ewYFA4J/EDr1sJq8wMx
	2luIDen+Eh0w2yt5iOY6ftWacjGJQ0hJrmqLqwUv1QyH8354mZXivf+gPG3j0sVLnsLEI02UBxX+/
	HTREGKx2prHmUlivDdtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98Xw-00Bbvr-Nq; Wed, 06 Jul 2022 17:10:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o98Ku-00BWNF-3F; Wed, 06 Jul 2022 16:57:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA36961E24;
	Wed,  6 Jul 2022 16:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 555C8C3411C;
	Wed,  6 Jul 2022 16:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657126630;
	bh=GF/aKIAzhOdpyO5Xdb1pXVqwDvZ44YUeDjQ86DdLEVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B7UfPWR6H7wHVWrVGgUXtsz5mVegP0uqNRm7Rl0GaG6lSk3/XF0bJ1dRDz910/nrw
	 ArJlrBbcmQVUkXNEozaNrykOgZ0XjbILwzH8Eig5ZPcPfEFKMTk1JzxGSdij9yq67/
	 xOtgyfqkH+q2ZHp2h9BXhpi1JfDk6uKgD51fVcSVBFpqrBwKzY7rLXfVsxlhUhgZM9
	 CMDchWma018hV0+3hZpxLL5P198TNxnQukwCj8zo74rOMxLjpft0GWboEFVGfNRYBH
	 dVp5s+/IxNrMQyMbS6/mLBlKrb3ESTrf8ZNrF6Lyz4CJD9yebEDJ5ftpznp9zNLEc9
	 NUsajuj6c/aKA==
Date: Wed, 6 Jul 2022 22:27:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: "David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Paolo Abeni <pabeni@redhat.com>,
	linux-arm-kernel@lists.infradead.org,
	Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next v2 04/35] [RFC] phy: fsl: Add Lynx 10G SerDes
 driver
Message-ID: <YsW+4fm/613ByK09@matsya>
References: <20220628221404.1444200-1-sean.anderson@seco.com>
 <20220628221404.1444200-5-sean.anderson@seco.com>
 <YsPWMYjyu2nyk+w8@matsya>
 <431a014a-3a8f-fdc7-319e-29df52832128@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <431a014a-3a8f-fdc7-319e-29df52832128@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_095712_224641_C3EBF7BE 
X-CRM114-Status: GOOD (  18.99  )
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

On 05-07-22, 11:29, Sean Anderson wrote:

> >> +	/* TODO: wait for the PLL to lock */
> > 
> > when will this be added?
> 
> I'm not sure. I haven't had any issues with this, and waiting on the lock bit is
> only mentioned in some datasheets for this SerDes. On the LS1046A for example,
> there is no mention of waiting for lock.

okay maybe remove the comment then?

> >> +static const struct clk_ops lynx_pll_clk_ops = {
> >> +	.enable = lynx_pll_enable,
> >> +	.disable = lynx_pll_disable,
> >> +	.is_enabled = lynx_pll_is_enabled,
> >> +	.recalc_rate = lynx_pll_recalc_rate,
> >> +	.round_rate = lynx_pll_round_rate,
> >> +	.set_rate = lynx_pll_set_rate,
> >> +};
> > 
> > right, this should be a clk driver
> 
> Well, it is a clock driver, effectively internal to the SerDes. There are a few
> examples of this already (e.g. the qualcomm and cadence phys). It could of course
> be split off, but I would prefer that they remained together.

I would prefer clk driver is split and we maintain clean split b/w phy
and clk

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
