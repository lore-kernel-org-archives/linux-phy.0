Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2D2C3DA7C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 08:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=py5rHZa3N0VMa3Y6H3SaUHvC4jRbDsk8UoiTe6d/AHg=; b=C3v1rGbJpjHNv/
	ZoJ9+zeTOMnMhDaJjX40kjON4fSHa+0OddMQPOtidPxBx36j4OP7imMYbCpbawQlWYWSm6p1ffrs4
	rOVlzGO3Bo6yUSnJH5yO0gtSqwthkIuccc7GyLPCNxaj1prLXFfXR/ukj0fksSbrNhtx9k33W1SNx
	/UuNhmQKbIqrpzpOq31zyPji9GO6IVGz2o9D961AJw0yHTEsxK9uLv8aDZ1CJl9ZmJ3hmiWXnLmk/
	Pa/Co6cCMG3VZUjxTHGQnXZr2wuCqHZ43/EimVbsVKYXqYKQhG/SzTtYAFz2KH+HabEerx2tVbBYR
	cmmxx+l4E8lvq1NYtvSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBAqn-007Kiu-N7; Fri, 30 Dec 2022 08:34:49 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBAeQ-007FP6-C9
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 08:22:04 +0000
Received: by mail-lf1-x12e.google.com with SMTP id b3so30872400lfv.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Dec 2022 00:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bAnyyfuNqQmQvEppT7FkugRphAcXPYjh2BEsSM40weQ=;
        b=YDM3xsBL4hjlX2yRXGZOX3s9wdciMI5NPmFnk7jGnE730AtD0oiYK+qSxizUbaVvDK
         pInWdU7XCDDiVJlleM7on5EdvIUVSCbwWcG6hD86b/bfCmMCOmTUqZNrCdZgGXXIpUxq
         GNlXogZ3suBdnlp3nff56MST2hCXrsux7YmouR0HHK5Zg0WXar2bCKzISZgIXIdiaYVb
         k0jyKfb+HWYD4xrjeV0FVa0GalqTjxRJsgvh3FYApdE2Tx+2pPiuXj+Pva9bKu9Q0sT9
         oNDo2HOiTMFKy7QYvH32xK+q9PI+UGVmYTitT2u9z1xdTH39Jam786YJVgolMbuz+60E
         kGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bAnyyfuNqQmQvEppT7FkugRphAcXPYjh2BEsSM40weQ=;
        b=U3G2mEKVszxiXMtjgUDnfWvNKUvlSAMz+ow9iB9iCD2AIrAGuNGWu0zMj/XbB1lkGi
         iltaOTJHEYZkkvxdHJ6iNqRQlFz0FCdqZYsGqNOwLuNNLaUUP5Ok4qfIlEZU/jXcc2jA
         XZ8hIp7fgumTLkfQbU0z5A0yNGPj8QFdw8ZZL1MFzpd6JhOi9qt7ReMPK4MTAqnOjAHn
         O5Vmof4KOALLXWB39i5FCRbX0nq8lqGNKTks7sIh1oQjhsfx4IUXK2LLAbOfGZAkhp02
         sZS4UEHcYmtXMv9barvs0XkYcoYcR63VvHUaX14seUoxjbjGysDWFqCROTnVUrlPNXBH
         Uh1Q==
X-Gm-Message-State: AFqh2krpeHT+sU+niF87nl5gPLcMOk4bXRmII9o5SVgsuuepMr/C8al/
	pj/6Y5TAwtyokdxWQ0rHVJ//OCRjs64xB5UJ
X-Google-Smtp-Source: AMrXdXs66FW6eSUKv7C5khMqMv0kG/5KJRDx92H/vnali+TbjLXc+HKnG3MgYcfaCLXO6/AqOwxwrA==
X-Received: by 2002:a05:6512:3701:b0:4b5:9e59:8cdd with SMTP id z1-20020a056512370100b004b59e598cddmr9338231lfr.67.1672388518539;
        Fri, 30 Dec 2022 00:21:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e13-20020a05651236cd00b004b57a810e09sm3398791lfs.288.2022.12.30.00.21.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 00:21:58 -0800 (PST)
Message-ID: <b23c9e9d-35ea-ebc7-eb18-46fd0c9f3d45@linaro.org>
Date: Fri, 30 Dec 2022 09:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add qcom,dp-manual-pullup
 description
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-2-bryan.odonoghue@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221229183410.683584-2-bryan.odonoghue@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_002202_736960_324C7BBA 
X-CRM114-Status: GOOD (  20.52  )
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

On 29/12/2022 19:34, Bryan O'Donoghue wrote:
> The original Qualcomm driver for the HighSpeed USB PHY contains a flag
> which tells the driver that the controller and PHY do not connect to VBUS.
> 
> In this case an external IC such as a Type-C port manager supplies VBUS and
> the VBUS signal is not routed to the SoC. This means we cannot detect the
> presence or absence of VBUS and cannot take action based on it.
> 
> Document the downstream boolean qcom,dp-manual-pullup to allow the HS PHY
> implement the necessary logic.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index aa97478dd0161..c55a59df71ad0 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -80,6 +80,13 @@ properties:
>              the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
>          - description: value
>  
> +  qcom,dp-manual-pullup:
> +    type: boolean
> +    description: This flag indicates to the HS USB PHY driver that it should

Drop references to the driver and rephrase it to describe the controller
behavior/feature or the board layout/configuration, not the driver. The
same applies to property name - "manual pullup" is describing driver,
not hardware.

> +                 enable or disable an internal pullup when powering on or
> +                 powering off the HS PHY instead of toggling the value when VBUS
> +                 is absent or present.

Wrong indentation. It's two spaces.

> +
>  required:
>    - clocks
>    - clock-names

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
