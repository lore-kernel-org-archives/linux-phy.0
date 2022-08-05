Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5F2C00140
	for <linux-phy@archiver.kernel.org>; Fri,  5 Aug 2022 06:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9AtSYSB0R5n9+w/7korkDG27X5Qe3TDCx2c7XFjp10=; b=pdN4CqosDl9md6
	HMK+gULXjsNlNJpmJdKoZUIDkbxWAS1K8Vq7Z1+hYUz4vWW2hm994tb4k2zZdpbGR1J+tLUc/tjcR
	lRD+UKfkG+RM01+6z4IpK3EFv0UD9urPxN8VKrB6Nd/UCr5gvZGdeZnrdz+qZi0fqbH68aw1ZUvxd
	gG5TJKYJGG5i5vWPBWj+vKcocwZZuNQri/vyN7QkQ0YFlfTh57qejzDwQ1gg7AMGhr6i0tnTNNar4
	xK86LaqQvnWb1r38FIRmoM+qS+P1icGaTSDoy7+2pXzowWIFa1zyLYr+mAmfjLyulB6pvtv6taD1h
	xBghAe6FBaEXZCJEVJMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrDL-00CZvY-Lh; Fri, 05 Aug 2022 06:53:43 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrD6-00CZnI-An
	for linux-phy@lists.infradead.org; Fri, 05 Aug 2022 06:53:29 +0000
Received: by mail-lf1-x129.google.com with SMTP id bq11so2169377lfb.5
        for <linux-phy@lists.infradead.org>; Thu, 04 Aug 2022 23:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=svGbdJtoA42vxhMw0xl6uJ/CKt4Zq7+usPD0U/PNy5Q=;
        b=fcizwj7UD0ZDd1mZ0oDmsurKWnpaQ6W8uIjVJaOD0QvmsghpTV2mhyjgilSZfV3gfp
         VKxKifhMNxIxkv84hkBVE/pSxJMeMj+KoWkFL2y+KDM6m2ZZWeC9sJYVxT6Eo7Xe5I1W
         iV/F1O2wQ9eUQTVwfppVzZa0FHW+OxPbQV5/ji8lTUwWD3fxaFyFZOx4kNeQCte4KSj8
         xKOGnH+sqff7E8e7Pb1UHtsuYRJl+IYJZbr6Ce0PeJiLzh1nHgmWeMbzZFyduUJFdbcX
         GB7zxiqDzQ0zakdY5rGcgEwK7b7VDGioVCMp2950fn0J5lmPnn7nh8gr6S99j3QHei4p
         vsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=svGbdJtoA42vxhMw0xl6uJ/CKt4Zq7+usPD0U/PNy5Q=;
        b=MgdeqGVBPdhXG+ib/mma2ef4PUZEWvimMoZ5TQe26M5hI5IiyBug+I1sXdrxhCSxZ6
         V5Glh/1k3vPf0YAYVN1g7+XXYjR6zgowHZFir4996JaTPvD0VV70xAh4zSTXWKMCuK9w
         p+r3kU1w3E1YxYdhb9PdgreQMxnrKV77zFptz/Y/772snTDobnUolWlcqox1sBvWRZH8
         zx4YGQDe1XOHf7G0/se5uAf28rzlLzXjAW+u7TcEzSnNrwn2Km55LZPWomFrhIuTAmbe
         O2NSTJzzBTw1MwlLaLZ1Wmmyxe5RQOyKGRfXiXEobVsjVDTfAf1k7TO6hHybB42h1N5P
         u9lw==
X-Gm-Message-State: ACgBeo0ywmDZ2Z7/O2HwjbbWCEcXahDQEdscQHLoeltHFudoYA+4cEop
	zUGdo7q9EBvcXd75k1DNIatEPg==
X-Google-Smtp-Source: AA6agR5PP/ENG7yXEHTvyafw/XQB2vIAh7cCSieTd83vPiy91LJfZPa5YrNOmaUMVOVwlr0V6qymXg==
X-Received: by 2002:a05:6512:230b:b0:48a:7c11:664d with SMTP id o11-20020a056512230b00b0048a7c11664dmr2034885lfu.390.1659682405752;
        Thu, 04 Aug 2022 23:53:25 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id z16-20020a2e9650000000b0025dd6c8933csm362348ljh.114.2022.08.04.23.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 23:53:23 -0700 (PDT)
Message-ID: <bee3d724-1efb-d5c7-6698-c98a198e69fd@linaro.org>
Date: Fri, 5 Aug 2022 08:53:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 3/8] dt-bindings: clock: Add ids for Lynx 10g PLLs
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org
References: <20220804220602.477589-1-sean.anderson@seco.com>
 <20220804220602.477589-4-sean.anderson@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804220602.477589-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_235328_424884_B7E066EA 
X-CRM114-Status: GOOD (  17.85  )
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

On 05/08/2022 00:05, Sean Anderson wrote:
> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
> witn assigned-clock* to specify a particular frequency to use.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v4:
> - New
> 
>  include/dt-bindings/clock/fsl,lynx-10g.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/clock/fsl,lynx-10g.h
> 
> diff --git a/include/dt-bindings/clock/fsl,lynx-10g.h b/include/dt-bindings/clock/fsl,lynx-10g.h
> new file mode 100644
> index 000000000000..f5b955658106
> --- /dev/null
> +++ b/include/dt-bindings/clock/fsl,lynx-10g.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */

This should be dual license.

> +/*
> + * Copyright (C) 2022 Sean Anderson <sean.anderson@seco.com>

It's confusing to see personal copyrights with company email. Either the
copyright is attributed to your employer or to you. If to you, use
private email.

> + */
> +
> +#ifndef __DT_BINDINGS_CLK_LYNX_10G_H
> +#define __DT_BINDINGS_CLK_LYNX_10G_H
> +
> +#define LYNX10G_CLKS_PER_PLL 2
> +
> +#define LYNX10G_PLLa(a)		((a) * LYNX10G_CLKS_PER_PLL)
> +#define LYNX10G_PLLa_EX_DLY(a)	((a) * LYNX10G_CLKS_PER_PLL + 1)

These do not look like proper IDs for clocks for bindings. Numbering
starts from 0 or 1 and any "a" needs to be clearly explained. What do
you bind here?

> +
> +#endif /* __DT_BINDINGS_CLK_LYNX_10G_H */


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
