Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665DDC5DF80
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbuUFsAV8mNg7y54sEpl0NZqjuD70uKOuRVezw1zsIA=; b=iLLtzI6OsvsGJJ
	9obEmzBgZlgOWeeGIUeyCHwQyZZ+6LqbwqBV4XMwcwDLk9ohIJIj5kDV42AjZ9ko7oTxi+1NI5yRk
	dSiegqz7/nNmu9rEC6PrmGxewwerW4gf2AcRI0X88zN5J2pD73Huc8NlVekuXorVPrXFbI78Mzmdc
	dypm2PlcbcNlWyJl9SquRTAb+0z4n1CSr7Pn7ogeBvJ+9HEGDPE0tbRTZdLWMG4JNdC3iGu/Ec+c+
	iIu7gJ3DpyWeACYPe1X41yTVVk+fkQ/m6lz5a63kAvVsYm69hR5KTbJ6+Kb1AINq3IFcIWj/40HoW
	w+KluLH7XyNgMWY/+8Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFlD-00000007ZLk-0Vbu;
	Tue, 18 Aug 2026 09:05:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFlA-00000007ZKz-2JhV
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:05:29 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BIYl243011
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:05:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KVsl8LA6QDxrYkwyUvOEgaTIiz3CrQGPLrxqITO8Sbk=; b=a/qXW6IyPmOjZlD9
	zPlkBesoLG5auMRYnUJbR143u1a+GJmV3i580T2Sgfz1Tv9M32Lu+qw5bAnC9cqI
	6qGxjKJB+Q0P0U9IZ/ETu8lPyDR3EYqxktyNGE+tf14ji/QeBVjc4fG30IuVJcZi
	eJxFpEDO8z8SUn3E+D5hqJvBHzQ9pmLIj8xc/r1dE/D+dYak+wBOT8VnL+MUCSaL
	CwZFJRdB3Vk60woIvN4J+v7ia3lhh8Ygsvk26xqk7tIZcMsOvwpk0GPP8OfDuN6J
	IJKfHbIujqEovEOH/CJM1q+7svNG78tQ72OJHMzEfYVvq8FoqDLoePMpiC4Dq2br
	783oPA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4ea2hpk1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:05:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e661ce1dcso98300185a.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043927; x=1787648727; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KVsl8LA6QDxrYkwyUvOEgaTIiz3CrQGPLrxqITO8Sbk=;
        b=UfEzjv2YN35a7CQ61b55LZ3zc1N+WwXSEmI33owkWhJfEo56Q4vJSQsdfmzqQTmwwu
         kFSm/OwOLHFSj+FGMNM6Txv1jH6NShuxfrG6GIgfa167330QXec1oKYSZJ7dAIoPpKYu
         U2v19na+fQOYzI2rY3LsnB2Y7lIB7N4V6/bioAK9d3P3OAXyqrhMk7Ty9ywI3LJSeudP
         f+9iSue6PQZMPeaLBEUCQkAQx4hprRHnUSYB4dKfzY58KOydtA32vkrLbSkQmM6uFY0b
         t6GsouVlejNcy1tfN96H1YX6hTIKnodfXnM2se/1kzyKBHu7RywlnMkxsi+/nnbdKshQ
         2K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043927; x=1787648727;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KVsl8LA6QDxrYkwyUvOEgaTIiz3CrQGPLrxqITO8Sbk=;
        b=KBzDQzyQYK+0zkB07HjbtaSZIlA1Y5Q4ypRc2NsqxvNfvrCqRMp5SESqm2AT39Y4LA
         EX4SrbeeSfSq/ycLXnvSpK3c87xBBR8/y+1C4H2qKg1/hghVN7UFJS7su5ZxpA+WjS37
         1Vxn78s9AtOQonmkfHjVOdws8KkzauJOleP9jmf6W/zT6nvXIEwjqVlJoyNnRF4/olAq
         9HTPyQXvpEDBVSXIP+Q/YXm9veYGwIueh4EDleAFUUAQ1D7g0x1qzZtRTTaOiz3j/W0v
         lUlJIM7e9IQ3z9DoH0PzE6Y7jwuZjnYZEKcyu3RYLyW9ew+3EMJiCt78UAyJ8Try+OCH
         Eirw==
X-Forwarded-Encrypted: i=1; AHgh+RoyjdGuNpoiThvQE46l01lCUCB30hZNmQHiqn/xPCK6ONF55MWrHD4b7GGNdLU1Ir7dNfwqhqXaM0E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWcyRf0nGrxeJA11zZTnl5HRY7xZxQJvnkxQMI8teLPipzXRNa
	3elTRXy0n6HhsRAzWyQMAKQbEmLSSBlYz4IrCjEQP6RiAxF5FUF8DrGwwsqKE7LEaT6eqsXCvSq
	ci00D0moXAVvOg0NjfLZ2oEIcX3Y38FZeELMW9wMm5aTug0Q7TY0XORPKCqQOPMEMCeT2
X-Gm-Gg: AR+sD11NRD6GElPbluJgXf6Ddsv1U+fbsQn8RFnOB8cf7EMIM05JB5F1mqCdRW18O7a
	GK/H0mDg7Nf1f27fk1We7kXRUhN0rTjzjDXYWMc2i2K2H0+wKXpPTKACDzx5tGzUeJuPPBtTTiP
	ouxmFbJNyChHGVd/uw814mwtSoXjuJspP2gg6nqWRuL7o5yu0b3iSVOTOKKM406lK/qHIUtwFjR
	YWmGQVa4bEpoeGENjGx2qAXuD1kbbPn0sssbSNJykvAqfPSV791OqVEGI7bjHuIb/Ov4+rJZu0p
	yTcog1hW8MSP0+Iqfeaj7kTa4p22pP0d5/8dTFhjfE2f8gbXdVLFrT//d2zmAWZQjsIU2tfEB15
	UJ3/ZU9GqfImXxSGKMsoZ/Nr+
X-Received: by 2002:a05:620a:6846:b0:92e:5272:4e3e with SMTP id af79cd13be357-936d1f0a69cmr2230379385a.0.1787043926987;
        Tue, 18 Aug 2026 02:05:26 -0700 (PDT)
X-Received: by 2002:a05:620a:6846:b0:92e:5272:4e3e with SMTP id af79cd13be357-936d1f0a69cmr2230376285a.0.1787043926484;
        Tue, 18 Aug 2026 02:05:26 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185bc9697sm126034166b.61.2026.08.18.02.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:05:25 -0700 (PDT)
Message-ID: <c938fd61-a01f-448f-8a9a-bee0b427806d@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:05:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] ARM: dts: qcom: msm8974: add the USB3 controller
 and its PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-9-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-9-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfX3xOjVhu5gqKw
 XZakd3NibDF1s32LDMYQ9fn2xEgarET34ppyZzSo+Y1j5llaz2Fm2LaqmdjjcaEemOy4gkwS1UQ
 wdcmXyFHXLa8SyGFhDZOI2Z23gT49r+XtNdN12bCdp80odSNh3e3XfRT1FC+OrI50bne3JISchA
 c4QwiX0Znwjx2hpiaIzrN/LYcgnQ0evTB3P2hB72pt8WQ097rJVdh4iMjrXTm1LkjPyQYWAB49P
 EpRMbsvNB4r1K2zj8JJUnsc/GYD72pAKObM1BMfO/kmkGT8kzLnBoQBsn7qwkUFGBrT/mFBlPfN
 fHQtc9Rnw/8OhWVD3jTAboZhCUHEInwYQov9CVPMviW29hKful3l6k+10SKpn1SFlxx8RFNUg80
 Jmkz/aJtkcleUbS06dE3KTogBoB+KaYSfijDPNE1AgfifwN9xw0B3xycXcy7pPrKvo8B9aWdNJH
 5yHKHvA/3ZqUkVNbWmw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfXwMe0fQ2hCHRj
 ci3ct9F5nCjtnlqWlsGFwYfr1ZJpecfRsp+3iX4gVrWDvzMvfuvWEnLDJjYl1Xnllt0/EvGiMo6
 2BM8pBez0OiSh2gr8FsnipzuzYvnZqA=
X-Authority-Analysis: v=2.4 cv=XtfK/1F9 c=1 sm=1 tr=0 ts=6a842057 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=lS1l__rWwDhSR1qZn34A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: SF82tu4f9rxMhJqUJazMFABh6RrSqoZC
X-Proofpoint-GUID: SF82tu4f9rxMhJqUJazMFABh6RrSqoZC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_020528_605224_8649D869 
X-CRM114-Status: GOOD (  18.22  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> The primary USB port of MSM8974 - a Synopsys DWC3 behind the standard
> Qualcomm wrapper - is not described, so boards can only use the two
> ChipIdea controllers.

[...]

>  arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 47 ++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> index 06c0af0aa317..bac3c8772e0a 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> @@ -713,6 +713,53 @@ blsp2_i2c6: i2c@f9968000 {
>  			#size-cells = <0>;
>  		};
>  
> +		usb3: usb@f9200000 {
> +			compatible = "qcom,msm8974-dwc3", "qcom,snps-dwc3";
> +			reg = <0xf9200000 0xfc000>;
> +			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "dwc_usb3", "pwr_event",
> +					  "hs_phy_irq";

1 a line (also in a couple cases below)

> +			clocks = <&gcc GCC_SYS_NOC_USB3_AXI_CLK>,
> +				 <&gcc GCC_USB30_MASTER_CLK>,
> +				 <&gcc GCC_USB30_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_MOCK_UTMI_CLK>;
> +			clock-names = "cfg_noc", "core", "sleep", "mock_utmi";
> +			assigned-clocks = <&gcc GCC_USB30_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_MASTER_CLK>;
> +			assigned-clock-rates = <60000000>, <125000000>;
> +			resets = <&gcc GCC_USB_30_BCR>;
> +			phys = <&usb3_hs_phy>, <&usb3_ss_phy>;
> +			phy-names = "usb2-phy", "usb3-phy";
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_enblslpm_quirk;

We usually have 10x as many quirks here, I guess +Wesley may not remember
the suitable values at this point, but I think he mentioned there is a set
of "common defaults"

> +			status = "disabled";

\n before status, please
Needs power-domains + required-opps

> +		};
> +
> +		usb3_hs_phy: phy@f92f8800 {

I don't like re-claiming the memory space.. Should we make these PHYs the
subnodes of the qc glue?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
