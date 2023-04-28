Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531A6C77B61
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acnUvC9WFySOBPKcoeAhobJVfxTzpopjCCeAUi5JEso=; b=jm4bWJ1VXwHXs+
	dTBixvwb8GbOphZLkIYfJdTZdo9Ln35QwdGsHx3OsSHqlhezefYZFB9HQMI9U+aniKGNz0TsB1K4i
	91WzHb06WsLMiKsZy+LY9SB5TIdJeKTqFdj74schIsWv4KKzVdEX6BBZ1b2M4EWpFCT1fsRVjK5An
	8IAJpsc9QFnwef6XxuuqAGXEuN4uXyrVK3/dhMiuR0JsFfW0EJAKFeUNayCykufZ0u22xV/562yeX
	jJQvCyx6KWCS64Jf+0v6HrfJLQ1N/bHKNm4fm5JNILepTsID7CggGv+bz3p3U1at9LhrtH/Ir8RPd
	eMi9zJIHRfMYmq3xwVew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psOIn-00AVg4-1i;
	Fri, 28 Apr 2023 13:38:21 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psOIk-00AVcv-12
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 13:38:19 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f19ab994ccso76685205e9.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Apr 2023 06:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682689096; x=1685281096;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=awr90pDSVtfyy1jd/suGdmmMMbIzI+zduHlGNGrtMxw=;
        b=DK9RVn9I2jrEnbfhIqefEft0dxw3pPj9Tmez44q30xQGunOW5BKzt656k4Zwb+QvqA
         QnPRKI+QpF0wKVjuXSxUhEgINyUMvfPnUMN6FY5QUPinUXTCsPzC3kzdZB9DrJPFy0D9
         mCPI38C+pi/6SPUnoAFb4JCg5VpSvUCWA1EK0HokthXoE+ICqz8wrJeV8bstKe8t4XB2
         8q5vBGsWeSvBy1b+siABTEAfFcgEa5FSXObhJ4x/N5f0m4gpHXTeIIeJ51jN2rbiVZZq
         ZWOT14kZVWyjNohmQAizYT7bfd6UgnAd9rHrl8ACuHaaFxj2Fjzo/s3tooHm8irkuGLp
         GJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682689096; x=1685281096;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=awr90pDSVtfyy1jd/suGdmmMMbIzI+zduHlGNGrtMxw=;
        b=kZ5kfwHiljylZkhl5dxuCZ9J8VGpWCxza0cnR/jtrMSFqK3GxnCmc+MXi/gmpXaOiy
         NROVY2hiXHj0Y4d/EpFLY5ZBJ4RG9uI3uyltTDDhWl2Q98Nc2tMW6T7RrPPV0tw8YanO
         PFdhqqtLXFhiSQOEVwe60/k1g4qlyWK9ilOqbJYw4x++StsPFdjUL4NLrpipAagEnTtg
         1Jzb8XKsmyvkjFg6CdzssJ0HGKUuNqFYrLc/zmzvYd87liknbcaSI708haSa/ejHZQzj
         eO4Bhzr/vRP8hyLe169wF5oq30ln+OW4EiR9zb5kSYkriMBY5qXlfBHVHfsIvNf1/jwf
         ULZQ==
X-Gm-Message-State: AC+VfDxR5qmQaNQl7DLJyZGe4TyDgnYkXxXXKXrxBIwivkN/SFnTlTqm
	xbyy0A0Jnuw58OEW+YRXit1X1Q==
X-Google-Smtp-Source: ACHHUZ7Li1J3Go9LqCYnt2dUoy8OLEwkppMDtn0ZUPfIxAq4HnbEkWk05MJi7txIpvF9W8iCOao85w==
X-Received: by 2002:a1c:ed0e:0:b0:3f1:7372:66d1 with SMTP id l14-20020a1ced0e000000b003f1737266d1mr4315648wmh.0.1682689096103;
        Fri, 28 Apr 2023 06:38:16 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id o2-20020a05600c4fc200b003f1738e64c0sm28006319wmq.20.2023.04.28.06.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 06:38:15 -0700 (PDT)
Message-ID: <af7e5037-50b2-5ee3-83cc-42311483bc85@linaro.org>
Date: Fri, 28 Apr 2023 15:38:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v9 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1682092324.git.quic_varada@quicinc.com>
 <dc573596d863767748d0bc9541bd4e6c0abef441.1682092324.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dc573596d863767748d0bc9541bd4e6c0abef441.1682092324.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_063818_369186_F5B16CAE 
X-CRM114-Status: GOOD (  18.02  )
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

On 21/04/2023 17:54, Varadarajan Narayanan wrote:
> Add USB phy and controller related nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---
>  Changes in v8:
> 	- Change clocks order to match the bindings
>  Changes in v7:
> 	- Change com_aux -> cfg_ahb
>  Changes in v6:
> 	- Introduce fixed regulators for the phy
> 	- Resolved all 'make dtbs_check' messages
> 
>  Changes in v5:
> 	- Fix additional comments
> 	- Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 	- 'make dtbs_check' giving the following messages since
> 	  ipq9574 doesn't have power domains. Hope this is ok
> 
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
>         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
>         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> 
>  Changes in v4:
> 	- Use newer bindings without subnodes
> 	- Fix coding style issues
> 
>  Changes in v3:
> 	- Insert the nodes at proper location
> 
>  Changes in v2:
> 	- Fixed issues flagged by Krzysztof
> 	- Fix issues reported by make dtbs_check
> 	- Remove NOC related clocks (to be added with proper
> 	  interconnect support)
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 120 ++++++++++++++++++++++++++++++++++
>  1 file changed, 120 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 6a8680a..a6790fb 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -150,6 +150,33 @@
>  		method = "smc";
>  	};
>  
> +	reg_usb_3p3: s3300 {

Nothing improved here.

Node names should be generic, so at least regulator prefix or suffix.
Prefix is preferred as it keeps them grouped.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
