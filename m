Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45254C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PN0hz0Cf2QGUj3gYb0LgZt2Nq+3kWke9p5bYxI8D3DY=; b=OQkrKDlNWHQIuY
	zrWX73VvdP621b20kwDhl6tiGW4HgFUlh6uZDWRQu6injn2h5maiwH1aG9ZOUQ3ettYb3nbFWhFnY
	M7pVBgc99ns7wtoox/7/KBm8GvYilBJXClrY8tyhW9UYRlskCWahzsQ6JlFECmVYEI+r5CAmuSUub
	6+EJHzlv/aEyhG6/WEw1ns/yxZXtaijcUECh7XWghL2RMEEUuYgidjxVGZtVC78iypwSh21Tp71FU
	X4X14ZiJFk4UoZ3MXh9qXEF6h9SoMq0Onsm3KUwRz1ZFFWjJpf/R4x/W3WGK7xpw+/WDbaUQWnDra
	vcopgILoZ0fsMQxdepXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc2fX-009stV-2t;
	Tue, 14 Mar 2023 11:18:15 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc2fQ-009spB-2A
	for linux-phy@lists.infradead.org;
	Tue, 14 Mar 2023 11:18:15 +0000
Received: by mail-ed1-x52d.google.com with SMTP id x3so60438445edb.10
        for <linux-phy@lists.infradead.org>; Tue, 14 Mar 2023 04:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678792686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTLw347ZTk76CB3YCjWqXtSW/kYt7O7yegt9D9Y6FXA=;
        b=DfbXKcyFf2lJtqM9kxnIwQgXX5YHPtmETobmmHOm3Xih8xuS22CBz9vhum+UjfNGnT
         AX/sKetrvq19eNac6gFFkYcUDW6YBAVFgQXHp0yZuDLZpSYPkIMzfI0FWzowlfHnt+Vg
         37NzIbYf2dKi907JOSf7p5gsNRdYl9kzMZYTJfbO8Hhm9o3V41bI153d7ILKIqjA6vue
         qJxEVrZnAfIBudOJryrUnv2DX36HSLb0kv7MZFCynatG/tp0k9WpQp0YWQv6HyLnadxU
         DzejyEjiM9TQ/0IOkDw4drPhRZBZ+wH+gSAyM8Q7/yWZ1UYuvNE0o0xX07pvvqoFd1Cq
         1DuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678792686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTLw347ZTk76CB3YCjWqXtSW/kYt7O7yegt9D9Y6FXA=;
        b=AjJbR7iBSdv6YPP5cRp74WFv7//9limZpRSgK4df1ZLZsox9FBBaWEJI0/Wug6zJHC
         YJxKhFaRbWJbHeervkrhbhfc82YFD0nndshMxTypAxQszUDPYQ4XVxxOyrc8RcAOp/BR
         6yl8cvsVZRKmNiWNz9qWa94C9+hbEgbINyf9DL0YDz1+DXDFIcddAITP4nn/8sCcaVGD
         xq1wPHIzkRnDOHeKLSRTypQH8NV1j6EWcm/I2IJFuEUJ30WCjWf1NKzkwSlHkiCZdT5+
         PPPr74M7QG+1vRqKIf/34T4p8XeZTKV+ODRgQxmccE3HxbsGE3jfvrLtSooPSx2Xn5GA
         6gtw==
X-Gm-Message-State: AO0yUKWGJLhWHFU2EHU1ViZTa+rDfzCa8fIqwCNMVvFCRhXz336bPL3S
	b6+Dh2RDXh+d4NqRfq32Lq30RQ==
X-Google-Smtp-Source: AK7set9AeqSbWbMpQSeHyDHFZ0ow4SZlOYcmpT9uXkJZMQnegdxX9KuOMQUBc32BeUqDoZUsjzpCaQ==
X-Received: by 2002:a17:907:a0e:b0:895:58be:957 with SMTP id bb14-20020a1709070a0e00b0089558be0957mr2625143ejc.2.1678792686070;
        Tue, 14 Mar 2023 04:18:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id xa13-20020a170907b9cd00b0091ec885e016sm1016273ejc.54.2023.03.14.04.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 04:18:05 -0700 (PDT)
Message-ID: <4ca61aac-a901-1bfa-6cf4-8c2917621667@linaro.org>
Date: Tue, 14 Mar 2023 12:18:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/4] dt-bindings: PCI: dwc: Add rk3588 compatible line
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230313153953.422375-1-lucas.tanure@collabora.com>
 <20230313153953.422375-2-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313153953.422375-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_041808_708118_2E2FDD33 
X-CRM114-Status: GOOD (  13.42  )
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

On 13/03/2023 16:39, Lucas Tanure wrote:
> RK3588 uses the same driver as RK3568

Subject: drop line

Commit msg: drop driver and focus on hardware. Missing full stop.

> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 2be72ae1169f..91aa9070ee31 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -23,6 +23,7 @@ properties:
>    compatible:
>      items:
>        - const: rockchip,rk3568-pcie
> +      - const: rockchip,rk3588-pcie

According to your driver change, these are compatible, so maybe this
should be expressed in the bindings?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
