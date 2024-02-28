Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C64CC47DD9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 17:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DEyPakQbnQoSUTPuNup6q20/EbjxR74BDLVEoypYAQ=; b=HxiP5jWkYT5ap3
	rx5yj/BizFLYyAD6IPzUFEDiZhOcRJwas39Qo2JWzVwRJmDRaUvEAinljCw0+uL8I0r6mNxMzHdaU
	kGDsk2wTvlKPUrqRrChkZV+YgwKsZu637EZaMAxOy+SCfogS8ky56Olt5qGBBksAVmpCWI3gM9404
	gD4tda6YfeEflb+szycnd2poozgfhIuZfS336T+UGWF4rgKtr3CVdWE56EWunlf/vKPJgrBckNdhm
	greake9qrILpExUU8Pblact1yRBseAWd2R1/XkUVu4B4UteLGXIUvBAe6DmLVvXvmwOl8QWVNWoBV
	tCZhg7BuhgjcLQQ0awWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNbM-0000000AGjI-0FwP;
	Wed, 28 Feb 2024 17:20:16 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNbK-0000000AGit-0muv
	for linux-phy@lists.infradead.org;
	Wed, 28 Feb 2024 17:20:15 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-512b3b04995so5758966e87.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Feb 2024 09:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709140812; x=1709745612; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GTtoNXU05+3x+sA+PfVAb7gBpkSmywqkYgS428yH0a8=;
        b=Bw2wgYj2WvR6ZQBKQfqzEh4sjxV1SgLHbVklXJXgNWdPRmZI9x35e5Ou15bVluNNGm
         PqGIZp12i8GmU7LRNhyLzd2xPY6WIKGtnPluV3qfYTAm13CNTUbCL2Hzfv/dbrwn/Po2
         i/KU657Pe1MLCcUqwrcyy/tQNh6/pwC4akSAfmf14NrwYyMtcB/khj9kNMIEd3CJwgy4
         azymdFTlKUcDENN2UDuiti6YSd/KU7TQMAW3XqBiGw31nv+la86JUprET09MV8wvopZ2
         LRcgW0ceZJRvzwaTm8d5OKAo/eEIGwHUhI04Dfa44Pu7aa/+S1A0o8IzE+k3TBvnOXsL
         VlOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709140812; x=1709745612;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GTtoNXU05+3x+sA+PfVAb7gBpkSmywqkYgS428yH0a8=;
        b=rM5twEACPvuppvEyloAgoxs4RAtFsdm7BJXu2qy4/sC0A4GREsqSAmFo5bRLDajupO
         FatplcXwvk0O2HeBtGtq9UR5agusE0+zfgpq8ovc7d5M81ZHW9zeO7/xaEE2zVXsNvtu
         NbkFvizL5sR/I4UPK+HT2U6+22maNF/uwxLkNYgqccuwx+2f6SApQp3ana2KH94q00zx
         jpeU9t9nMi2Xivl1DtphxEU+bvoAY/DcSA4tNyvaCMazMvspF3vleWcgTg7934gP3ON5
         H33HrjB0vl7e/NugpMPC7jJPNy14z2HXz09nJOvNxw8xtqM3wipxfpbx0Xk4soZ3L3Ak
         fFxQ==
X-Forwarded-Encrypted: i=1; AJvYcCV22OqCWQyPrpKqAWqbPDejs9344Ua7S5Iz4H6FqUSxa0ZV+gPDNT4PnlDN9cAcW/iFxpsXURGRHFPpzHCUM/iwkFw9faSNlN3t5/EsGQ==
X-Gm-Message-State: AOJu0Yw0zFdmxze1696LE0Lh+/jo6NXnrCSz+J+RydVqyAT7DX44+e0C
	HwmjkgJgMZ+TNaQ0jrLq08wTaOCFPZnL8X69nXyauRkrR0+rGc38xE0hjA9hLN4=
X-Google-Smtp-Source: AGHT+IFOd+Zu7qeZ6jYL8j3/S+KSJEaWE5dSNrBJp3nEw+bc1IMqD2pna0G9xWgzNH2yGakVHP+ZWg==
X-Received: by 2002:a19:5506:0:b0:512:d06b:2804 with SMTP id n6-20020a195506000000b00512d06b2804mr193921lfe.33.1709140811931;
        Wed, 28 Feb 2024 09:20:11 -0800 (PST)
Received: from [172.30.205.146] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id j5-20020a19f505000000b00512daaef13bsm1593760lfb.102.2024.02.28.09.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 09:20:11 -0800 (PST)
Message-ID: <04b1c7c5-37f3-4673-aa0e-8c39fb5fce7b@linaro.org>
Date: Wed, 28 Feb 2024 18:20:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix duplicate return in
 qmp_v4_configure_dp_phy
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_092014_263988_88AB9B56 
X-CRM114-Status: UNSURE (   5.06  )
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



On 2/28/24 18:05, Neil Armstrong wrote:
> Remove duplicate "return 0" in qmp_v4_configure_dp_phy()
> 
> Fixes: 186ad90aa49f ("phy: qcom: qmp-combo: reuse register layouts for even more registers")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Somebody was just trying to go up 2 levels up!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
