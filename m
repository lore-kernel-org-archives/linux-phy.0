Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 159F1C77B6F
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=drVYrW521D/ns2/4WgmLeunZMDrs2myOgwXiXJTs1nA=; b=q9Wi2MRuoZCulmZM8JS/XhZbv5
	OMgnUmdW4vAR2Hi0NtBmmU2SzyY9JlzGj81ZTYaaanyE0XltrARbauUuxG+6tsIKsLcoSusXiw2go
	vAvuRq+CsACk5P24+d6Lmma+HJLTyUkVhwekUyeH5Lw8IfrySd5RFWyT8iIP2wOpUpjJ4MNBfy5Kw
	mHAfDCQMn6HzR2oNNQ1HPCP03a+95QXlRChf7X585XqhR8el5wYgZqbxDgwaUNbpkD+xQlX9sDRxN
	auG9n0gK96THYODgi3KICVZB3diWoR+xliOrcBqcnPgETQe+D0blLS+gNR2AH9Az0pvEAvU3d1P8O
	gMIGYR5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjgG-00AZYm-1z;
	Mon, 27 Mar 2023 10:02:24 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjgD-00AZXG-3B
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:02:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y15so10611536lfa.7
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679911339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nzrlXY169vmptBSZ14ni735sslP027W0vODATNCTldE=;
        b=Vb3F8ybyfwetkmg0osWqeWh8i1mau0YBJPXGKWbXY2kPNtlUAiSgqyKCKmmf10JuVi
         lDxKSEE2ZWXbeSrPPu2+hT13dKVNJuQHg8V8WhTZt9X/qLJcAOlqQT5LXXpUIwh2p/iX
         hpOME2QCXt7TGghvBNBfA8GGPXigUs3uTvKFTVnSNoP5q1cznGdXWQFvU/1NIqdJBfko
         1CBhjHZILjucok2+JOeo7K6m5tZHFKYM2F8x9ivVhXzm4IqdAHRCPAYZgEJo1sV1rmzt
         2qkuIQMPYRrOGzEhQ5gE2Zo8vRoOAw1Uj4zL5hjhkCnvBSID1gQVp5fmDEJYTF100jVa
         ayJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679911339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nzrlXY169vmptBSZ14ni735sslP027W0vODATNCTldE=;
        b=GPgTU9gaWitxwNLtm8U9kOUjN17yLCDIfxLFmmInTUxBzJtrN3/8O2rvrNX7Hv0p1A
         rJnbXpnXWo0Non1Gs7bPMErTSz0QSF7loY2vJXPFLhB1A/4F1ppimqCW76JzlqsgyyjN
         ZVCox1v+pTzvhjj3hHRIzPJIej46S1roiGk5GqjS5acQGQ57D6DZxeU8qDXYrPE4l99N
         TFNbNsIhWpaO0M+EkkTRQ+qWoWoTHB4g8jg2zZBpo3Rrh6tAH3A/i084I6HnIwgEIda6
         9IlOHtgH0tzLvfcOr811e7qyQ9cYEAtmUEOMt+2wHutfTR1FkI9ZerKe8tuQIb/eQO2n
         OqiA==
X-Gm-Message-State: AAQBX9cgDgXHI9vXDvqGOo+F5PtDn+voGxiq/f7ZvtndscNHnS/DQvPf
	PBVBk2nieOXQxSvqR6WEaqiyGA==
X-Google-Smtp-Source: AKy350Zn85bo9cC+P5Lt32895xw7OgFT/y227gFc6/VCwmmUEtiFz5dlVjlwkMo2hZK52XrZHUxDFw==
X-Received: by 2002:ac2:55a4:0:b0:4eb:beb:5ee0 with SMTP id y4-20020ac255a4000000b004eb0beb5ee0mr1974040lfg.35.1679911339292;
        Mon, 27 Mar 2023 03:02:19 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c25-20020ac24159000000b004bb766e01a4sm4633874lfi.245.2023.03.27.03.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:02:18 -0700 (PDT)
Message-ID: <24bcba8e-11e7-ecce-0e08-c9def6cc54e8@linaro.org>
Date: Mon, 27 Mar 2023 13:02:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 1/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574
 compatible
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <ed2abc0c260664c3039a4e7084ed9ebab1151a9a.1679909245.git.quic_varada@quicinc.com>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <ed2abc0c260664c3039a4e7084ed9ebab1151a9a.1679909245.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_030222_034282_FAB98AD6 
X-CRM114-Status: GOOD (  16.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/03/2023 12:30, Varadarajan Narayanan wrote:
> Document the compatible string used for the qusb2 phy in IPQ9574.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---
>   Changes in v4:
> 	- Remove constraints not applicable to IPQ9574

I don't think this is a correct way to go

>   Changes in v3:
> 	- Maintain the proper sorted order
> 
>   Changes in v2:
> 	- Moved ipq6018 to the proper place and placed ipq9574
> 	  next to it as suggested by Dmitry
> ---
>   Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 7f403e7..3cb27da 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -18,13 +18,14 @@ properties:
>       oneOf:
>         - items:
>             - enum:
> +              - qcom,ipq6018-qusb2-phy
>                 - qcom,ipq8074-qusb2-phy
> +              - qcom,ipq9574-qusb2-phy
>                 - qcom,msm8953-qusb2-phy
>                 - qcom,msm8996-qusb2-phy
>                 - qcom,msm8998-qusb2-phy
>                 - qcom,qcm2290-qusb2-phy
>                 - qcom,sdm660-qusb2-phy
> -              - qcom,ipq6018-qusb2-phy
>                 - qcom,sm4250-qusb2-phy
>                 - qcom,sm6115-qusb2-phy
>         - items:
> @@ -157,9 +158,6 @@ required:
>     - "#phy-cells"
>     - clocks
>     - clock-names
> -  - vdd-supply
> -  - vdda-pll-supply
> -  - vdda-phy-dpdm-supply

So, how does ipq9574 power on the PHY?

>     - resets
>   
>   allOf:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
