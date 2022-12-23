Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4F45C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NAgM7qNSpPN1sJb0S9CrJ0PADzYKD8k59WGGGwqRwA=; b=wthJ+Pnv08NSHn
	3UfhjkGE2X/VHTi9s+EONl0vn+5zpvsWGXGsIls17Bv+dTvam/eeI97GNclY6boZMaTFXw0c4VPt+
	Zm+PLGGmPzpdS1pUeuNrwYaNkID0aiLKnMub83+VL53Ala08JJCd8j76xq9MDMHLq/E7bNVIydyQF
	HdQAmIEbrDUTDUed3wZZhCJVG7NOY+v7LGYTff/1WFeTDuoqktduyvc1/nEVFDeABO0cZJSYdobmZ
	Uf/bJYZR5wmpH3zvX4VxnvzHTiHPsE53D4B9Um9i3K5Hgy6ls6dDj8WzRbCE1ce9zLIzJ49IV8DlQ
	bjPFeZ9DhZZ0Kt85CYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8knF-009v9H-Uy; Fri, 23 Dec 2022 16:21:09 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8knA-009v1w-Gd
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:21:05 +0000
Received: by mail-lj1-x232.google.com with SMTP id f16so5498535ljc.8
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iGE4aiddpWZpTmOp5qjqXo8uOyEFwG1Nm6YUdO3rP4A=;
        b=Flom2l1aG9I0SlVPGYNJ2w0R4QOnwrBFEjXOvevK7KZSM7AwQocmB3nIXJlMfCB2sL
         ZDT7P5uMUlQFf7JtnBM/er6mTCfcEg5/QgidskA8KThV+PW+hSu+MPObF/N+G+WCtyp/
         TmC+T87O9RqgTyZGo+eBG2yJGOHdr8FQVc6JipdNXU8Y/V6XZToBcAdgIa0ErYC59wXa
         MSyvyH0Ofcb9FJpAAVSNuoszV5dvpm/x2UtVMsoImKISpnWRCiNXjcA/p+46ZPxjaYP7
         A8ms+jqsFZGihbPFRZ/TDlJ8aqEITN0nfx0XHP1E7JR0WMtp1DxtSoIShY1R0rsiB2Du
         njHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iGE4aiddpWZpTmOp5qjqXo8uOyEFwG1Nm6YUdO3rP4A=;
        b=NeZGEs35zMd7UHvX8KXTGaooBGzXU6nk1zzowxTNGjMu1RX/Ladhph20URv/O50Mc1
         B1IeDQYYroKMBWrA1LvL5Vq6MJNigbkEjQwpXP27ut5Ue2FFmBY6m+9kDzigPDTrqGti
         wugeCt9WE4LmTlVx3pLvkUeC1j0RQln/TD54pu5HyytiJt5GJkKYlpWctC1c7wqmY7Nk
         JqVAgwl0mTHa4B8r4FJTKiIkVsBKcTx9/8llBLNrepiW46BQtPQZUA+kN532aomQu0ue
         3hvsobkMnww0trIAU3MIuohV5QqsjcPS0pK3pTY1XD1DuYF1+md/oXFwBp6em16gupyu
         APZw==
X-Gm-Message-State: AFqh2kp89xlz9qhX/K2gTw/vtiHMUnJegSA2Ym9Yuo3sj6FAaw5zMIln
	Zjx8wla48r3eA2ckOZUbNQl2vg==
X-Google-Smtp-Source: AMrXdXvA/MuFWJXmof5QSgEpiEWgEl1DXp7edXH+5w9yIKkKFO3TP0PVccR72yksEh04fko9ECJeLw==
X-Received: by 2002:a2e:980a:0:b0:27c:f0af:37b6 with SMTP id a10-20020a2e980a000000b0027cf0af37b6mr2449246ljj.11.1671812460272;
        Fri, 23 Dec 2022 08:21:00 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id s14-20020a05651c200e00b0027a17f86998sm494761ljo.127.2022.12.23.08.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 08:20:59 -0800 (PST)
Message-ID: <d6fcecda-2f78-bd75-579b-672f6db779a2@linaro.org>
Date: Fri, 23 Dec 2022 17:20:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/4] ARM: dts: qcom: sdx65: add specific compatible for
 USB HS PHY
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
 <20221223161835.112079-3-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221223161835.112079-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_082104_607626_C9796A51 
X-CRM114-Status: GOOD (  14.28  )
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
> Add SoC-specific compatible to the USB HS PHY to match other devices and
> bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-sdx65.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
> index b073e0c63df4..d3c661d7650d 100644
> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
> @@ -219,7 +219,8 @@ blsp1_uart3: serial@831000 {
>  		};
>  
>  		usb_hsphy: phy@ff4000 {
> -			compatible = "qcom,usb-snps-hs-7nm-phy";
> +			compatible = "qcom,sdx65-usb-hs-phy",
> +				     "qcom,usb-snps-hs-7nm-phy";
Not sure if the newline is necessary, but still:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  			reg = <0xff4000 0x120>;
>  			#phy-cells = <0>;
>  			status = "disabled";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
