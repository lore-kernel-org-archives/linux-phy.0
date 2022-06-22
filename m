Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E24CCA481
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vhbr7pMnpKipCHnYY5RiVCOCCekARf/mZvp2cK6CnVg=; b=yr2LVED7OAZCNA
	/ZBdEDfVcjin3CmXlHJBsifr9ZiRU/SwqTzxJqgQJMnTOBDsrKbjVf9jNhNoAxX6qlZSw08xa6FRg
	Dz8kIyCj6NvrSWtdlidLf0jzcPf1r5l719qIpSaynC2B+6DZUrsZANzfNH+Yh5dz3ZPwJyoYdlqOu
	8L5AKTmkoklwe2hqBWjb0qQo4xFNjV8wHjPMasIuqwJhcIU6Su8z3zIpbirIRYkGCBs8bH1AWF35g
	bnNlKuddZ3EF/FMCkj2TzjcutxUrA6g5e0hVHsrE0fgc7770qV5QKDmizKMPm71ivRJ5ns8I5Jp5h
	2/HoWqxT/u2ffbmFwauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44hq-00Bqb8-Vv; Wed, 22 Jun 2022 18:03:58 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44hQ-00BqFI-7b
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 18:03:33 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a2so29108371lfg.5
        for <linux-phy@lists.infradead.org>; Wed, 22 Jun 2022 11:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZTlj82E6kifi0yQhK+5fXqesjcyWHjDoPKb8Xh0tWaM=;
        b=YPs9zoXTZdCCgy6mwDaLLCe3YJ1nDLJYlFsLY0uB/WaPNWnUwxUBc+MtDtbsjeKocu
         LMvnIlwFtpMsYsE8ZyHPS4PaLaP4HcMROBXckCicyevRV/cByI0U04OV77xamBr9ZugX
         1vt1KR0NBizorFEvz6iPuh1BN6LmBC8qw97dqTbfg35KqhJCHB/BNpFz376kCDaeXsai
         Txdp5bTI2FUlSimWgJ0MPsncJig43DS0TwRrnTbQaLWqRLPQP09fSwCEpKNJI/7E30mm
         7L4+BEtYtm0MJ9ZJctR9TOLEinkeOnw1EU4gbPLbv4XCDftefTceaV2Tk7JOrppz9ByX
         fY0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZTlj82E6kifi0yQhK+5fXqesjcyWHjDoPKb8Xh0tWaM=;
        b=dKrPoEyENygksyr0K89p4tpiytq5Th+Ndag5kTkOPSozeNHvrYilSTFnLuYNoIDE4t
         sye9+rjPwD/rwMh1O7DgBT/eSK7rpYcyo0acyPkSt5IP3tKm12s3s6zn78qtRCaZ51PJ
         WDtNnBs3yO4q3sklJzfS3sYMdTYs78vNHYN6d4jDNCOOGP9B1uckgPdq2fvfwEldDhWh
         Ii54x0hrzXq8XjYmp4mRzupsiZd+oTYc0gbn1BeH6a0qJJ/CyV90QYFbY2sQSrqOlH6w
         YZNg5LY61/PysbRzbbqJ/9AwIckD1C6rVMq4qGbXZVy7IQ1wdRPCl+liGUhUWAkcp2hM
         Y69Q==
X-Gm-Message-State: AJIora/Y+2Dnhb7L7sGdoYlu2fHKIdovdHQFF+i7fniL8XJ9rYlq2Fhw
	ncUUJy5mSyHnqmbV3+6lEY/mFQ==
X-Google-Smtp-Source: AGRyM1um1hIN5A8SQyQ5l8LM5tA3p+87QUOIBbIhZVlEqLdUp6eNRJ1nKpR+IJ+6NHWSX/0tvLXbjg==
X-Received: by 2002:a05:6512:16aa:b0:479:7df:cb68 with SMTP id bu42-20020a05651216aa00b0047907dfcb68mr2742433lfb.666.1655921009223;
        Wed, 22 Jun 2022 11:03:29 -0700 (PDT)
Received: from [192.168.1.212] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k6-20020ac257c6000000b004785b66a9a4sm1810904lfo.126.2022.06.22.11.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 11:03:28 -0700 (PDT)
Message-ID: <8b751eb3-2e19-0e03-4c94-b26b3badd397@linaro.org>
Date: Wed, 22 Jun 2022 21:03:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v15 0/3] eDP/DP Phy vdda realted function
Content-Language: en-GB
To: Kuogee Hsieh <quic_khsieh@quicinc.com>, dri-devel@lists.freedesktop.org,
 robdclark@gmail.com, sean@poorly.run, swboyd@chromium.org,
 dianders@chromium.org, vkoul@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
 agross@kernel.org, bjorn.andersson@linaro.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: quic_abhinavk@quicinc.com, quic_aravindh@quicinc.com,
 quic_sbillaka@quicinc.com, freedreno@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1655830891-19025-1-git-send-email-quic_khsieh@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1655830891-19025-1-git-send-email-quic_khsieh@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_110332_323798_394E7F20 
X-CRM114-Status: UNSURE (   9.17  )
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

On 21/06/2022 20:01, Kuogee Hsieh wrote:
> 0) rebase on https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tree
> 1) add regulator_set_load() to eDP phy
> 2) add regulator_set_load() to DP phy
> 3) remove vdda related function out of eDP/DP controller
> 
> Kuogee Hsieh (3):
>    phy: qcom-edp: add regulator_set_load to edp phy
>    phy: qcom-qmp: add regulator_set_load to dp phy
>    drm/msm/dp: delete vdda regulator related functions from eDP/DP
>      controller

Kishon, Vinod, how do we proceed with merging these patches?

> 
>   drivers/gpu/drm/msm/dp/dp_parser.c        | 14 -----
>   drivers/gpu/drm/msm/dp/dp_parser.h        |  8 ---
>   drivers/gpu/drm/msm/dp/dp_power.c         | 95 +------------------------------
>   drivers/phy/qualcomm/phy-qcom-edp.c       | 12 ++++
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 43 ++++++++++----
>   5 files changed, 47 insertions(+), 125 deletions(-)
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
