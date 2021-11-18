Return-Path: <SRS0=n1nF=QF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08E21C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:20:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C032461BCF
	for <linux-phy@archiver.kernel.org>; Thu, 18 Nov 2021 00:20:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C032461BCF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJEOKUZ29/f+vHF0femZQIoXwL7CYzLu7xWfU0vc5UY=; b=LyLVwMfzHDiiT9
	HtwiFgxpspTF7fPEUW5ntvwojiNoJlDitlX6zLFyy4wYMFPCsbz5NpRJoJ8KUJXtH/wkVVZkfA7+H
	NJ1AwTI47QN4Tu7wQ0v5lBk5TxiAc8cH64t/A1dx+7clH7ubFnkOMjjNqLt+WDLHOatnlqE16WzfK
	lOjDRMhCNGLAZS3uf/1K79ukXBJTsw41Kdl2wIccvSHVN93oWw3lZqPhlUOY3Z3ubEMuhugfVWFM2
	qn/jgRoP3jfrYjkxa0BzbxoB8kIfMTvaCjod/qaPcsroH2CF5H2ZZ7kYakwhderCFP9vovrkCMWAV
	cK4FRuu/5kANDlDhr9pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnVA2-006ddC-AC; Thu, 18 Nov 2021 00:20:18 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnVA0-006dcs-Aj
 for linux-phy@lists.infradead.org; Thu, 18 Nov 2021 00:20:17 +0000
Received: by mail-ot1-x32f.google.com with SMTP id
 g91-20020a9d12e4000000b0055ae68cfc3dso7780990otg.9
 for <linux-phy@lists.infradead.org>; Wed, 17 Nov 2021 16:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=M0lPrjkFAQi9yAuD247gmWMnlc9AcuTM1Wt78OCqYfw=;
 b=j6BniyX3Oo96+gCG1T8XVO4vb+cRG3AV8WsZJxqRe5W8tos8y9Qa9koyvk8afWuCXP
 SmRa9h+yfg4wfHsq+EU8FijPpu10hNC9Mm+kAFbvVp3LQomouvlcZgQDGoshipzGjTrs
 Kf3WI0HnIBZ+3ElMUv5bL+E9oPt2rE177ZBIEcygqtwGOXIyP77geu+qLDLQtA59XrPo
 aMFK5nZn2SxxoHMzGVgsltFu61e1yleM00haBBCt9H50zc7fENt4TvyNvXFXX8/ggLgI
 XnIZ8KXi8wwa9P9Dts0xaymsM1McJJ3lJUfEMT7fU3HdKrQnt6nl3vlbSscMh+pIy0Il
 iTwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M0lPrjkFAQi9yAuD247gmWMnlc9AcuTM1Wt78OCqYfw=;
 b=WeONQP9MWFq4P9db2mh/vFzvXaISNPtYRb7ool69oQsIKr8hTIwmfthpYs8aynJ83x
 rd34t3aTRzWZFFfSHlQxnOn21eEcpC0XhpFWu9FvqFnrdygB1CXG1FcBm8TMdXbNoC2h
 T3lrL6jQRgT0CRr4+nM8H6tPgYVBbiRR3teJAzaWlAADVAgIbhXSx0w4oW7+xCsbAI4t
 D37NVTsAQjw8hN8qW7H2WbDD8ucO7+ZFZAXuZpugEC+HUob2Cm22i8xsBD4jCJQxhwvD
 eh8tk+KWgNrITveu/GCClcmyQIRCi4UtG+14n2J4hYQ74UX2B+CiRY5xX/fpeOxC92Gj
 pt5g==
X-Gm-Message-State: AOAM531NS/MDqXKnAZ7nI+7FS+L2QbHodbShun5s/mfDg+idi8QcIE02
 fH9kjbMdQtiKYwK34pfkl7HbTg==
X-Google-Smtp-Source: ABdhPJyGtuksU3qgXfZsVyj0QLwFX93L8GsiWUJDqLqj216Zn6Mt6Ymn+5ao5OPpfnt/2+JrpQNzpA==
X-Received: by 2002:a9d:60c:: with SMTP id 12mr16905133otn.94.1637194815279;
 Wed, 17 Nov 2021 16:20:15 -0800 (PST)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id q10sm335476oiw.17.2021.11.17.16.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 16:20:14 -0800 (PST)
Date: Wed, 17 Nov 2021 18:20:10 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] phy: qualcomm: usb-hsic: Fix the kernel-doc warn
Message-ID: <YZWcOrykR+1i+4rx@yoga>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-4-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116103951.34482-4-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_162016_418418_E7840A84 
X-CRM114-Status: GOOD (  14.66  )
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

On Tue 16 Nov 04:39 CST 2021, Vinod Koul wrote:

> The comment is not kernel-doc one and starts with /**, so fix that.
> 
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:3: warning:
> This comment starts with '/**', but isn't a kernel-doc comment.
> Refer Documentation/doc-guide/kernel-doc.rst

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> index 04d18d52f700..716a77748ed8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> +++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> -/**
> +/*
>   * Copyright (C) 2016 Linaro Ltd
>   */
>  #include <linux/module.h>
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
