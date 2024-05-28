Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5FC5C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 12:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZ8/KTFwIuIi21BHDFIxfB14G1xxjS67y+JkC97VT0k=; b=tlsiyok9M4H6++
	MNIyWLVP+rowRPUlDtbxNFAysvMEsf+Q8HhqybuvhwNF5wxQFFMvcR+qjYzkFJB9szygIBwcBD/93
	6ZapF2Ekl7yzcUDij+u9qbQexbWjY1H4GH1ZCOp3fI9X4D89VupoWGHhVGkpAopHy6LO5WR/Q9Jcf
	l/0p9lo71knsjRIfIqD/xldzMeAYlWOTwo56YGiGiz28Fizmi8YripO3U+je7GNMIbgM/iQbo6qNI
	+dBwDm9cwRje/Ux+LHul2dG76F/vwcAe940fFhqBjtRZs0EhQqCsA/5zN8f4eVa+NezwQknkKMU7O
	VAFqDKvE70lJkYQwhOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBw7A-00000000cOj-0eIa;
	Tue, 28 May 2024 12:39:40 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBw77-00000000cNK-38p9
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 12:39:38 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2e73359b900so7917031fa.2
        for <linux-phy@lists.infradead.org>; Tue, 28 May 2024 05:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716899974; x=1717504774; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MyyZ1avD99OZmFrk135FGzfKRiqqWoc5X9qTav7HvZ0=;
        b=cyTFvQm1ro5IQXLnj0/ho7V9KcUw678wq0LSM1DIk48QVVXk0E3eBL5Hqqu/eAfcKj
         GTdgGlsY5CL1wYME7HZPPVGeTWqWXGu3Vv/K9kFO3RmWlHxaNkObcWyKltHFGvu2hh6m
         EnuvauTOIj6AeUJ1jw7Yw1c+vQr0uRV04GPewuYE/7f6wJ6+/ka4pHbfpNphanmZ1SFz
         9ulrHy9rwGaxIZQA72Gba6MhWreSxGLPHLvUYClN2f8mtl2y7btHGuu8LkxcjXQFxbUx
         x+H71Sk+yrlg3WNWsDB3ecxev6MyfHVSWx3b6CZc0mNZJevzJO1GFpWKnx7SvRJ/TsK8
         lx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716899974; x=1717504774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MyyZ1avD99OZmFrk135FGzfKRiqqWoc5X9qTav7HvZ0=;
        b=dDRPWBg+z6rOgaqY+dKGu1Cv9TANorr6p4cuGollu/5EQAPeqswxzg1X8DxCPKHCGc
         rifV4JnarQyJpyyXv7vOjEG4vOgmo1j7VV+a4V+DVaA/vh3b2BrEjww7nY3bqf2V/F3A
         a/2YZbO5oyeq+MUfUYktDbGhkdZ2kWfULqN7MMKZI17ZeV5M3EtE6UBIkI7basjkwSHK
         2BVcb6AsSIGMP0G5PMWSuO7OL+XtSQXsf5PYRk67bW48gcec2SG0p5xo9kSiuj4Y9fEt
         PUSCSNbaQ/lpDdtLw4A91N+8qAn69IUyBzhxSuvEHRtWt7uOXSbARL9bTbA49s2kSJKV
         FAYw==
X-Forwarded-Encrypted: i=1; AJvYcCWS1XdGNdn83aV9LZZMzLwz0cRiDFESqA3SMXoDffhSqiA4j6VQ1bmojaSHpLZqHMbufZRZczFhFP49gBNAw6dozCPJaJB+HB5j90E9Mg==
X-Gm-Message-State: AOJu0YxozY3KZ/+R2y4yqslfTMGxunhC6JgYwFinhpNFnCj/wMh7nScc
	CVugeiBrAQ3VcWx2PfrP+TnsCzWjT2Mf3aYjevdnkviqr7GB5aZkDpid7hR8jl0=
X-Google-Smtp-Source: AGHT+IEuLhZJv7qeXezlx8kfsTgFOdfKulgrE/pHZmC8bjKegp4bpVB1CU8ydw/L2kKkl+X6jB3iKQ==
X-Received: by 2002:a2e:2c16:0:b0:2e5:8720:50d2 with SMTP id 38308e7fff4ca-2e95af3493dmr78535451fa.0.1716899974195;
        Tue, 28 May 2024 05:39:34 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e98817eab1sm1386381fa.55.2024.05.28.05.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:39:33 -0700 (PDT)
Message-ID: <a205c018-2181-405a-a4f4-4211b1113c7a@linaro.org>
Date: Tue, 28 May 2024 14:39:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] clk: qcom: gcc-sc8180x: Add missing USB MP resets
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-4-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-4-60a904392438@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_053937_855394_65E87690 
X-CRM114-Status: UNSURE (   7.40  )
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



On 5/25/24 20:03, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The USB multiport controller needs a few additional resets, add these to
> the driver.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

The numbers look good

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
