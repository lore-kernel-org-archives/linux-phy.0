Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B14CC47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 12:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0Ai6f9sv8LNhek0LIfwyO4YeQSo7yeQLhJumDoJvXU=; b=a8eN71wZK7JWzn
	QDBUW+N1wjli5sLweY4J0I1LkeNphJMxUljftuvLaTTNLJrw2Itra7Dy00LDth5NAtvaOtmrNpkvi
	FPpmbIzqTa3XR30debdpjYI2mU59ijFtLJrH2F2SZ7gAa1BLnQbEJyFx7PZZc1QOG6l4RX/0/J9i3
	ATjCY48jX1A3BkHOIHi7J1e0tbqz3ts3nr1jyRvz6vtaAHzal4alnEmPOlZHpVDfY5Kh8Fv3UplYt
	dEP0vHi6o/vaqz3DqCi03ueFAOYcBPMrgSOYAJhuzeKLJqUuSAtzzTapL9cRJ9F1sLeMOiTJHypES
	o96dXIPSH+PMrZqr/XwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPicq-00C5DK-0Z;
	Tue, 16 Jan 2024 12:33:04 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPicn-00C5Bq-2L
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 12:33:02 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50eab4bf47aso8181419e87.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 04:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705408378; x=1706013178; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hYW1j8AmJ2yfjMj34Xd9/BLYIzs+LQRZDCyalHNkf+k=;
        b=tZZKK4+E8QtKSpJRLmmML2Ly3PNqnHjgw/n2HumO2PvdqyI53vzpKXod4lc4rrDuVx
         9MrYs/vJDtv9BLkXHEB5+DGWizex/jRFHXkhtd/ekKBkdxOIEbl7VEuxL8B4HK02JJZe
         B16r1IUcFdAOdN3yTDDJi+YfrD4/QBS6ba+Q7mr0pp8hx8LNFYYjzNpACt/VHvkCGKZo
         H0DiN5coC3f7T9T535LOeg9hLn6gPIbuqMWBBpQQKRmSxcGCwd7o1iDAXiG8bLn14TUM
         NM544TC6chEjN6Few4rVEYpGNdLRiGIbKO+aG50Pi47l2alcLfrXcDUuRv/JYgqbKu1J
         UFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705408378; x=1706013178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hYW1j8AmJ2yfjMj34Xd9/BLYIzs+LQRZDCyalHNkf+k=;
        b=jGe6gtHnQr608s6m8lisDKmU2Y+WdeDovYFu98lEPRD9oEedicyzcq0/zEIRjX2zG8
         uI9dVElvqJrzZxFMv3/Eatws1O+xdBgm1pHQ1Ued69ZNLOzgTrAQeceiexEROnZu9kQA
         9mL51uZJhl0/xAJx5HJIzMw3VlXjjCs/i0rwMa2ShRio0n855/MHa/mc0oMFvk0606Zc
         CpWhygk/DPaGwEd6KdMe3Pq5HWC3jBuDV+QnzLFFJuDppYEaUJ1bGgHEAQRyhIkloLRt
         s0utDZCU8JwYi5iJfizBaVxTgJbZRhozOpdhBwapoGZO2gBNpzBj806v4YT7Ov/Ib6/6
         iYtA==
X-Gm-Message-State: AOJu0YyP8DnaPWdAymS8KnoVzQqzIe4tSIj6BhOHealMyp+p5YC+q44V
	/EIB+LEd/MNAryJR3EqjSLsKWPBl6IVp+A==
X-Google-Smtp-Source: AGHT+IHBVsHDGtoAJWdj95FICj2NQkjN6XVsh2kjd01I3c0lrtANH6nBrffkl6x3xHFoYWGY0GkMrQ==
X-Received: by 2002:a05:6512:474:b0:50e:73e8:8d05 with SMTP id x20-20020a056512047400b0050e73e88d05mr4589168lfd.30.1705408378392;
        Tue, 16 Jan 2024 04:32:58 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f12-20020a05651232cc00b0050eca8735dfsm1752612lfg.140.2024.01.16.04.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 04:32:57 -0800 (PST)
Message-ID: <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
Date: Tue, 16 Jan 2024 13:32:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_043301_761069_78B27A66 
X-CRM114-Status: UNSURE (   7.87  )
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



On 1/13/24 21:55, Dmitry Baryshkov wrote:
> The PMI632 PMIC support Type-C port handling, but lacks USB
> PowerDelivery support. The TCPM requires all callbacks to be provided
> by the implementation. Implement a special, 'stub' Qcom PD PHY
> implementation to enable the PMI632 support.
> 
> Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Still not a fan of stubby stubs :/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
