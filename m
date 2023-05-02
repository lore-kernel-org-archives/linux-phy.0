Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21350C7EE21
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 11:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5kVV2uSNHPGjHZ80es/FJF233TnwvgzCUZNMaZqymk=; b=dceQv/+jSiELEd
	HQfExBH/C4s9lJGRb1xQdlmn4CUnb5Rx9ji/Hz/Dp08zSVrFfL+jlpB9e4ammgLq8ae3eFqjkiVH7
	T/RL2X9hiSgXavxXcR97hEEGVRHnjFMicxhkhyFGUiF0/NFoR/Kvz6l9r22C5b6GkNYX3Ksdcrq1/
	/RmC5Dh1QLcIk1LZRfoYzfTNXEEPYS21WgWDWO+MM1Li/zCO8wawtbsoe5TLDg1vScdd1Y/0m0UGV
	Y2e20inrNyZM9cFej8rSBUKh3ZS67l2XvxezbyJpOXx+yzPYaD1HxzB7ykC5xvMg0a8U7fQW8d8sR
	jUIr2XuHeu3dq/sErdsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnvc-001BQY-2U;
	Tue, 02 May 2023 11:12:16 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnvZ-001BP6-0V
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 11:12:15 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f1950f5628so34931465e9.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 04:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683025926; x=1685617926;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=POVYlMSdmDpsDTMGWAJqODW5rahuzC8xt0jz2UbQEBw=;
        b=MPleUp3NmgyL2VWv14JYtROsauZg/sTyWTPNb6mLkWvm7odCnudvJ52E0Rz22XHjaE
         SaCwyzm2q+rMve8kGQ3ub26jJDBf/FwHqPZlZJWJGTE10alEaq4lkNHoa6sKYe+/0M3K
         FNUrzh0FYqeARQrUxaitf/oToNIyXi50eSRNoYGIx8j/IA9FBNzIkHcUMJ9ziw+HLAGO
         aTDTwQtGXyk3630CBGuXeTN0/KSdWGAG0mEzNhYbKEMCN+1yyVy0sbQA4GWPbwxuC+fy
         yENjOlmnNmtZGq/VhvTS+vbBEaeXKHsFks0pqkYi5sUIVaSayoBRLTTBpOAioxhHSYt5
         iR4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683025926; x=1685617926;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POVYlMSdmDpsDTMGWAJqODW5rahuzC8xt0jz2UbQEBw=;
        b=BMcRRSjAc2tO7FMomwbOXYbQ0Qv97vHMt3NzwLv3cnQIJ64bjJoo1e4szyeaoKlSR+
         YYIoje/3xJqt+gBb32inSIeCCxRQCx0ce5lNgTi/Tie4P8OBgljPHeuU20e6NQTF3zRe
         +s1XcSj+KESdOig7soySNUy/xv03CheoqST/kM7QMe0BTTfEzMZsZF4MPppNRZnMVb+k
         OfXj2LLT66OVKh3kE4PeOBYkR6vw29znxxE6AcO5yGVVGphTasenb8XJ7udLxQVZN0zM
         XtibCNQB+m4L30mU/jSvo/CDl/pv8PE8qp/h0YjeH2x98e8+V5JJu15nkoamYRwORH7V
         1KKA==
X-Gm-Message-State: AC+VfDyt/oQyjFOs49ot3+85gWLQ3YoX6gRGvlUldJ9vkRTddguw+mWq
	+9aq62EN+4DdRGTRnMTBKeMjSg==
X-Google-Smtp-Source: ACHHUZ4VlJHcWFeYH/xtb9cqtUYXmmXEskLUYBbB2TnKPWSkDHmMlB+x6iEGFbEl6cDLFoFHP3ZUTA==
X-Received: by 2002:a5d:58d2:0:b0:2f4:215a:98c5 with SMTP id o18-20020a5d58d2000000b002f4215a98c5mr10590825wrf.70.1683025925792;
        Tue, 02 May 2023 04:12:05 -0700 (PDT)
Received: from [192.168.1.154] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id i40-20020a05600c4b2800b003ee6aa4e6a9sm38271314wmp.5.2023.05.02.04.12.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:12:05 -0700 (PDT)
Message-ID: <9c82a21c-44d2-2916-751d-d2481031cf07@linaro.org>
Date: Tue, 2 May 2023 12:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v10 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Content-Language: en-GB, en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-4-bhupesh.sharma@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
Organization: Linaro
In-Reply-To: <20230502053534.1240553-4-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_041213_196908_7FFD8A50 
X-CRM114-Status: GOOD (  15.00  )
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



On 5/2/23 06:35, Bhupesh Sharma wrote:
> Add USB superspeed qmp phy node to dtsi.
> 
> Make sure that the various board dts files (which include sm4250.dtsi file)
> continue to work as intended.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
>   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
>   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
>   3 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> index a1f0622db5a0..75951fd439df 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> @@ -242,6 +242,9 @@ &usb {
>   &usb_dwc3 {
>   	maximum-speed = "high-speed";
>   	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>   };
>   
>   &usb_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 631ca327e064..f67863561f3f 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
>   			status = "disabled";
>   		};
>   
> +		usb_qmpphy: phy@1615000 {
> +			compatible = "qcom,sm6115-qmp-usb3-phy";
> +			reg = <0x0 0x01615000 0x0 0x1000>;
> +
> +			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> +				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "cfg_ahb",
> +				      "ref",
> +				      "com_aux",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> +				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> +			reset-names = "phy", "phy_phy";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb3_phy_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>   		qfprom@1b40000 {
>   			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>   			reg = <0x0 0x01b40000 0x0 0x7000>;
> @@ -1111,8 +1136,8 @@ usb_dwc3: usb@4e00000 {
>   				compatible = "snps,dwc3";
>   				reg = <0x0 0x04e00000 0x0 0xcd00>;
>   				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> -				phys = <&usb_hsphy>;
> -				phy-names = "usb2-phy";
> +				phys = <&usb_hsphy>, <&usb_qmpphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
>   				iommus = <&apps_smmu 0x120 0x0>;
>   				snps,dis_u2_susphy_quirk;
>   				snps,dis_enblslpm_quirk;
> diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> index ea3340d31110..81fdcaf48926 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
> @@ -306,6 +306,9 @@ &usb {
>   &usb_dwc3 {
>   	maximum-speed = "high-speed";
>   	dr_mode = "peripheral";
> +
> +	phys = <&usb_hsphy>;
> +	phy-names = "usb2-phy";
>   };
>   
>   &usb_hsphy {

-- 
--
Kind Regards,
Caleb (they/them)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
