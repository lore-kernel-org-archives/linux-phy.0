Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60601C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0ghq/VyP5/1DeNh57+MnwMmxRi314IUMgPOvYk/WMc=; b=OW5miAz+fGeik8
	6xMm6LE1lcVHdb8NHPB7j7bpTTQOvLjXPXCwWb22BK4514eMlHdRI+O91oGwPy6bzqbXQwv1wHeaN
	pHYJhsewONlmXRTAyW7luqHl5anM7tH/HQ2qy7IFe5fweHocn8ki+qnhzGa3yOO9P92XyX3BOrHx9
	7A3mN2cZ7KtBoKL1opGTHeEych/tFugjoW7d0xmPLsnYorOJgaxYteqZ07TVz9mtuJJLRYJZtRdYU
	l6kZMnDD2ktWoP6aZIvni8SWUEaQ/RPBpXabWhVaaWhTXMUBCLEtrmFwzdyGo8d3SvqOCX/MZQxaZ
	UQ58TRclWi2FGauBJUHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQOq-002Xdh-36;
	Thu, 18 Jan 2024 11:17:32 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQOn-002XQy-2E
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 11:17:31 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50e7c6e3c63so12921794e87.3
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 03:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705576633; x=1706181433; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xUL3sesdhKnyLaiqDC4I4Y1yB3YN5zh6ABKurybZAU4=;
        b=mGLFA96OK7EK61k5ECguQvOmsDJn72tiTybt2lLYJdgP9SAdf6rFjPfd6HKFNpd7CE
         oZxQMT4pTGNi91oVDw4DShHMfrvUhxr0Jo4JMk/xDnnJIUM6v/6ysHMV5hMxaa1hZtPW
         smd8YIGsJD6b6nxDVtKJh5J2Nay+CHHcs9cjH55w4xqJkSUg4Udmsb4tEOZS4wGvEW0g
         W5ppIKAsLf5TMlRCdwsHnYNkAViPgSEwAsFcmsmuRh72GPdbxWCjKxXzsKGqRFZH5Coj
         ygBdf8A6k93mzFaZuSkjFBaTRmqfhNnTxjgz6uI0Gevf/f7AOA61RPFwqf5M1dwD39dP
         ERNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705576633; x=1706181433;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xUL3sesdhKnyLaiqDC4I4Y1yB3YN5zh6ABKurybZAU4=;
        b=Pw4rc1myl/7ADYDO0LgnznTic/M/dxcEHQ1eGFNd7OUN3FL2CeoRcijYat1rRHBZmt
         ZAXn8JhI+qWIPKA09Em5yKFrw19rGyNIvgNjFaQxdjdntDuzvopqD9/MgIwfvYixc9EZ
         dh8bx/MTdJbZlajU84MhX+cnCEKYyyfBUyphqMiODOR8cTF/9OoZh37yXrZ7wXX1BWZ9
         jej4pklIVLPxN7y5bgtpaaAgK1BLutc4B/hPVQmY6CSjEyoF+U20TsPFR0f1e6gxZjcX
         AXPoQPu76fZjdhDQ+MhMzMwjk0MbsCskrsQ4LwS7fzsjf8omhPDjJ+3kFC5ncSdUviaO
         B+4w==
X-Gm-Message-State: AOJu0YxyYQdUyosmH9hjUnU7deIBo4VPlsy4SBJ/On6T5GEW5SJEJynO
	3O4inoBdGQbnwsRKGCcxxdcE0qeMiKXQcYOh7PfDwWCwFHn7hn9nNIxpVJwwFsA=
X-Google-Smtp-Source: AGHT+IHyjyHsdaxcownnkWnzu46PpTlmkcbrxP0tzLEpsy/pqHnDn8XLUf47GEZUEuK2qUNpp9DjQg==
X-Received: by 2002:ac2:4e95:0:b0:50e:285f:3a8 with SMTP id o21-20020ac24e95000000b0050e285f03a8mr188522lfr.108.1705576632600;
        Thu, 18 Jan 2024 03:17:12 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u24-20020a196a18000000b0050ec4839e23sm594538lfu.195.2024.01.18.03.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 03:17:12 -0800 (PST)
Message-ID: <9a24a065-b649-4431-b8fb-78c733c07671@linaro.org>
Date: Thu, 18 Jan 2024 12:17:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117220153.GA649327@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_031729_734442_0CD6B24A 
X-CRM114-Status: GOOD (  12.60  )
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



On 1/17/24 23:01, Bjorn Andersson wrote:
> On Mon, Jan 15, 2024 at 11:00:53AM +0100, Konrad Dybcio wrote:
>> On 13.01.2024 21:55, Dmitry Baryshkov wrote:
>>> Define VBUS regulator and the Type-C handling block as present on the
>>> Quacomm PMI632 PMIC.
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
>>>   1 file changed, 30 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> index 4eb79e0ce40a..d6832f0b7b80 100644
>>> --- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
>>> @@ -45,6 +45,36 @@ pmic@2 {
>>>   		#address-cells = <1>;
>>>   		#size-cells = <0>;
>>>   
>>> +		pmi632_vbus: usb-vbus-regulator@1100 {
>>> +			compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
>>> +			reg = <0x1100>;
>>> +			status = "disabled";
>>> +		};
>>> +
>>> +		pmi632_typec: typec@1500 {
>>> +			compatible = "qcom,pmi632-typec";
>>> +			reg = <0x1500>;
>>> +			interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
>>> +				     <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
>>> +				     <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
>>> +				     <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
>>> +				     <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
>>> +				     <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
>> This differs from the downstream irq types:
>>
>> <0x2 0x15 0x0 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x1 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x2 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x3 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x4 IRQ_TYPE_EDGE_BOTH>,
>> <0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x6 IRQ_TYPE_EDGE_RISING>,
>> <0x2 0x15 0x7 IRQ_TYPE_EDGE_RISING>;
>>
> 
> Interrupt 1, 3, and 6 are level interrupts for which it's reasonable to
> act on both edges. Interrupt 0, 2, 4, 5, and 7 are "pulse interrupts",
> for which it seems reasonable to act on only one of the edges.
> 
> To me, Dmitry's proposed version makes more sense than downstream.

Thanks a lot for crosschecking!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
