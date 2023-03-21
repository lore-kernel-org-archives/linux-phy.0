Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE13C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 11:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2melB0DQJRtLWQPXVGzX/j4zyLG595Qh140iubZgbQ=; b=fFs1DLIXE1oYxV
	eUhvhggOrj/xSFyE1HpgrNsfkkCcX8xpzmSmJEUnykCCnDA57gP7A++zT06ScaOrnYwlhavmt4MH2
	DIeiIyGkJ1fnMEPOW+GKl4HC2LpQsuneFWmCAg8VA4FDtKS6y5ao8PiHZyQrFs015EzrOo8nyI76F
	CWVu7AD5cUQ3J/02C5ZvCR+j3kTCp8GflUPPWJC37+jTJLT2gc9M4+kvWnIij3H3y7eTZIUgTFkhr
	csJHIoAD9HB37Bd30KtNM2CpXb18KZb5YcShfXvTq921QtFUbgL1O6VsirvA05SvrQwt0viLoa0JO
	WMNTzeWY/pip21i68muQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peaYo-00CFta-1I;
	Tue, 21 Mar 2023 11:53:50 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peaYk-00CFsH-3C
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 11:53:48 +0000
Received: by mail-lj1-x232.google.com with SMTP id g18so15216343ljl.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Mar 2023 04:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679399623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHYicZCpX9e/ECtMpq+W+0vzy+duTC7O8lXBsVndLUw=;
        b=tIbCAi3++wdGvgilnSs/W2RaKDtbmB1bkE2JN4k4nUD9diudsq0XhOFrM1/wzjoQ6s
         HXpRpc/MGxO8eZF4oPuYoAhoDhyRY20NFe/xtt21zORiVScFZdluRKBemi8nJzq2LS/G
         D4pDWFDHv4y9GgHXGzdjP4m1jfJKHSWre78eQ9I/zDsoejLf5NB3rlPomePj6JWdsMsu
         wx+epJ9SbGBbaXYSnzp51/yMPoXCXl1HsWJT95Kd5P+q5r8sHkBR/uJ9UypLGVsvRoRD
         3yBTbT6Y8DTi8JgFZ7mmkLH2cCVn6tPgE7LWufhrZk0C/Xr+lHElJMWStUADhsFXxKGr
         juGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679399623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PHYicZCpX9e/ECtMpq+W+0vzy+duTC7O8lXBsVndLUw=;
        b=2ZXR0goZfzFyPc99PILYY7wvWaHkhDn9VgeQtFMmiHw31AGTC94lX13oq3uE3AR8ye
         IIbiX65ickSa8KoEM9z4T25Ha3pn8n4afB+1ECMQPPCVzdOLkSZcHfYl+Zw7m6LiOqQw
         tgQCSPiJLOxb8lCwlszoiFdqSmQjQYHuxJVuW2thaY65FT7G4PMUfcz++ceu2un7H90A
         Sb9nbuL57XS6NtlPGeSiDxhCpxnFrbtJZn9naAP/KYSQkX7g4ANwkkhN8ZymrBK2KSco
         L7b3alZemHhZjJz3znFE8t7/ywHtLVavuN/6r7flZlbcWZzueRnaAk2SKb5/13SuCqqM
         0ttg==
X-Gm-Message-State: AO0yUKW66oENXk+sX5fMjPJ2SSfCWqJ3XmURgPJJ51IEssN+ujyanbpn
	jPLXr9qy3VLMKsLNZZSTEuNshA==
X-Google-Smtp-Source: AK7set8H8ztkokOQKVh1LA5viyxH684OEh2WsxmA1W5HeX5LBIFmqiZHmb3kb3SJZ2Jqe2771pVwJw==
X-Received: by 2002:a2e:8699:0:b0:29b:7c49:a512 with SMTP id l25-20020a2e8699000000b0029b7c49a512mr811204lji.21.1679399623692;
        Tue, 21 Mar 2023 04:53:43 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id l22-20020a2e8356000000b0029e967c1dfesm634385ljh.8.2023.03.21.04.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 04:53:43 -0700 (PDT)
Message-ID: <1cb44e37-9881-3c71-816f-a492c917c494@linaro.org>
Date: Tue, 21 Mar 2023 12:53:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/8] Enable IPQ9754 USB
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <cover.1679388632.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <cover.1679388632.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_045347_040619_BA6B42A6 
X-CRM114-Status: GOOD (  13.66  )
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



On 21.03.2023 09:54, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> configurations for enabling USB on IPQ9754
I got this as a reply to the v1 thread. Please don't do that
and send it as a new mail thread the next time around.

Konrad
> 
> Depends on:
> https://lore.kernel.org/all/20230217142030.16012-1-quic_devipriy@quicinc.com/
> 
> [v2]:
>         - Incorporated review comments regarding coding styler,
>           maintaining sorted order of entries and unused phy register
>           offsets
>         - Removed NOC clock entries from DT node (will be implemented
>           later with interconnect support)
>         - Fixed 'make dtbs_check' errors/warnings
> 
> [v1]:
>         https://lore.kernel.org/linux-arm-msm/5dac3aa4-8dc7-f9eb-5cf3-b361efdc9494@linaro.org/T/
> 
> Varadarajan Narayanan (8):
>   dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
>   dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
>   dt-bindings: usb: dwc3: Add IPQ9574 compatible
>   clk: qcom: gcc-ipq9574: Add USB related clocks
>   phy: qcom-qusb2: add QUSB2 support for IPQ9574
>   phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
>   arm64: dts: qcom: ipq9574: Add USB related nodes
>   arm64: dts: qcom: ipq9574: Enable USB
> 
>  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    |  22 ++++
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   3 +-
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts       |  12 +++
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi              |  86 +++++++++++++++
>  drivers/clk/qcom/gcc-ipq9574.c                     |  37 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 119 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
>  include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
>  9 files changed, 284 insertions(+), 1 deletion(-)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
