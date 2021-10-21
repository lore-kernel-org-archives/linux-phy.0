Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEFDFC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:35:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 907F6619F6
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:35:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 907F6619F6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsuy5CKA71xaGgRl/fawlRkTX8FHMBHNanL+yeyPcWg=; b=0akL+n4g4LdL7d
	6dcTBsNXpxEKy9PlbHfp34DXMGJeS9oNZWZ8tB1WQ3fNwjUAvBCJXelFMU08wrwqsXymgosqaIXZs
	mqjxK/qCnOoumU8o5GTz1gurLYHWPOoO9HP9yqGjGzVyjGM3xuls49l1lPf0EKcebs5tBHs7Iw2J2
	xigbZJs791IiNfaiGPf99dmW6C1xbfWV7amU7AE7TWYN7LFqxF899m7NQm95c/eohOio4ZwvVPsAH
	ZTJ8kHwKNA8SkAfBb5cApzbEAq9vTfHleJ+ktwCcYMMfTQWc4PmfSzcKvecZqCsO5V1avzxJtFtLB
	gETOXI6IDb5BsPPjuRmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdbyg-008VQF-Ok; Thu, 21 Oct 2021 17:35:42 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdbye-008VPu-Iz
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 17:35:42 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 b4-20020a9d7544000000b00552ab826e3aso1334175otl.4
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 10:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=fbDFAc+mDq/fVlQikhm/5WQdU+2NWEk3ZHERoK3qaZA=;
 b=VBX5aufNkoMTHFbOeGP+BrNRxy6MhOc+43NPA0e5hUPwm9iWg/SsllI1Hq9Jf1+q7p
 3HcV/SKBuJnEHelkApbMambF9Q9KZQTRN/6BEeQVzVE1TOq6F2O6GHlAlLHtU4ow2K6P
 nWnYDrKsVlcUsa1XWYewK+/SxVlnZH4fPyUWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=fbDFAc+mDq/fVlQikhm/5WQdU+2NWEk3ZHERoK3qaZA=;
 b=jiqRrLtFp8IbjAAHmiLArAm5tiYc8VeWq9zoiIH44xIJQroZKs/TVRgNCj3TGxtO5g
 o8YjsAxvqEOV1nS9dJVQz5jWabH6Jn8ArvLYZbuyIv4Gz8xey9/brQz6C5km2hsd8aDC
 QPijYd73CIwvKwCd3mDVh6GiU+80vF39LYrLBtPeuW0aCT1N0Z6PNjy+LPmN8u5q/9tt
 k5po5JfBMlEJqulIcMHzd8QhJgM1wdr3U7pVSeHg7U9b/Bq44pXXXNhvXUdCknFhGz8P
 SUmaJhWhF4GgYVvhJUGMAt6nL6jQBZ5pRScWUli5GI+8Pr8J9y6bCPDQsFYu15mCaucq
 z3VQ==
X-Gm-Message-State: AOAM531V9hCaW9bQYLLg3VTL9VKGtX6C1oqU5/L4/+TUl+pe5VYh/D9B
 P+EYK1WAZuX4+JPH5A+rVzJLebCIDpNSz1jfe66SgA==
X-Google-Smtp-Source: ABdhPJzjOv9nA1sQ7Cd9uU8D7zcDzSeZPBApL3N+RjvJrY2ioR8BM3fhxRdxBOH/LurEUUwnPniIQrdfx5D/FoBW03Q=
X-Received: by 2002:a05:6830:4187:: with SMTP id
 r7mr5956450otu.126.1634837738629; 
 Thu, 21 Oct 2021 10:35:38 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 21 Oct 2021 10:35:38 -0700
MIME-Version: 1.0
In-Reply-To: <1634711785-25351-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1634711785-25351-1-git-send-email-quic_c_sanm@quicinc.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Thu, 21 Oct 2021 10:35:38 -0700
Message-ID: <CAE-0n51miQBAO2QBtHG75cB4TZnm9jiXFz3APBwrNbQcfjB-Eg@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-snps: Correct the FSEL_MASK
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Doug Anderson <dianders@chromium.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Matthias Kaehlcke <mka@chromium.org>,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com, 
 quic_ppratap@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_103540_691353_4FF21F83 
X-CRM114-Status: GOOD (  12.45  )
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

Quoting Sandeep Maheswaram (2021-10-19 23:36:25)
> The FSEL_MASK which selects the refclock is defined incorrectly.
> It should be [4:6] not [5:7]. Due to this incorrect definition, the BIT(7)
> in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1 is reset which keeps PHY analog
> blocks ON during suspend.
> Fix this issue by correctly defining the FSEL_MASK.
>
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>

Any Fixes tag?

> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index ae4bac0..28459a1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (c) 2020, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2021, Qualcomm Innovation Center, Inc. All rights reserved.

I never thought I'd see this again! :)

>   */
>
>  #include <linux/clk.h>
> @@ -33,7 +34,7 @@
>
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0   (0x54)
>  #define RETENABLEN                             BIT(3)
> -#define FSEL_MASK                              GENMASK(7, 5)
> +#define FSEL_MASK                              GENMASK(6, 4)
>  #define FSEL_DEFAULT                           (0x3 << 4)
>
>  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1   (0x58)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
