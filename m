Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B089C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL8ZPUP3fH+A5g/qFumzsE/T7UW7ixJQxfz5kGIb/0U=; b=wMUeiGfE79soBr
	6S9aa3YftVjfNcXzehSGOAzTV7wsDfAI/fTmMzccrjrP2/+rvfLYXwfkjIIn6xk7dGdAF0vr8Bmgz
	1N50ZCZ3rIwyzyrC5IYf4rHo+I1zM+RfSbIvi3LETfK511qemNmQbSR+nyEd/FzUiW3HVwpghrshX
	8TdC8r6PxKqgKGJKgt5E7W7xaRTUXWQpIZIfV8J32GDb/tbGh7YuCaoYINdjdgt0od5r569Rj8DUk
	LJ1/9HLmGu94oxxuwnbOCQIBReGuGBbTfWtMgdbDgmnqdAr2OPGMQq6TuDFLfjQqYmI0/MovlTz36
	2F+UtiCI9vPC6Kn+3Ptw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zhY-004sGE-NU; Fri, 17 Jun 2022 00:19:04 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zhO-004sDl-2P; Fri, 17 Jun 2022 00:18:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DCE10B82678;
	Fri, 17 Jun 2022 00:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85199C34114;
	Fri, 17 Jun 2022 00:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655425130;
	bh=gTkObOqulb/1+sTpWbn1RLB0WFAog+psBwHx7UycOPs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LAoMs51E6tyuCE4MhXn3BkzrQDTPiJ9jYIENI3lOkwzGLxJzFokbtLhT5lswijmGp
	 uSUiarqOSNNu/I2D94uf6M6mVGc1A3GIecdMhVbkZXGfOnIzRsYB887rq6wv6u2pHl
	 hR3s/ZkmJzk815SpcD3rv6QAnauUhXZlqrKZ7I8rLuCD2W6ICkWaMgkMJ0+VeBw4+C
	 VAYYIDUcxYo0Zs/+T9lrnHo6JLyPgSrzXbpV4LTiCNSLIo5GukiHNd0kbW2hTP4nxp
	 czdwQyRvwXFk6L0VYsPVFyK5XPF3Ed6tjtiB7O/nBwlQh4LE5rQgqXmYpni0Zyc4Oe
	 cVNUjOGBTBrAw==
Date: Thu, 16 Jun 2022 17:18:50 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com,
	chanho61.park@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v4 0/6] Add support for UFS controller found in FSD SoC
Message-ID: <YqvIasse5qjsLcO2@matsya>
References: <CGME20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863@epcas5p1.samsung.com>
 <20220610104119.66401-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610104119.66401-1-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_171854_275444_79666D22 
X-CRM114-Status: UNSURE (   9.10  )
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

On 10-06-22, 16:11, Alim Akhtar wrote:
> 
> This series adds support for UFS controller found in FSD SoC.
> The HCI is almost same as found on other Exynos SoCs with minor
> differences. This also adds the required UFS-PHY driver changes.

Applied 1-3, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
