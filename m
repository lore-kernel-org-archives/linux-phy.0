Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F4BC47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 11:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oinklgMRrSXgpSRc+BSncrllJY1cpWSWGSHRQtLbhHQ=; b=2N/iWYdGY/1lJS
	TKszt98kKoroyHknRDWmsuvXZu1xgUxiYocir0NqXH+yGEcsUUZMzyRdklgwJ++xCS7AL77sE3SRS
	mWcp1nA0Namd3MiP1xiYUK5srVoz7qD2f4Y3QoV78Vxm4BJX8I4eiCFEzZAOzf+b6M3NdFgvQv+0O
	nzt4Api7zzSMrRYEPD3jjaR3sAKb5aO7X/SdxtMykFlbmonNYWHkWmew5HAhdXd20Y6Uu2xd7Z36a
	tI8jg827NUs+xzk6IWUubc9xtMDbZBYv66hggqSvFY8OtBNa3b7SS629a6Pb20lwSOj9KLH+SSBgR
	YHh7ZptWmbTL9j7zh8ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi6C-00C0zj-2g;
	Tue, 16 Jan 2024 11:59:20 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPi6A-00C0xF-0b
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 11:59:19 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50e7af5f618so10664744e87.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 03:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406353; x=1706011153; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjoS+jEPIwKkJhEpZr3ojbVQp7LSl4o83U4xS7GmZh0=;
        b=uuBu7vfz+wZ8vfNo6fC6S3dHfuR/kruXEClUxUkVmNxzy/iwDzghjez6qKW8SDys/C
         Bn/zJD/E70kPnBl1CoT8Eq1flJ63hoNn7gaqnYRGBzMKhjFypaoWkvpTlWNGLXYJp5Vl
         PvWyY0tqvagS693dOBUgo9ClBS7JGEBUTWQBlis6ga8tP/BKQFoJCx6nKQjzdavsdwuw
         6bvFNnmiKC3C8mNQFrwO7A/ew3G5bdzgyt94en0R1piAKcNamGMMWYv/ss99vxPZ2xzr
         SlcX6tQqVMrrAitFWmz4hgTO2guCZ/uVz6PfN/wRff2sjCCFZqM7mW0cyEKdyrcnLaOb
         VpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406353; x=1706011153;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjoS+jEPIwKkJhEpZr3ojbVQp7LSl4o83U4xS7GmZh0=;
        b=cTvDExbjFsv0+eMfuDExKY9ztjH9/wJshBemaMezMFveAGF6zjdh6W6NtwfTZg+du1
         xXbuViPaDFIdGdllA53T+vA3mdAHABWFhITnhKI5BZAAEyd4VuVsKsRjJtxoTfpP5v5+
         9wUk4NNxjMF1zYv+vR4Ol1NAgQI62wSKwbKMA5HbGkANBSmdznL90qKrWHf84YudPa7G
         r9FOLBeTA9AfqLkqub+HCLjmOLjXPtHrY8LP5z+i06KI2JzqiL0dJHy0xV4z7/GSzf5y
         UHzleOEbCWN/DxtwxOSL3oADXlP6Ws4GCOd198YgwCh9eG3W6fkDIkitzVWY4Ljfwjb7
         QXyg==
X-Gm-Message-State: AOJu0YzJgeHE8zgKO4WrOqwloSMIgBaszpkRf8X6+TFgxUNXYHBozItz
	TfJGVQuHwL4Pp99NlA+z5oBbZGZTqS9Fpw==
X-Google-Smtp-Source: AGHT+IEd84FtFwC1Jk5X6Lp3Z7fYVFQ+KCbh9VJGDlRMwoWNGqxysvDmhMPiNPL4KWnty5c2sZjMEA==
X-Received: by 2002:a19:641c:0:b0:50e:6ac4:f1e3 with SMTP id y28-20020a19641c000000b0050e6ac4f1e3mr3121487lfb.114.1705406353043;
        Tue, 16 Jan 2024 03:59:13 -0800 (PST)
Received: from [172.30.204.234] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f3-20020a056512092300b0050e7a2be0f8sm1724362lft.191.2024.01.16.03.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 03:59:12 -0800 (PST)
Message-ID: <b2fbb8e2-e4aa-44f5-9c57-7bcb8adcfa8e@linaro.org>
Date: Tue, 16 Jan 2024 12:59:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] phy: qcom: qmp-usbc: handle CLAMP register in a
 correct way
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-3-73b2da7691c5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-3-73b2da7691c5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_035918_221183_6D6DB208 
X-CRM114-Status: UNSURE (   8.88  )
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



On 1/16/24 02:08, Dmitry Baryshkov wrote:
> The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
> the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
> register in the TCSR space. Make the new phy-qcom-qmp-usbc driver
> correctly handle the clamp register.
> 
> Fixes: a51969fafc82 ("phy: qcom-qmp: Add QMP V3 USB3 PHY support for msm8998")
> Fixes: 8abe5e778b2c ("phy: qcom-qmp: Add QCM2290 USB3 PHY support")
> Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +
> +	/*  for backwards compatibility ignore if there is no property */

Double space

Looks good otherwise, I think!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
