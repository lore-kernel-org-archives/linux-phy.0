Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D0D1C4828D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Feb 2024 19:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3KMq36WEqE6OAvAZWP4jT/gZzLG0itw2OWpqfG3rEU=; b=F6Crwbu7TjO9KB
	7x1fP1pfRcWSfMUz46vVldIrpP+eEEXPL6isJZjHRWesEq8M41MbwMBP+DeC1+gR/m8//ltuAk1mB
	U3Ly9fzv9TK70tbVoXRMGOnPdFyEvTV3D7MIVMHOo9NJaIm0FHQhLiXPLqOZKgkAG4HakO3ChTLKA
	0yEGWdRaBbMT/gZUMr3SVtR0J8OqognsgYXFTwYXR8b4Py4aI4BqyW0Gl4WJaEZbyB2L93Uv4UH4G
	eTUUxaUvfpGHwn0Mm3AlraOn6on2dYPnqrsdql1LKTLxgT4+2vJesGwdGujHopjJm6I9G5DqOAj17
	kfoMahyGm25Z3l008QTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcYt-000000098k1-30sx;
	Thu, 01 Feb 2024 19:17:23 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVcYq-000000098it-2xz2
	for linux-phy@lists.infradead.org;
	Thu, 01 Feb 2024 19:17:21 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a35385da5bbso235617166b.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Feb 2024 11:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706815039; x=1707419839; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CsZcImjF2+pH1KCbHt00XrVx5lcTjvCoapJtuOEFeA=;
        b=NjzooC5XxYQ37w1NS7fD56PUexnw0PHSlnPcjTsKRPGiZ5GNA0TYVgJrz7SLE+aK8L
         SP+4wIdj2FiV5oHrqkLujnADhs0WgEo+UjMMXSQ3wBvp//s0Pnj1IMyAYp65GeX7LEG3
         7pXdXZe5IqRdb+EpidNrJu4sfB8ihFTtsrqapeiX1iwz3lBUCNHXcUD9kEYXXIpVyMJY
         RoTbSGlurZCNciT2eJ2+qvsgXt7mCz+qBUWpO5+qM7d0vVNMSrDbSYyzp4itlaGpVjkm
         8U7jgjuAH3fRbfhaGlNPz6ccgU1idCLo2/UeTfVrYv2prhd1Y5OcXz8p7U38cDwtOTpb
         A2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706815039; x=1707419839;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CsZcImjF2+pH1KCbHt00XrVx5lcTjvCoapJtuOEFeA=;
        b=aHjF4s6aED/PgOgJXLmFkXJTp2EFHPPc+DOPZMVaAAmlYQuxfM5Rh7L1qRi5/Qss2/
         PUMjFhVN5ZHdY+5tEE6bCBjTJU7VXkqihfCHa5lw1Fv1xU+CoT3WE1EaGE6qxtayOQJf
         bnLDcoEu/PCd/W/otPubklQIyNGIkmLr+lhtr4IHru10+LY+pS9er7zRrDndIBgqlRII
         at1kg2YU+R3SF9QafSnjuaSktI71/vwpkicmQfFTE0I/1V6OXFTfPMeOmRNb/0ROCelJ
         k3TMFaotEGYGM75P5Ms5fz8vIoEQmhUIYadE5+W5KUhbFmDypDUTJdBfomZHKZgY12Pb
         3Jcw==
X-Gm-Message-State: AOJu0Yzr/1+tHgQGk/WPXZQkTUabyeYmwWXpUVAvH+xj3J7lO3KE16yt
	TFQS8orH0UJDh93mL7gCpUykHL14gQW6E+zj2y64X0VvOwiJsWd3mm8U5Yyzuu4=
X-Google-Smtp-Source: AGHT+IFiE9QQ8QoMvyd0AOwB6JqvdAO3IwQsUgYLuTbdqDH/hXq1n/RSDh8NACUJ2wkaCdAePeBoSg==
X-Received: by 2002:a17:907:36b:b0:a36:696f:3e20 with SMTP id rs11-20020a170907036b00b00a36696f3e20mr35819ejb.66.1706815039017;
        Thu, 01 Feb 2024 11:17:19 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVdEOF4uC2AlRgIAOqNIxc7ER6QvNRDB9SRk+rYaB5VFOACQEP/kc7mhEUQxhRcyf1hPVZwH8mSigXgvRbXCMhzFkqPoV81wlIDM/apPqQoO4ZqLHtWgSFgsSZXlqfNFYZsUky9s+vMchkKW77yAOzpq06/ID/tOlKfisrv9Vo7KfDvZRWOWSWzHehabau+d5j9HmsU1upjrYOsvM5y9y2R/de7WePblAYlbGWlVIP3KwNAMPENtgZIzZF4uxHVcSMsazt4ZQ7lE/eLVM4AghES7iG43LC1+tEEi1V5zxlBZU6qywvHvCWuk3WkrXB3gwuhI+SSoWGy+71KjdDGT7/VYm3UiC+0qxk4/g6O8R06y+UnGnTj5iEhf78PLVUD4yP7alyODrgbBbNOGBPofRxnbsxEo7aAMNBHgKZi+rFguZqzv4IButdv0qcfGitKH6OY2JBg8LDH7EyTzARdismyoOIas4zM+ZiT+JdpgOqdQpSGCzgYrxg3QNHo7Apv
Received: from [192.168.159.104] (178235179129.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.129])
        by smtp.gmail.com with ESMTPSA id vk8-20020a170907cbc800b00a36f8fdeb98sm23088ejc.59.2024.02.01.11.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 11:17:18 -0800 (PST)
Message-ID: <edee0b14-abef-41fd-a88c-3ca125b384d2@linaro.org>
Date: Thu, 1 Feb 2024 20:17:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 17/17] arm64: dts: qcom: sm8650: Fix UFS PHY clocks
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, quic_cang@quicinc.com
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
 <20240131-ufs-phy-clock-v3-17-58a49d2f4605@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240131-ufs-phy-clock-v3-17-58a49d2f4605@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_111720_781277_FC3635F7 
X-CRM114-Status: UNSURE (   5.96  )
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

On 31.01.2024 08:07, Manivannan Sadhasivam wrote:
> QMP PHY used in SM8650 requires 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from TCSR
> 
> Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
