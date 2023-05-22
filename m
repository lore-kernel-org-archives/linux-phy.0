Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC58AC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 17:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1BhRVbF8RzEp0y5qgONednB9mjj/JGC4nOSQDJJYZM=; b=QZqKvhPtNY6mW2
	vf/QJil17SmHgn+XWN6Wm3Te43nLIkz3P9ETz0ZFmBNzjBYOjEnKV4d7iPQnc2y2j4kM6YSNkAsua
	EC3kD4BdnD3OYaAw1LIko2k8upS/8bExtZYUfDgtUqGH6/Z85PdI6Djk4YfPAW9qXZp6xrNc4uEEB
	x6bwYOcOWKFfoD1LfAcxJTyyHq4+wq+GANvWb+A8T1bEZSNS19kmR/b8fSAm9HbsUbTkG1ZRsqeI0
	+V1ebMqZMKS39e5NM3+DrgHOpqMErKjUOIXTNeCzGtX3XKWk+QL3olLnHpKpir7ZIwwBgD2rQdCw7
	/FoYl0lYEXdG1k3BVf4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q18us-007HuA-12;
	Mon, 22 May 2023 17:01:50 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q18up-007Hrm-2N
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 17:01:49 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3b39cea1eso3200790e87.3
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 10:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774897; x=1687366897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MRSgd5LIYbOrDG8MxtSTtsdQ1s+8dQfmS9AzHFzNqEI=;
        b=xgC5xTgUSRPAeY9WjQcHu35r7Zmnwz+/w7TofcdaoKKyr+7NX2CC1nzwCXose+7Q8K
         8QmXMVPITJa0irY+KER5XTD4ltIejIMhmzLbdQdTqQqIYZd+agOrDH/rwZtLkvegEEP/
         vzSPG7zpS5X2KOp2kTybev/4nu6uN2vPs0TzstGf8oicb+nHkLr9mkOyiS+0IIzQcVlu
         lKh9nk/LL/p4hFzEzXK/wmPxGScD4s8G2rvzpDtQV2k0acd7zlS5vKYgU60icdYMP+fZ
         /ttOi840B8i4slfn8GSKUEhVFd19Lo2Y7SR+xxdaOLpO14hnRAYi6LVtLOS+8kEvZOWS
         TspA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774897; x=1687366897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MRSgd5LIYbOrDG8MxtSTtsdQ1s+8dQfmS9AzHFzNqEI=;
        b=JpPHDb0cDiiMEY08DOIjXDuyohhSL71FVeVcuCmn2STTYbEEZVLl28NlQPXhblPdUo
         6XM+nsrjAHcF0Inb44OsdjPqrOy0Jv5HfRUbaoUW4mrO/11HdeAKHVdRkL3ki1ODHEw5
         7O8fHDZ4y9BDmPuG7iaQIBBqmoARGe4kFYfCU1xJN1WBv8+J+vbBiuAHGQTKfkPoHKBQ
         KgZohZBKMlFOwUeiM6NWbGUo9OMH96L9XSwh027DeoLaza7cEiEBwpIqd27Kq4NPwhw5
         UmWUI3Q2eLBetgLAaIQCLIVtnvQA7HsTzuHT5bUmB/Ed+oGAfcuPnhMjBhddQ9amjfTz
         PN6g==
X-Gm-Message-State: AC+VfDzlkgPNCoxV+x5nvnHYtkHQfs++NiEN7Uy9nybaKKFP7oZJ2JhE
	AqbUJ/ycpzS7IJ6W/ZykVStQJg==
X-Google-Smtp-Source: ACHHUZ549HYmkyodDpSAMCm9/Hgdg0rXlSvPpGiw1lU9uMFSsyTcoU0OrA3JfzyxR0nnJ8t/zsD2mg==
X-Received: by 2002:ac2:5581:0:b0:4f3:aaf0:f672 with SMTP id v1-20020ac25581000000b004f3aaf0f672mr4195852lfg.45.1684774897452;
        Mon, 22 May 2023 10:01:37 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id x14-20020ac259ce000000b004f13bd73419sm1046097lfn.38.2023.05.22.10.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:01:37 -0700 (PDT)
Message-ID: <6c80902b-85ac-c6d2-67c8-41928b320f77@linaro.org>
Date: Mon, 22 May 2023 19:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 09/11] arm64: dts: qcom: sm8250: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-10-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-10-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_100147_804275_E824E293 
X-CRM114-Status: GOOD (  13.15  )
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



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index a260e4a7305b..4e94fb3bd0bc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2166,7 +2166,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  				     "jedec,ufs-2.0";
>  			reg = <0 0x01d84000 0 0x3000>;
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -2210,10 +2210,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm8250-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x1c0>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref",
>  				      "ref_aux";
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
> @@ -2221,16 +2219,10 @@ ufs_mem_phy: phy@1d87000 {
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x16c>,
> -				      <0 0x01d87600 0 0x200>,
> -				      <0 0x01d87c00 0 0x200>,
> -				      <0 0x01d87800 0 0x16c>,
> -				      <0 0x01d87a00 0 0x200>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
