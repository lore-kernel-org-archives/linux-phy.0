Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA141C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 22:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8UjiNSrzodv1nB7rwNQdg9Vo/JCwKHxM7khVFpUQ4g=; b=zAzieGJtX5pQuA
	7bA5slBUbTHMxotzYTbElUP+vzGkYxwexQ9XARn/LqgZICCwsECzQT6Bc01iihjsYmSiATk9xr8Zb
	Ku1P3rtOe46LRvOt1UOlFRsjoXULeYtfVII3cG+Lb7Hh25x2pzrd+MBh3Qif4wj+BYfqn9ptwJU7D
	vIRDvURlwTwDVtr1QhU/DVPIMrHh4tiEtg2bavAw67Nxom/RR4VNY2p87zNUa71t45j1SD7NCtnE4
	yVNWO/sqiBgDTzpVmTt1nRbiNe7bRVFaVbPmiBT47yddh9Yp4PkGSOyuo0yVynXf1QikcCKMLo40/
	Trm6NH/+xaWNJSpsy6Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow9kZ-008l1V-Au; Fri, 18 Nov 2022 22:22:19 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow9kW-008kza-BB
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 22:22:17 +0000
Received: by mail-lj1-x235.google.com with SMTP id z24so8491109ljn.4
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 14:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YoNPSXK+wcRdMRmvgHL8qJyp7aIYHmPBQaLIexRJUkU=;
        b=Lwtw+o1CSW5vTgwEV62MVCpfbASyzQP5oi1qPCptojRzLi2J5/4BFTpdmRXkT/kE3q
         581fBqcYj69ttvdlf5pZ3PaGL+/bQrnwVZANkzaSQyUOWvBylUl8vJ3wV6Mdh318fDz6
         vTpsvqSN14tw2ZTI7utBW7cN/ft3e0BtAhx7xUAAuYhaQJL3WeugaW1+kGYYxDa8feJU
         1VvWioswrTuuYwvF2yMwdStQHSNlCQVkSXLbLruAeuA6xZ64StoNuO08L/6PBvmG7Hcl
         5Wwho1zCjbcUcUUz9stLhyRI9RgJGfLls9LXPgGFscjJbbgLWHHFI+GU5VbFXoVNWJNw
         BztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YoNPSXK+wcRdMRmvgHL8qJyp7aIYHmPBQaLIexRJUkU=;
        b=uuES6jiCy5kgGhrpjRY88VyFHmd18vXRmpM4ORlwGF5E8BQb6YGzp9r6OaQuMC7lco
         aYxyEAA/5uf7ubRAf9lik62q66JNPwV81PKmoJ6cqO0C9OVWwGYbCBh07C9IyaFmKJu2
         RbXlAYjKhlWLm/MIOtGhhiOThq2pTM6xSMeq7mwxVb2NdHQoqPbMsekcV7SGLjlAZFWv
         RnfPrgcj7iD0ajXMw5U0d1tc9Qb8hi71ZSgFMkRmIdX1biLBySDW0cupd+IQT2X7c9dM
         Z6QyTe78Mj99nHG/cNN/h0BQZ0uGUsJZQM8UiUpXSI6GMwH1D674kkgtdp9gEqevbm28
         FIiw==
X-Gm-Message-State: ANoB5pk1dI7kQg2Hby3lSGrFtrfyEkEcUsHu0Ev3Pv18MrTcoukfpCaY
	JFdoG5nVfO4kUNFV/XEKJMB0Aw==
X-Google-Smtp-Source: AA0mqf4xKLzMyHjJcZVQhYHe2UfYLPh7BuXdM1ZHd3LjrlsM5RJwX4Wn7PSA6vQqB+mkqWcZ8PwJ5g==
X-Received: by 2002:a2e:b5d3:0:b0:277:c57:e914 with SMTP id g19-20020a2eb5d3000000b002770c57e914mr2924887ljn.53.1668810133015;
        Fri, 18 Nov 2022 14:22:13 -0800 (PST)
Received: from [192.168.1.129] ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id i5-20020a0565123e0500b004978e51b691sm828413lfv.266.2022.11.18.14.22.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 14:22:12 -0800 (PST)
Message-ID: <62058431-b2bf-4d1b-df98-2b84adf87a83@linaro.org>
Date: Sat, 19 Nov 2022 00:22:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8350: add PCIe devices
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-8-dmitry.baryshkov@linaro.org>
 <Y2zYHEZDbNoGumTl@hovoldconsulting.com>
 <37fe9a22-7ca0-e4e5-ebff-4eb56dbb74eb@linaro.org>
 <Y3TzG4HGsFSU3sky@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3TzG4HGsFSU3sky@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_142216_429123_D7CD4CB6 
X-CRM114-Status: GOOD (  16.61  )
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

On 16/11/2022 16:26, Johan Hovold wrote:
> On Thu, Nov 10, 2022 at 05:20:11PM +0300, Dmitry Baryshkov wrote:
>> On 10/11/2022 13:53, Johan Hovold wrote:
>>> On Thu, Nov 10, 2022 at 01:33:44PM +0300, Dmitry Baryshkov wrote:
>>>> Add PCIe0 and PCIe1 (and corresponding PHY) devices found on SM8350
>>>> platform. The PCIe0 is a 1-lane Gen3 host, PCIe1 is a 2-lane Gen3 host.
>>>>
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sm8350.dtsi | 246 ++++++++++++++++++++++++++-
>>>>    1 file changed, 244 insertions(+), 2 deletions(-)
>>>
>>>> @@ -1761,6 +1957,52 @@ tlmm: pinctrl@f100000 {
>>>>    			gpio-ranges = <&tlmm 0 0 204>;
>>>>    			wakeup-parent = <&pdc>;
>>>>    
>>>> +			pcie0_default_state: pcie0-default-state {
>>>> +				perst-pins {
>>>> +					pins = "gpio94";
>>>> +					function = "gpio";
>>>> +					drive-strength = <2>;
>>>> +					bias-pull-down;
>>>> +				};
>>>> +
>>>> +				clkreq-pins {
>>>> +					pins = "gpio95";
>>>> +					function = "pcie0_clkreqn";
>>>> +					drive-strength = <2>;
>>>> +					bias-pull-up;
>>>> +				};
>>>> +
>>>> +				wake-pins {
>>>> +					pins = "gpio96";
>>>> +					function = "gpio";
>>>> +					drive-strength = <2>;
>>>> +					bias-pull-up;
>>>> +				};
>>>> +			};
>>>
>>> The pinconfig should go in the board file.
>>
>> Usually yes. However for the PCIe we usually put them into the main
>> .dtsi. See sm8[124]50.dtsi.
> 
> Yeah, I noticed that too and had this discussion with Bjorn for
> sc8280xp some months ago. Even if you may save a few lines by providing
> defaults in a dtsi, the pin configuration is board specific and belongs
> in the dts.

I see that you've ended up with no pin configuration at all in 
sc8280xp.dtsi. I must admit, this is an interesting approach. However I 
fear that this might increase c&p amount. Let's see how it goes in the 
long term.

> 
> Also note that 'perst' and 'wake' above could in principle be connected
> to other GPIOs on different boards.

Yes. Do we see that in wild? No.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
