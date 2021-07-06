Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30417C07E9B
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:27:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E83D761C4C
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 23:27:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E83D761C4C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hiuLiLr8pK5wfO5tMtcQG171y0RR4d/glUaNsxpYd1Q=; b=SY+JyjKZjhfrYk+9f0BhBiZxAg
	71UVeQ6mhrzQQDbec283iZXGj4+FUwmgoT1ggH6huc5LDA3TV475J2dsyuPbJ8kQLjo4Ay7B7E0IA
	PdnmlKgSxAFcR1p9lQmUyKVIDsAua1jfO6aRkhNd/4G7m/G3I3upDuxANkSdGQ49NRGv64ymL3qmX
	RkdlZTE9d4t77+TfuEAkSVLv9Jdr1107dnNTWZeMpcEnxk8yq1ul9Rlao1L2EtPd1kFvvUO6ADmE6
	u/8Sda5jIaMdh8b2S/ze7dJs8uqBgbpw5oHMC16EzcFMSSWhHM8sETzZ4ruzTswF2ZEQgtkMzDsLA
	6N26JoGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0uTZ-00D1IL-EV; Tue, 06 Jul 2021 23:27:37 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0uTX-00D1Ht-Aw
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 23:27:36 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 t14-20020a05600c198eb029020c8aac53d4so7981060wmq.1
 for <linux-phy@lists.infradead.org>; Tue, 06 Jul 2021 16:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iH/uO8X6lzu661xsm/bQ7g0+PKIzSqv92KSs9LO2e1E=;
 b=mU49Etvau3e6/EIgkqIKUdXxU+pIeHa4fwWe7dHPhzeFd+mC6Pj3YZ3fTFbA6Fur/H
 rcnjGcb4tifSQAP0zGtE/Ep/p7h0uaO7ULhMgkLjx59V6Kt/kksTenIxtshrkonXPqyS
 0V2xzoglQODpoB1LfuOc63n0oAkWgS81xaUyF4kVGUVQtgyWpLSG/LGeA9Tj0Ury6yXI
 OV2wAd+BXkADoggLJWINQFg4K83vkbcMdUCUkrMqsm7Ahev4Z/P8AsE6KPzoW47AUX4V
 qn3Vf0rBiO9rj9Npd5r3zgYFreSpj21E9kZ4r8xwGI8dFbsn9rZRGi2DvZIyvS6M6lLF
 xsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iH/uO8X6lzu661xsm/bQ7g0+PKIzSqv92KSs9LO2e1E=;
 b=jP41j/ftZgN+N/jGpx3Wm1TcGZfydXM8Wp3mqlKESfND459U6kvPl4J74CDGRtQeIi
 g0+UDPhkM/LzddVh/nbxiDwy2Ayw5glwJmn3Xm6JM69jyhmlZxThq7TGAhCqDFmartuw
 yUZGdQUgrdt9V3j/0/zM5fefsv6oEtpZOgZ5tLZmQuthw/M0qPgcx45zsoiOtIj/cLbs
 pz1DL6j7+oPavzmzQx/wRWk1I4lswiZXu4D4MfJSX3tf2wGCdyQlFSn4O0byj2ZZT7bg
 kzVOSN6Gx31FGUmHC+2urX9XPFaMTRv3T74poGdrLfjYGuKb/nP3CHQMho9YrEnJydRa
 9aQA==
X-Gm-Message-State: AOAM530UA88qHV15KVtt0186XJ5Cj/ttH2MNne/9dHJ6LBQAjhYIEI5q
 XVI7nv29xFiXTx9AbJoP4UGNxQ==
X-Google-Smtp-Source: ABdhPJya14etts/rB0CCjHpV8FxjE3/BYgiZdYn276a6wWWWYNYABRZv2mtWY6k+mdkZD/Q/FvRCUA==
X-Received: by 2002:a05:600c:4f81:: with SMTP id
 n1mr3396967wmq.16.1625614053913; 
 Tue, 06 Jul 2021 16:27:33 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
 by smtp.gmail.com with ESMTPSA id
 c12sm20408679wrr.90.2021.07.06.16.27.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Jul 2021 16:27:33 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jonathan Marek <jonathan@marek.ca>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org>
 <20210706230702.299047-2-bryan.odonoghue@linaro.org>
 <CAA8EJpooqgScxnitvBjgofBk3cqEqOsO-sWU8VP07KpB10XT6A@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Message-ID: <adc0ff16-62ed-4e07-1cf8-3750b4222593@linaro.org>
Date: Wed, 7 Jul 2021 00:29:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAA8EJpooqgScxnitvBjgofBk3cqEqOsO-sWU8VP07KpB10XT6A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_162735_444149_535B1686 
X-CRM114-Status: GOOD (  20.14  )
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

On 07/07/2021 00:26, Dmitry Baryshkov wrote:
> Him
> 
> On Wed, 7 Jul 2021 at 02:05, Bryan O'Donoghue
> <bryan.odonoghue@linaro.org> wrote:
>>
>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>
>> Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
>> fix issues with TypeC support.
> 
> I think this should not be required anymore, it is a leftover from the
> previous series which used strcmp("lanes") to create phys.
> 
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Fixes: be0624b99042 ("arm64: dts: qcom: sm8250: Add USB and PHY device nodes")
>> Cc: robh+dt@kernel.org
>> Cc: devicetree@vger.kernel.org
>> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> index 4c0de12aaba6..270d7ff59ec1 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> @@ -2123,7 +2123,7 @@ usb_2_qmpphy: phy@88eb000 {
>>                                   <&gcc GCC_USB3_PHY_SEC_BCR>;
>>                          reset-names = "phy", "common";
>>
>> -                       usb_2_ssphy: lane@88eb200 {
>> +                       usb_2_ssphy: lanes@88eb200 {
>>                                  reg = <0 0x088eb200 0 0x200>,
>>                                        <0 0x088eb400 0 0x200>,
>>                                        <0 0x088eb800 0 0x800>;
>> --
>> 2.30.1
>>
> 
> 
> --
> With best wishes
> Dmitry
> 

Ok great.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
