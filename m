Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88739C47DAF
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 11:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Kyfov/lmHzrcGIP6UgGrdFcxhOpGjPyKC3aldUSkaI=; b=iGl2iD6buEynME
	jfFInokyNVNnlDfVH2DHkVBS+8kv6WZu/vOd4i1m/OGWYuH6Kci5eN8jYAEY0rybOOEOZYpo4YKcR
	I8fE+EP87NzXNuqfDZLLgPn4QzchZFlOuRyzxgmgz6hVQZbfK1VX1Tg0CStfW5dwdkafRhtWDNIGo
	dUNl2Lt3ifacK87xrCuw4sqoyeRptppCvydv6STbQNrstgC0aeUj1sKpKNOWseOA3OnOCFH1r+tcy
	G6oLj/b13tSBDgMuFu+D9csiRu3UBjSmfA9qdhEc0s8LhoI+ewVFEsVwRTuFi0HPXkTjxRQT0CWs+
	/8EOKr7s5zflNhKQMD6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQUA-002b3q-0W;
	Thu, 18 Jan 2024 11:23:02 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQU7-002b1M-2X
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 11:23:00 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50ea98440a7so13080730e87.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 03:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705576978; x=1706181778; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F3NU9q8fuPwXlNnVUQFM2gOiciw/kI2Xh7FbvsGDomg=;
        b=EjfpkKCJibNdA8sBf0r+lR9l4kqNWy4SqQ4cOQWisyiS2Nj75hlOUVZs4oz9qHjFCH
         8H8aQ2t7ST1vsMO4+/V1GWDJwG51lG39zvzGJoXSyM5k171G/OzBi0E/5i1HQ1g5zv7i
         sqeYBOs8/VQmdKSPKTz5hrpYlAVtNBcgT3RSS49tfXPujoMQH5Pb9XfiemX3Tf04eRvz
         FJFQc0WexFrI9Wts4YU929nquuaCJlbDl0if76S7p+xbZGAhmJpJlXJMpTbaVjBwnUiW
         rsj5+Uo/Jr9ilBm8l4Yn2/cM/1WaPgcRH3dlIdwMmXH80tLuNKskUk1JfCsLXgJ7roky
         p+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705576978; x=1706181778;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F3NU9q8fuPwXlNnVUQFM2gOiciw/kI2Xh7FbvsGDomg=;
        b=hB50h9kv5b8XktbCBpIN022PAQlcqTGa9ZYZivWHvV9UoQHI7okn4pThTxo3I8o5mt
         yiLKRSy0I9pNvuoMuQG12CGVj5K0ouvo8/keoikGsEFM4FiNx0hClCjXZGy1kMwrBDKP
         kM+vbs0cy69ffQmgyoTsLMcklmz+l7zbNSgGijCQ21IgNBYMJlRqg9BQbNg4dwY5a/wK
         N4BaUvO4bo6AW4QAAPdK/21/wJnxOAeUcFsBdUNMr6WDs62iJKEFOMaoojeRdefwAVd7
         CUp8S/hYJ7l/5e+i4rpbApTL+Cy9Ttfc0bxSQu7dJg00NopFE6HNU4Ez5LOz4gmI4B4r
         rr8g==
X-Gm-Message-State: AOJu0YwqG8Iwf0rYNVKm/4KhbF+TBEGlPSxP5oIL8Jwwy80nepnux47Z
	tTeKmFBq0kleJYMB9PQH+RVWv5XMWbJHv+tmyCtf9JKDq9+6qwkhdsdcxh7ikqQ=
X-Google-Smtp-Source: AGHT+IGpz7/Cd6gh50m4lJ3awX0TdDg6mSlWBJ8XYZR8tkLeiQeIbKJcfJiuZW/OCLnj5uYQg09fKA==
X-Received: by 2002:ac2:5045:0:b0:50e:79a5:5462 with SMTP id a5-20020ac25045000000b0050e79a55462mr294204lfm.199.1705576978267;
        Thu, 18 Jan 2024 03:22:58 -0800 (PST)
Received: from [172.30.204.173] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b0050f147c0244sm125917lfm.292.2024.01.18.03.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 03:22:57 -0800 (PST)
Message-ID: <cd792296-2510-4b45-a90e-a0bf3a8fda62@linaro.org>
Date: Thu, 18 Jan 2024 12:22:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: sm6115: declare VLS CLAMP
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
 <20240117-usbc-phy-vls-clamp-v2-6-a950c223f10f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-6-a950c223f10f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_032259_825503_A1F2C159 
X-CRM114-Status: UNSURE (   5.90  )
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
> The USB3 PHY on the SM6115 platform doesn't have built-in
> PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
> via the register in the TCSR space. Declare corresponding register.
> 
> Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
