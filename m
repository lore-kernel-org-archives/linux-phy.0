Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8FC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:46:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30B326196C
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:46:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30B326196C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJ42Y/XEDtcKzJGvFWYQ9p1U5qpTvXZmFkH1Bm9VRHc=; b=AVpPlR/NyCQA5X3zbIpzI2QkU
	xNfmgHXalXVewrtDiDlFPQK6MliEeBOUue4/z6E4XivlPCuuH3wr5zm7NOheiFLLS35iB/uj7osqM
	VXOyidNfj4wdiMkESbd61WyQ+sfn04GIdXEDcgPbqjVkK2F+++IB4BCgkDQ5rKFMu0QcpCl7MMjx/
	xZIWqDf25Tthxroq95KDtp7OIHCnqYVGxQ70e/3ToSYDlnAUw3Wz1gS+av7uJVldO3r4IrS98SKOE
	zwFqp7MFFSLk55JWDVP0Bgy/LHm8vxFIRFlj2lxwnlxc8kw26DJRFdID2s5y435yFhCEWs/9AzdgE
	qbmsZ9BRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRaEv-006aGh-RG; Wed, 31 Mar 2021 12:46:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRaEr-006aFv-GO
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 12:46:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E315461959;
 Wed, 31 Mar 2021 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617194783;
 bh=TQkoHACl/sFM+5iuM6x9rFOysAjN+duolQetZcUwOWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tqRxQ6KO5Yo+HpqJhww4Y98I+1ZL0YA14AIiEGQRGDc2J8BaKegd6HvMh8s2S6Pu9
 hujaLdAsFyJWfrTLTxPDLXq/RrxSsZvSQVHG5SSedEqo4L8MYNBtUKtgzMNMKFp7Oy
 NedtbimR2scRy2fmCQCZaUkM3CD2+UW+JIqAaRgqPdWq4W58jEsGaIefGBgdtV1XsE
 +TwJHetOtZuV+LQVDRqeDSS/ge23LlmogViLNIDdgVZYhjbWCoDB2AEqosviKt12yI
 CuSM46EowOq91jlcKyYWy3iuUGVuWmqHCO87SX1e22aGLxwFxJo3FSxVXghWjmMPMy
 3xx3hJErZ0+/A==
Date: Wed, 31 Mar 2021 18:16:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>, Atul Gopinathan <leoatul12@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Yu Chen <chenyu56@huawei.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-staging@lists.linux.dev,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 (RESEND) 1/7] phy: phy-hi3670-usb3: move driver from
 staging into phy
Message-ID: <YGRvG+3sD0gX2I+b@vkoul-mobl.Dlink>
References: <cover.1616695231.git.mchehab+huawei@kernel.org>
 <36c31dcdcd49d5a728a1fe4040bbaef5268d7f79.1616695231.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36c31dcdcd49d5a728a1fe4040bbaef5268d7f79.1616695231.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_134626_024931_E0ED1464 
X-CRM114-Status: UNSURE (   9.72  )
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

On 25-03-21, 19:05, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.

Overall lgtm, some nits below. With those fixed:

Acked-By: Vinod Koul <vkoul@kernel.org>

> +static int hi3670_phy_cr_clk(struct regmap *usb31misc)
> +{
> +	int ret;
> +
> +	/* Clock up */
> +	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
> +				 CFG54_USB31PHY_CR_CLK, CFG54_USB31PHY_CR_CLK);
> +	if (ret)
> +		return ret;
> +
> +	/* Clock down */
> +	ret = regmap_update_bits(usb31misc, USB_MISC_CFG54,
> +				 CFG54_USB31PHY_CR_CLK, 0);
> +
> +	return ret;

return regmap_update_bits() ?
 (i see few more in driver like this, pls change others as well)

> +static int hi3670_phy_cr_read(struct regmap *usb31misc, u32 addr, u32 *val)
> +{
> +	int reg;
> +	int i;
> +	int ret;

all these could be in a single line

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
