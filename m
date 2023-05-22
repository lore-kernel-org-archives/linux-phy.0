Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1712C7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 18:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99TBSjRyDPAVAx2ElhWM4QiHZS9lKb2KyBv7NS9veb0=; b=CvqH7XxeergsXH
	pf3gOh1Qyayi1V8+xAqjtU/+gMmj6vZm52W1hxQX21itjdue1dwiooW/pADLqBnyI/MW5JeOh5c40
	3kQYofIN0Trfeu7SJOvB0HN/IyrQC9/d0jm4Mxx5qDpaUxX4Y6dzspmYmYMp4AF55Bu/DYc1G9QaV
	6jtF8FCxGUQwrlSiKLpvt1Ke80LfJ8nLSWG8dNt3JUgOjEKaO7tjgXYII+QN9aT+LRzlcIuxKEYJw
	PGFlqD+UPnJrcsMxJj1CxorCwAahprtcFZSU54NyzOk/LTLb1qwTF8OQUyPSHEthQx2KvigFSq7gG
	CrhsH09L3vnZsnezkslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1AQH-007Xva-1e;
	Mon, 22 May 2023 18:38:21 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1AQE-007Xu8-1a
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 18:38:19 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so2466314e87.2
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 11:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684780694; x=1687372694;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7g+eBWdXPpClWzwgE+9KC8dMIxNBnrOJ+PBoFojXwDU=;
        b=iMrFsTnQvHs2azUIRBShLKj+1/m+uYiDEh3lFC7fKyfiQ2Si0y6/yONmK9yEX2mKfY
         PESZWrg2BSbmqL2t5n/TUPv/nHj1BV/mhGm03cOU3GLrkTYQoGKYmgHpm8er2Oh+LISe
         ra9jNmrH4JEu0D2KDhgDq0f1ajkSYlyjmyD9sxeEm9wvsr8/WTiGMW7ilouBHDTWG8J1
         77D1uNOA8kls3K/LttvhXoSRJeFzbq50w+mQuVW+9GGCe5cLmhJ15uyGWCXQDM4LIvNn
         ADc1qUzb24fy7LAWvPF9shMtZHy6QUfekjwcdfcn6lNXxwOsOFtWoBDbhQOF6WdoaMl4
         Fjpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684780694; x=1687372694;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7g+eBWdXPpClWzwgE+9KC8dMIxNBnrOJ+PBoFojXwDU=;
        b=aNno1YpBR8GQkMXpE921Aqo9oSksgo4+KFI8Tr9TCKSemAS4bgkAFCp9tnn0dh9sOs
         ieqtkfSqQprB2YxaYhzuKAy6tf1IFX3ZwX934YRcYSUi3qsEYsqqsg9U4M4dwKsB/50g
         W6l6T6TSdTVieFXK+hW1U756cs0LXye+3U0wqf1qbbyhyC25dSnf23DjE82adVrVcBk4
         B1v8lcyuQwbBtcofBQ/GRHeHNgNcUDlNxvCETJXpBU37pG/O/HhtVg4opcEoH2yXeNe2
         KGDrKZXN4YtG9JP4p58Xn9KGp14ILjf2ZLcAcCn/tgR0rLM7n+7gnl+p6tZdAXJq01TW
         aiyA==
X-Gm-Message-State: AC+VfDwcaaww9JMwCyLFQ3vNfU+Y7O3o46pY6VaB6dNLfmKTeOPsdsJN
	bbs5H5u57J1yO5oq60bAwe9Yag==
X-Google-Smtp-Source: ACHHUZ6I1qjJZwN+hTVMveXFNPlk35jCWxEx22+V+5Br2s5Gi2M7p+E667aAD+xd2QTCwVeIvuXyng==
X-Received: by 2002:a05:6512:49e:b0:4f1:4d66:ac96 with SMTP id v30-20020a056512049e00b004f14d66ac96mr3283290lfq.19.1684780693706;
        Mon, 22 May 2023 11:38:13 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id r11-20020a19ac4b000000b004f252f48e5fsm1079378lfc.40.2023.05.22.11.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 11:38:13 -0700 (PDT)
Message-ID: <844191d4-9a6b-605a-5d1a-cd4ad5dc98c9@linaro.org>
Date: Mon, 22 May 2023 21:38:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-GB
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
 <37f97ffc-01c1-797c-f50c-1680f666d79d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <37f97ffc-01c1-797c-f50c-1680f666d79d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_113818_529464_2CE5E438 
X-CRM114-Status: GOOD (  12.88  )
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

On 22/05/2023 19:59, Konrad Dybcio wrote:
> 
> 
> On 21.05.2023 22:38, Dmitry Baryshkov wrote:
>> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
>> resource region, no per-PHY subnodes).
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 +++-------------
>>   1 file changed, 3 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> index b150437a8355..848fbd2cb3f8 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
>> @@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
>>   			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
>>   			reg = <0x01da4000 0x2500>;
>>   			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
>> -			phys = <&ufsphy_lanes>;
>> +			phys = <&ufsphy>;
>>   			phy-names = "ufsphy";
>>   			lanes-per-direction = <2>;
>>   			power-domains = <&gcc UFS_GDSC>;
>> @@ -1021,11 +1021,8 @@ ufshc: ufshc@1da4000 {
>>   
>>   		ufsphy: phy@1da7000 {
>>   			compatible = "qcom,msm8998-qmp-ufs-phy";
>> -			reg = <0x01da7000 0x18c>;
>> -			#address-cells = <1>;
>> -			#size-cells = <1>;
>> +			reg = <0x01da7000 0x1000>;
>>   			status = "disabled";
>> -			ranges;
>>   
>>   			clock-names =
>>   				"ref",
>> @@ -1037,14 +1034,7 @@ ufsphy: phy@1da7000 {
>>   			reset-names = "ufsphy";
>>   			resets = <&ufshc 0>;
>>   
>> -			ufsphy_lanes: phy@1da7400 {
>> -				reg = <0x01da7400 0x128>,
>> -				      <0x01da7600 0x1fc>,
>> -				      <0x01da7c00 0x1dc>,
>> -				      <0x01da7800 0x128>,
>> -				      <0x01da7a00 0x1fc>;
>> -				#phy-cells = <0>;
>> -			};
>> +			#phy-cells = <0>;
> Looks like that will make status not-last?

It was not the last one beforehand, so I hesitated to move it. Let's fix it.

> 
> Konrad
>>   		};
>>   
>>   		tcsr_mutex: hwlock@1f40000 {

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
