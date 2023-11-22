Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95BBDC61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 20:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkQbQ1OUh7+Mz4FAsI3T79W/KPOvzWr5/GEMjc7Ee74=; b=BZ+w+cH1w8x98d
	6QbwNq0Ib2b1xQZJgPZr0YDFmOD6S6HIZBzoxSiRdreVJkR+inmsLrqme9c3xPEM7jyVWys9rYtJ4
	tZc8orTDyJclrSri0aNL4f8XLfyHbre6xB8zHfhWO8djjj4ftJ9R1NNvUzwhYydPvgfXzo7wVg/ck
	4WRJ0HWiVhsuwkGdlggNSthNSQgOI8autWbtnDSeVXzvoJHhW7R9PrBBdAV7An3h293OZQjlyktSe
	QUUh3GutqwoTypLE2ryoUd8IAb9LtCYLHKv4tD89fSwu0eDwyE4MVSlp1rDKx6u4WaN/v8hMhDCEL
	hs7DrUaT79ZEO+Eh05dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tSd-002yd3-0Y;
	Wed, 22 Nov 2023 20:04:35 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5tSb-002ycg-0L
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 20:04:34 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50abb83866bso116480e87.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 12:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683471; x=1701288271; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vxoJ2WrN8KtuI3BxSCT4WLfqN6zRjmbcz4kxjayHe9s=;
        b=N3PXzcAFHWO6Qo++JI3kXzM2pEojfWz34Lm4NlIbRwGErbIt3t3/SgrZmtZU0gBwPz
         YVhZcjv4rtWQfKyk0JPXcceuqJrE7NReD7jb0i1QZafq4Sn6C0SJ4SUkYljdLvG03Rct
         iONhY580h4KSuIXf5Vgqmqhxn1F0JzzALRIdLqAoopOP0KfqxbwNXyDh220SGXJNMnpo
         NM2wRO9oU/9JDiETwFD2JRGW+hBI5Y/oZj8SHI5p4NB5yyOsbycdNUYuSJ5ReRlblfh8
         lvQr0unWnu05gIsNFvBrW2VrtJ7Ij4x3UYLLCWsW4n+G8AcQMdBAWhytU0jYH5xNpGuR
         nVXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683471; x=1701288271;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vxoJ2WrN8KtuI3BxSCT4WLfqN6zRjmbcz4kxjayHe9s=;
        b=NIVgZiwuNPzQEtYb+TpY0Isf36SZP+KmGVY2t/GRG9KMKWKchNcHBKsfZ0CUvKVb8W
         wJUzg+CHrYXutYKcMMdsSfony60pYnjQZzLhsE+LcJjsCDvpi3Ys7YSt6FDLCIz0waIk
         dBTCo0sKHZia4xa6VdYwbuMdZ6oMLofWRpdbnFgx2ox/+kKKmxeOSQ/T4XLh5WLpDo+c
         8bAPzHN5viCOx2xZbkuMbc2NLxu2mG8dHHQMvlQDorFM0ropHwKGzbZMX+jdSrOs+kRz
         neVPCtIx5sQyRuUbbMtCalJDQTK5lmQt/Wjxl4B7mZu6/Rq3keAXtUUSCIc2umlDMY0O
         ntSg==
X-Gm-Message-State: AOJu0YxVtXJQUA7vCDRDF4X8WF3i2KZf0LzHOO6yMHFzQCcr1J99tm6c
	Hta/8RGL31PMovPlYjqQZqwdJw==
X-Google-Smtp-Source: AGHT+IGHoVufOj4nZYvDHI80PACB0Odp4KmXAYiWrXeeS8aeTV8yPi2pgjfMuFu61pWjHALztnjZJw==
X-Received: by 2002:a19:7015:0:b0:50a:5df2:f322 with SMTP id h21-20020a197015000000b0050a5df2f322mr2391908lfc.13.1700683471420;
        Wed, 22 Nov 2023 12:04:31 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:04:31 -0800 (PST)
Message-ID: <4ebb0e95-933d-4c50-8220-b763698e0169@linaro.org>
Date: Wed, 22 Nov 2023 21:04:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: sc7180: Add UFS nodes
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
 <20231117201720.298422-7-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-7-davidwronek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_120433_164965_243FD954 
X-CRM114-Status: UNSURE (   6.66  )
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
> Add the UFS, QMP PHY and ICE nodes for the Qualcomm SC7180 SoC.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
[...]

> +		ice: crypto@1d90000 {
> +			compatible = "qcom,sc7180-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0x0 0x01d90000 0x0 0x8000>;
0x0 -> 0 for consistency with other nodes

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
