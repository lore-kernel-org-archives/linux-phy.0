Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 520B7C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 08:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMSfFB/9KxCOoYotYtT1IGGuoHKdCMlVkVZ8i/AT95E=; b=eT0sI0OFePWag2
	PsAYzFygbL+MPq1G9q1p5IPcDU0pqz1ioa9dhBmWxxneGc3wz1t8qrrc4a0T5tb1Kt7kBWRJU5psx
	qQgNlFUq5RPnQf3PeFzUwLe9LRIyeSnKubokzkpbRcZEYt2UlRZ3JE/jHcTRPSUSwisZe3Fjqzuzm
	+82XxKCl4R0hFMNcqMdFOy4ZbGs2Qcz5y01m7V9uhaEbXn21QcBhZZbpOpsl4677MhtOkKx8WFMEw
	5byim8ZefMujRBG0alewCVJMRN5WUruLBxYTbKcUFDU8kucOoDqyMqgsalAjvBPNo7t2krMCZOBxX
	VcYNAchVXmbcTQQ7bhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7rL-006fMM-N4; Thu, 24 Nov 2022 08:45:27 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy7rJ-006fI3-No
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 08:45:27 +0000
Received: by mail-lj1-x236.google.com with SMTP id u2so1233886ljl.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Nov 2022 00:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o+bou2Eqve5CvNCEe8A4y27WMBYElKaquLsQIo7P2JQ=;
        b=Eqfk1RGF9j3RdprJYIXx7HGeIq9xPFflC0DBHFZv84z8rXJQ5/vglbRa3wWOGKWGIQ
         gLftpjDA8F2d9p131D/taQD+L1ualWywLsR9jmFpVeUEmOyx3skcNVLbLGmxUv01Ccs1
         h8hoaQCg3vx1YFG8Tv7hav6GCcfU3oehhr9h4Za3ef5AV/vCOoMBq1g36K8bi4XB0fMz
         v5tqdMn4k68ROH2+hh2ygTIlS1j0bf0Y31Iv9IyMpkN5hK6rGEl5kftjMe56NRobUhlc
         CY3p8z8pvDn+c0fA/4z7p97JFRmkc4RMljDdiyIZ86cIR8ax3Xoh4vis9omLr9B5CBQ9
         KUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o+bou2Eqve5CvNCEe8A4y27WMBYElKaquLsQIo7P2JQ=;
        b=3TkGZTutFKRwXz3bKuietxxcx33JlZosNmGCPaLljhwYY4DGQexz1XKZCEFZic2gZV
         gqqX9p9Du1xTB8BJiluFuIELo3qz8G/TH4iW+kbj+UkpE2YvuNNtVkqisC4Kj6HRILga
         2CYocEoAVPhM5RneMVFgO1GDID0fi/YrDcZro9s3gKBtkI5o4H7zEPqHT5TCLu2ptCcT
         85g+2JQmBK+l9A0+T0aMmIJ4eVyOkg0cb/jDWRzZHx4PUpU1y6yhqDcmlRHHLnlAFYQV
         H3I3r0ZovOUyMnc6i8XUGojCJ8b2q4hxvtuut1SoeKO7D4AxWouockOkmz6kZwk1KTcQ
         Voug==
X-Gm-Message-State: ANoB5pkgYqt8yB/KDKripyR33tHORSTb7YETcALa3WyZ8Luybec6HuAO
	N0sckS905vvxCkk+YYOEDlDE8w==
X-Google-Smtp-Source: AA0mqf6Z3tWCtGpuP577dWMuvzhmVrpzGUmuDSeOU43vilip13LGn5V10NAdwcMHcLQV3aLfRXGe8Q==
X-Received: by 2002:a05:651c:c89:b0:26f:bd61:ac4f with SMTP id bz9-20020a05651c0c8900b0026fbd61ac4fmr5219103ljb.396.1669279520992;
        Thu, 24 Nov 2022 00:45:20 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z8-20020a2e8848000000b0026b2094f6fcsm48669ljj.73.2022.11.24.00.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 00:45:20 -0800 (PST)
Message-ID: <0b203c11-851c-fd6c-faeb-e283b158f1c8@linaro.org>
Date: Thu, 24 Nov 2022 09:45:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] dt-bindings: PHY: P2U: Add PCIe lane margining
 support
To: Manikanta Maddireddy <mmaddireddy@nvidia.com>, vkoul@kernel.org,
 kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, vidyas@nvidia.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, bhelgaas@google.com, lpieralisi@kernel.org,
 nkristam@nvidia.com
References: <20221124083510.3008139-1-mmaddireddy@nvidia.com>
 <20221124083510.3008139-2-mmaddireddy@nvidia.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124083510.3008139-2-mmaddireddy@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_004525_806934_08F421D1 
X-CRM114-Status: GOOD (  14.61  )
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

On 24/11/2022 09:35, Manikanta Maddireddy wrote:
> Tegra234 supports PCIe lane margining. P2U HW acts as a relay to exchange

typo: merging?

> margin control data and margin status between PCIe controller and UPHY.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.


> 
> Signed-off-by: Manikanta Maddireddy <mmaddireddy@nvidia.com>
> ---
>  .../bindings/phy/phy-tegra194-p2u.yaml        | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> index 4dc5205d893b..0ba3f6a0b474 100644
> --- a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> @@ -40,6 +40,51 @@ properties:
>    '#phy-cells':
>      const: 0
>  
> +  interrupts:
> +    items:
> +      description: P2U interrupt for Gen4 lane margining functionality.

typo: merging?

> +
> +  interrupt-names:
> +    items:
> +      - const: intr

Drop entire property, not really useful.

> +
> +  nvidia,bpmp:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: Must contain a pair of phandles to BPMP controller node followed by P2U ID.
> +    items:
> +      - items:
> +          - description: phandle to BPMP controller node
> +          - description: P2U instance ID
> +            maximum: 24
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra194-p2u
> +    then:
> +      required:
> +        - reg
> +        - reg-names
> +        - '#phy-cells'

That's not how it should be done. You have only two variants here, so
add a "required:" block with above and only one if:then: clause for
interrupts and nvidia,bpmp.

Requiring reg/reg-names/phy-cells should be in separate patch with its
own reasoning.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
