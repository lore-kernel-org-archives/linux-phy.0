Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96683C636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 08:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1qvh8MQtkv55eZsNP4JZpEO/ilBsXUQTldUTQuIdkY=; b=b7KSag7xwAjbgr
	yqr7RhfwzW8SYaLusnol9NTmH6KrpG5nEEGR9Lter2bIMKJYH6n+gIorzT8ZkOUXxGvvYOzyYxAQ/
	XQKYKDvhF6bdXUtz6CrTH/iQ5HVSBvzZlkw4QHbK1hnv7v9tRsnethdFGGLL8BW0C95BjZra8WKmd
	bgEQl76eblQ4X29Ny/Vk7MFAEx5SJTOTj01Xr15ITdcxH5zBunfwTeoheCKwPhtB3EPnk76Rap+sk
	yr34Cg/TlWjJvSmrK8DEMhfd36mO3Sckuive272NuHCDbXEYEmJOJ05x00N8Hz9C1GBfJIiBtcQ8y
	Y54U8X1nVzywMX/q7gvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfyH-00Ecuo-0R; Wed, 08 Feb 2023 08:38:29 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfyE-00Ect9-Cb
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 08:38:27 +0000
Received: by mail-wr1-x42e.google.com with SMTP id g6so7956397wrv.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 00:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eS63Or4T8CRl6Rlda5XYU0bXBqkeJzCyi7egT8CHhq4=;
        b=BU1JzxJ1RWZVEXAI1ICJzziP6g940qYfIArARwAQ0Eb3VF0Yc58ZLbs8GegqFkcyTL
         CGHC3I/9zLa5sVnlAMDk2ZnyDOPmR4CyKEzUHfSr3sLs+NbR2e3caTrZHXzNtMB+O2YG
         tYr9PLFsSZ6uQfBu6qdY0dakiW9yeb0/tMhktrJj4fYFQgtA7HbSm2wYtuI006xf/Krn
         XAgHMSqf+7Wx5gRjmbl9Dsh+z4z3h9pbTe08STMhDLIO0sKwIoFxBwUBdMgPiuywBuWg
         PpET4M+8c6xTMxFX3APh3ftwOOljLHBj2IYMCzIK9SqTS9HEV3etOice6rl4xBECbDeB
         iB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eS63Or4T8CRl6Rlda5XYU0bXBqkeJzCyi7egT8CHhq4=;
        b=VLrKvfP/b/tmi+MqBqxbAEYyfMWEvyERAiwagzuiYxSQ9B1uu5pN2wI7dKE2qJTzXR
         DH4Ofgtk/qwi1ivy+rSJ+ICPDp9uz9C5aq1QKF9OMAby/zfv1V7G8oYlvbpono42QleY
         MVuq2LjDLQ4Su1rIhxR2wS8BzYu6kN8JLgqr2MdRfvHT+a56ZLF85yH4soDgCbSruXsn
         mIzHKmgmrQ8hbSyjktlYeW+5j9YBZwNWix2HPBo6JEebDGVOujmhGkXfFZUUIvYE1Xc6
         7tMH/ooinKVBy+DoUmfRRoT8H6s9zpEHg9ssTIsSDvt5Hq5QtIgKHxjExirYkNqB1Iii
         tKgQ==
X-Gm-Message-State: AO0yUKWj39ZGh7Z21vv6S80p2cHi4adyDE3qF4/fp9QKfngC8qX/ZDVq
	HrhNArix/HHyUentECQjkWi6iw==
X-Google-Smtp-Source: AK7set8WsUaHtpqa2gNKSdTElnh5D1DLqGHg9t1gWbdIdG1ugmh/M0bcyR96fE/SUyPXXsToJiQrrA==
X-Received: by 2002:adf:dd12:0:b0:2c3:f26f:8cca with SMTP id a18-20020adfdd12000000b002c3f26f8ccamr5153425wrm.67.1675845502699;
        Wed, 08 Feb 2023 00:38:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h7-20020adffa87000000b002c3e698d7a4sm7634366wrr.24.2023.02.08.00.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 00:38:22 -0800 (PST)
Message-ID: <c2e71430-64f5-4f6f-dab7-2ec9f97c85fb@linaro.org>
Date: Wed, 8 Feb 2023 09:38:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 1/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater
 schema file
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
 <20230207135551.1418637-2-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207135551.1418637-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_003826_461713_29B685EF 
X-CRM114-Status: GOOD (  19.45  )
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

On 07/02/2023 14:55, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 repeater found in PM8550b.
> Add a dt-binding schema for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v3 (rfc) is here:
> https://lore.kernel.org/all/20230202133816.4026990-3-abel.vesa@linaro.org/
> 
> Changes since v3:
>  * made this patch the first one in the series to fix the binding check
>    for the 2nd patch.
>  * dropped the compatible for pmic in the example. This is due to the
>    dependency between this patch and the next one.
> 
>  .../phy/qcom,snps-eusb2-repeater.yaml         | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> new file mode 100644
> index 000000000000..54afab7e21fb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-repeater.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Synopsis eUSB2 to USB 2.0 repeater
> +
> +maintainers:
> +  - Abel Vesa <abel.vesa@linaro.org>
> +

It would be really nice to have here "description:" with few words what
this repeater is and what it does.

Anyway:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
