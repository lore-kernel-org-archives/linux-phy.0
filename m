Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A29C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 11:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaLl0hfY9M2CSu8oIPx+iUjhKRsuVHO+U/XRZrj7nwk=; b=P29buhIUU7fLxo
	FOOAgD6imyRYPZ5q0tZFUdeE9bIAYYJNOREmHvPonOSH0EZw7C3wjRveq7o/nHdJRLaOJiyc7EKhf
	pfyafnCtABqFMnLpGu3LPZwcujDIGE5lCEZB1t2bNyBHBTiqTH2m80lqB/QemqaXiPLKwv4SvrABX
	E/3TKvAmzt+EGHWWNGrtsSQC/RW3Px2Rb8F4Pfn6ebHgHrRjJARcYL6OcTy2LJF+WWLNtlM3RcQVk
	Lio3YA+FFNZbZ52uWXu+8WNPuk3dsBRdvAIIr3xbPZjKwYupqhTxg0E7gtSH5O5+1WvEmwg3gr0I+
	8QU2f4aIjnqvHBN3W4Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQTQ-002aW2-0r;
	Thu, 18 Jan 2024 11:22:16 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQTN-002aOQ-2I
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 11:22:14 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50e80d14404so548226e87.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 03:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705576924; x=1706181724; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LjB2WWew7Wjmqi/UoNY+676seAwMeZh0uH4YqFEyt84=;
        b=pRhwdhfwDSFj8AAdeGHsc+58F2XGivDYdDoh6bKL1fyQnwzQ26xrRg4MGGBjqqcqS+
         DJgXKYFS3kWYLBIjhtezo1iza7PIzWH0+t/oW+lt4EIX8cY4YjoWFxzXzeRvS57ZJ0hs
         TnDGmcY+nIJLjYp08oIdKUYy6AC7mpQWxETAeRX6b4Z+EnYBAIkA7Y9YV5SuMT/V0MSu
         RfthkQ+kRYrCInxP/+OUN0oa3MBdW3qwf+1WMJZF3o/1HCQHO8YT92eQ6Wz8lDRk4NJr
         v3crtY80ErUMm35AtyZa3EywtfVhye4BlNHiPSrOMMPK+jGuoY49bFMeYOWNsJntZq+V
         DVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705576924; x=1706181724;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LjB2WWew7Wjmqi/UoNY+676seAwMeZh0uH4YqFEyt84=;
        b=KhSXa09okaetcEjrdv4OdqbEKwzp6/0liddwlW5iJ23VYUV/dwfaFxdU5IUbCPD9MF
         NVMQPZXRfDiFeOdD2950FIwCwTJ7O0zIaqszohwH2lpMxci2RboKheHoHjRnsLvr0ffN
         4Bo59gcxw1ZzP/AkcPtlSrTvr6atO5QGAkWekO6ldu4atMBVZ4q4T/FV6kqD+nitMJX5
         tEaLKh1WH00jpKNj5PFBfkrCIcbDUHcaGsLUhzaD+RXaGrEns+xEWlC6ZO557rMMDtoi
         4CRBvNLy/LAwjVJFtoRzRQbgpF/EndcgF1JtaIOERSUTQ6TQUzZAUUo0iHLTYeubKV/c
         YLVQ==
X-Gm-Message-State: AOJu0Yw7JlP1wvPfOVpKQ07w1H4TZ91TVtwQykV7WMOiLpWUmNbiWlCG
	MVbYrO4caMKpVUq+m2FeSb7LBv9/4ZKDdSfbLDrah2gPtY/x76XmUcFJzjfjJZk=
X-Google-Smtp-Source: AGHT+IG9+Sl/l0bzXAXtosJaqz9eoR9z2fsYHaQjSq1GBd2O01haO47t4x4MPx/sS+yhfOKlbBeCpA==
X-Received: by 2002:ac2:4e10:0:b0:50e:6a65:fa97 with SMTP id e16-20020ac24e10000000b0050e6a65fa97mr618910lfr.33.1705576923894;
        Thu, 18 Jan 2024 03:22:03 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b0050f147c0244sm125917lfm.292.2024.01.18.03.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 03:22:03 -0800 (PST)
Message-ID: <1e9a8ed8-dbfa-47da-b7c1-1a0f1c1c3d39@linaro.org>
Date: Thu, 18 Jan 2024 12:22:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP
 register for USB3 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
 <20240117-usbc-phy-vls-clamp-v2-4-a950c223f10f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-4-a950c223f10f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_032213_755534_38F70978 
X-CRM114-Status: UNSURE (   6.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/17/24 15:04, Dmitry Baryshkov wrote:
> The USB3 PHY on the MSM8998 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 026dad8f5873 ("arm64: dts: qcom: msm8998: Add USB-related nodes")
> Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
