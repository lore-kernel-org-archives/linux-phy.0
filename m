Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767B2C7EE2F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CHshgmbc/nvCHZeelD7d4VriyMt0cd9qhKUCDYyvcNg=; b=ZLMOm3laXinvA1bD7I/NdiuwJI
	VFZ9wk/QRLZ/hm7JbCaFvOCKMgkObl2eIbovokNWS9gW9s2VtLVQ6iu7tF1MctospZDx09w6b/Sa5
	qYZ4zg2DMCGTMTGZ0gD5wEl0YfiJuxDtg4t6/oRCbdkzbmQkz2I4iknXhHOF02l/UemquwqhI2YTx
	8+dQXUCVxvZiDtqfdTZPK3eKjPqEuE04RjHhNq6wxDx1ReJB0DFCCF+5vmFiRVTuVW9evbgrMRkvf
	3rCA+DcOkdZygLGqv5+Z49QbN2KTz8OQFk1fIoJJmcqRUx+b/hea4j2ap4eLU7qxAstZKaxUBaaEl
	D6OApfrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rGC-005dM1-2x;
	Wed, 07 Jun 2023 11:23:28 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rGA-005dKt-1E
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 11:23:27 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f6148f9679so6678169e87.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 04:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686137002; x=1688729002;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYWjVSSUNQy2OIvRzT+DCkE2WygimSZ/7ktVYRvNicw=;
        b=ut1l0xhdvA0jDNgaIFbJL6WY0litUWHGkN3/F7y+kRqLwEKWv1DEhaQBr4U6mVlK/+
         BGgF6RQIMKuHXnZnPgCLP66k45lwaHR9sK5ZdZT2yogZoSZ/PrgcWuBo5z2C0ySNOtmR
         3bogr32wDzzLCqrjcOjMaZnayYP71zrKMRypXK/a+ES13Esh6mEC5TNEztHTzawv0OGJ
         3+9BvEJPMj1M9imHdq5CHtRNHoazHEjRVTOY9qE2X+JRK9RaJpWYyvjAt5qY7hiPfCjx
         lLyHyEuoatjWEVkJhvTPk+nE6aH0uxNFMzdfBbThIZbiM7C8nGHZ+AoNYa1mxbVQpPGp
         A7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686137002; x=1688729002;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYWjVSSUNQy2OIvRzT+DCkE2WygimSZ/7ktVYRvNicw=;
        b=SZ3bkiiSuEhxm9XOvFBR+/FQqdIaZwuo+SLrudYhQPwUR9mq1mZNfRj0EVYfRdA168
         YYqydTXSTV4lB38Ipj9nUVX+S/0bmlXgott2Blf7Sg6LM1bi9VrusCq16igpXw60t3lV
         6YM5sJo0D9lbw81Bjmqv/e8WpmNLm/Hd7f8lxb64zANkhhOG4t2jh9F8xmUUvbM/g1rJ
         9U5HAsEYuY9xwvKcy9HdOZgcKZ+jj/zROtrFzXPlm6n54t0/yr8Nm69jMHNxE033f8WE
         DAVc3cw5rhzJI1nt5vKWGZIWk3sfErS6mTy/xjBxu6/SLAVWg4T97XF/s0kCvGJF/Yzl
         Bk7Q==
X-Gm-Message-State: AC+VfDwbNbN9zwkhXZzGB2UImGJ/Cn384WUm851xiDzI//t1MVq9ojsy
	HRg8ujyQhkEx7jbMAjlP6PuVOg==
X-Google-Smtp-Source: ACHHUZ4aydeqTRm2woMwjuX3xGYPzWA8qO84H3tMVn0lkLC1A1gjqkq20mduf4N1CkRL+Px2KE7u7g==
X-Received: by 2002:ac2:4a7a:0:b0:4f2:6bc3:5e33 with SMTP id q26-20020ac24a7a000000b004f26bc35e33mr1969465lfp.9.1686137002414;
        Wed, 07 Jun 2023 04:23:22 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q11-20020ac2514b000000b004f63739e2f1sm552855lfd.255.2023.06.07.04.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 04:23:21 -0700 (PDT)
Message-ID: <8e21fef3-5ae4-673a-dce2-4ebf1dd0eb66@linaro.org>
Date: Wed, 7 Jun 2023 14:23:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1b48e737aa14f5b5539cbf04d473182121d5b1ad.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_042326_417073_CFDE8230 
X-CRM114-Status: GOOD (  13.05  )
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

On 07/06/2023 13:56, Varadarajan Narayanan wrote:
> Add USB phy and controller nodes
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>   1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index c2d6cc65..3183357 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -383,6 +383,61 @@
>   				status = "disabled";
>   			};
>   		};
> +
> +		usb_0_m31phy: hs_m31phy@7b000 {
> +			compatible = "qcom,ipq5332-m31-usb-hsphy";
> +			reg = <0x0007b000 0x12C>,
> +			      <0x08af8800 0x400>;
> +			reg-names = "m31usb_phy_base",
> +				    "qscratch_base";
> +			phy_type= "utmi";
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			reset-names = "usb2_phy_reset";
> +
> +			status = "okay";
> +		};
> +
> +		usb2: usb2@8a00000 {
> +			compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			reg = <0x08af8800 0x100>;
> +
> +			clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +				<&gcc GCC_SNOC_USB_CLK>,
> +				<&gcc GCC_USB0_SLEEP_CLK>,
> +				<&gcc GCC_USB0_MOCK_UTMI_CLK>;

Please indent these values.

> +
> +			clock-names = "core",
> +				"iface",
> +				"sleep",
> +				"mock_utmi";

Please indent these values.

> +
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;

No PHY IRQs?

> +			interrupt-names = "pwr_event";
> +
> +			resets = <&gcc GCC_USB_BCR>;
> +
> +			qcom,select-utmi-as-pipe-clk;
> +
> +			usb2_0_dwc: usb@8a00000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x08a00000 0xe000>;
> +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				clock-names = "ref";
> +				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +				usb-phy = <&usb_0_m31phy>;
> +				tx-fifo-resize;
> +				snps,is-utmi-l1-suspend;
> +				snps,hird-threshold = /bits/ 8 <0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_u3_susphy_quirk;
> +				snps,ref-clock-period-ns = <21>;
> +			};
> +		};
>   	};
>   
>   	timer {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
