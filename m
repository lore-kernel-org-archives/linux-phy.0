Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E33C4829A
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OT8PYbj+hMt1JiaAAmC4PyjdCROFsdH1ImjJE1ceZeo=; b=od5ii/K/E0Zwfy
	LXgaK7INDGMbQ0fwPwMEWvIUXwM4aWW5yvuGrQc/msasJ3ONTP937Yjg+nFj0Mo94rb6+2VhNYM+/
	lIlU03KC2BL0YLy59Ev+zvPfJ2l4lH3hBluKLwQpfREXV2NEFz3sxdVHe3tBrDA761ELyUndtIQhF
	X/qYnI7qtP+MuDyyTIFlfwkIlLspuPgC3bPkzSbxiUWE+rOl8LhswadB5dg5Srdnb/cm6SfH0vUMm
	4IqVFjaVCAJb+WAK/5baplRsGR08C5GqdwHynTm4jxTt4+EOmX8nfjC3joAIEDL5pThimLbFv9EkI
	5sUBHvvfLns5jGSNUP9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZCgK-000000030tm-0Wup;
	Sun, 11 Feb 2024 16:27:52 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZCgH-000000030rn-0cE6
	for linux-phy@lists.infradead.org;
	Sun, 11 Feb 2024 16:27:50 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4107ed0c536so14124195e9.2
        for <linux-phy@lists.infradead.org>; Sun, 11 Feb 2024 08:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707668855; x=1708273655; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=14MQ2UgvpBbTYsh1PZKzThnxP7fIOs6UP5ZJI2+1J7Y=;
        b=iGZuFKhLFOGka4cKbcUNNmrLZAZRNp+MXta5esI0BzUvcwq2iGU7oVdX7ooTcwGPj1
         cXPyr3Okrcq3lo5qv9CUtwFsxY7VObzwfc+WONbG9SpgARWOkywXiYQJNqKgzuS7X/ij
         SAAfaMwbxZPdQoWKbUIQ1/fot4daQCQuwwrzD1mnT5iq1eyAsjrP22vBa/KCwxqclMMx
         CR6WWmy27T8D/0dN5nbP7Auv0EewetbmKXFXgOUPu71MTVPp2FWhzoCMNBlTrQUw1u9H
         K6tI7KEB3qgSo0w6gd1zMYd3ToqtuZbRA+oqmGTr9051T7qOiqLx3R6a3WCXct10jx4r
         k6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707668855; x=1708273655;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=14MQ2UgvpBbTYsh1PZKzThnxP7fIOs6UP5ZJI2+1J7Y=;
        b=gPCCrNonxrbu2NmBvsv9PYXQ28f2yr2aKqRoBZAakj/5Spwyf7QHDUIT9VsMN6PzjZ
         HvZp8lPd+QmKUo8zLleHYLw49s5wYszm+ukZ3z21J2rcUkfMnEJpNCbWsGSA5VPzNH9i
         Da2juk0owuzrvbEnLWwlaoq0C1nbHoyb7Lns9/66QjD3lvq1V78ZcH3O2+o8A1rCwS0T
         lhUJLLmjagSy5t6BN8Pm62KwH0WOU6ZvcZGdrNTt2nq1j0JpADQ9wZcVESo24jYYfELY
         DWAO1ozXmLC/mahB4zKbhU8PfkHumiXgNNxCvhW1C26sq3DFjbfnw9rvuwwAcyiZwPxS
         VBJg==
X-Forwarded-Encrypted: i=1; AJvYcCUBqClD/N6lF759Xeig7tURhVlkg2RvhnwgZvkJmeiQVGyddzL8E0+uX6LoZvmzkTdznWJn3dxW+VBYFVCQtnxqUZdzhDDVXjFDI4mqcA==
X-Gm-Message-State: AOJu0Yx2fOXQ+7tTlNrVtE7e90bUZ+ealoRGJ2BKv6iF9ejK1fKr+n8X
	4B+OvEMLKlP9BK2AwYP7lgOrp1SNxSGB3Mohzd1SzjdyGLPwLlETwszyj2x86Bw=
X-Google-Smtp-Source: AGHT+IHQL89NNYSHgtLHCi0/ING8wnmJvXMUEuXdGJQyrRjJFG8qyzlQK2QjNZpQkPoFNQ0v3WDXhQ==
X-Received: by 2002:a05:600c:45c7:b0:410:d3b8:d39c with SMTP id s7-20020a05600c45c700b00410d3b8d39cmr554929wmo.29.1707668854833;
        Sun, 11 Feb 2024 08:27:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWo9ouAO0a1Jcew9OsrdI135eooJrtd7aJI4dAfPi3wn3X/4j7mvaNThhl42RnUwN9kGil5b5pZuf02jFRlYHjJ+v9g+yk/ZjYFLosqnmXnEsmGiaGJysz7BYIFcStiq6h+2Os+X3GIbkuOVmMnSy2kUtC6SYpMozUURD39kXUmWbYjsCpLmjU9xTi9BkACUYCBgiHKfuIQmZRRQqMJV0w9IwG11cV8kKzaqYjLDwR9vYTU2T+qMKknWwC5AMgSNYhblfcCRKguTYPf5nm0MuCGd2SNDGpYXMUCYDZUPP7tasqoFBD6tm8zMLrHN74l4kR26EtizdGrfPj5DVxXlguTCpF35W4tVZJB6FMm/SGY5bYqlGUynq31Utv2bfLJeEI9xt8/vg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id jp25-20020a05600c559900b00410c7912c6esm1284290wmb.14.2024.02.11.08.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 08:27:34 -0800 (PST)
Message-ID: <662b50b2-93e2-4b55-b3a1-d405fcdb63ea@linaro.org>
Date: Sun, 11 Feb 2024 17:27:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for SMB2360
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
 <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-1-af2ca4d95a67@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-1-af2ca4d95a67@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_082749_193829_F81E012C 
X-CRM114-Status: GOOD (  10.36  )
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

On 09/02/2024 16:14, Abel Vesa wrote:
> Add a dt-bindings compatible string for the Qualcomm's SMB2360 PMIC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 24c733c10e0e..6be20c157568 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -21,6 +21,7 @@ properties:
>                - qcom,pm7550ba-eusb2-repeater
>            - const: qcom,pm8550b-eusb2-repeater
>        - const: qcom,pm8550b-eusb2-repeater
> +      - const: qcom,smb2360-eusb2-repeater

Make it an enum with previous entry. Same effect, but it is easier to
read, especially in limited diffs, and more obvious.

Anyway:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
