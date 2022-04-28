Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E665DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 06:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obvQfzkLJRr4Fc1qam3WO3NRvs+XtAweEY0wzjAufjY=; b=2dvWGycLTRZ+uC
	A6ta8mtZ4JJdcgJNy21gL1El7lcomv6bypUYvmu+b96QbPzxK8z2KUc/aCj1D21NijkzGyks1pn8o
	k8fnebjkiArF0KjaR5VMsmFZA3IHgyAqizpk4JhJuGpjc/JyK/tju+Wx4ztV10VlABksdX2mQ53MU
	TJLvrXkGq9SdKuqIOrWlyWm1w11vFHOBZKj3xDRAQyhMXulr90PCvSnRlemHHRbKPtwFUOKCPVn8Q
	q1BMpYa+eejYkfiEzgG0tngJkzINDnlUYLl+gvbllw+P+H9fGql0EBC+lpca0InTOQtzhqV5erExR
	KNzGfKyExKLokMYAuwYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njxmU-004w7C-AS; Thu, 28 Apr 2022 06:37:38 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njxmS-004w5n-5k
 for linux-phy@lists.infradead.org; Thu, 28 Apr 2022 06:37:37 +0000
Received: by mail-ej1-x635.google.com with SMTP id g6so7574415ejw.1
 for <linux-phy@lists.infradead.org>; Wed, 27 Apr 2022 23:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vQuJemEQZtOClpOcehCv8HwJ99NWWFLzVezPd8GOsHU=;
 b=SQfA/qWnxaXhMdzN8fwO8LJSkhrZCgPApUc0W26KbVtHa1/bbo0ViFX+ofQKfo+5K/
 DFVWIQYwoenoZq+bVHlU6015EMsluuxImU3vbKX1j71idFjW61GaANiq9LKtROHzWGE0
 IH1XbG4wXxRNEv1zby59TG+Wqh1myUW5SPt3BPOQAAbxcOHXK4yIzZl0B5qEUCZmSSbf
 PJnKcvbwbmDhH/eRu9KMo+Fxz7IpZAKy7jC484/zJ0N2Lgka0SLfQBdc2yUgfqRy+8RJ
 74O33hF9OKmq0x/p5VikCLJbyKvxOhqn2heymD7ZFkT8DD0voR6Rmn/b3KViDePpg6Gf
 dbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vQuJemEQZtOClpOcehCv8HwJ99NWWFLzVezPd8GOsHU=;
 b=PZq9iMa+5xbbs8GFMta1dUqbYpCgZDI9rednuK2N3+NNGJvdpmW3CpjcQknrTV8PBZ
 A4uCuZzZ3kvh1n1Vv6veMuVfN0Wwz910Fqttsilrw854lcRS5B9OQzvpReDDCS0/t8Jo
 xmD+aBvybtsl+eAjamDmv9LbmIuenJs3hSm2EB75vd1KZ5SnkG4+2l5Lmp+fF+6wdcqD
 9OpkpB9kwvn1e4nTz8vhM8zBK46bB4QXRQGPhqWfd3kOFiT1fLaQTJJY7h7DOwga1bU5
 zXAbT07GQX56UB9UqHDPozKIk5bClQIFK4Azg08LL3Ld9CPR3qKzclilE9KNbrd9OHUB
 13eA==
X-Gm-Message-State: AOAM531B1wB9UZtsoaO9laWixd8mCdW/+S3+YGW6kM9oTooD9eoGTm35
 RrSA1y/thHxU7P65ZPv5/yW/4w==
X-Google-Smtp-Source: ABdhPJwIDG6JJQkX2j+dOnGWCEo3T5++ulatebavZxvudL1ZgszkW2TlVKRE4wi1f/ha07iHzj1kJQ==
X-Received: by 2002:a17:907:9482:b0:6da:8ad6:c8b5 with SMTP id
 dm2-20020a170907948200b006da8ad6c8b5mr29709648ejc.372.1651127853141; 
 Wed, 27 Apr 2022 23:37:33 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 u10-20020a1709060b0a00b006f38412b2d0sm6224668ejg.171.2022.04.27.23.37.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Apr 2022 23:37:32 -0700 (PDT)
Message-ID: <ea6ccec6-81a3-b22d-46db-c31a9f1e85f3@linaro.org>
Date: Thu, 28 Apr 2022 08:37:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 05/11] dt-bindings: pci: add bifurcation option to
 Rockchip DesignWare binding
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
 <20220426132139.26761-6-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-6-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_233736_267846_280DFAC8 
X-CRM114-Status: GOOD (  12.54  )
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
> Add bifurcation property for splitting PCIe lanes.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index bc0a9d1db750..a992970e8b85 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -74,6 +74,8 @@ properties:
>    reset-names:
>      const: pipe
>  
> +  bifurcation: true
> +

Does not look like standard property. Is it already defined somewhere?
All non-standard properties need vendor, type and description.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
