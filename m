Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 252F5C54EAA
	for <linux-phy@archiver.kernel.org>; Sun, 22 Jan 2023 14:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3TuzMpMHqsB2E8jk8PVNepMsdYAtu4JE8fgIZa7wSg=; b=gtdxBwaSV+2UVZ
	Ljye+PPP3VHpT6Q7QESavk/Jt1D+eabwoQgMobO13dgraXgTtqcPBiEEwW2XS1tN01NdXO4m3wpDL
	fH6vyAknr3nobF+l5aL4YvDdQ04pWp1v3HNkRAR0h072c+UYxrigqh+vR8UozgNI4ptyWt1RZabyK
	ZUBZ3dkruBYjMQ5gX2XFt22KC2AS8WDGHSCHYovhONUl5uIkdpGPtp4uHcA+vRTfbozDGa7iLPoeK
	v0zOr3LlX6pKX7uQLdQ+owSydqHHtwEa9ZEVPB2oUgA71NkrD7M6VVRQfT3aGgad6bWmuUt5qNmuo
	67VQwUM6bOa/bYqWge4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJb2A-00FPJs-MV; Sun, 22 Jan 2023 14:09:23 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJb27-00FPIh-Lg
	for linux-phy@lists.infradead.org; Sun, 22 Jan 2023 14:09:21 +0000
Received: by mail-wm1-x32b.google.com with SMTP id k16so7216871wms.2
        for <linux-phy@lists.infradead.org>; Sun, 22 Jan 2023 06:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a9NpMSfkooTiSv2ZBQPfxArsfZPBfz7GqCCR+XSaAOg=;
        b=OHuy7+aZrOI8AjcM8rXiRTGA3F82tyHoun7dlV3o8JzEZmu1Nib00YrXclUIX/IbyW
         HZMEi4IkWMmrLwsEnwqjOUM0hEcQT8eP8GEGCYUAhXpKrCYv9p+0oo99ESXe7IwBM9pC
         cX9ZcC7snaiqc5qFHw6dsS6iAA7cLqR2k2s90SqJIALSOQ0xp0IY7fra+WkISkChBjXL
         6iKH/5fp67J/EhDZ2Ql+huD+NgZupKYXqSsuZhPOMUZaKwq+f3Uc+P2GTq/5LPi084M9
         2hjWiw0Xb+/cUfzetx93dAXrOYxU4SJFL8C8co7LdHA53ZusDtvuHhBzi6KFtjHrCMN1
         Y4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a9NpMSfkooTiSv2ZBQPfxArsfZPBfz7GqCCR+XSaAOg=;
        b=QsAW1fh7zTjYnc60/EBg/5vDNLOR/frTUBcq82luvHFwZJjovraksG6Rz1i5kTL8Qf
         /rU8iCN6+WtHrWIOo0M1GbhStSGboSG5+3ONHcSN3o7Wsvt5RxSVA0KC4f1dn798xt2m
         F8iYFqdMp7upa6gaWBTIHMerNE/sPmpkTPb9NDuj/Y8DrieRkT/+htuyyvO4sbktkKCS
         XfLOM7+fowp5H7fHy8p8DYHcVZY+l1mVsksR5hy/wYzXYp6Ta8yF/Z5Bsrv5emHDyZpR
         JRxhNTMhQq1P88CkJxcGMQFc7UGrz3O66S1kYls1VHDH24hx+YQvFDXLI+aSizxBbF5o
         zM/Q==
X-Gm-Message-State: AFqh2kqDJcmKuyQL4GH+XygfCmz9/j7uMkQgnVAOiyBpfmt+YuNPoR3a
	2mAEb41LeC74TK7XB6u8gxZuKA==
X-Google-Smtp-Source: AMrXdXtDA46PnZEz1olLAyyVedLaw70rB9bL/u8qM6NXPsKsze4CIEalUOanBH3tAqmcu3CtNmfDPQ==
X-Received: by 2002:a05:600c:3b05:b0:3d6:b691:b80d with SMTP id m5-20020a05600c3b0500b003d6b691b80dmr20881250wms.21.1674396556168;
        Sun, 22 Jan 2023 06:09:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d544a000000b00273cd321a1bsm2853845wrv.107.2023.01.22.06.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 06:09:15 -0800 (PST)
Message-ID: <938a5115-48e4-73f9-8a7a-ae890eb10077@linaro.org>
Date: Sun, 22 Jan 2023 15:09:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-2-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119140453.3942340-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_060919_763954_06695896 
X-CRM114-Status: GOOD (  18.46  )
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

On 19/01/2023 15:04, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> This patchset relies on the following patchset:
> https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> 
> The v3 of this patchset is:
> https://lore.kernel.org/all/20230118005328.2378792-1-abel.vesa@linaro.org/
> 
> Changes since v3:
>  * increased the allowed number of resets to allow ncsr reset
>  * added vdda-qref-supply which is used by pcie1_phy node in MTP dts
>  * added both compatibles to the allOf:if:then clause to constrain the
>    number of possible clocks to 5
> 
> Changes since v2:
>  * added back the binding compatible update patch
> 
> Changes since v1:
>  * split all the offsets into separate patches, like Vinod suggested
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 8a85318d9c92..4b4566f90811 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -20,6 +20,8 @@ properties:
>        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
>        - qcom,sm8350-qmp-gen3x1-pcie-phy
> +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> +      - qcom,sm8550-qmp-gen4x2-pcie-phy
>  
>    reg:
>      minItems: 1
> @@ -43,16 +45,21 @@ properties:
>      maxItems: 1
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    reset-names:
> +    minItems: 1
>      items:
>        - const: phy
> +      - const: nocsr

I think it is valid only for this phy variant, so please constrain it to
1 entries for all others.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
