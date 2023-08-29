Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBE8C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvVnuuxH9K9HwnYm9KyVb7MHX/UsHMPIHzHae13uuwU=; b=DXRegHdvK93V+a
	6nHmfh9o5MzdTStPww/rUid2jM+diDMXEh61XJtPpabiwUZwACwXYNqKzkDn5okmMu3qTXzrk7W7s
	wwqq0ApOJVc9y7/mIH+RjQ8aZ/Sh2zn2OCBO8LWR+ES2XdRwO0m8jQYgMg/F8Hh/TkkQGVM+yE2hD
	ZZyRPdBLI46Wixv7YpRih8u3X6jI/AvSjJKdLztpFyx4GIGmr8CoTQzD4h2PTw4XFs7OivWbuw2AK
	563NwTlGA6HmJcK865YfaKpI2oiXXzZcEAGaMwQofoczkK5Fd//9cwpdhIbIKJGWCJxVtApEMG5zL
	05cDgkKH6STEHgxA3X8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb28C-00Bu2L-1H;
	Tue, 29 Aug 2023 17:03:56 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb289-00Bu0z-0J
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:03:54 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-52a3aa99bcdso6474185a12.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328630; x=1693933430;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tdTmjmuPAurruPWgK9CBCEBZHBscY3L79kIykl4vQps=;
        b=waubyInGZ/ryHrlP/0kxJ7g8oFoIN9dIfMljCEhusZAyOVUhjKQP5HkJNeKm8inBOA
         qTQoLBYJmTJcaZZAAVWAvZ1Y8IXutZXDSnA2n/CZn4cneOeGURsa7/RC2zsujeTSBE6v
         OLRg+ztB+eMktVMqsJC2XJLIN2MWinYuWbe87Hjz47USRHEpkTf4TEwUn6IhWvPjuNt9
         LXs2NlGPr7eRRnB+aZnfpBi9sksNlnxD3gBtz4QFyCwgfx5JMupSxM1hZm8DqqSvyZG3
         vtFf1cVd9cllJv058Lsi4tvSruM2T2SSW0wIJLtztvqWV//B6O3g6vvxvFSbr+/CJiaH
         xitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328630; x=1693933430;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdTmjmuPAurruPWgK9CBCEBZHBscY3L79kIykl4vQps=;
        b=jsA08JzPuNRW+8+MVg6Kko1cP+Xzb78TY0OyZKRne63nOPHB1I7zySARqbYY7L63dv
         IsObVy7Ch1vsXJm7cFrvZlKrTQU2B9fjmkDb9II/+ZPJsZQKnwFdIgrmryz/JEB2p7Y7
         AM2IrRFCPlbSznqfUmXrdV1G4RLjlcQpIX3GOkbeBL7Ty5oh6Vir4RTFRo0owGkiv3a9
         gg6i3V1hoZiF0PW+Fzn1pxQmopwiysyGeC1/yK1NA/6mJd7PcXj3VR4bChX87F06iqpF
         KviPxS3A0Thy2BaVtwMOOQj8/9dywtzLHwNhMUIAyYqpnGASX1ivi9uCuuwWfGHvYd/6
         iMAQ==
X-Gm-Message-State: AOJu0Yw8PcBRtpFr2rJdbkarWI/TIRXpGmwi5si2Qt4U5tQU5Z37eWRQ
	Xf8H3WARzWaEhdbENZ/m6ltF4g==
X-Google-Smtp-Source: AGHT+IGMNbdGZpiJfoKIbglOYT2jBQpjifa66imX4kAlXfQqNLwz78VbLZWuChdAb5e/Wmk2vArrsQ==
X-Received: by 2002:a05:6402:14d1:b0:524:24dc:c455 with SMTP id f17-20020a05640214d100b0052424dcc455mr18273629edx.42.1693328629888;
        Tue, 29 Aug 2023 10:03:49 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id r14-20020aa7d58e000000b0052a1a623267sm5801084edq.62.2023.08.29.10.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:03:49 -0700 (PDT)
Message-ID: <4d2df1ae-cf16-ddaa-ce03-eec520f19ae3@linaro.org>
Date: Tue, 29 Aug 2023 19:03:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 7/9] arm64: dts: qcom: ipq5332: Enable USB SS UNIPHY
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-8-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-8-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_100353_131427_446C2498 
X-CRM114-Status: GOOD (  16.21  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> Enable USB3 SS UNIPHY and update USB node name.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds support for USB2 in
> IPQ5332
> https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/
> 
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> index 53696f4b46fc..c450153cfaac 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
> @@ -95,10 +95,15 @@ &usbphy0 {
>  	status = "okay";
>  };
>  
> +&ssuniphy0 {
> +	vdd-supply = <&regulator_fixed_5p0>;
> +	status = "okay";
> +};
> +
>  &usb {
>  	status = "okay";
>  };
>  
> -&usb2_0_dwc {
> +&usb3_0_dwc {

This means previous patch was not even built. Sorry, that's bad. Please
test your commits before sending.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
