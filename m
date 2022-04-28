Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C5AAC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 06:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8rjMtWm2+d8j/mouUhr6/CP1FZPr0VaMTdYLU548dA=; b=3wRvkqeKf3g2jl
	BJpGVKq92LqvF4Dz6vV+5AVZtwCnFoCgbV7+r94r+CQ72e0WJd922MgdebaVBEMemTHP3EO0ONRKd
	e80sJF9fkeH+mrBGgoySOfaFoHGOPVvpz3IegQOSVAeQqR6k2xT52ZkJAFuyRR+XyqCJV68/xoimz
	KpjXytSN4dRLFu1DePQ4BSyMnNiwy/5Z+cZO+Kkpuy3GTshn+gjwVl5EdHh6ViyWp4QHxeoBc/AQD
	1hu9Q/QFhr6HhKCCXpSWfSpsE6zZyS0KUdRu+8keODdXDCXIf3ZujXLYusrM2HSwXKdwwGx4EbxiU
	n8coH91o6vQWNfk3lq+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njxjf-004vPy-Gc; Thu, 28 Apr 2022 06:34:43 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njxjR-004vIJ-PI
 for linux-phy@lists.infradead.org; Thu, 28 Apr 2022 06:34:31 +0000
Received: by mail-ej1-x62e.google.com with SMTP id gh6so7625433ejb.0
 for <linux-phy@lists.infradead.org>; Wed, 27 Apr 2022 23:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=uzuvBG3ySD2q6+EwBDVkcHQZJOKGPkpC5+jeVqG/3co=;
 b=hslMUKE+lJ/AV2mxULrxBj8n9wD1cA7ihbkpDl990VaHaNscheWT3YMDZWHKp/cpG7
 ZFbphFxD0k8J4Hkc2pDWB7wdceFzPpu2AiRMUUeEc8F6WsGxguMtwDEo2lPUNpDuuEiy
 GYXKN69K2YASGzxtO1hTO4zpmXbo1n4mywjj+7D7R6/IMDqTv9s1KdlRRc++gnx98MDw
 lEyYVyJkQJexivMQ2O957UQCz7h2++X4CWJRCVHxNHHeCgWs8ky2QlwziejP5ZBpcK2n
 eYJWFjRwEapB67DNbOPjuRlfUdm01V07eq+BzNVP5RstzjS8Tmz5XIzRfYgP6HVyWl7p
 N+NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uzuvBG3ySD2q6+EwBDVkcHQZJOKGPkpC5+jeVqG/3co=;
 b=tfX/GKpEV7X1xFCl6amDpwvmiyzlKUduc+6AUqvADV3nbP128DNcl6oiHh3N7DgtzF
 iL+ayNt0l4/pRJbTTRto8PkEdtqu46cLgE+LyvMJO9ZUcrEyeACMqoO17VuN4QKykdE+
 BeFwrtRLxx9jH649uXq7IJu3XW+3OnSuqCQBtDE8wwBGLmMT5ki0xc1Vaj8Jut5SkBXY
 lkGNcqzCjLtiSS9qh8U9jIJlsdD7QtscL3REPZb+r9QX+J4tzahv3hY8+cJWKXW3lu4q
 5nUN9keq5CD21NsEhie85dkeZ89HzxjuC7lOnBm1uIZUGVzabayJptJPpTfW4I/hXJ6y
 7+pQ==
X-Gm-Message-State: AOAM530nww3P8NlZNoZVOohX6RT61rYIKiers/rh/05577SRqfBLizQO
 L2PI2wpYwy5mgJ16mMZCpdAwKw==
X-Google-Smtp-Source: ABdhPJzY1zrs5I3FVQuz284Iw/XuEBYz3tDW17K26IIlFioWkI1mMejMgLKVMYy1IHPyq9D6n6tqXA==
X-Received: by 2002:a17:907:6e02:b0:6f3:d185:5d25 with SMTP id
 sd2-20020a1709076e0200b006f3d1855d25mr4921212ejc.14.1651127666184; 
 Wed, 27 Apr 2022 23:34:26 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 f31-20020a056402329f00b0042617ba6381sm960602eda.11.2022.04.27.23.34.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Apr 2022 23:34:25 -0700 (PDT)
Message-ID: <918f5bc9-77f6-4d65-7432-ab53aadd6734@linaro.org>
Date: Thu, 28 Apr 2022 08:34:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 03/11] dt-bindings: phy: rockchip: add PCIe v3
 constants
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-4-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_233429_845893_0F8896BA 
X-CRM114-Status: GOOD (  18.23  )
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

On 26/04/2022 15:21, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add constants that can be used in devicetree and driver for
> PCIe v3 phy.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v2:
> - new patch because splitting out this file
> - rename file from snps to rockchip
> ---
>  include/dt-bindings/phy/phy-rockchip-pcie3.h | 21 ++++++++++++++++++++

Naming - vendor,device.

>  1 file changed, 21 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-rockchip-pcie3.h
> 
> diff --git a/include/dt-bindings/phy/phy-rockchip-pcie3.h b/include/dt-bindings/phy/phy-rockchip-pcie3.h
> new file mode 100644
> index 000000000000..93e57edd337d
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-rockchip-pcie3.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */

s/MIT/BSD-2-clause/ just like bindings because it is part of it. Unless
you took it from something and it is already licensed like that?

> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + */
> +
> +#ifndef _DT_BINDINGS_PHY_ROCKCHIP_PCIE3
> +#define _DT_BINDINGS_PHY_ROCKCHIP_PCIE3
> +
> +/*
> + * pcie30_phy_mode[2:0]
> + * bit2: aggregation
> + * bit1: bifurcation for port 1
> + * bit0: bifurcation for port 0
> + */
> +#define PHY_MODE_PCIE_AGGREGATION 4	/* PCIe3x4 */
> +#define PHY_MODE_PCIE_NANBNB	0	/* P1:PCIe3x2  +  P0:PCIe3x2 */
> +#define PHY_MODE_PCIE_NANBBI	1	/* P1:PCIe3x2  +  P0:PCIe3x1*2 */
> +#define PHY_MODE_PCIE_NABINB	2	/* P1:PCIe3x1*2 + P0:PCIe3x2 */
> +#define PHY_MODE_PCIE_NABIBI	3	/* P1:PCIe3x1*2 + P0:PCIe3x1*2 */
> +
> +#endif /* _DT_BINDINGS_PHY_ROCKCHIP_PCIE3 */


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
