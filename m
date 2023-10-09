Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E503CD6138
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 21:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ErsMUkhPcT1CuSpsUgm6JFvfh/FeK3TENQWaSlLxik=; b=QVG8d1NVHX9M0u
	nGSFXW6ZGRfiOrVIXwWUKD5z9sSggwB83NmdIo7OWZ7QCL9mSkNprkFstsb05gRAlil48WTYxNfrC
	aFYlgXR03WbPiiiyRVMKLo2WRlGJk+DQhu/byU6/gBlzwsNQ725gInyAu14jLgegIf7aj48A9WMqs
	5gnM7ynL8fsDoONZ8OzAafq3mOeWnEsPw54vNL0QBR5xRUtJ2d7SSpB9Flo4qXSY/33o6HV5daIQd
	jOVRtKiOF1SXERPjLVMOxTnsC/+msbD1XTpVcdA3eO1a7nmw17y4ulOBvdBem9vuPQjrjOKDHZ/AV
	DErqQnWXGS4ZDrmobYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxat-00BdLI-2W;
	Mon, 09 Oct 2023 21:15:15 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpxas-00BdKt-0a
	for linux-phy@lists.infradead.org;
	Mon, 09 Oct 2023 21:15:15 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c1807f3400so60879281fa.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Oct 2023 14:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696886111; x=1697490911; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GF8sVvByPhILrt0ONAgfOaeyuIu1HrfcOafsBj1Kszo=;
        b=c5NUINjjZmsmO3titHdMCN/fEVsQTk0EJ5gVfvaphVPN9I+X+BYzrWNvHPuCPtFFEb
         7MFNGMRDcP8wt0hv5eKZ8WVCQQrsrdphyWnKvsl8XJgqOUkATKS/ir/WaAAKJSZtHmxr
         IyfGA0sNjCdSJBXp8NffdJ/oxNWGW7WUmznNqrtamzLry68uohfhcO7XaP1+yoSm2P7N
         ENUH4CGwVAf6fQW90OyG9YByZ/FflLofsphwCn9kZHgjzIeeiVlsPHBF/0t9U19iU0nR
         xGFu+80Bmv5mu7wsYz+nwCPqzP4+wJdKFrOv3vr+8qpuKQv9eU3rL5reBrR2JmClWh3D
         vi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696886111; x=1697490911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GF8sVvByPhILrt0ONAgfOaeyuIu1HrfcOafsBj1Kszo=;
        b=lJVEdjUBTTbEcOcclO++S1YyHi5O9NvYcwfbefOnlvpwrFDr2BSw0ZZQaaEehPWQ9/
         hWaWqJvi7mxbdyYYvvAnOYfZ8FIk+wWZ6SN4u/XC0nE0t5rhRqjvKfbdjlq/LD8J5mvL
         HK9RmaYJMA0QuR29S3J6e1DMv2Oul7pUcy0aNRAoDqQe4HvIMTp7L/TNIr1lN6nDiXwi
         Taw9u3/V5Vd0jL2XI+QHq3glkm4YxUQnPMy04jJZA8yF2vnEvzIV5M1KLXK7fIl+CC+B
         7uNhRbRSTEN02w8unsnoxymRV2ecJpjT/K32EJZ9iVtmdKWK+tmoA+BGYjm/WLwHNGQp
         bItw==
X-Gm-Message-State: AOJu0YzYqFxvNMLUva3zstO18uQONAHT62rY0jt3VNfOajQwvBQwuf9m
	BbORfkBbaOIMOlIQo7o2pmX4gw==
X-Google-Smtp-Source: AGHT+IHPANy7utWKq+Nt0JGanJ/qxGKrfFVdkzSlLFJqrNsi+LPmEIbl3s9Am1RcS03FjaY5Al1gyQ==
X-Received: by 2002:a05:651c:2049:b0:2c0:12f9:3b7c with SMTP id t9-20020a05651c204900b002c012f93b7cmr10214544ljo.11.1696886111428;
        Mon, 09 Oct 2023 14:15:11 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n10-20020a2e86ca000000b002c029a4b681sm2175771ljj.15.2023.10.09.14.15.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:15:11 -0700 (PDT)
Message-ID: <c4d418b3-86e7-4768-8d18-bf0c05690ddc@linaro.org>
Date: Mon, 9 Oct 2023 23:15:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 hexdump0815@googlemail.com, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231007140053.1731245-1-davidwronek@gmail.com>
 <20231007140053.1731245-7-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231007140053.1731245-7-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_141514_227558_B500BA90 
X-CRM114-Status: UNSURE (   6.42  )
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



On 10/7/23 15:58, David Wronek wrote:
> Enable the UFS found on the SM7125 Xiaomi smartphones.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
