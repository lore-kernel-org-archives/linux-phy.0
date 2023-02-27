Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB9BC64ED8
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB8iPJc/zE+PPSYjQcN+I9kaaLPsnkgRJ9rmyuNnwW0=; b=iN8s/X1NDM31Cl
	EMk9Spxfk/LIUImJc3gCvv2wToUoO/NWoo0sGmzUTUVpU3oS0x+U+a5FJEZTnu6zDmY6ZKra5h6DY
	ZLDzKmA4aQ6uFvOxvdlDN4vAMOAcEAin+yDxj6YsbLWrZE+NOP87f1Avj0TwI5bTLorQ7/40k1svd
	jCWAkpVV36cdORwvHeXcbyG9Cdn57z/Dm6+OPWY9cgp1uHY+FuHzW78hgOClz95B/TBBMlhMDlGNY
	3yk5COC3z8Iieh3w+cp15kAagOW3FG2XFleAfArxyChEjx1FaM1rJqVTiIxO0KFxuyquXbAkZVi5B
	1blbCjsYxV0rLuAQXM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZAt-008uF2-CO; Mon, 27 Feb 2023 08:47:59 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZAp-008uEZ-N6
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 08:47:57 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g17so7507459lfv.4
        for <linux-phy@lists.infradead.org>; Mon, 27 Feb 2023 00:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677487673;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xo8PtnWwrkMmqBNl5fqzttHUQWsR2w/0MA7Lt9F2iOA=;
        b=OYOsCBJyu3PHkuz4lYrNd2nYJTguh0SF8n494ysqVraXW/m4/fY9uyu6Jf7WE1TlNn
         OsuoZDeiEwmkjyUSn2gDKzfJTUN8K6VAzXfD3b4x/6hvq/5uig+tSM6GDMg+Rapb7U6p
         psHZYDvHgkMC4dVFHCg7/wVfUtpxur8A4Jcb3Od7uTPU7mpRtS71rVVg3UWXiRG8rk7u
         7GrGhq/6NJLOQhNq+Q6StCmlH3B4kvZ+rmrU4k6hxGpwfyNWWfcaYx2OY68p+T+DBzSR
         WfM4lbWdmQi33ImL5TE8JxsTMuUSbE+huCCTash1TqmGFU41QE7U7ozt/dKtrIFSqMad
         NSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677487673;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xo8PtnWwrkMmqBNl5fqzttHUQWsR2w/0MA7Lt9F2iOA=;
        b=eGV12/cvJjiBbats32ophcmPylGK5foX7YXUFrDTPutDLAj1S1lt+TChIX5CW/D1or
         RBy6RMwWiCCwfj05Gax3Uproejh8NW/xyM1XEPEQetd6PFUduJQgrU+0sqsJINo0ykS/
         Cf4x81RKb20wU5Sth5I4EEfWHNs8BrGTyIO4l6rWf/ZyQBGcp8/FKUy8ZFP59ubBLPkK
         pIc88Lb2TkOM3XLHPxPfwo8J8e4cwcvC1BAl4A8du/04Ho9OQY4iv1CETtwYH7JtsPfJ
         xzZvvfvvfr3E2F34wSklr9GdsVLvBPdi19RVZ6WGn82G4ttn63CfnPDDa/gofXbarvIo
         yhBw==
X-Gm-Message-State: AO0yUKXoRGcuXb4yaqBrjZGtpLfvIoBbaSElonmpQG9vboWfkuITunQ8
	fQneOZx+2QFJix4Dk5NH0hOf/Q==
X-Google-Smtp-Source: AK7set+JJS1YW5TUWtrH1VpLzxjXK6AtJde7pvJNoin4ZpdcCauRyk91EBRFYq7xKQTZVa4hiSBh9g==
X-Received: by 2002:ac2:51b9:0:b0:4dd:cb1d:b3cc with SMTP id f25-20020ac251b9000000b004ddcb1db3ccmr2440581lfk.11.1677487673430;
        Mon, 27 Feb 2023 00:47:53 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id x20-20020a19f614000000b004cb43eb09dfsm844139lfe.123.2023.02.27.00.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:47:53 -0800 (PST)
Message-ID: <211a237f-17b6-429c-1671-50f7002f98be@linaro.org>
Date: Mon, 27 Feb 2023 09:47:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 10/13] ARM: dts: qcom: sdx55-t55: Move "status"
 property down
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc: bhelgaas@google.com, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-11-manivannan.sadhasivam@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230224105906.16540-11-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_004755_781500_2F02D686 
X-CRM114-Status: GOOD (  12.05  )
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



On 24.02.2023 11:59, Manivannan Sadhasivam wrote:
> To align with rest of the devicetree files, let's move the "status"
> property down
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55-t55.dts | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> index 6339af791b0b..67e366700105 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
> @@ -237,9 +237,9 @@ &blsp1_uart3 {
>  };
>  
>  &ipa {
> -	status = "okay";
> -
>  	memory-region = <&ipa_fw_mem>;
> +
> +	status = "okay";
>  };
>  
>  &pcie_phy {
> @@ -278,8 +278,9 @@ nand@0 {
>  };
>  
>  &remoteproc_mpss {
> -	status = "okay";
>  	memory-region = <&mpss_adsp_mem>;
> +
> +	status = "okay";
>  };
>  
>  &tlmm {
> @@ -308,16 +309,18 @@ wake-pins {
>  };
>  
>  &usb_hsphy {
> -	status = "okay";
>  	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
>  	vdda33-supply = <&vreg_l10e_3p1>;
>  	vdda18-supply = <&vreg_l5e_bb_1p7>;
> +
> +	status = "okay";
>  };
>  
>  &usb_qmpphy {
> -	status = "okay";
>  	vdda-phy-supply = <&vreg_l4e_bb_0p875>;
>  	vdda-pll-supply = <&vreg_l1e_bb_1p2>;
> +
> +	status = "okay";
>  };
>  
>  &usb {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
