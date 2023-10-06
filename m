Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C69DE9413B
	for <linux-phy@archiver.kernel.org>; Fri,  6 Oct 2023 23:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hd6EZwOzuI4Tn6l/cRKvVw0XFnBv0tmWCzB1k4MLjvU=; b=v10RsbrePstJ3t
	AJRM22A48c3hiNMEHTIOyQsQAxXViM2OGfdifYdBvdmrIvk4jBREhEE3pPch8MMc8GhYmqwBQjIzE
	6aK09GzZ+/1bDdAEDf8J727Bx/8RDivjqLXObd1P62P7cGhF7sJvSZUmEY80/GFFl1wwdB/qHHsu1
	/ADnsHx4bjqT2p6oQygIlbiKSuCTF7uzqC8N22Dw5UmLRrPb6HDXbHJOkO2hO33KVc1+C+pnupmDj
	QbzJUbnHd7Oxr44Jnq478vRd5tx4Tu2cbfisG6Ta740sGjfPy7UDcj/8e3eAe1zrcY9NM0Z3hvWFB
	cfo/to6NklHQlJhuUYvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qouhp-006g3d-2i;
	Fri, 06 Oct 2023 23:58:05 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qouhm-006g2x-2L
	for linux-phy@lists.infradead.org;
	Fri, 06 Oct 2023 23:58:04 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so3319696e87.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Oct 2023 16:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696636679; x=1697241479; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QYPUh/Q1TeqvQIJLjORqLOAktxS2uLnBNCEX1Cyn064=;
        b=PG04iqsI3y5Nqu/zsRuGXqlhcAmeUnb2o3Zl+QAZuiSnjpjVuQtT/R4QIDn2zNGP81
         0HMRqPyj5vuS3LEMMWyoQRXKRFeV12SuFZxa8vdUyEDi+Qm4qSQL5F9jqqLvyTyDcD1R
         sn3wuYsA0R3y0ce9h6icgipqYIArCaunwMLFy3N/FnkuNpx5lMw4+0OrFLaN0ypceHIG
         37j7nYHO1VhfgAJlfJwlSry4MtsjufG9DTRe7ThJjeFGtmMj11Ai8r4igEkWriEYaU4l
         6mi8q+soWHCoF4HXzn6/VtK0UuRgnCiWIikYxAHsi1vPyX3CsEKdO7HYOE6KZk8XygMc
         UB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696636679; x=1697241479;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QYPUh/Q1TeqvQIJLjORqLOAktxS2uLnBNCEX1Cyn064=;
        b=sydRufbK8/yY09pQEY53qv4w6lNoRgT6nqu50NCPFmlcxeK/Mz1W4JhnwQESXE6Ex6
         cBj1NoAnpV4qvSEHOI8jWR8wHBvjaDlz1CPhJa3glEDN1gGYU5DdDTAplcDvRCi+NymJ
         ciBkwSn0txUNfIf9+V25o7+W1ZNzFuFriCbLLDS1em2OZqux8xuALbyCYvKPEk0zuPi2
         dqbmPqQhs5vyWmDUNdLMifyzB0sMTRIvuSvngLg2x3r2dKLcd0kvHM/D4V94oDMmzIDL
         E93R5xmdr7CHBehuSPdHNFg5oDXL026suj5GQeFQhsK80nLgP1wF2XNJtzg46VpK8Yrs
         XXxg==
X-Gm-Message-State: AOJu0Yx6NiBsGRWqCqQGjFWx34eKGpSuqXuM7zMVK7LhxujWEHbOfs9c
	yMPkXvFhfP7qx8z1kEZbRZuKLQ==
X-Google-Smtp-Source: AGHT+IHOhwlTfxO0gtbu5R3YxSSzux1ir1D0+XV9LoycquxOEKv33Uk9S1akXB8MDf7rtMqWeM4CXg==
X-Received: by 2002:a05:6512:39c8:b0:4f8:7513:8cac with SMTP id k8-20020a05651239c800b004f875138cacmr11087219lfu.48.1696636679204;
        Fri, 06 Oct 2023 16:57:59 -0700 (PDT)
Received: from [192.168.200.173] (178235177147.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.147])
        by smtp.gmail.com with ESMTPSA id w21-20020a19c515000000b00502e0ea7174sm479791lfe.186.2023.10.06.16.57.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 16:57:58 -0700 (PDT)
Message-ID: <0007b5ff-34d4-44c0-80bd-8277d5842c01@linaro.org>
Date: Sat, 7 Oct 2023 01:57:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] phy: qcom: Introduce Super-Speed USB UNIPHY driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com,
 u-kumar1@ti.com, peng.fan@nxp.com, quic_wcheng@quicinc.com,
 quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, quic_kathirav@quicinc.com,
 quic_nsekar@quicinc.com, quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-3-quic_ipkumar@quicinc.com>
 <412492d1-fcc9-481c-9d28-b208a644ba1d@linaro.org>
 <7975c638-29cf-45ce-9d76-b8a93d750eb7@quicinc.com>
 <CAA8EJprhQz_Tj0Bhv6zhGa7h37Ug-Fp6Tof9tNscTFyZzkbJvw@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAA8EJprhQz_Tj0Bhv6zhGa7h37Ug-Fp6Tof9tNscTFyZzkbJvw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_165802_770802_A96F325D 
X-CRM114-Status: GOOD (  15.00  )
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

On 3.10.2023 16:54, Dmitry Baryshkov wrote:
> On Tue, 3 Oct 2023 at 17:22, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>>
>>
>>
>> On 9/30/2023 10:48 PM, Dmitry Baryshkov wrote:
>>> On 29/09/2023 11:42, Praveenkumar I wrote:
>>>> Adds Qualcomm 22ull Super-Speed USB UNIPHY driver support which
>>>> is present in Qualcomm IPQ5332 SoC. This PHY is interfaced with
>>>> SNPS DWC3 USB and SNPS DWC PCIe. Either one of the interface
>>>> can use the it and selection is done via mux present in TCSR
>>>> register. This driver selects the PHY for DWC3 USB and handles
>>>> the reset, clocks and regulator.
>>>>
>>>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>>> ---
>>>>   drivers/phy/qualcomm/Kconfig               |  11 +
>>>>   drivers/phy/qualcomm/Makefile              |   1 +
>>>>   drivers/phy/qualcomm/phy-qcom-uniphy-usb.c | 322 +++++++++++++++++++++
>>>>   3 files changed, 334 insertions(+)
>>>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
>>>>
>>>> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
>>>> index d891058b7c39..7257c8455c53 100644
>>>> --- a/drivers/phy/qualcomm/Kconfig
>>>> +++ b/drivers/phy/qualcomm/Kconfig
>>>> @@ -154,6 +154,17 @@ config PHY_QCOM_M31_USB
>>>>         management. This driver is required even for peripheral only or
>>>>         host only mode configurations.
>>>>   +config PHY_QCOM_UNIPHY_USB
>>>> +    tristate "Qualcomm USB Super-Speed UNIPHY driver"
>>>
>>> Can we please have more specific driver name? As I wrote earlier,
>>> there are two other (different) kinds of Qualcomm UNI PHY devices:
>>> - DSI / HDMI UNIPHY on apq8064 / msm8974 / msm8960 (?)
>>> - USB QMP UNI PHY drivers
>>>
>>> Adding a driver called UNIPHY, which is not related to those two kinds
>>> sounds pretty confusing to me.
>> This UNIPHY is different from above mentioned ones. This a custom
>> version for 22nm on Qualcomm IPQ5332.
>> Can we name the driver as phy-qcom-uniphy-usb-ss-22ull.c /
>> phy-qcom-usb-ss-22ull.c ?
> 
> usb-ss-22ull sounds better. Or maybe usb-ipq-ss
usb-ipq-ss is as safe as usb-msm-ss

We can not rely on the hardware never ever changing down the
product line :D

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
