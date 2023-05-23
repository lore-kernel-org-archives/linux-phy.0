Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B754C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 17:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8/2/3goMPZEEtSpkD89GA7Zg94dj+jMVXg1ej5SXRI=; b=cjrW0BtJaBQ8HW
	AcUKrVEbzjfgy5VOv7fAR7MZ9XDDEsguO+X7QixgmDMsXnpBoRLlUliUkX/vWKx+62gTyvCV1ffhs
	jIONobkFDGamMoirhYs9pkgHmsC65I7OWie59OqsAfzqRDqANlfRHopVnHFR+gEIFvmgMju9u/nF7
	lvVeyfu19/hNWLN1+c6WYQv7Tsb5qbL4t+1+DtHqrHQoSbLUE4VGaqsqLQnyftfSWeRvWBZtr14fB
	cnZaBp+F4PcklFEthO+y2EuuXqCsZQ2igIOyBWT4VszVAXM8j4HvdUzb5qBeFfpbgit5MsOfQOocG
	hh2sdILmsyPYEC1R8J0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1VuB-00AzG7-0m;
	Tue, 23 May 2023 17:34:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Vu8-00AzFd-2P
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 17:34:38 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so156568e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 10:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684863275; x=1687455275;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wXYu+n3wOzx5mnc23vQbudrU14khD7dWQ2iCC1H/1X0=;
        b=xKGjbhNzzoHJ+Kv7/aGEdrer0zvedup4VYpkIinbULPQ1BMAg+CIuOP9voh+U6Wh1Z
         p6kjeDVpYTdhyYi7Ol+ngLsA+JnPWZ1KV1jeC5TEdQYm0n4IS7FJEpRRrY+y5ZSpPPpc
         VUAnBs+bHDmEMTqIZ2odgVv4CTAPMWyx8oUk/qdTDA81wTDkNahfIbDZc4QzsWWSIAZD
         9MEvh8YIiYgdmbW9TDSb/+oMHk9r3SJK7e4icidiQPMvRo8LFkasSe5auhihrZrjaGJ+
         vEChcqngmGL+mQrPRN8cZgolmyaovo1hMdB1qRf37BzY9GlIMqsI7MkcQM133DsZyzAV
         Em4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684863275; x=1687455275;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wXYu+n3wOzx5mnc23vQbudrU14khD7dWQ2iCC1H/1X0=;
        b=e/bOJPXUfF6rCZM57zIBHaLbaljAbCWwDrkhrQ7aV09TWxG8TUGhSkqK/l59Pr1ZE0
         JmZkFZSxaKeReebhrGOq1LnL2FX2kh5gUyenavBD4czl3zq09Zv+rnGFjHi3fupELSFA
         aKoudg1mkDAv8m4RLQl9y7vXDoG7t5qsbA6EVJuRBVCP5XZJ7TcnrxoQPkRSODkOjyPj
         F2SulsHE+g/Rwoxm1QYrhMVANMnrXMeq7NSYn8RhUUSzPX0ps0EwnlGgh8eeIQmsV7tL
         RvYdxqMGRFp+p2tDkU+9cxLD3A5jekWJLr9EElRR44wUyXsC2WU03ec6j8rD3HUmVdzt
         klpA==
X-Gm-Message-State: AC+VfDxg9PuG9AUMvYOr73+KtnDyrpN+zCNTJYcPfkfiSqoFjdiVyoGs
	c1ll4x0fYTbKNv2lUZ1621Hh7w==
X-Google-Smtp-Source: ACHHUZ7HQfYbICMPQ73nraI6xxhfDAQvR17E3iGhtjz+pQ6BPGOT2xgSpaXddbgUODIHDtZb314s6A==
X-Received: by 2002:ac2:491a:0:b0:4f3:a55a:bad6 with SMTP id n26-20020ac2491a000000b004f3a55abad6mr4999914lfi.20.1684863275060;
        Tue, 23 May 2023 10:34:35 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id d27-20020ac24c9b000000b004f00d3d9df9sm1408152lfl.188.2023.05.23.10.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 10:34:34 -0700 (PDT)
Message-ID: <dbdec4af-8c28-5ddb-c382-3e3515fb0358@linaro.org>
Date: Tue, 23 May 2023 19:34:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-6-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230523140622.265692-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_103436_804106_26733835 
X-CRM114-Status: GOOD (  13.57  )
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



On 23.05.2023 16:06, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++--------------
>  1 file changed, 5 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 90424442bb4a..68660d532afa 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2565,7 +2565,7 @@ ufs_mem_hc: ufshc@1d84000 {
>  			      <0 0x01d90000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			power-domains = <&gcc UFS_PHY_GDSC>;
> @@ -2611,10 +2611,8 @@ ufs_mem_hc: ufshc@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sdm845-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x18c>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
> +
>  			clock-names = "ref",
>  				      "ref_aux";
>  			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
> @@ -2622,16 +2620,9 @@ ufs_mem_phy: phy@1d87000 {
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x108>,
> -				      <0 0x01d87600 0 0x1e0>,
> -				      <0 0x01d87c00 0 0x1dc>,
> -				      <0 0x01d87800 0 0x108>,
> -				      <0 0x01d87a00 0 0x1e0>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +			status = "disabled";
>  		};
>  
>  		cryptobam: dma-controller@1dc4000 {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
