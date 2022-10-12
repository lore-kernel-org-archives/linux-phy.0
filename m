Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C485AC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdXKOhxspwDl2JpNHhyfmFUNZySOuQLkpRniykCViao=; b=iq3cMqXMX+tRcH
	FzcMP/ZrDbLs7HArOgwlAq3d0v6ZJ5dPNlsV8fN6ctrxDyIcvHnKL7PoeqSS4VOubBczOAX/msB6C
	2P0YhivV6a377qxR+0pRCXwMW1d/J+R/8JP0175f+0Rfa/sDOGf0UbgPed1xsAEODS2PCrSPckGfu
	iYuN7EV0xd2TZT6er8hfh2yy6Tfqk3ITYLqLsTfanYB1bK7lp9TpIykD+paz6aw4wQ9K5SfsW0SHF
	IbVoez7O4BiAKO+t95IROKUEOvslTOHE4IF2cnsDf1DBdaxKtv6i+pV6Fq+1wbTAO8QgyBg8Psh0j
	elbj8oh/XyKbKRHZ45Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9j-009NJs-3o; Wed, 12 Oct 2022 21:20:47 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9g-009NJY-TW
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:20:46 +0000
Received: by mail-lf1-x131.google.com with SMTP id bp15so27571262lfb.13
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GdDbWhvoiJRG89BD5dE2gVDakK8t1fMBln1UzYwcbsM=;
        b=QIIPhmOR/ygXMIlgJKv1RuIjMiW0QVo+qOldxt3dYn6YfH/uOsahG0nDfESM2jriMo
         8drnuM3MOXyum9THyjIu7veysUnCsToKz8VnC7v3QCtdTfjwfJjni+j8RMW2uhCCyB8W
         m5lUOdQJmkgUaDEnt62rpti39zBvz3cwMSQUDrOqjI17ys1vzt77gy70XkAXJ0LQ4JuL
         gVT/2PbHfKHaxYG2I0fYFwmYKEZsUveDvgPNLF45sxgdcFyYDtdtPqF7TeT6A0PZN5o1
         WZkLujmzkG8tx3k0zpQJNQel74D/bqHS/z2coTyM+KOBez8yL1Mrswzb1vcG++gH/1FL
         3JgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GdDbWhvoiJRG89BD5dE2gVDakK8t1fMBln1UzYwcbsM=;
        b=y1lMhsBqx+YVldkq482K0Qzz1d3i7HkYp0rv++fcNFL4gy7x5cZqhtcB1ajurbBy8a
         ak2JTm2us6BLT1MAnk62gkU8ANLrVXgFgDW7iawk8IR3ELpvBoiRIoN2COFOgIkDX3En
         QDjoE3+0xwmk3Cil0mJZFyeC/9TasOlPhFhs5AQPOGKav8tY54ehZ/v5FruQFxeC10HC
         KTTZ3lQ55HkPknDJhhaYJEXM91kkoumldjXugqNLxVM/KYinLKWj4S4ubW00IePwG06T
         cnaXwd98bDM0T7xg5/2Os62FD6DkTcSWBseTOmA9OlgHESX3yVr8EPzzjSO283a4u6WQ
         ir9Q==
X-Gm-Message-State: ACrzQf33YCv2XtWLRMJEyr4kqUJ0NIDOa3Kpt+2O6SDwABA3yEuGPSyV
	+dAXGWtGtzgJeLrnUBEIv9FCCA==
X-Google-Smtp-Source: AMsMyM6gMXeXdtMfzBlcF8fU2oRLxtql7KgnWMY2cxlEp3jUEhl8SDun4CtifQhqEFJ4HRDHOohcAw==
X-Received: by 2002:a05:6512:3e01:b0:4a2:5c6e:d88e with SMTP id i1-20020a0565123e0100b004a25c6ed88emr11830475lfv.431.1665609641863;
        Wed, 12 Oct 2022 14:20:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a4-20020a056512200400b00494978b0caesm100867lfb.276.2022.10.12.14.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:20:41 -0700 (PDT)
Message-ID: <e21fbd16-18ab-ffad-2bb0-618acd1d4843@linaro.org>
Date: Thu, 13 Oct 2022 00:20:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 18/20] phy: qcom-qmp-pcie-msm8996: drop start and
 pwrdn-ctrl abstraction
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-18-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142044_981896_0952534A 
X-CRM114-Status: UNSURE (   8.24  )
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

On 12/10/2022 11:50, Johan Hovold wrote:
> Drop the start and pwrdn-ctrl abstractions which are no longer needed
> since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c    | 17 +++++++----------
>   1 file changed, 7 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
