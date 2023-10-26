Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C7F4C25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 19:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1D7S2I3uSb5dSchwgMDAemLDUl2Cx5KX2wvZ+FPRro=; b=oD7GERf4T3pZWo
	+yWVin+mGRZIdxgciJZEnpE8k87059JlE4m7IZlfYD4/E5qaeEJ6julUnhsAVUdHG4Y9ezV+RqqRQ
	c2u2fo5DYZ2VekRxBBoRFOiIJ+UkGzohbTsHW0BAONntJRcl64n6dE6lvyL3gsyZ5eqdsymwEKbDx
	eIBqgHqH96GuCkXC8ysyiUtCmMoU0dVVULFco++Oz3KhZiskW081Jha1BPkDYJ6N/eZP+kvOUE+QW
	fe7S5sC4L6mOktKy+LjqbukOwvp1PnfutvRTZVo9O0n3bZA62leVzf3bqf0NRWrbprzu91mTJPm5U
	p+3AGXgJBr8HmbBlN9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Li-00F4em-0X;
	Thu, 26 Oct 2023 19:48:58 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Le-00F4dX-2n
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 19:48:56 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c4fe37f166so18208091fa.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Oct 2023 12:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698349730; x=1698954530; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2r/etm+lGb/c7igmaEGkdQXKHCNWHHVJlTP4t8HTdMk=;
        b=jY4ojGolHgEYVTGMksKuHGZGg6aDD2rCWA60KspCxvSHSTwI73dKYAA3NK4IrWWRk2
         7kBok6/fquyRgysuBYsKoEn46I80BjQeYOYTBEHYAQADXeaMF+XzqLfxDo8O7xEHUgPe
         /H5IshQjVsC6Nfg3xHP08ZWDUZZfjyHu4uslqSA4Z726EYxnrghxXs2ElEW5cOSEiL1D
         tG/5FS4svOdSY5gLkHyOe0pNPOzYsc0XarifCn8tA/4loAmi1EnQWxmTlGNRUKJbAjm9
         u798oAeD3i/xxqYq4rZRS3dDnFzhPbuNBoGVHDnqZJY0ShjQxChPQ2utHjuLRU4X3HwB
         olzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698349730; x=1698954530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2r/etm+lGb/c7igmaEGkdQXKHCNWHHVJlTP4t8HTdMk=;
        b=hsBqmNiiQWxLvSW3wu2kQaJuOaUQX7eqrMczOZQenanje9appWs4jvp6VHEVmf4WJE
         6Fy5yDppAeaLYTM0mgtBZ3FcwovdjviQK8+19SQt+0HZLmOQCDCbYCyEFYDfDuHrUwuK
         dvkpuN3wDTPlV9F1iERCIghTYTUeS6wOz/OjkQ2fBfkcmWzRlqkksWSZjVlG6oGbdOta
         jDS8YWxAPWP4Dyv+Zx26yCr94W33brqibkrcTfX7VZWLiuA2yFkATNVx3sndLktGveIg
         y1XE/6EhNcxEmNMJjObnfioisXVXrMxldSsi3B4fY214bHCjv/2tX4TOPcNJT1oqCRf4
         Pshw==
X-Gm-Message-State: AOJu0YzHDZ+4P70bLwrl7zLY1vwtZaDoeFnEkasy/8x9qswF11KNvp9d
	pDbrm1YsAlEMp03L7R5hEdHnQg==
X-Google-Smtp-Source: AGHT+IFtutowcYecVvg+FvFfwTHyeYjPCWID/Y90bjxIQgePYnYiIzszx0treswzBdc4bCEGpm8KBA==
X-Received: by 2002:a05:651c:333:b0:2bd:d34:e1ef with SMTP id b19-20020a05651c033300b002bd0d34e1efmr446256ljp.3.1698349730076;
        Thu, 26 Oct 2023 12:48:50 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id g17-20020a2ea4b1000000b002bcdbfe36a1sm3014040ljm.84.2023.10.26.12.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:48:49 -0700 (PDT)
Message-ID: <2eef6684-d0fd-4302-8444-cc5e5e4fa75c@linaro.org>
Date: Thu, 26 Oct 2023 21:48:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/15] drm/msm/hdmi: simplify extp clock handling
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
 <20230928111630.1217419-10-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230928111630.1217419-10-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_124854_918179_5EF32A31 
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



On 9/28/23 13:16, Dmitry Baryshkov wrote:
> With the extp being the only "power" clock left, remove the surrounding
> loops and handle the extp clock directly.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
