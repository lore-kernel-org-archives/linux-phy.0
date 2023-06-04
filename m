Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 195B1C7EE2E
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvsz8GRolodUjGoMkuVamnLOEqJsHrgwJQMQBhyILp8=; b=J8oaIk9x1MZ2pe
	orK/3/iOnnI5+oeDd3RPzfD/UgAeDJNZXGsmq3DjErM2CB7iYOx269iUZdMMiH3+81Pv95tl4LTGP
	wtNK4WC0lXNI1+paK2HWeuevd4mBN1sPrRJdVDll+Wz+QWg3vwU4V0tD2kWZo6VwZircBADWfjyJc
	kblYHhFweT1cL8an4LqQbhBz3gzbOb/j4aUkZSsbBToEQfUO1VTiJwLsLEmBZkCBZ74G8RkkLZX4n
	6zlI7EFOwTpZ+gas+2mjc5jQvfDdkY3xnR6jTjYkam5/GfoncAN/G4AnUy+82uh0J72Q8T6ym7Dh0
	5J9wX7xTGXgEDyVvB/sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5l0b-00BqHS-2O;
	Sun, 04 Jun 2023 10:30:49 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5l0Z-00BqFX-0h
	for linux-phy@lists.infradead.org;
	Sun, 04 Jun 2023 10:30:48 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-977c8423dccso185584466b.1
        for <linux-phy@lists.infradead.org>; Sun, 04 Jun 2023 03:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685874644; x=1688466644;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h3vNtqVcROm9cmZSGS8p4DNNUaV8+gQlhQTyNTjrVxA=;
        b=sIAWbBAdGBryZiwlY/mxdtpBJH501zroa5MrYPht8XNpeAuh3rCyvqrasCFIOIzj3Y
         ZSthWz30e9fCXpHBTQBqC9N8QevoGrxDGC3QqnusdLiNQg4cNeQ/DPmuu2Ocksp+Z+U1
         lPgQKtqcEYhr3kG0EDbhVFPpizaeRKwlD9u1+7BHwiKUR45OH5lh4fa86EjKtHvP4T5H
         aeX/xUxZLk/HHp47e9zJBgLwbxDkrLo5X02HbARjsTK/AAt8oD/6Jp+ZDWJSR0AQcmpt
         gZg2NXBSq5A3R6Mzxc6VR4jhonHy0N2GMBbThuna3Tszq7PDt5HGXCDIDGMVMCFRYsED
         8Vjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685874644; x=1688466644;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h3vNtqVcROm9cmZSGS8p4DNNUaV8+gQlhQTyNTjrVxA=;
        b=fmQ8SdOwJkViT8MVmkA1oGUuykbbZo05x9jlILh7r72sMdzVSubRwYmh92F8MRzNPP
         QPztf67rqHbExZTsYDx22uoBUW7PDAzTwCwfDmRB0GiZqrUxOZVni+ULb/IJEFeaiVar
         df9TNAYDOMVZNeZfjSbPj7ufs67FSjUYzuKoqB9NUoquzhZ6KRVnmBRZN1e+wOB1rrCL
         ZkUvXDAPFugsuzKGPQdK4A0l9O8NxcmTlKjB2ng0zGqsnJ6juP+VEZluHRzTj3Qdey3P
         0TJnj2nb20EWZQcq/NYGZrO/4mBPGCGrDRTefKIfVEO87woPAkDFApu5t/o1anWuJYEy
         lLKA==
X-Gm-Message-State: AC+VfDypQ6CO/juAVg4UGyW/a72zloS2DW97eYSfwIVd0IWvpu6lVzuh
	HaiWXvuhUpX6nfLn42L431PnFA==
X-Google-Smtp-Source: ACHHUZ4u0X18Wv6y5mJX9vW4ELGhL1rGBQ1iVfd46vcj0kfhIfImleIiVNDPTsUMG7E9UKpX3WbtOg==
X-Received: by 2002:a17:907:6d86:b0:96f:94f1:b0a5 with SMTP id sb6-20020a1709076d8600b0096f94f1b0a5mr3247852ejc.8.1685874644395;
        Sun, 04 Jun 2023 03:30:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id sd17-20020a170906ce3100b0095fbb1b72c2sm2910853ejb.63.2023.06.04.03.30.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jun 2023 03:30:43 -0700 (PDT)
Message-ID: <3c781ae6-4a45-1d6d-840c-d25f33684b00@linaro.org>
Date: Sun, 4 Jun 2023 12:30:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230604063032.365775-1-guptarud@gmail.com>
 <20230604063032.365775-3-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230604063032.365775-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_033047_301292_FEED0753 
X-CRM114-Status: GOOD (  14.25  )
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

On 04/06/2023 08:30, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index aa97478dd016..63b6914993fe 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -13,7 +13,9 @@ if:
>    properties:
>      compatible:
>        contains:
> -        const: qcom,usb-hs-phy-apq8064
> +        items:
> +          - const: qcom,usb-hs-phy-apq8064
> +          - const: qcom,usb-hs-phy-msm8960

I have no clue what you want to achieve here. You break the bindings.

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
