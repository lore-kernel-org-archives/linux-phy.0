Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C73C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 12:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEfsGj4Sctxpys1hbFWBY2a0GfqeZQQp6G5CRXz6YJ0=; b=izrctNQb6IswOp
	UecflomxGhy52Z8vQ0hLWRCfzq+h8rtLA7PWPH1rpgWiBjf/tm4J4dbhz5etBGSuN3wLzT/9uamhD
	g5LXcfDxfZV3tWWd3vbghHso6jOP+G2COFSOWG5s9j4g/GWMTzxeRobVWpvmIO5PISHfazL1p6BnV
	5qtj0DwQ7zPSv/WvorVGxe7X8m6CPIPbiRHPVul6NKGft5E4c5zZa3A/Urr4tQtCpeiDPIgvO94pC
	HYOm3XcqVIIuYnm+89XHJyo/idcA+ZviegTRcH8st3b9E/0oyP7PJPQWA9MbNqOcsRVsHl48VcvCu
	6/jQ1W5PS1barAcTOl3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOcyd-0057hR-1J;
	Sat, 13 Jan 2024 12:19:03 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOcyZ-0057gz-0P
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 12:19:01 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-558b5f4cf2dso2218935a12.2
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 04:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705148334; x=1705753134; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EQGtii+H6n9Awn9eZcWb8sXXEyi+JRG4K8zgNROCcTs=;
        b=ilvCmpvpuSreMsjJwH58Kvz33NaBDZZvAST4cYQ+KGQAjzRZs9Flb2ULgbap2jn1tK
         pk7iHIlI5A7V8ZRm5qIVFng+aI7WBG0o8RLvxlXGDAgGZS6b7QBYfgIrxph2WpiZlLe3
         Vg5HZj98uN1JPmzrR55mbB2qwhY3MfkvlWL3Ljcof/iOr1mW4byPQfTJX8by4kdVQaqv
         iyCPTXcWa7BPt+amroH7ls9nbw7w7+ZMGRStjeHruZP+k4W0FjW2lAsoiAuMkOQHSg6b
         56Zow8PT9wIKX4DkcXnBJXZCl79okhdXLH2lv65wo1ylXO4FTHEL1xqCX4PNEVwSfLoF
         dkjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705148334; x=1705753134;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EQGtii+H6n9Awn9eZcWb8sXXEyi+JRG4K8zgNROCcTs=;
        b=jXT45giF054sK4axRr274vm4JQUzDUxnzEtDAmYcVlWrq1O5eNWWc8xHQ5Il0an9eM
         8rgeht7ouh1TB4SX9fsAx8KoDcAJTj2dxyKCqbat7N41KgZO6YNPtNkUvWmayKHBth4z
         TJrKfuuV73h1FYLiq3h/gIb0Q/Hzi0x8v857WqA4XRHWHhf5NG6ihnpLM/9uguUz7l/L
         FXJuf3yehGhrpKXBjMPd3WKBOkdyCeCPcddPRO9SeM2Mb119DN4zfAf8k20oZyrAMDZ3
         vTCGcHuSBvxKQ9N8asmKH8UA6VicKnr0GsMCKAuza2ncjqXAXdm3HiVRA6mWDtD/Ibjw
         9ycg==
X-Gm-Message-State: AOJu0YyJyN8qvorn2mpG42/u8SRwUlkg31Qf+ilf+4Q5kBn+QzuJJyCN
	241crTEnjmG7NgbKggj6AuTe+oSRsC0MHw==
X-Google-Smtp-Source: AGHT+IGUejsD+UGJUMMzFhLNYyf0jPaCWNl/WJSUiIfU0GpwB57UOZlGZEIDkr6Tmuepxep08t/YTQ==
X-Received: by 2002:a05:6402:40d:b0:557:427c:1c2c with SMTP id q13-20020a056402040d00b00557427c1c2cmr1210164edv.85.1705148334648;
        Sat, 13 Jan 2024 04:18:54 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id w12-20020aa7d28c000000b00557c48abe41sm2909969edq.55.2024.01.13.04.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 04:18:54 -0800 (PST)
Message-ID: <29006ef0-1aa0-4ec7-8795-8e3729562fac@linaro.org>
Date: Sat, 13 Jan 2024 12:18:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/13] arm64: dts: qcom: pmi632: define USB-C related
 blocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-11-de7dfd459353@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-11-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_041900_028474_309E6373 
X-CRM114-Status: GOOD (  11.33  )
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

On 13/01/2024 05:42, Dmitry Baryshkov wrote:
> Define VBUS regulator and the Type-C handling block as present on the
> Quacomm PMI632 PMIC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/pmi632.dtsi | 29 +++++++++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> index 4eb79e0ce40a..ccf288ddc987 100644
> --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
> @@ -45,6 +45,35 @@ pmic@2 {
>   		#address-cells = <1>;
>   		#size-cells = <0>;
>   
> +		pmi632_vbus: usb-vbus-regulator@1100 {
> +			compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
> +			status = "disabled";
> +			reg = <0x1100>;
> +		};
> +
> +		pmi632_typec: typec@1500 {
> +			compatible = "qcom,pmi632-typec";
> +			status = "disabled";
> +			reg = <0x1500>;
> +			interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> +				     <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> +				     <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> +				     <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> +				     <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "or-rid-detect-change",
> +					  "vpd-detect",
> +					  "cc-state-change",
> +					  "vconn-oc",
> +					  "vbus-change",
> +					  "attach-detach",
> +					  "legacy-cable-detect",
> +					  "try-snk-src-detect";
> +			vdd-vbus-supply = <&pmi632_vbus>;
> +		};
> +
>   		pmi632_temp: temp-alarm@2400 {
>   			compatible = "qcom,spmi-temp-alarm";
>   			reg = <0x2400>;
> 

LTGM

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
