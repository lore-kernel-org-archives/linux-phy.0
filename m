Return-Path: <SRS0=LI2T=NO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35321C4320A
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 05:43:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC90161212
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 05:43:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EC90161212
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcoKkmQxuTI8+z6TJuiaY9WeYTswOleLeRg7AFVSXwE=; b=YSpvrR+DVFaTWc
	kK8TXmSpybKB+RoMT25GsVhXT1Zi0HArr2iiAadIN0KTRuEpw0DcyukHgizvKZDZ/mwjdfsPwMBxE
	7ci3/hH2RAfkEe0f208w5p3JMuuzHngZnhPqH0R/rpjzgR8Mh+P9PjKcIZac/wvIA/aDT2StimlHb
	2dsdvJ8XHDE8UVlsWBSsAqVTLDtfKYgGFquvjukimPTpgtOUiWhxOpU3bBVw06yVSgXNnl7sSEPMh
	SOpl6kQDt/1t8aPzP470wD/gV/S5kgUAboUBPBtqeIe+CYfPizqv2aobu/6QcWZjRomQ1tI/d2Xna
	B9MsY/Zd94p2JlCCDCvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI2jo-00FTMw-FB; Mon, 23 Aug 2021 05:43:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI2jm-00FTMU-6Z
 for linux-phy@lists.infradead.org; Mon, 23 Aug 2021 05:43:11 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5879F61250;
 Mon, 23 Aug 2021 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629697389;
 bh=ENt6Gvo69RkjDVOcI0av9vDd/lxfGMgyK2xcZh9yxz4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TpugyQMn/k6vhOOy7pstrvsLC82VFA7D7mfTMSuyJbBibOHQocz4+hBWSI1tBz8Mc
 GOkNGY2JKwQjYy3/21Be5vxSM8jcxRASL3VQu8M4OhPPD9eNmFzOaGgtA06C5tA6XG
 CDmGyIACCUdbwiC7neGaTU1nOlCUNYje6wCy7zEI73NIFWYJirRiO5zrd5BK4nJ18P
 2ToI9Q0kavh4/lZvc8LULEnXttWhZfA4KIIaQleVXOESejg0jjv3vxfqcoL1VtFmyT
 gzUiLc9tRF+VHDTbSGlhA5VApDaN0/8KlkU+gqSPmwYMdXJVzY8YxHJN8OKYZ/g8ld
 +JfLh4xW9OWcg==
Date: Mon, 23 Aug 2021 11:13:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v3 0/2] Add UFS PHY support for SM6115/4250
Message-ID: <YSM1aBktwKqMUxXe@matsya>
References: <20210821155657.893165-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210821155657.893165-1-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_224310_297077_3DEF80C0 
X-CRM114-Status: UNSURE (   7.51  )
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

On 21-08-21, 18:56, Iskren Chernev wrote:
> The UFS PHY found on SM6115/4250 has a lot of common registers with ufs phy v2,
> even though in downstream it is named v3-660. Due to register similarity with
> v2, the few extra registers that are needed are added as v2 registers.
> 
> The register values/sequences are taken from OnePlus repo [1].

This looks very good, thanks for cleaning it up

Applied now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
