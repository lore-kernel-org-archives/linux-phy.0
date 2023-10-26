Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F8CC25B48
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYy4ss4kEgwesFIaHyHKf3dxtFbR4lCVUChw3w95vko=; b=n+Cru6L9NZScsR
	rZm/3Ynyd1GzLbSbjCMXdbScqvJRK3q9GdsWWT4jWvuzjNxSQgATSLTGsyFVVNfETD62DXqiov8pM
	l8ATlu9QSZgGDcRDk7a/5stZmorTmWduSG+TaCDwkV2E3Ojn34AJOE/2d2YN7qVDTk/+qX95OumCR
	JaEgxay+xwh6t79KMmSYWVCMt4iftKkbQsU5GlTkMVrRFfI0PF33fRQax4bYyyIEWj8jNNu+kxG3v
	6KlAZ6Az/zezRyHOPHligODzJJuLT5hzhfxDML3ieFQnYhNET5iGoZtb97CzP3HPdrcT6g4XVETr4
	U3JBKAr4FVuNmNd+TszQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Rq-00F9CC-1R;
	Thu, 26 Oct 2023 20:59:22 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7Rn-00F9Br-13
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 20:59:20 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32dff202b4bso943500f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 13:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698353956; x=1698958756; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eJ45MedtW52f9J0KjPN0wsG1dfwZ1/8Loy/GooxEfbE=;
        b=nw+x1h1nAQz4eIcrP+Wot/AZHypEwA2OJNDZ3F2Vhery7GU2XYF5TjZHfmcXR138HK
         0B2M81S5lTESbu+067VEImI/VW49ud5eM3k/wtoSRkXKLZI0QcrPMVFxcfuSF4wqMaBH
         9tqbgjxq5p3JXPnXevDOZLcmWG5hkXZjsVnTpRDaB5At8UvnbJmUyPZ1ni75f2gVJKEZ
         8TdqavmGw3XUzQEh+K9ShuELTHEbm2na6GrQVuIBin7U4E8Nc8IMZpeqPCcnCF+CvV5n
         77Iw37AubvkbrkKsDtDsm2DlWx1YkDtLZZi0NYgQmkaJLOvLcVE78+an2vEc2jMMrlxO
         U6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698353956; x=1698958756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eJ45MedtW52f9J0KjPN0wsG1dfwZ1/8Loy/GooxEfbE=;
        b=XN+28IEYuPoZM3c7TGnovLsYJWKN1FIJZlXiPe0+Gv/z37bGPlXtInJFIZN61zihH/
         UClC69lmrrptEvu6nt3ypCpA8xjti1BaMqroa7b2m5EzQUPuqGllwxnIA8MXkhp3KVJG
         0ObDgJa+QR9hpF9JPyd6umORw8a+NnFeVYqWb7zxvtXTmiIWwOLYZKhnFdRffIVGFxgc
         5Lpk6uwfip1xAVdbx8gsqaDow1E9UwFu9vw9o+N8buvJZBretpcQv1RBcQWNmO2Z2zXy
         i8Jg3JQFLJf5fY8HFySzIJT5ZszZy3IrBpL2+yfRkwVbhiyu8AZc6TIwUlly4bcaqZ1u
         kOPA==
X-Gm-Message-State: AOJu0Ywd5ARSy9aBLUz/wp+94sN9UiV996aYzK8VbUwJ+b1TguRsMO9g
	61UEcpCs292IxOeGhByScVdOfg==
X-Google-Smtp-Source: AGHT+IG1m2LzUjFEXtZczRmxlxINkHg+Jq1D1mGg5ZDH5g7+z7SoUtG5Oaey8r/7wyn/lWQrriixAQ==
X-Received: by 2002:a5d:62cd:0:b0:32c:c35c:2eea with SMTP id o13-20020a5d62cd000000b0032cc35c2eeamr519578wrv.6.1698353956213;
        Thu, 26 Oct 2023 13:59:16 -0700 (PDT)
Received: from [172.30.205.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id l12-20020adfe9cc000000b0032dba85ea1bsm235247wrn.75.2023.10.26.13.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 13:59:15 -0700 (PDT)
Message-ID: <753148f5-d68c-49fc-b1ef-0f65eefe6e4c@linaro.org>
Date: Thu, 26 Oct 2023 22:59:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/15] drm/msm/hdmi: switch to generic PHY subsystem
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd
 <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
 <20230928111630.1217419-15-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-15-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_135919_387325_A6F4848A 
X-CRM114-Status: UNSURE (   6.86  )
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



On 9/28/23 13:16, Dmitry Baryshkov wrote:
> Change the MSM HDMI driver to use generic PHY subsystem. Moving PHY
> drivers allows better code sharing with the rest of the PHY system.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Looks like this will require some atomicity with the phy changes

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
