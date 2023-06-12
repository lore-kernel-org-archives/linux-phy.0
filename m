Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B804BC7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 08:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRi0R3Coqfnx3TL3CkdNOyayLYaoeKbGNDhavzC2UUc=; b=aM+7/MbfNz/JsP
	EnDb+ZCR2tSZltTM2oQ0gFeylf4EEyBapuXzpoZcGbhUeIKJ2b+MHHNKX/26dCx72v7bR0XefspgY
	fEq1wu41oTpYuYINIEjE20XIGWLAHjRd4UVswmYvhlcpVlfPpgll0gOBwmHcMvRDVnHiF81PFn+96
	MOPPCLecK/xRv8UHt6ty+fbnZlLIXLYCph/TNwFa/yIc7UltlzGNOZQY0EOsPlP0eY42SvQGMLrGc
	uZeDBiL0UZg0O/myjZoeGTkS6AHajYw1zfjib8pkSarlSSkJCqm5rIvOYnv5v+7IwOGupv69hcxqf
	xMvi9TogYO38mPpCI0Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ckn-0034tx-0w;
	Mon, 12 Jun 2023 08:18:21 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ckk-0034sQ-1O
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 08:18:19 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9745d99cfccso717472466b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 01:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=vexVIZ0dp8B8C1j+Lo+Kidr/5DKSmQtsmBdj1pB3rMiyA8LG85cEbYhHb7camdfB1U
         6KGQWKvrlf4K5+GjgDi/KVqhaUHphTdkJLC0/c2v0l4CHGTCU/Pl3xPYdFVfOuMUfG9L
         EqXwZySBXtkw15EvmTds6DDbx2TkchmJ02hhmbUaEDsjmdwaDxTFLD4Z9W1UoJBnJ9Y0
         W5vm6i+T+iwhRdNWwUioXKBypP2lS98E8eRLUgciktT6YCX0QXHfrGATZNXZb8lHZEV7
         y2YuX2Qek1ZrFguNQpg4KT8DQGzTJDns7LwpFARWGgHqNQI7MZFYSjF6rcMCBZuxMOHm
         S/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=FPjkgnuLV8w7CbHf6jVUt3MvnM6gOxOY1gAZavazjMZmFFhcREg8ZEAhLQdwM/R2dV
         mQxVMRSVlJnNAlx7+BwonbLX24OKzAVTk0jP6OnZd1VlpF8ING0hZmPkgNFQUVPJsh6B
         wG/D2T1i7rNW9xt7ekW4txAO5M7GD7MuPEVG8xK33hCed9MIpuje+gr4hXxNwcrOdpUk
         nyi08OoHuWzacGzPgScb8kFB27oiGcWpgkrecEdQcwLhblKBskf1rFKzkKd+brnbbn3P
         Efrw9Uqy07LTYTDWVyIsRbjXfNyUFbJ5cpc8psW5QRWiJizgiWOpo8qcA/ZZ0KepIOYl
         O5/A==
X-Gm-Message-State: AC+VfDz5xpmMazX/MO21sZ3rVSVmZTzLeDFHGRcjlW9TjN949Xt1JCsm
	/BoK1Sfa/AAJoUmFrGFLMSQG6w==
X-Google-Smtp-Source: ACHHUZ71VvzowsyBKiDCq7DWYBS4cDksMCv4kT0NQarqHtz70SmAMxEqCnkYbWF+lAwBlVADz6Je8w==
X-Received: by 2002:a17:907:6288:b0:973:903c:35a4 with SMTP id nd8-20020a170907628800b00973903c35a4mr10130123ejc.65.1686557895276;
        Mon, 12 Jun 2023 01:18:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ks27-20020a170906f85b00b00977eec5bb2csm4821357ejb.156.2023.06.12.01.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:18:14 -0700 (PDT)
Message-ID: <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
Date: Mon, 12 Jun 2023 10:18:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_011818_476114_A3A9AB3E 
X-CRM114-Status: GOOD (  12.78  )
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

On 08/06/2023 18:22, Sebastian Reichel wrote:
> Add PHY transmit and receive clocks as described by the
> DW SATA AHCI HW manual.
> 
> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..34c5bf65b02d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -48,6 +48,10 @@ properties:
>            const: pmalive
>          - description: RxOOB detection clock
>            const: rxoob
> +        - description: PHY Transmit Clock
> +          const: asic
> +        - description: PHY Receive Clock
> +          const: rbc

Conor's comment was not resolved. Adding entries in the middle breaks
existing users and commit msg does not explain this.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
