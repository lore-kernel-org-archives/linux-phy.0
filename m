Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39974C5478C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 23:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwI4dv5B3lE6hKKZe9LIu6MV2Jq9xAeD9UbcXm6tQy8=; b=MR5Eg8NlaSWTIR
	WIZg99pnyKNP9s0dyTTZYp0TL1PA/t+uBS/JcMr35ke22XEUFwzgZgnQ78A9SlPTDslqgWarIV2Uq
	hF/CBO3sNfWVK/kDDIAzRQ0FCGpdwbzH3sPW10e/e+Fb4QQ02FNBCnIgT73DtHycfsI59SLkIzHOE
	0koWJbAi8ws5CeH5Gyrj1hVebRWWT8Wcrq6taV1h0P3aXbkh0dg1G9XpBHuqbjt0Cskn5xZULg13y
	n00ockD8sLreGOfG+hsS/vETWVhPEAD+2+aJEkZkM3zceADWST0z7w/y7P63S8B2UQPvIDjMSH3e7
	iSbAXAsGWbpflPDwfZ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfTKH-0000000BHRz-3nXe;
	Wed, 28 Feb 2024 23:27:01 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfTKE-0000000BHP4-1Wwx
	for linux-phy@lists.infradead.org;
	Wed, 28 Feb 2024 23:27:00 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5131316693cso293670e87.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Feb 2024 15:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709162815; x=1709767615; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7eYiCisy9EvDzPpdsA8EnqFrzrb2WGQGdFzfYxWz3OE=;
        b=NjYetaej588CxOBD3QmlDScEZbIrvMbMGpmzhYAriwvGHIWuTSKsnifeOv/sjgc399
         lAXmpo3mXlXc+5SE7zT+1rVQ7gm/ydpSJ9CkBBg7Dj99HjQc+9oO/1+mPQxhAyEKJF9h
         9R6QHhfMvpacJHcCXiPK4okIE2qfSupNjjRvzbdysGbh9oCtGadsRKbpR37FTLVmaCwe
         JcHlHNcAdIUBvjpuD3HwHaxVrrtbisWJT0R2jUaPTZioxRP/gKDrSYLrZRZyyouN7lbe
         90MgxSb1KG7nNCfMmwGA+En4e0gdG03i5omE7+Qik+U1a3dZBNikZXcoEwV2pytmvOT0
         ZpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709162815; x=1709767615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eYiCisy9EvDzPpdsA8EnqFrzrb2WGQGdFzfYxWz3OE=;
        b=fCgAg4EDFz4seqBrZdjqDxLSCDCn1PpPQgPTEwxmjPeq+ja39av8UsX8aoDwjGt0h4
         sBcGsVjF3Zegy4KZcVYnG5FYThNGjTutSxsAnaTWqOuJxaIg7iDj5fiqOf5sI8oiVskl
         zWTEFCIe9xZ7uNujtz7i6ZHEHSxpLXiuAE+n8/E8svNdTIMhE7M6dUpBM8dwJSov6PqQ
         VkU2evrjWPWXc54psAnIpkuaArlDHSEaxByiJbMaUu+9maJaaOwrQEPdamsVQnx/XTRx
         jv84Hp1Wk21ckBP7W20ytIF1l661hVcU9i2KT1oBy6Im3Th6cGTEXP7E1OfQdJcmhhfN
         JTWw==
X-Forwarded-Encrypted: i=1; AJvYcCUe0Ni5euGkvhBugm1x7l+2RNenWVNWJIdx+6EUHXgSlwkrgKIcDGbvrhS3Bko2/JWqjZCSVIz7aNurlruBj2X2fW4D0E89G1frFl9djg==
X-Gm-Message-State: AOJu0Yxhej0ayDSmizhaRsLnciMOq+XQC5YYAkeSBgZCRTrKWZf58UDe
	XjXBiyHtnyRn+mVcWyNkBYH/HjRfPkbt02TCB1npQ7IHJhjZ2ny1M53fn7adrso=
X-Google-Smtp-Source: AGHT+IEauPA8YU76AZ2HWn9YzhqJSaQh/sxY5dBOq9kCUqmFc1a7D67zChdJwrqxqulBHP/Mq3mKqg==
X-Received: by 2002:a05:6512:34d3:b0:512:f6a0:1311 with SMTP id w19-20020a05651234d300b00512f6a01311mr236650lfr.47.1709162815082;
        Wed, 28 Feb 2024 15:26:55 -0800 (PST)
Received: from [172.30.205.146] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id j10-20020a056512028a00b00512dec300dcsm28686lfp.2.2024.02.28.15.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 15:26:54 -0800 (PST)
Message-ID: <c25aa425-f350-4ad2-b92e-67de996daed3@linaro.org>
Date: Thu, 29 Feb 2024 00:26:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] soc: qcom: pmic_glink_altmode: Use common error handling
 code in pmic_glink_altmode_probe()
To: Markus Elfring <Markus.Elfring@web.de>, linux-arm-msm@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Peter Zijlstra <peterz@infradead.org>
References: <29b63eb4-2342-4ca8-a313-5de2a6ec6a83@web.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <29b63eb4-2342-4ca8-a313-5de2a6ec6a83@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_152658_618515_C82FB4FC 
X-CRM114-Status: UNSURE (   8.90  )
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



On 2/28/24 19:05, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 28 Feb 2024 18:45:13 +0100
> 
> Add a jump target so that a bit of exception handling can be better reused
> at the end of this function implementation.
> 
> This issue was transformed by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---

(+CC Peter)

Hmm.. this looks very similar to the problem that __free solves
with <linux/cleanup.h>..

I know no better, but wouldn't the same mechanism, down to the
usage of DEFINE_FREE work fine for _put-like functions?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
