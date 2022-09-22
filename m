Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84411C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jIRNQtRnsafQ6vEy97tLnVnXP9EkZ2/3pWFCogPduU=; b=xQvnmMxgvO+sX3
	1ihMNNp0Xoipyac071zNRiGu4fZxjsbMJVh+Fnaz/8MT4c2tVy55p2M/HFKRR3g7nnH45YbekSEve
	77mhdP5r1sBIiQwZQfbYqMIZlupFAXVlqCIf3FTDFh5J2cRr8RdQilaIu7Iv5PIT4cwzpaGMMfigo
	6u2nBUA+tRZSl6C6L7Ge6vi4tiWPVKqZ+s/noLLJGuUVWCvoMOArwXUogZ/S8OOmEueOy/cQhZAKP
	b9VY/UOFg10klvMRz6hXc+CxYgpRvczK7z4lk9inRKooZD5oiP2UJzxdt9Nr31sbbASd99En7DKIO
	3vg+hy+Zv6l3i4naribg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGdu-00DqKb-VV; Thu, 22 Sep 2022 07:29:06 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGdr-00DqId-3Z
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:29:04 +0000
Received: by mail-lf1-x130.google.com with SMTP id i26so13169302lfp.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1507m4RgEB8G8apG9frqBRqsvM+IxF1zb1xDZKuTjik=;
        b=C5nysh2zDZrg+jTjXaipq/RO2w0zQPTnCDjvCuDyJJ+rsaO+QfNTlyAIqLHWK9QVNh
         jyGfsE8oMWxpqoeOcC4FmVpdgGrbbj8aSN80+1Z8Hi2XX8kvEShxE3V77B9k1aaEylKi
         MWny/zmL5x8iUzR2/GYOwI5zsibW/S5TUw+A2HT6emYVJ/f12PnC4oQp5S7a2fj0M56F
         GWmiqIInklUWbhinJRd9Wtg5vtvc0v5CpDefU7uxaXtEIEBFcyrUQlnUjSfW0tkUKmdu
         R7ijOCMam3XdPHq96OFJMzeGjnYLprO3f28zHDCpq5EeuVTcpWrAc2pUoJjuw7LaELlK
         iERQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1507m4RgEB8G8apG9frqBRqsvM+IxF1zb1xDZKuTjik=;
        b=czxmg/ok8OG2jqxusTYYz2Wtzv1+EE9jgPDQ5LbztItH88dm50aPHcjrkQSTELaG0u
         ALl+MjJ9RVIfX9uODqI07Ld63ODpZitqCyl4mX4FATQVocWNmEGXwtootyFQta8KgjfS
         z4TwHyFF1EVzNE7YUzoYvrULv/5fgA4G2UEoWSSggueO5ZuWdQL5U1Nth6tkV/Tp8iag
         uN/JM0IsZ8GY8zlbWFqJQFxHDRT8ImlkzpHPhZ79RiCjxJq60YLg/zhXHawVIaDRYL72
         0dLHVTSZ/UU0HIKWMJNlQLOxUxu46JBUywUY/5KUt0HmGMhvUDSPsYhwXD1Rh/3NPe79
         72Eg==
X-Gm-Message-State: ACrzQf2GsHy68q5gh2h0eec/OKdctClRu6jxwNuX/4XG0MC3Z44VrGjm
	QDkFn4sg6wIdCo/bQtDwRLkSlg==
X-Google-Smtp-Source: AMsMyM7xYIDEG5UyAZ6DpX1g+zu6IgAcOFUXs7lxj4Ju3vGUs2aYZBGzxzwpgrLobKb6kp/wgJtMvg==
X-Received: by 2002:ac2:4db1:0:b0:497:838b:15d9 with SMTP id h17-20020ac24db1000000b00497838b15d9mr682181lfe.644.1663831741353;
        Thu, 22 Sep 2022 00:29:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q14-20020a056512210e00b004972b0bb426sm796625lfr.257.2022.09.22.00.28.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:29:00 -0700 (PDT)
Message-ID: <9b29ee3f-ed48-9d95-a262-7d9e23a20528@linaro.org>
Date: Thu, 22 Sep 2022 09:28:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
 vkoul@kernel.org, davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, geert+renesas@glider.be
Cc: andrew@lunn.ch, linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-3-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921084745.3355107-3-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_002903_200211_1760616E 
X-CRM114-Status: GOOD (  13.78  )
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

On 21/09/2022 10:47, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../bindings/phy/renesas,ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> new file mode 100644
> index 000000000000..04d650244a6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml

Filename based on compatible, so renesas,r8a779f0-ether-serdes.yaml

> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/renesas,ether-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Ethernet SERDES
> +
> +maintainers:
> +  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> +
> +properties:
> +  compatible:
> +    const: renesas,r8a779f0-ether-serdes
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    description: Port number of SERDES.
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - power-domains
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a779f0-sysc.h>
> +
> +    ethernet@e6880000 {

Hm, isn't this a phy?

> +            compatible = "renesas,r8a779f0-ether-serdes";
> +            reg = <0xe6444000 0xc00>;
> +            clocks = <&cpg CPG_MOD 1506>;
> +            power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
> +            resets = <&cpg 1506>;
> +            #phy-cells = <1>;
> +    };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
