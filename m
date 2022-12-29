Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 551ECC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 08:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rvO4phMejgK4Iw7eqU4qpEaOtmgfs09KedWUrxKI6w=; b=u2ZNXOLkM2bfSd
	rRXuYKQ1nZxD8h4rHrCg3WhZqosoxnLNyM2kPXiVQmlaOCSlugcl2RZCyYS74ugFiNv0iVswxQNXU
	ngRlcQ95AF1JovLDH5fvi23rsmJJWbv/baL+6L+yz6ZrktcSxWQ0K+swku0tpeUgcDTyOdZbhQm4p
	Yp4JVYcxq9IlnYnQ24ziON4emljTTTo1IjBZqplJehifUAwr/3pJ/mTsj3QVHA3Rt77VrtEEr+MJ0
	DjFZ/fLL4JNqzeWtx9bQg7Kso0APdbifyX1IygJU3lgwCg6cI4o6ScWjy0cdUkS5vZe1R7r/AHBGf
	6BSGcy9F2vW29S2x/mnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoXr-00Dqze-O6; Thu, 29 Dec 2022 08:45:47 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoXk-00Dqu1-6m
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 08:45:42 +0000
Received: by mail-lj1-x22b.google.com with SMTP id z7so13143797ljq.12
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 00:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WhhThnTcIHOOnU4TldxJQBEXkc0+gKJ8zUJ0NnzGF8w=;
        b=iACwngYUW2NO/QI//cidNjkSY6IR2L6BvEIVEAFyQl0zymVU79PvIQBgWY/D0yoIUe
         YHYOZTLiJ7al8Uhw/p2hy2ex26ZQnXD1iiHLEMEy/hmj2+NQkBlLigPtVAD5NOdvtBNG
         VB9oL/XGZGiX6MdxU6BF4B/vso6HnrBhOFK0LTJ2IU4eG1qzFOnPxH0CnEgkjSk25GWY
         erPOj9vqGBiDKUC3d6OSvczpyfB50aIKlVfZsPIS+3aacZswA4WH+wmEjE6LLUzGK0sU
         gNVQqSd9DluhlXf1dt1jNqWOSgx8UvUegBW+Ws2oTxsEANYuMcCmMHAL7erVaeoRj7th
         KLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WhhThnTcIHOOnU4TldxJQBEXkc0+gKJ8zUJ0NnzGF8w=;
        b=WGkFzXXiBdqEP9wXIbWcS7Pnzipo38+VBlhn8OCR9DOyvavCZAVai5N4q/VAGT1Gza
         LFrb7sQMxsYWpYsNfuu62BQD7/BCqf7Y0YLefxFjAHDAMvi3ZK+SGD7IBSnYj2OaYJ7X
         /34ypHq9wTFJP2q+68ZzK1oms7SsVjEZbm9J3DmtoDEcjcUmA5aZWQIu29Mlv3sB2KWU
         9TQ8iepLIgpbtie1XsQd17iib8LKGezE/ypWo1F1ra4AenU+JR8Ak21uOBDD1q9x9yKy
         s0IcFMOyrhTzJLWKGsO4aG6AqFnfF9wByvgExMt6u2HvjBCcvYLCoMooadQdfC6pAQhz
         MV2w==
X-Gm-Message-State: AFqh2kqvoHdXPEOYdJv+YGk4PQ71Kw/73mJ3vHSeLp2xTC8lFIbdXdRv
	t32qZ/J6BhkCUKP1DaRSXzKyvw==
X-Google-Smtp-Source: AMrXdXutjgkEHkED1oh840UWFw8WlnqcYr1SfxtSQLUXyecp3Hg4fP6tMrLui8h4uuPLKErhi1FUEw==
X-Received: by 2002:a2e:92c3:0:b0:27a:1860:eb86 with SMTP id k3-20020a2e92c3000000b0027a1860eb86mr7218840ljh.31.1672303536156;
        Thu, 29 Dec 2022 00:45:36 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p7-20020a2ea4c7000000b0027fc5d5dbb5sm1018709ljm.77.2022.12.29.00.45.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 00:45:35 -0800 (PST)
Message-ID: <da10e351-1f22-9583-5f0a-ae7db060cf0b@linaro.org>
Date: Thu, 29 Dec 2022 09:45:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
 <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_004540_414892_8F2A019A 
X-CRM114-Status: GOOD (  13.10  )
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

On 26/12/2022 04:10, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
>  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
>  2 files changed, 87 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> new file mode 100644
> index 000000000000..672035199c19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

Drop the blank line.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,pcie2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
