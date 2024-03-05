Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A429C54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 17:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsLwWFHp7tMtRPBAe9O5+Yy/k+CACoRhnExthOMLRE8=; b=1ojV1pLQpKFyuj
	3bcBwqm0FIcsZncS/0p4SHNSXvYCONzm6lFv4u8tlM8oLp1pm2iSyGnkSSNYEPaa3Ceu8Xoh/JOdI
	a9juQsVfbyAfe1l+bygAmzQxCZq/sIPJ1NDQriAhpreAZPQ/uZWWMtWHGWgptL7mh3n/Cx/KeLDox
	e6bbAxiO9nfmd6dxNHQguN3em/lypWx/yBCzOfSm1qmyQAOX5T/GcsA8BlWTL7tqUdW7DsLopO+/H
	0lJRTdtLotazLH6HEh96PvFh7LX4danjWmq09vc2ADG01sajl1zCc6hAGJ4O/BLDPpXrsBDyaDSBN
	C0nVcCGjd2WBQyE7LqRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhYGQ-0000000EcGn-0drD;
	Tue, 05 Mar 2024 17:07:38 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhYGM-0000000EcFk-3FZh
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 17:07:36 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a293f2280c7so1024732466b.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 09:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709658452; x=1710263252; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6qTdpRaahlDa9z2Zha5TherbMQ0/ES+OOUXltLCuc0Q=;
        b=oZ3aenzeZ1VL4P9mVhOqG7WZ5eH7DsXM3HwToBtAJaqMxLkB2HC9TWuB2YYfHvCR20
         xuePyUGQylHp3bCzsM1WJbtqz5VzbMXMAefi8z8+euN3XujpbhxlzMbZ2U2Bn7A7obHG
         bc0MYlNp1zSdSJlZDzWCdWuasbH87XI/Fmz5B8RPJUclVeM61A5PLP1A248u+BYBBrq8
         dRFBA0NWRwib++RWI4E/itqkqE2jWjZmGOE1EYHoj2UNCtyi4VIDC+vbf6KFpNyx++Ys
         OONGTMFObrDIQYoRazw0vbL9U+mOpRUdY36gz05YmGXujFfqjFR3dpOF3LEKIDUyVnwa
         j6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709658452; x=1710263252;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6qTdpRaahlDa9z2Zha5TherbMQ0/ES+OOUXltLCuc0Q=;
        b=CM1yTyDdtCnvt74VLAvQt86W7zfViXWlrr4ThiwoVvmVJNhNVQXPro4cMLZEmpTshK
         hmMPyJhNQ+M9RoSvctUNwxkj3++SxLc6X+Fzcb/x0dUqbrukSHQwJ8LQbffkMNbNuQv5
         hyT0ey1Mf62JfFmRixysPU6SP4PccnOZ1oYjJRiis9g8uNfKbtro0StEvd5+9PtzgJz1
         Tp1vizu69fm2fH97CSxhPiWCUOuHc4Bd6iuMnapQPIroMmG8XiP6tRc0g6Wrl4T5ZEI1
         p7FQjcp32hDPCFiEDHgUVrw5ToIexlKqLu8EWhuVEIJzjflciLTRbNvwx33xQtHa9PR8
         377g==
X-Forwarded-Encrypted: i=1; AJvYcCXYPl6YQJFRSVrMjPDVBFrUxvJUbBF36X2vlPILNbrANIaTPc2qn0DAEwroSNnxKrgwK4XSyo7Sov5o60+ztD2e1QXpdKMF1+WfPiS/oQ==
X-Gm-Message-State: AOJu0YwDk51qwlmW9voaa7cXODCVkQP9NZfkhEWC/jQZpSF7KKsgbOAq
	Ssbf5XR8nMel+OjAmgYwiSoBuKYQFO7p5ErsSOauyicFoudnH6zi/bSKOOv+FKM=
X-Google-Smtp-Source: AGHT+IGmLwJ5FeUIToG60ygUbtaMv7yy4aE9s/KnfU++LDfwXYn0ZkTLUWLthAXl2MH7KgU0HP0rnw==
X-Received: by 2002:a17:906:37d6:b0:a45:b1fc:52d with SMTP id o22-20020a17090637d600b00a45b1fc052dmr389723ejc.76.1709658452223;
        Tue, 05 Mar 2024 09:07:32 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id o26-20020a1709061d5a00b00a44f6ce3e7fsm3709759ejh.77.2024.03.05.09.07.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 09:07:31 -0800 (PST)
Message-ID: <86371fc0-ef49-4dc9-b98c-7c5131cd1227@linaro.org>
Date: Tue, 5 Mar 2024 18:07:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 1/3] dt-bindings: usb: qcom,dwc3: Add support for multiple
 power-domains
Content-Language: en-US
To: Sriram Dash <quic_sriramd@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com,
 Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, quic_psodagud@quicinc.com,
 quic_nkela@quicinc.com, manivannan.sadhasivam@linaro.org,
 ulf.hansson@linaro.org, sudeep.holla@arm.com, quic_shazhuss@quicinc.com
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_090734_880231_31420C20 
X-CRM114-Status: GOOD (  18.35  )
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

On 05/03/2024 17:57, Sriram Dash wrote:
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.
> 
> To support the management of partial resources in Linux and leave the rest
> to firmware, multiple power domains are introduced. Each power domain can
> manage one or more resources, depending on the specific use case.
> 
> These power domains handle SCMI calls to the firmware, enabling the
> activation and deactivation of firmware-managed resources.
> 
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 74 ++++++++++++++++------
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 49 ++++++++++++--
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 37 ++++++++++-
>  3 files changed, 130 insertions(+), 30 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 1e2d4dd..53b9ba9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -44,7 +44,32 @@ properties:
>      maxItems: 5
>  
>    power-domains:
> -    maxItems: 1
> +    description: specifies a phandle to PM domain provider node

Please drop all redundant descriptions. Adding them is not even related
to this patch.

> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domain-names:
> +    description:
> +      A list of power domain name strings sorted in the same order as the
> +      power-domains property.
> +
> +      For platforms where some resource are firmware managed, the name
> +      corresponding to the index of an SCMI domain provider can be
> +      "usb_core" or "usb_transfer".
> +    items:
> +      - const: usb_core
> +      - const: usb_transfer

How is this related to fw-managed? I fail to see it. Don't mix
independent problems in one patch.

> +
> +  qmp,fw-managed:

Please do not upstream vendor code directly, but perform basic
adjustment to upstream Linux kernel. There is no such company as gmp.

Run this first through your internal review process.

> +    description:
> +      Some targets allow multiple resources to be managed by firmware.

You miss clear mapping between compatibles and this property - allOf
restricting it to specific SoCs.

Is this different property than qcom,controlled-remotely?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
