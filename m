Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345CBC54EBE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26RRLs1FPa752cLMMpKy6FpxF1aZR9rj3xkmMe7xAFk=; b=chu3q4PoK5WFVL
	nqWmG81CMp2gu6oTljwdPRQHx5S+LLkd/FVW9n/gy92cXXe4y1a/nQ04kfQ9S1rBE0yIyqjmnL8N9
	r7K5u8UyDcP193k3ZuhzOvOvBOADzOZjSsapM/3Kn/BdvbIYVQwUrrpF9dJO4NRghj1pxONO2Mlak
	T2mD7CviANeSXTy/Xm0fuxrARs5+nFVgGb7KJEL1K4KZY18klcnb7pA+jiMyNSY8gydU2LuZAjBF4
	a76X+sNwKHu3kA+ZREvrFCsKN/SIcJU811i811ZTEzs1splMYR33bgUCbfn/UU3vkdcXcdOOCMH0c
	gUW7ES7zI9y20CDgOGGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI02M-00Grxw-JJ; Wed, 18 Jan 2023 04:26:58 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI02K-00Grx5-Fw
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 04:26:57 +0000
Received: by mail-ej1-x62c.google.com with SMTP id v6so37301797ejg.6
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 20:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P5KYUTlBMHDS9rZ5AIZChzy+GDqYCA0ROWxq3541f0Q=;
        b=RjhdAwsIoiY2El98eOLvDUmnYaJMo/NnkJdFdOPVmIhCXZqTgpIGKEl1G8qGp3mj+Q
         QLIbV48QOtX33wqIauSXD0yK1bVcYCJws4s53/ITxQw7wSKJuOs/EALXqpme3x5HMTgS
         SN0YWP+SyplE77QgQmtsvMjgmIqiHo1WDsYFNJpFli1ew+FR0JiJxs5VmaUHm37A1Vmc
         klAzGuO5C2COg4+rTr6Cjo2820dhzUDukBjkRL1xsNOST0IvAPLiRQRH6il8hyVlG8zA
         gEqkzK48qqMiQYq93Vbpx+qaclWDJwlZYLXC4KtaQ7bShQ4vgrTSznRvKaWG2I9U6YI3
         2vAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P5KYUTlBMHDS9rZ5AIZChzy+GDqYCA0ROWxq3541f0Q=;
        b=Uxc/GpcSN4ABrVUkk8CbrdBwkJD//13ALeyF3a7bPQXBQMQxKWGebKIR9wLF7TMTFk
         Tpmlda0i1TS0L2irPGHdaB3eTu7rpk/V+F0u27VQseF6hFd6FLFAyaCv0XWQ7ImZ5ZT4
         1wWHQUBGmthvjNjb+WRBJG/L1EZEleCyN/caC5eGVXsKpS83Nku/EfvWf6aae+/YgoSr
         kKg8R4uDynAcPrvcxvycv4CSozH/Fr13QjV3ls4exuxlG3tG7Em9VSvgJEZyoRA5i45z
         sOPJluSfdIZ2FxLNtYCXk4hWKaSa3vG/QrZC1DS7NaBVrgZE0zjxRdVKeSIBXN7kDR8m
         KTOA==
X-Gm-Message-State: AFqh2kr7syGPVFwYkBwwQ+yZq8oY5Zvx+WMdPbCZEPsMz6DTAyQPKF9C
	mVPCDwM5hfLAiD/lYuDeAiE0oQ==
X-Google-Smtp-Source: AMrXdXsy4obbY9VOkYpGsCFQvkd/d0iW6JL6J3zoSF0gvycTp2uXqZG7hJobI0ZJiUD8NDNN85i6vQ==
X-Received: by 2002:a17:907:8c17:b0:871:38cc:7b3a with SMTP id ta23-20020a1709078c1700b0087138cc7b3amr9490203ejc.75.1674016013059;
        Tue, 17 Jan 2023 20:26:53 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id kr12-20020a1709079a0c00b0084d44553af9sm11932346ejc.215.2023.01.17.20.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 20:26:52 -0800 (PST)
Message-ID: <56a82356-83fc-0a6a-b6a5-7c698bd3c307@linaro.org>
Date: Wed, 18 Jan 2023 06:26:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 5/8] phy: qcom-qmp: pcs-pcie: Add v6.20 register
 offsets
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-6-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230118005328.2378792-6-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_202656_566238_ABA04BFA 
X-CRM114-Status: GOOD (  10.11  )
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

On 18/01/2023 02:53, Abel Vesa wrote:
> The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
> PCIE g4x2. Add the new PCS PCIE specific offsets in a dedicated
> header file.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  1 +
>   .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    | 23 +++++++++++++++++++
>   2 files changed, 24 insertions(+)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
