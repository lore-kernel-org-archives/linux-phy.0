Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0D4EB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZQKh70Gmvsx4aqBBHwULzVwojYQwkGT5cpOc3Rc44Q=; b=qC6SFCENW9STlJ
	FJ4F+7+F8c5M9j+uBxtPklf3W+5p8Cjk878tY6A8tyEjbiT8MvwWPNaK/j4DjKuX2F+b5m/HCYdyO
	T8EH0oqzAbMW4S7VpYeaEvq3lQPsPYt5Rjm2dh2nIfBOFcmsxHqX1Abi3rQKe4CP2oDjl2YUd+kXN
	sOGFM1OGWhUyt2PpMq4rJvaCITiPvZ/WZuq3viRyf3C2E9znaq95zUNtmFv3pUwhSPRrT8aD8hZXF
	4sz6h3B7/IOWzAvaOA9BTDUcXKmxvrd9pimH4LsCVN4Zx/jxMjXqE/GAfyEs1k78534ZrzzxpHg5M
	HpCqqHbJbcmAEF1JIoSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJfke-0011MF-2k;
	Wed, 12 Jul 2023 19:43:52 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJfkb-0011KF-2U
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 19:43:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51e362e4c61so8478290a12.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Jul 2023 12:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689191025; x=1691783025;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/8+vjNobIMWMrzf0FKkwYNB3OzBHSpvmANZBPCBUHmE=;
        b=pdfCW/mCYx8e/bNU5tSwbVHysL9r7MaYQ3GWxA3ZjoM8HBsBPEdG8Uzb7WHqaB88dj
         qx8zPsQWxHc2xee5MeLdt8GB//cj2+1XYL02hnXd0Sz9rp5sK5FQPClYFKQeHO0INPNC
         JbdBeVRyvb7URnTv6hL12GYaYV3T5oPc5j4zf+SC65dr/M+o54ZZneX4ykFFiaUlopZG
         dakQgMgQ3TOxYpOB/UuRUkYGa2hp+LVjgiDScZAV7izpHUn5tpGaQoPID9fFYauGpfGy
         XXAQyHwZfc5haFPJj9kAGX1WIWZuBUrvAda2gLByE5bLyH94eaYAaocOIFtfl7g6huIT
         keVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689191025; x=1691783025;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/8+vjNobIMWMrzf0FKkwYNB3OzBHSpvmANZBPCBUHmE=;
        b=L5MCfiZcaW2ZdB2UyF1rcGbap30LU78eCVFmdOT3Bw7CEZy8T6Kb/ojjupUzmagzqt
         4rEEFQJDcC3ieUfS7sjK5ATLEElJpXYC35ZSj0LdUGXr6cvoFZP9HZqMbH8aKkXXy8R/
         8T6tU6IuCUDouFH3eUMo/qyTMEEb+QDDGLdvmFgmwxnvUaC+62Em39AuKP5KsGjWhir/
         UiBMEB9bDubiEnUllnPSr77cWXa2iXyuZfz6G5a7eDffdMPD8t1uRNS2vvg3JbUxquJl
         +55JmwztucGkFrKLQe2v98NJwhFg3GeZ1w1Su5Vq7uAs4IKNmaD77OvvMP4qpW7OKBYZ
         OxWg==
X-Gm-Message-State: ABy/qLaDTNTVCP4AXqlkQlga/A9o9fagdATlBkwhsX6EsTPk3kuGrSYK
	nGE5D9gF152/NLHmQrMNeItbUQ==
X-Google-Smtp-Source: APBJJlGYvDj0/4R+xQD2mNLvCqsxd9qJdifuFvM8ZCbtFnkv2PeqjmsrKw+1CBv3KCAf73/r+NieFg==
X-Received: by 2002:aa7:d302:0:b0:51d:d1af:df15 with SMTP id p2-20020aa7d302000000b0051dd1afdf15mr21184971edq.23.1689191025310;
        Wed, 12 Jul 2023 12:43:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v6-20020aa7cd46000000b0051e3385a395sm3237965edw.3.2023.07.12.12.43.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 12:43:44 -0700 (PDT)
Message-ID: <673c5cc4-fc93-ccba-ac32-6e97db34718d@linaro.org>
Date: Wed, 12 Jul 2023 21:43:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
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
 <e3a6e5cf68d67637fa541f6dc690dbcabd5e3fec.1689160067.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e3a6e5cf68d67637fa541f6dc690dbcabd5e3fec.1689160067.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_124349_815631_E82C1FD6 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
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

On 12/07/2023 13:38, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
