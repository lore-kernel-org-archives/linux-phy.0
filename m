Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE329C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 12:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvTJxkRappghsjsX3Sra6xNpi287/wsINGKJmT9yorw=; b=AzAurWsIM7/ei8
	Agk3HkCL3T1vX7DB56eni+er7cmkbk+wn0g2viVoxdgSHo4K3RGyWKZ0cVdKhuNr7li8Jv2e7O0+U
	zQU39ZyUrPzDanzM2j8Ocgw+jekv9fc/rrdcJcfa7XjXkR9GaaiY8XniD0OfUTjJwgAbBZyPfNL+I
	4iXnk2/voPph8Km6rdIwBW3z1S2snuxdCjor0C+vrD2V0KNUc0MGc8Ydoa5GqrmnlI0idJcyxwa8I
	oqVnnJdk60zblvqgT8tD/WI6VGIpPvRU21D+kN8csCZHiq6Mgd3djCT6AwTDBbIBY6Fhmc9kasvWN
	F5sEwRYlTa0Z13qt55xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyuTi-00D0Sh-5b; Wed, 08 Jun 2022 12:08:02 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyuTX-00D0Kh-DA
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 12:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654690071; x=1686226071;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=eixAlGC3/66qXleJOQL13o9s1uPtPCDR9p1TUd1YkLw=;
  b=mLVA1Muay7CeupBgGjMoBV9ftJ99wslPcOH9cdpz3FAyNqCcUPpclAm+
   ADT2RVK6J6u54cJ/FPBt2yUN/GYhyaE/yNpRN0sjQdEZ6UdJOI29reuK7
   S3OAMnL/jqDoKqFNngOdmhsP3HRJvk8oPpRaQEZ0KAenHexnnmEhtxryP
   8=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 08 Jun 2022 05:07:50 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2022 05:07:49 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 8 Jun 2022 05:07:49 -0700
Received: from [10.216.33.38] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Wed, 8 Jun 2022
 05:07:43 -0700
Message-ID: <e4c67862-d173-906f-e9c7-d26408135e3a@quicinc.com>
Date: Wed, 8 Jun 2022 17:37:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Andy
 Gross" <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Stephen Boyd
	<swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
	<quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Sandeep Maheswaram
	<quic_c_sanm@quicinc.com>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
 <00cf0a30-46d5-f566-af35-9f7c33ec4182@linaro.org>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <00cf0a30-46d5-f566-af35-9f7c33ec4182@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_050751_538706_50ABFCBB 
X-CRM114-Status: GOOD (  16.99  )
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


On 6/8/2022 3:06 PM, Krzysztof Kozlowski wrote:
> On 01/06/2022 08:56, Krishna Kurapati wrote:
>> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>
>> Add device tree bindings for SNPS phy tuning parameters.
>>
>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 96 ++++++++++++++++++++++
>>   1 file changed, 96 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> index 1ce251d..daeeb04 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> @@ -53,6 +53,102 @@ properties:
>>     vdda33-supply:
>>       description: phandle to the regulator 3.3V supply node.
>>   
>> +  qcom,hs-disconnect-bp:
>> +    description:
>> +      This adjusts the voltage level for the threshold used to
>> +      detect a disconnect event at the host. Possible values are.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: -272
>> +    maximum: 2156
>> +
>> +  qcom,squelch-detector-bp:
>> +    description:
>> +      This adjusts the voltage level for the threshold used to
>> +      detect valid high-speed data.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: -2090
>> +    maximum: 1590
>> +
>> +  qcom,hs-amplitude-bp:
>> +    description:
>> +      This adjusts the high-speed DC level voltage.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: -660
>> +    maximum: 2670
>> +
>> +  qcom,pre-emphasis-duration-bp:
>> +    description:
>> +      This signal controls the duration for which the
>> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
>> +      The HS Transmitter pre-emphasis duration is defined in terms of
>> +      unit amounts. One unit of pre-emphasis duration is approximately
>> +      650 ps and is defined as 1X pre-emphasis duration.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: 10000
>> +    maximum: 20000
>> +
>> +  qcom,pre-emphasis-amplitude-bp:
>> +    description:
>> +      This signal controls the amount of current sourced to
>> +      DP<#> and DM<#> after a J-to-K or K-to-J transition.
>> +      The HS Transmitter pre-emphasis current is defined in terms of unit
>> +      amounts. One unit amount is approximately 2 mA and is defined as
>> +      1X pre-emphasis current.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: 10000
>> +    maximum: 40000
>> +
>> +  qcom,hs-rise-fall-time-bp:
>> +    description:
>> +      This adjusts the rise/fall times of the high-speed waveform.
>> +      The values defined are in multiples of basis points (1bp = 0.01%).
>> +      The hardware accepts only discrete values. The value closest to the
>> +      provided input will be chosen as the override value for this param.
>> +    minimum: -4100
>> +    maximum: 5430
>> +
>> +  qcom,hs-crossover-voltage-microvolt:
>> +    description:
>> +      This adjusts the voltage at which the DP<#> and DM<#>
>> +      signals cross while transmitting in HS mode.
>> +      The values defined are in milli volts.
> It's not accurate anymore - it's microvolt. I propose to skip this one
> sentence, because unit is obvious from the type.

Hi Krzysztof,

Sure, will omit this line in the next series.

>> +    maximum: 28000
>> +
>> +  qcom,hs-output-impedance-micro-ohms:
>> +    description:
>> +      In some applications, there can be significant series resistance
>> +      on the D+ and D- paths between the transceiver and cable. This adjusts
>> +      the driver source impedance to compensate for added series
>> +      resistance on the USB. The values defined are in milli ohms.
> The same. Other places might need similar change.
>
> Best regards,
> Krzysztof

Sure, Will make sure to remove the basis points sentence from other 
params as well as bp has been added to dtschema and is self-explanatory.


Thanks,

Krishna,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
