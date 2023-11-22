Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC3BC61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 20:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNf3WwaVMJUIddw5PBRlrtV8LgOxiGhq7AYuEuWMGfA=; b=0nZZgggU73Hfjv
	LJqkjSxHQyVGYyGQsA7BMo/p9CPdDUaQ1o3lvgVlceb8zJmaodKeOuw2OapuM1ql0LShX8BQuDCql
	W8X9gGz3FU2XvNZD2b0TGbxs0isDoJBNfdOFB2qqtULNXsPSYupL1NV7LUyFmUgBowLzC/1GmcPL7
	M6yG7FmpCiok4QmFGIW+lFsxyxlwRENDyXk0pPa8ilTaEnQRfibLIu8ZMy7o+5NgtWdFnB74Dqep/
	sYUbeDZU0/YaFLopdTr2BNXcWau3j6f505KytKEknEZHc1K3/5kt22DbB8IAR4RBV7wjvv32U3dft
	4l8Tpuoss34XerBIT/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tUW-002yyA-0s;
	Wed, 22 Nov 2023 20:06:32 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tUT-002yw4-2N
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 20:06:30 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50abbb23122so110939e87.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 12:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683588; x=1701288388; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mSTS/9xb+I0FspOAfgVWZyVSS2kQhyQBTwt73Qi7TDs=;
        b=AcNf4jwfgjleR9PoSoKh88eKLa7MQoMAKIe1FnkM+rWApPwWBJLeInkILCtWJsInWs
         b8D+DCHvxdCLH2mFMV1eXBR9cLizvo32jrFNM6GueqIMoC0CnaDnrO8/eSlAuU9W+4Ul
         1+ByV/eyVfqy1OA2mgn4hKQKqxhAwGXXpsnOqYYffV8SuuwgEIBwmGfm2Agh1dU7sRc/
         aXrglj1AR/tZechgaqFsBwBvXKtpX42yb3rx+SH72zc8XAi7ZxYUam6AM0DTSrHWRdXP
         QQYu7jshiEiaW/tiwxdPd9mfjAvWNbCV085XyUIRb63CYX2mh0BbtVGgFzY3DfT8MwID
         0mWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683588; x=1701288388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mSTS/9xb+I0FspOAfgVWZyVSS2kQhyQBTwt73Qi7TDs=;
        b=F+PUu5XurOxcQvDEJ8Js2fzVuSbViHAhADuplUltyOMtVZzq6NS8lr99vlVst5wMus
         MrXkkifnqKUcqyRIiOsvX9PaCdJvWLoZAVuDAO+M0iFf70p1Qi1D6M8BQGPRMdJr434v
         uUNpMunUP0C2TbHKkNW5TdweTztkSnJU5wZHBWSo5HMpme2U5am47oILeLisPUje8V+0
         ydeqVQyASW/PSvfFTBs7RBUHwcIU5HolJ3/SRhhgzThckTXnTPydkalQIOp54tiIj/b2
         9yP+y/GCBIWzcAuxgNt3OkjjRT37Th1pafqo+IQQzD4y0J5b5OV537vj78/weQEYQBRw
         9G+w==
X-Gm-Message-State: AOJu0YzWoAgP/r7OPQEv7V4AeoaM4AcMlJD9tf9ULJD5fOL2XisvutGD
	O9JiLJ0QpM9mv/RImu/lJmedZw==
X-Google-Smtp-Source: AGHT+IEui1Ib5o4jG6u00MnB2oJZ7cQuP6xzqF57vg+KnJu4CfFoi5WxYD65RNNThB0hY1kwsq1OTg==
X-Received: by 2002:a05:6512:60a:b0:503:9eb:47f0 with SMTP id b10-20020a056512060a00b0050309eb47f0mr2306037lfe.59.1700683587909;
        Wed, 22 Nov 2023 12:06:27 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.06.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:06:27 -0800 (PST)
Message-ID: <fcf25047-0b2d-40ab-a45e-6f675cae4f11@linaro.org>
Date: Wed, 22 Nov 2023 21:06:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: Add support for Xiaomi Redmi
 Note 9S
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>,
 hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-9-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-9-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_120629_775326_EF42BE44 
X-CRM114-Status: UNSURE (   7.58  )
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



On 11/17/23 21:08, David Wronek wrote:
> From: Joe Mason <buddyjojo06@outlook.com>
> 
> Add a device tree for the Xiaomi Redmi Note 9S (curtana) phone, based on
> sm7125-xiaomi-common.dtsi.
> 
> Signed-off-by: Joe Mason <buddyjojo06@outlook.com>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
