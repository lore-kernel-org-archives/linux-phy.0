Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 771DFC47095
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 07:18:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DB5B6108D
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 07:18:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DB5B6108D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82Ck2UQtqHfn/B08nJXWXurXznSF+L4ZM9DK1lJD8pU=; b=pD/UjTtCChvjoA
	MSc1/ocwivP8j6haFewIQjekYwpsT2fNcujgz6ADx2G4vYq0zammUZgsFCl5hDCZqg1n72TnhiKMn
	CJx/qenfyrRBDcoxitB3/4jvAgEui799DqrDftILZ/tJjGL94AypaucAGZRLNDEOEzs6QMDiCEpZr
	hrGxminJbAL3G2a+j4BL0kCviHdUnBAVJjmqXyS6HHsOOFsk6IS+Q4C49Bm6wg3BON9x/QZqUUDLw
	+qkwRL/Gm1MU4r7zaCWux+IguO5f9Z1+bInlMtxFxuyyCLsemaL0Dl1SmtWTMfpZj7pso3pZzEmPL
	vhnDhtqdLZ3UHCLqIZLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncBv-00B9yW-QJ; Mon, 31 May 2021 07:18:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncBt-00B9xs-Cq
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 07:18:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 391FD61186;
 Mon, 31 May 2021 07:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622445505;
 bh=NwKJSIDFWeCFMJuw/KCGn/ZQUFJqsq4w0+WD258Sv0Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ckzb9zbO6Tc674QzI3Gv5MJM2m5giiqLZJCGwIumpgv+pEfbUjU5DJBl0njVWwIlG
 Kz9Gja4elz+cd1Mg0kkwZAg7I81Jbu3bxE38hkBVAsXfKvRNb0/oWZNXMJYaoIQAjD
 G9yV1ISamcEsm3JNhyBW5v2HvWJ/20JqtzQEAYeuNzbHRkmhKcQXlyQJAKQlcgzQrO
 oNKmQy5QOY5FdQnj6uOK7yv3C5ajHpSfbAHURwuYPtLZKNQYbqIFygtHQSHwBRg+PB
 38Cu2dJLK5jS9+ulPXO6X9ZPDVX3peWgGJKosTJx8wAHRVJYujOuSmcV5A+izxQ6Gq
 xdwPDdcMKQfeg==
Date: Mon, 31 May 2021 12:48:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/3] phy: core: Reword the comment specifying the
 units of max_link_rate to be Mbps
Message-ID: <YLSNvUDJZ/v6NTuN@vkoul-mobl.Dlink>
References: <20210510051006.11393-1-a-govindraju@ti.com>
 <20210510051006.11393-2-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510051006.11393-2-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001825_479436_628D2E19 
X-CRM114-Status: GOOD (  15.78  )
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

On 10-05-21, 10:40, Aswath Govindraju wrote:
> In some subsystems (eg. CAN, SPI), the max link rate supported can be less
> than 1 Mbps and if the unit for max_link_rate is Mbps then it can't be
> used. Therefore, leave the decision of units to be used, to the producer
> and consumer.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  include/linux/phy/phy.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 0ed434d02196..f3286f4cd306 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -125,7 +125,7 @@ struct phy_ops {
>  /**
>   * struct phy_attrs - represents phy attributes
>   * @bus_width: Data path width implemented by PHY
> - * @max_link_rate: Maximum link rate supported by PHY (in Mbps)
> + * @max_link_rate: Maximum link rate supported by PHY (units to be decided by producer and consumer)

So there are a few users of max_link_rate. It would be better that we
document all previous users of max_link_rate that unit is in Mbps and
then modify it here

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
