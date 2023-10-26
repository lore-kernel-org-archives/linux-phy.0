Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D05C25B70
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 19:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dPUyB+5lZGitkgLD3g+bCmbijYgQT/Q7cCoY/GO8/I=; b=E+nv1YOK8eNY9K
	l+wufse1WOkSEDeocGYnqoXvlEoHQVSIN6XHjXt3NUjbsw0kmfucNjIxhprHVvnrM+NLB6064efql
	df/Uqb8FN7H7jSSUJd/YuYrnstGExl46FDtmmOCs2i8WhzBuPlpl0tnNhdc4wupf4wc2ZuvrcoG90
	zTahJRsqmSS/Yj5l9zv76G26Z81KJW6sG/x3f58PSJ9p1P/AjGmgZhJrBzgd+Psn6b/YnejjqdAXg
	xvFuX3KswIDvRErjHxD/F6FmI+FHxZFNeoPe0XDEbx+/mqUAsI/O8Z0MnNQocnzLIFJ8oGpnELV4S
	KbpxlhJLgJjy5swYCY+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Pj-00F4tV-1l;
	Thu, 26 Oct 2023 19:53:07 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Ph-00F4rV-2D
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 19:53:06 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507a55302e0so1629960e87.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 12:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698349982; x=1698954782; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AnrGc+MzCjrgVDL/dcvxuUl3durnLyp4dr8xtm7UBTA=;
        b=SJonkIO9U3fjMJXduMuLa/3bilpZdYsnUtfCtj/DZcit/rCSiCqLD59FeEXg2zzhyg
         Yho1YGX13Qn023Go7+wsnD6ABIJZxhn0W1nh+JE3uB1mn5Vo6jTj3sFyqLvk7d23X90i
         ckbxXg6wLqomYoo1I5mpzRktNTc14dIy9L50OZNwt64bMSvulQm/uAhI2Tp67rxulDAR
         J5ZXkuTH/bxPtfgHhgV+L1A07VWKCpLTyE66sVfTLxiXj96c1UpYoeTT62b4SejANK5j
         EPU7uDQGS+VQT8+lSffqK6AWm4oREp9+7NeIO0OoZbtLyPDsqA3fXugCOl4jX2gHlwFR
         HHwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698349982; x=1698954782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AnrGc+MzCjrgVDL/dcvxuUl3durnLyp4dr8xtm7UBTA=;
        b=peTBu3V8b1hhI2oJmLTJA7gzU+XPstLmOnH7jf9vEPRxYt+tjVF4a9xeeOf7Fbohoi
         JPs55hAyZAvJX/UFeVgajigryEhH7z2d6YuOf3m0uqRpNAGkMTHAcUr0+Rl+JxxaLma4
         p+qrremlUZsXDxZFhO5zqhXF9mgvn07rIsU4OFh4f1Q5qpeb1zR9YO1qAvD5sYNH77jZ
         NubTpDUnaJ7UUQoBYQM8L4CX2WAlDZmxjkAXPArwfylM226zn5K/HgOld5Hkt26dcw1Y
         XyaQwXbgLdA8l4aUM/ZTf5HYV4NPd2sZ9FDgyqJQgu4CjFdd/4O9c4u+jUufMWBExFs5
         gRag==
X-Gm-Message-State: AOJu0Yx6YxZe1npCdIzxfq00BlVJOoYjwfs9rXAhKPyKGQbtcukiSnBh
	G6o0LY34StowSnui350n1y6lYQ==
X-Google-Smtp-Source: AGHT+IE2IYNRl5Jz1ahBXmr4SHz+c1HwqT15gHYTCXM43ENMJnQYeuP9qsh+NCTXet9qpBh9BbsraA==
X-Received: by 2002:ac2:522c:0:b0:507:9dfd:f846 with SMTP id i12-20020ac2522c000000b005079dfdf846mr221429lfl.69.1698349981732;
        Thu, 26 Oct 2023 12:53:01 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a24-20020a056512201800b0050096cc3ba1sm3104356lfb.255.2023.10.26.12.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:53:01 -0700 (PDT)
Message-ID: <3bb1ed4b-9add-47ec-bf40-a6ac9b63e971@linaro.org>
Date: Thu, 26 Oct 2023 21:52:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/15] drm/msm/hdmi: switch to
 atomic_pre_enable/post_disable
Content-Language: en-US
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
 <20230928111630.1217419-12-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-12-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_125305_727328_09556A49 
X-CRM114-Status: UNSURE (   5.81  )
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
> In preparation of reworking the HDMI mode setting, switch pre_enable and
> post_disable callbacks to their atomic variants.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
This looks good, but I'm far from knowledgeable in terms of drm, so:

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
