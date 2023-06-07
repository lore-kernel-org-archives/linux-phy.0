Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B34F7C7EE23
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 18:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+HoQjHb63o/tRsvdrcytwKUYUQrHFeSw56CMLjwmrA=; b=pUczZBmWygQqBy
	zt/6uS01KHs2+LJ3SEjUTV9CvabieENAGNkygPccQtyKHKadQVVbUokxiM1OwyEg6TA7JZwnxX9OV
	m00ly9t7IsYgU47NFc2XWO35coNZGkgqvy9F7wO3ED0hOEi6JUBU1gyaRTB3PdTGnsDaQDgjdwfmx
	JWxfro0Rz5n80dbnw4MYN6Jg3RGla+AgzLYMsvMV5KZ25U0qRJXlIMkLKxCbW6PuNhdZjz0gUhHl0
	UInxXbeg5OVoFVcT0yVrWvTNc4Xv4brDNB9VsQ6xK9VeAmjAgbwshHF/PHUoeFjAd4xUpobTlMZj5
	U+oeNW+qOnFwGsJd60PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y1G-006rhV-1J;
	Wed, 07 Jun 2023 18:36:30 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6y1D-006rfk-2p
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 18:36:28 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5149b63151aso2003470a12.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 11:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686162984; x=1688754984;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N3nc7yvS38a66Hs/mYzWRVagS1AxICPdH5Cqth3w9cQ=;
        b=D88sJsHC5TTSdVjCNnP8dKHKMCecaWzVZpY/ySjxfeX/wCpPElfsvttMwSzcnkaj2E
         P4JypKreP1nAcb1QUqZ3pFxqYBhi2YsbZhDmCt9Fticnv8dwQcMwGDBB2/SJidLpZLgN
         73G0VSePPUsBfiQEAG3MeIUSHjhn2BkOR2Xt4mpzMbG+1NUO9B1gMPHED/seiV/xfkLR
         FTIw1eN8jnt53k2LBNOBdRUs8MI1nzP70EG41krrWyKD+/Wy5r9xIpyWAQzhaY9eeKRn
         OH0LovT6zCYnMlPDgkOfT4K3vCcBrsLeSXfxN97zuuucZ6Mhc/Xe8OuPjqJrcB6MKJRT
         qjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686162984; x=1688754984;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N3nc7yvS38a66Hs/mYzWRVagS1AxICPdH5Cqth3w9cQ=;
        b=Wwwq63KMnf7F2NA6EhfVJbKqYJn3Xu4zgJq5VQROTKLfK68mA4pUJmdikh2GpcBTy/
         l4CC8VQWmzlA4tMryRvLEYuH1MwodRvn+UGE/PC+NsCNl8Grd5m2Si0k41ATYyH+tZ02
         30xVj9IMMESkxwIa+rlaEHNWsfXZx0R+6frhhC+1qa4n/VQHu13/du4gsVBmm4r9oLZ2
         pp7kgPeYfzzmZxXf1Y5SahNdPOuWwPLK/GQc09d+ZpFlq5T8iODbB3UQpXNu0FqMoS/U
         Oq+S1WWAjnhL6O0OTnjDkFxOCvuZ1/SmfOWBzzNh9rVtPjr1Cg++Cxh276Fgcj76RH9t
         7jkQ==
X-Gm-Message-State: AC+VfDxfMJsev0Z6LU5uNqCK4E6Z/mcp+Kn8mgvHd1eMtsXuBfYCHPDO
	5KC04IUqyOQwhr20VU9e9VPodg==
X-Google-Smtp-Source: ACHHUZ7nGuEhVJ38jsgvyId2kGf22wlefHu+wUCPOAjlvIRMer4MbAKklw+bmZjp+BFcARuqC7UR0g==
X-Received: by 2002:a17:907:9718:b0:978:8685:71cd with SMTP id jg24-20020a170907971800b00978868571cdmr2751998ejc.71.1686162984584;
        Wed, 07 Jun 2023 11:36:24 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s10-20020a056402014a00b0051422f31b1bsm6389826edu.63.2023.06.07.11.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:36:24 -0700 (PDT)
Message-ID: <21bfe86f-8257-d0ff-883b-bbe451d8f77b@linaro.org>
Date: Wed, 7 Jun 2023 20:36:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 9/9] arm64: defconfig: Enable QCOM M31 USB phy driver
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <55f51785b36b9725fe5283a58230aee4e89b4d6f.1686126439.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <55f51785b36b9725fe5283a58230aee4e89b4d6f.1686126439.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_113627_913173_0A693416 
X-CRM114-Status: UNSURE (   5.80  )
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

On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> Enable QCOM M31 USB phy driver present in IPQ5332

What is "QCOM"? If acronym, extend. IPQ5332 - provide full name, so
"Qualcomm IPQ....".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
