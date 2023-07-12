Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADD4EB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 12:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCAx8a6CW0XMPNTcHN5miek2azM8ywSDqSFOv3P2Ht8=; b=um01LeYjGlwOZC22iYrJ44XFQY
	93W2L5SLOWPSQX0zXXdgzrygY/7WWzQqWNRiXvFLjre3yj6YJze63vyh9hnFZw/XvjJ22Ml8glk5U
	MxNxiE7ijcpsX6Tqg2qXo8bGmcw63fFLFIHpyU2gVJGp1l9isCeWQRvVW65p3T2wDCF+IYimJ8cL1
	DwbWRBSm44rurHgpKgl6Vl8/0AHrFlqG9C0B1ydMizzpz8L2pS5QP6e+ldoxsR/dYN6fKrZYJM20Z
	hMUv4YvMD+uwuBiBMGpXDT2ZdEean1RN2RqwuJBfiWNGp23nC637ikwtgVmA8wkB29YpoTUq5YMAr
	tfX+3m5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYxe-00HX2c-1r;
	Wed, 12 Jul 2023 12:28:50 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYxb-00HX16-0Z
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 12:28:48 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b70bfc8db5so96230441fa.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Jul 2023 05:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689164924; x=1691756924;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8tVaSPQ+w2G/CXnJTkiMl+cJCOUy3bqRCsdNi00/JW8=;
        b=Pi/qBYjAwd4/ZfVUGFBdzDeaZwn0K0YWplH7i42dsFzyhqD20c17n8dWPBGUfptqnR
         WtMDMj4me9MbQ2JKu/0gc3Bdd5vBnFnaOKeWIt1qfbmZ8zmLZmLOkh/f2CTvIk3GGWte
         GtNtUxBvKALaXfZEY/d+7VtlvduQEonkAnvXZ46fHz1r9F0GB7AGRd/JmIjmh0vkQPt0
         pvJM9wrXiYfzWDzsJY7v4ixYBEpbSWTYMQ+MnBh/Q62EtwgmhB+dna8T8ZIOukOPRQp0
         VOVuWZIDAOD0ooouLsS5Zd/z7wQMdRlmCj0OmICRld73YIY11ZeLlIQzw/3kG4LJuvio
         cT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689164924; x=1691756924;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8tVaSPQ+w2G/CXnJTkiMl+cJCOUy3bqRCsdNi00/JW8=;
        b=cs05mEHmgZ9/hWlJCwy0HJ2o/GhU+NkPOFBmSS51ppg54fxWdOpQNXexQDTq9YqO9L
         BP8IMxV/hNyQU7prvoxeM1woI6oKKSUypQY+W0pNe1Yzl/GXeQy8YhOMq/QDkYb457hk
         2Pukm2rCB7NR8UgkKyHRN0Adom9iEK5DHREyFo/moiAWUK7PaibAa0cy6cfO2VODb8Qs
         O3Umog77JD0VUGcnj30TmC/xIGC7iGx5PpZ86T1i3KS6OfQNEyS5h26gmRNHRsCUChnS
         jcVtVcDUP4FlkbdJ3PCNnUUNRGqCAm1PsDZBOAQ8SDp/1W2g0GNjPs65ywzvaJM9jj2s
         cFIA==
X-Gm-Message-State: ABy/qLYvknJ6MpQFipvZUnXdsSN2FXMYT2QAO11MNZ7SmVdhg+XtvoaS
	p3e8F4yYsQI+jYSu3kQIQlgHsg==
X-Google-Smtp-Source: APBJJlG/LDGQeyoCiWq5ImaEz8bka+7iaet3wkQhYdvn6WDMMMOihWIpsZjkOjKq2phaTxUkfWPX/g==
X-Received: by 2002:a2e:b04a:0:b0:2b6:d0fc:ee18 with SMTP id d10-20020a2eb04a000000b002b6d0fcee18mr13742589ljl.19.1689164924397;
        Wed, 12 Jul 2023 05:28:44 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id r7-20020a2e94c7000000b002b6fe751b6esm948263ljh.124.2023.07.12.05.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 05:28:44 -0700 (PDT)
Message-ID: <0f98360a-6d88-9a8b-5d60-3d6120e0640f@linaro.org>
Date: Wed, 12 Jul 2023 15:28:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1689160067.git.quic_varada@quicinc.com>
 <1f99805b6437aa8d6eaa4663e8d27b98ee595f00.1689160067.git.quic_varada@quicinc.com>
 <13555184-1708-befd-1f2c-5e6f7e04a6ce@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <13555184-1708-befd-1f2c-5e6f7e04a6ce@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_052847_213856_299750E5 
X-CRM114-Status: GOOD (  16.95  )
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

On 12/07/2023 15:04, Krzysztof Kozlowski wrote:
> On 12/07/2023 13:38, Varadarajan Narayanan wrote:
>> Add USB phy and controller nodes.
>>
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>> ---
>> v4:
>> 	Change node name
>> 	Remove blank line
>> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
>> v1:
>> 	Rename phy node
>> 	Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
>> 	Remove 'qscratch' from phy node
>> 	Fix alignment and upper-case hex no.s
>> 	Add clock definition for the phy
>> 	Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
>> 	in dwc3/core.c takes the frequency from ref clock and calculates fladj
>> 	as appropriate.
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 53 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 53 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> index 8bfc2db..8118356 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> @@ -405,6 +405,59 @@
>>   				status = "disabled";
>>   			};
>>   		};
>> +
>> +		usbphy0: usb-phy@7b000 {
>> +			compatible = "qcom,ipq5332-usb-hsphy";
>> +			reg = <0x0007b000 0x12c>;
>> +
>> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
>> +			clock-names = "cfg_ahb";
>> +
>> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
>> +
>> +			status = "disabled";
>> +		};
>> +
>> +		usb2: usb2@8a00000 {
> 
> So you responded to my comments, wait ten minutes and send v2? No need
> to wait for my feedback, right?
> 
> No, it's not ok. This is "usb", not "usb2". Are you saying you have
> second device with the same address?

Just to emphasise, it's the node name `usb2', which is not fine. DT 
label `usb2' is (hopefully) fine.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
