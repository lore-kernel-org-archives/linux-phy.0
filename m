Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8924CC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBC6HiFqLCOLHwwFdD34BJH886RpjgfCbgilmQ2Trl8=; b=VGIvltl7esW4/1
	NVMxjrTYc2t3C6Tl02yjWC1D8DPI01J14YtMtYaWTgw7TG3WBLFAadZtogEV67IMf53oGR03Ezg2L
	AJjnHq17LSrlP6YxxTuNsgWz+HPh5FHsymOeA0LH+vjAHhmWVUL6xZTiOf7z8Eh1f/j3nm5s5AcC3
	nKDoERrEJlWXSBmAY4m8G/QJkKTOjLkEB5+0keWRDU1pWqwB0fyimAJ11yDE2lFal/SkVgzQ7KnJa
	gfkMLhG+gAhnHzyGOnRqqEYHhIyEdh8rKqT4SGRtFGxUeP+g702LzVKeQnE+clLPEIPPIbbWNBaxL
	8XfSrpBN3wmxi+nK4w8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAtTB-00GMOk-LT; Thu, 29 Dec 2022 14:01:17 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAtT0-00GMHK-KT
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 14:01:11 +0000
Received: by mail-lf1-x12b.google.com with SMTP id z26so27606050lfu.8
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 06:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dWdcdzFREv5V6SPJe4nJ9WrjQaP+foHIino4lv73g54=;
        b=cQfwacO9fMts3lyQV2pz6a6+thsvJud3cvHWtX+VxFUXojtqK+nI8xvvWoZjlscD3b
         WoY7dZsM0DZ4cONKcOJYmU8wCn88ETrJ24NYIXgZ9swGTxP3AKs9jomGGXRCaiUIaGJ2
         EueunHBVrLvn4acWgPuAJvLWp8oaFqG6VebuVQkcSkKnIqNw1/48jzjF1xO0Q/55fIFx
         DtOSNEEVzXNLRwbCCXl66xN8ykk7DO+6xHF9R1Gi9sBMh4LYb4Is9o7fhUhjArDvTy9t
         ZRujMZUueui11IDiD5vRsjAWn8o7GO7Pomc0GzZN2S4C4iFTXhjMwhGJpFeyqfPSQgZx
         bYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dWdcdzFREv5V6SPJe4nJ9WrjQaP+foHIino4lv73g54=;
        b=AU302MGK6IKURYUfD52UHnBxmZj+3u6x6H1pQF1Y7u8AiCQMqWWbu8H7xko+/xGMM8
         XJKAfXTj+dfmzH8NuOH44E7klTEd7h0aZmIB5NWq+OrjRi1pQk587E57VKTuXb+Bh0sX
         jh4kggyekIgFWytmXBm57CagEj4P+KwnCdEGCO73C7y6kBgUHxj6ML3HsRMapnZpBMul
         pKgon6YnkZyhLGNYfbX+AYMjXG8MI1oOAka+EeFqlvMZTbT49Zt+8ApRmmikWngqTnrD
         hOSY8Q0/7U6owQ/dnfuFbSU8kC4SxzsE9H56ScSQy2X81WfTsVgsubT1QC2x/6foH8Su
         NHog==
X-Gm-Message-State: AFqh2kqNFAbupy1P+imrQT3EVoUP5uOtjBG5esLJTUfKnCS4q9XV0gbD
	5rFxJtu4lgjRT+i2cnZOzcJ8q761igZS+owe
X-Google-Smtp-Source: AMrXdXt4v6DQu4Wx3StmNSh0drgudTxpXbIAARtAiGvM5/Htc6reK7Ak6X/cOQjMJTlmotXT1kp62Q==
X-Received: by 2002:ac2:5975:0:b0:4b5:8f03:a2bc with SMTP id h21-20020ac25975000000b004b58f03a2bcmr7460398lfp.9.1672322463145;
        Thu, 29 Dec 2022 06:01:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e19-20020a195013000000b004cae648066csm3080925lfb.257.2022.12.29.06.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 06:01:02 -0800 (PST)
Message-ID: <1b11ca6d-3e28-f019-435d-06daea38d00c@linaro.org>
Date: Thu, 29 Dec 2022 15:01:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
 <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_060108_686408_6FCB7692 
X-CRM114-Status: UNSURE (   6.17  )
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

On 29/12/2022 12:59, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.

You got here Rob's tag.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
