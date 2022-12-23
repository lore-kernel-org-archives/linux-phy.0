Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1248C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhCY1FTfBi1ByOYeXW/rtiuJWlrE1AMRzDxLcwlV2Tk=; b=fjBphrl8PhxUNl
	00QRJaTWAj60iLb8P2DlJraQKJ7rMRufNFwILZNU/oNd0Q/igbfExEHgz5IeJ2GYLQMpTT/ahHATe
	rPPPO28HEWZLc+sSB8ec8G6Bm+ifJt9MXJcebnPA5PYadaLBHFuHjG3+z9ssJWZLyCWwlRCtmtpzN
	HTP7i/xyjaODwne4gJ1qSjO4hya5C53B8H/YlwJfeaWob9oIgMms5HEAgqzNRf+utNZP/ghuIjuuF
	s+6bbzefyz85/yitfrRHS0HDWleS/BpmcXRdd4usMaYhPcPLMMBImDW8IJXlpglewdiXTBxUIuIxW
	n3WWNS4OlnOqDYTI4F5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kmb-009uht-7g; Fri, 23 Dec 2022 16:20:29 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kmV-009ufy-41
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:20:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b3so7655465lfv.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oU40CxH2TB61B5fapK2ced9BYlQ6qteB/AGOTUGiMf0=;
        b=tq2DCVyLjcoEIIY72N4YbfJZrXeEyadoTD/5nM8ejjsgpQ+43ETWdhV8Xv5hCE0mxE
         DV/j4DEMSdxy1hxK1fkewDvSGNJ/e1yHMqGUSz3B/pODGOZl5QnU6RF20KwWo17zENd4
         Q3QkH7HeWCrQBgHdSDc87KDFb8Wtwi97bbVqqzTQdeNToJTAwx3FNJ8NRkV0EJOB6Sxd
         9AiUvZGKRM5cq07VLvNQ3f1YPcVfDEIjcgD1Hqv+UFy1Z6/Xy5OU8PNs8hJQSBZxHm36
         96Dt8ddn838b25aSbyhAz/HmN0j9ThDThDM9JGimHvXH7pPg/Mkl+Zzchac5mAfPaCeV
         mhvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oU40CxH2TB61B5fapK2ced9BYlQ6qteB/AGOTUGiMf0=;
        b=GupCydcW0z9uNyKYkgwiroVP0+pR8lluws0Ty21LbA8xvvNuOSdrC6byZ8IarURFDR
         0JnRwrZV69d9+ZTUJTZEaNMGCkPPUA/kX/jdhdmLbhAULnLJdjazq8VxTXk+VbtCm9p4
         Xr21/+jwBwUKt7dxiSDWxVOJu51SxdRnj8h2Fc61gpJZH4qg6GvSSOLuSRH18tApdNlR
         d5gXNBHs+zKwoBCpp6JjYW2N8sWbaU8c8AO8O77ZkPLKd5Sbq9v/XB1OIy6RDq3UF5Hd
         OkfKR0UQcVaXs3lvmOHV5EVur49mTb++k+4Rec1sZUBZynGeGSP4V/JeIMK2Xi8uNvBc
         lXrA==
X-Gm-Message-State: AFqh2kpVxldtbvrQMLuV7y9FoyltR+RCCl2YgNQvGufCu2Vkj+H4QPDQ
	Hk0avJIziZPxaY709RrG/xcv1Q==
X-Google-Smtp-Source: AMrXdXuPSRMbw5x3dpCkI/VoUYALnwH+IEHU2ANiAlFdiN2zOzGfh6Oc0YcNHSfejHHPuFgoV0Re3Q==
X-Received: by 2002:a05:6512:3589:b0:4b1:feb:a338 with SMTP id m9-20020a056512358900b004b10feba338mr2832952lfr.46.1671812420986;
        Fri, 23 Dec 2022 08:20:20 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id s7-20020a056512214700b004b57bbaef87sm569757lfr.224.2022.12.23.08.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 08:20:20 -0800 (PST)
Message-ID: <32d38511-88fd-894b-ed10-1f3ebfb2baed@linaro.org>
Date: Fri, 23 Dec 2022 17:20:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8350: align MMC node names with
 DT schema
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
 <20221223161835.112079-4-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221223161835.112079-4-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_082023_230392_CCE91924 
X-CRM114-Status: GOOD (  12.08  )
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



On 23.12.2022 17:18, Krzysztof Kozlowski wrote:
> The bindings expect "mmc" for MMC/SDHCI nodes:
> 
>   sm8350-sony-xperia-sagami-pdx214.dtb: sdhci@8804000: $nodename:0: 'sdhci@8804000' does not match '^mmc(@.*)?$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 245dce24ec59..18aa4bd073f3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -2369,7 +2369,7 @@ compute-cb@8 {
>  			};
>  		};
>  
> -		sdhc_2: sdhci@8804000 {
> +		sdhc_2: mmc@8804000 {
>  			compatible = "qcom,sm8350-sdhci", "qcom,sdhci-msm-v5";
>  			reg = <0 0x08804000 0 0x1000>;
>  

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
