Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C9AC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:17:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B410D60F43
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:17:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B410D60F43
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEVdOgymMJPRC4lbIWDAThs0BQYqaRiE0hRRf8gR4gI=; b=u0xwC31KujFIUH
	T62Q48k+nXO+8yG67Z1c9rKPvafENhL2itFTKtaPYLYHW1ekHSilCXwxrNMjY31qkb73CkCy8BUi1
	YX/A+ieQYw02DWX3iWlLVDhju/9UfQEZ92Ics3ykxS3uYoTNn3ph4HuXOl4LRi+U0JIWjGlnRJ7zZ
	N5xMO5f4ClAe0a9eAjIjU0bC49XiGKg30whhJDYukopIo06LU/BdRM9QXNSpIQ6fbrXgKd53diKQA
	zry2oo8RwjWWoJDSUoBzM4yU+hxOQz1RqHl+RgtAQFiT8jXIXt1MsgGsXwagyutttwcPoMcz6Yddg
	h/kgjN0axaiHCvam3ECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzjP-00CapH-1w; Fri, 06 Aug 2021 13:17:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzjK-00CaoU-1N
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 13:17:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 97FDC610FB;
 Fri,  6 Aug 2021 13:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628255861;
 bh=1Z7LeDLFF5o7wMGR7j6uGiu9CbMJ/5b/kBdkKapBM2o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z6aOhBvVE95DQ5TDZZRAEVrvHVt+JWyLemQ+ii70p+RwZMPY5SNy2o85TR2vpeC7S
 RTKSlYqOpQJc81+WkXJwpdv6aeE3hF+hoe6UrgS/HsJL163Yk2XHRveLWxDYLcZL4A
 cA731tXahQBaZgnKAnb04eYdcv+28zGp7KrV5N2TvHuKi2JHB178bpVwpgv2XBAv4V
 EwAmMZH9bVfUOTxDPY00APqyZ6SZwKiVx1rHVo79yb2S4xh4OleOB6m8w5qXDRUpgO
 sP6cTyXXos1HHaQ5Mz5zdUYJm0wnm22kWShrQl7u7WvLBy9xi38IJ70jX7MdBznfgV
 fTmcHx+Zz5FPg==
Date: Fri, 6 Aug 2021 18:47:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe PHY
Message-ID: <YQ02cc1dtqQBlT4/@matsya>
References: <cover.1628092716.git.mchehab+huawei@kernel.org>
 <90aada2f51b58c162e199faf823ba887e50f1dc6.1628092716.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90aada2f51b58c162e199faf823ba887e50f1dc6.1628092716.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_061742_165124_31837AC2 
X-CRM114-Status: UNSURE (   8.44  )
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

On 04-08-21, 18:02, Mauro Carvalho Chehab wrote:

> +/* define ie,oe cfg */
> +#define IO_IE_EN_HARD_BYPASS         (0x1 << 27)
> +#define IO_OE_EN_HARD_BYPASS         (0x1 << 11)
> +#define IO_HARD_CTRL_DEBOUNCE_BYPASS (0x1 << 10)
> +#define IO_OE_GT_MODE                (0x2 << 7)
> +#define DEBOUNCE_WAITCFG_IN          (0xf << 20)
> +#define DEBOUNCE_WAITCFG_OUT         (0xf << 13)

Why not use BIT() or GENMASK for these?

> +/* Registers in PCIePHY */
> +static inline void hi3670_apb_phy_writel(struct hi3670_pcie_phy *phy,
> +					 u32 val, u32 reg)
> +{
> +	writel(val, phy->base + 0x40000 + reg);

magic 0x40000?

> +}
> +
> +static inline u32 hi3670_apb_phy_readl(struct hi3670_pcie_phy *phy, u32 reg)
> +{
> +	return readl(phy->base + 0x40000 + reg);
> +}
> +
> +static inline void kirin_apb_natural_phy_writel(struct hi3670_pcie_phy *phy,
> +						u32 val, u32 reg)
> +{
> +	writel(val, phy->base + reg * 4);

why * 4 ..?

> +static void hi3670_pcie_set_eyeparam(struct hi3670_pcie_phy *phy)
> +{
> +	u32 val;
> +
> +	val = kirin_apb_natural_phy_readl(phy, RAWLANEN_DIG_PCS_XF_TX_OVRD_IN_1);
> +
> +	if (phy->eye_param[1] != EYEPARAM_NOCFG) {
> +		val &= (~0xf00);
> +		val |= (phy->eye_param[1] << 8) | (0x1 << 12);
> +	}

again too many magic numbers, Do check FIELD_GET/PREP macros for these?
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
