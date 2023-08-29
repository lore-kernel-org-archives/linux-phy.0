Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C16C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=herqwQnrddR2lwiy4zEaLRUDVxwb2umI7+2SU6G2AI8=; b=EEIr1IGlaRPkCW
	m6uQPkRukFnaJfqdV+o8cJ6mGvDlSdLLGLw/MtvCWH56FXNpIk50UP4s1pfGLQxnKR7u7affDXylr
	CmIpOw8wrlapLnsk4bF2ENY03Sxyu9SRjCjS1p61oKFc9tCqXkXptodUtjYszcn1jGrYkrgB34Deb
	prK7a3gH9Icynmk8FNxuwPEKdH+1D0/gYi5knlO24RR+NdoMziYT/zHnyIWtohonS68S6DaRaxa0v
	X4pv4ORWuj64VURJVEbDHSgGeSG3jYY1W8p6UmjdBGhjhhCwU7R1lasgH1TaLwmgi656khX/J+qC0
	B0hCkkPNqP4jJCwfQsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2BY-00BuPS-33;
	Tue, 29 Aug 2023 17:07:24 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2BW-00BuOI-2H
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:07:23 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9936b3d0286so628503366b.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328841; x=1693933641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cAQIr8pt/5UnnLbqPSKYkJ1Yao70TixJlA2TFwMbYIE=;
        b=lN8MP7iBdCjY4T9ATE0dC0lRwK8QJmt7oSOACLkIHth1TL5encwNmeLoG1xAcR4vHl
         0hE2B3yqkWZH54G1iW3NiyFMA3uHhnBBYgaiX95CPDJxKsPYGsCltcbJ6EJ1eOBEA4d7
         Sus/2Jd9KAz0XouVKpfgOPCqtOWL5sIzTbAwBCvUiIclLfjc166lgm2iksiBz5WBfgpC
         2/fk+BU0zhiXCO2kKJpekzU/NKBtqMQEOBtlCHvbtmaAbg34tY3ZBllNZkUYYh9yyNYn
         Y7QJaIhVYd74+BQcu/nagHptI0ENm0pvYhnykykiwuhkj4SqEkGfQ8RNEIr+4kW7sAQs
         iiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328841; x=1693933641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cAQIr8pt/5UnnLbqPSKYkJ1Yao70TixJlA2TFwMbYIE=;
        b=f/PtLVFRsTEjbcay7XgxGTPXVz6zBVJPbNoHXL3x5LDKXxxSZqAgEaYAcvUIGzlmFL
         j02bkrBU2SCTlcC6adJKnhia7YzYp1tF2n0pz8zw5B8x90IxCoSQfH72EdpOAA4+ac4j
         0WuqK5mt5wzdVMpmgE46h0nIeqj7EbaQtDA4Kwfk1wWONa7ddk/CpIDnVuuISzzVYWGo
         fW11YW93lHOFFl83QEXX3cD3kZBlaMpuJdPqokooxx66nKwY/cgZmDltejbFdT0zdWqt
         IEdx6chmz6Ac8fAGdJAFrxAdzR0Y2S4YIjxaruMNFgFPE8z1InKJp5acY9+QiHzXuaqF
         2iKw==
X-Gm-Message-State: AOJu0YyUPdMcYSqHEbS1ppR2a3dqwjnbrLp2dwcHnbSefkY8j5oA9Z4e
	4bn1YSJPanVOPnB8qbxTYjrflw==
X-Google-Smtp-Source: AGHT+IGDoj0kamMH4ga2ajkfNsBmDp7XZCgAWROLZ5ozex5foVdSYm9okeIqhwudrf2rECP8fhDKIA==
X-Received: by 2002:a17:906:10d6:b0:9a5:da6c:6539 with SMTP id v22-20020a17090610d600b009a5da6c6539mr430704ejv.75.1693328841175;
        Tue, 29 Aug 2023 10:07:21 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id w24-20020a17090649d800b009930308425csm6152018ejv.31.2023.08.29.10.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:07:20 -0700 (PDT)
Message-ID: <92d97b12-48ba-13c9-de9e-70b6eb330904@linaro.org>
Date: Tue, 29 Aug 2023 19:07:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 0/9] Enable USB3 for IPQ5332
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_100722_742133_EBA7D7FB 
X-CRM114-Status: GOOD (  11.61  )
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
> IPQ5332 has UNIPHY for USB and PCIe which is similar to the UNIPHY
> present in IPQ4019. Few extra settings like clock, reset delay, mux
> selection and voltage regulator are required for IPQ5332. Hence
> repurposed the IPQ4019 PHY driver for IPQ5332 UNIPHY. Few more Qualcomm
> SoCs are also having the UNIPHY which can use the same driver for both
> USB and PCIe PHY.
> 
> Praveenkumar I (9):
>   dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY to UNIPHY
>   phy: qcom: uniphy: Rename ipq4019 USB phy driver to UNIPHY driver
>   phy: qcom: uniphy: Update UNIPHY driver to be a common driver
>   dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
>   dt-bindings: usb: dwc3: Update IPQ5332 compatible
>   arm64: dts: qcom: ipq5332: Add USB3 related nodes
>   arm64: dts: qcom: ipq5332: Enable USB SS UNIPHY

DTS does not go before drivers. DTS should be sent separately or as the
last patches. If you stuff it in the middle, means your patchset has
dependencies which it cannot have. Thus it is broken.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
