Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277EFC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 10 May 2022 17:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWL1GQN/7jxOUGLEfXjv36LtMy4gaGR2aUCYphJU7r8=; b=dmuCurrQiPzrdt
	X2yIaO0D3zqPxEYENsdMaL07h01PVIs36sZX504z4pG4VOcVBUVEh34kI2Chj/jlOfNWoQPL4RFpB
	e98r5aTe4Zn1Iw3i0Kjb5vtXXhRtkiPdTcRIpL+QTkUKFMmlAhfuIlEPHOu5+VMW6aAD3+mE8cA5e
	zpd/l5ymr7P6FkWilM7N9sQrxk/OCh1S7AMOqyJVtuw26+Miqhl/tdiLE2nYYL/KN8n+9AX6dZLNS
	/p68jNPunZrK5cC9xVmnvjip2+JtgA2d0hQmxYPt5Lt/L7Kjo7Nbje0P0Sr6UuVuMfGTRs4WdSy2S
	1GY9N9X38tCSXGBkt+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noTm9-003SZH-GO; Tue, 10 May 2022 17:35:57 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noTm5-003SXR-4s
 for linux-phy@lists.infradead.org; Tue, 10 May 2022 17:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652204153; x=1683740153;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=r8ZcV1vuUcmf0/igLjZxMrCayIbyMQkN9WHg1UvKdEo=;
 b=G7dRNKVFa30ytU44Y9h0fTme10Y/LSMkJzKcUt3vrqS5kvJ1ot/oS8mZ
 FdwNDsu6Cn1H3JmmGfHPWY+LK8TlsuVu1oTLF2NOLA3Fq6bwSUVqjkqyb
 v9HldPJigTu4WYX8kbnwMwlawXHqkUuliP9tuzayxBivShHrLVACJegkm Q=;
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 10 May 2022 10:35:52 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg04-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 10:35:51 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 10:35:51 -0700
Received: from [10.216.55.79] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 10 May
 2022 10:35:45 -0700
Message-ID: <7ef88262-4292-3077-00a1-dc06b2483b10@quicinc.com>
Date: Tue, 10 May 2022 23:05:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [v3 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280 IDP device
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <wcheng@codeaurora.org>, <devicetree@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>
References: <1652011947-18575-1-git-send-email-quic_kriskura@quicinc.com>
 <1652011947-18575-4-git-send-email-quic_kriskura@quicinc.com>
 <20220509032005.GJ4640@hu-pkondeti-hyd.qualcomm.com>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <20220509032005.GJ4640@hu-pkondeti-hyd.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_103553_280302_939D5E9B 
X-CRM114-Status: GOOD (  10.84  )
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


On 5/9/2022 8:50 AM, Pavan Kondeti wrote:
> Hi Krishna,
>
> On Sun, May 08, 2022 at 05:42:27PM +0530, Krishna Kurapati wrote:
>> Overriding the SNPS Phy tuning parameters for SC7280 IDP device.
>>
>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>> index 5eb6689..ad85ffb 100644
>> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
>> @@ -325,6 +325,12 @@
>>   	vdda-pll-supply = <&vreg_l10c_0p8>;
>>   	vdda33-supply = <&vreg_l2b_3p0>;
>>   	vdda18-supply = <&vreg_l1c_1p8>;
>> +	qcom,hs-rise-fall-time-bps = <0>;
>> +	qcom,squelch-detector-bps = <(-2090)>;
>> +	qcom,hs-disconnect-bps = <1743>;
>> +	qcom,hs-amplitude-bps = <1780>;
>> +	qcom,hs-crossover-voltage = <(-31)>;
>> +	qcom,hs-output-impedance = <2600>;
>>   };
> Is this an example change or do we see any HS electrical compliance failures
> on SC7280 IDP that will get fixed with these override sequence?
>
> Thanks,
> Pavan

Hi Pavan,

These results were based on compliance testing results.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
