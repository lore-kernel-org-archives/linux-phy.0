Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB97C77B74
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yn4DBab1dwFaKLI4UMofoYoF/OR23p4N1qJilQof+VA=; b=1VLT6tNLCTzwgL
	4Ktkt0K2cRHKljloc9RLR3VLaSBvb4bwN5KBlFpE0F68kPmGUD4o3ofb7lEUUd1T1KnYGt6gxepZY
	K1OnVEIsIRIkK46CZvbio/od010RjCY7uBB6W3g0Ahvb6CdWduBWtbDCCldfQ9bqEGjmMFQoth1Sg
	1PCwJ33ODCCeKVP1JtpiUuPnN2w78JPW5a6UKL3N2BElXae6+qzkYoDvrohguOxGS3OuG2mqODG2a
	WYPxbXrXQGOkNLjSm8GpiVUr7NeCAq640I6IYyYNsAuc4XSpDXP+TVhBDEC1dpjjKUz1FkRL8b0gy
	vH2wuJEFV0ud1dn7+PVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDsZ-0005qU-1o;
	Tue, 11 Apr 2023 13:17:47 +0000
Received: from mail-oa1-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDsW-0005pY-2G
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:17:45 +0000
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1842cddca49so9849498fac.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:17:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681219062; x=1683811062;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMLSRWyO7youDUneN+C7njAPNFs3dU8flMJ2s0JdZA0=;
        b=WbLlrmzJ7dkOMDaxb78+QmOpAkmOc77ZSV3UP5N5YJqADL4hLFYzW+eTUVHd4VK1eQ
         y5IkP6V8aHrclrMv9jVwUmPpH6Ft2I8AIGG+/I9hHfa97CDQNSUamBpPnT+vv5FLuzac
         SIIHlBqU5EXuJ2twXC4IfIZuBvaeE378vfvY+Wf4Ki16w7J4QL4cbgtG/w3eviNYidJe
         WP4Rzq1x45oGDsoVLHehKJKPrKvL9j2AcEujToZgMIVVLTZ0JyZ/9bFkMctEOI7bgBhO
         HPLC05zGTLgYF/xWd+eojC96cYhmNYQ6rTH83LCo6Yw1L0Y8fqFRY6db9YaxsRb33Bav
         2LZg==
X-Gm-Message-State: AAQBX9e5I3eZkVVLqh863R2hpTrwlPWk1cVxy9KVdltX4sR6dU3hOLoi
	X8kStzPx7VNzr4YV/7nimQ==
X-Google-Smtp-Source: AKy350YA//UYYJ8sXvuwCAQ8mbEa46N6fYC1rhOajj2sQmniVNMtERZmWIhA2Bf01C2K7AO7TFp7lQ==
X-Received: by 2002:a05:6870:8a1e:b0:17a:c83d:8f9d with SMTP id p30-20020a0568708a1e00b0017ac83d8f9dmr6442101oaq.19.1681219061723;
        Tue, 11 Apr 2023 06:17:41 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id zp2-20020a0568718e0200b0017ae909afe8sm5024441oab.34.2023.04.11.06.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:17:41 -0700 (PDT)
Received: (nullmailer pid 2915066 invoked by uid 1000);
	Tue, 11 Apr 2023 13:17:40 -0000
Date: Tue, 11 Apr 2023 08:17:40 -0500
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qmp-ufs: describe the UFS PHY
 for sa8775p
Message-ID: <20230411131740.GA2913234-robh@kernel.org>
References: <20230406194703.495836-1-brgl@bgdev.pl>
 <20230406194703.495836-3-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230406194703.495836-3-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_061744_736929_00791397 
X-CRM114-Status: GOOD (  16.39  )
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

On Thu, Apr 06, 2023 at 09:47:00PM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add a new compatible for the QMP UFS PHY found on sa8775p platforms and
> update the clocks property to accommodate three clocks.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index cd0fbbd3593d..5bc93acccbad 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,sa8775p-qmp-ufs-phy
>        - qcom,sc8280xp-qmp-ufs-phy
>        - qcom,sm6125-qmp-ufs-phy
>        - qcom,sm7150-qmp-ufs-phy
> @@ -25,12 +26,15 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: ref
>        - const: ref_aux
> +      - const: qref
>  
>    power-domains:
>      maxItems: 1
> @@ -52,6 +56,26 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sa8775p-qmp-ufs-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          maxItems: 3

The max is already 3. Did you mean 'minItems: 3' or 2 or 3 clocks are 
valid?

> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +        clock-names:
> +          maxItems: 2
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.37.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
