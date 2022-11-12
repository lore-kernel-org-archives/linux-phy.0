Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8038C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au/6ZQOlgzqsdRe0XuvLuEsLF7cc1znXIqBzsI1Drcw=; b=we1jK1SjNW7Qyq
	x2Ljajgwr3aDaKvlON/nIlQ/K4Nl9Z1QGgWEBMc2G9z5GkmfwakPRkqFHBywZcI83TroGmHFCsiSJ
	/NCk+Gvh1xMZ6wAC8ckLvbyjoXDbm9016eFEv+wMS33OD/1+4cAQePC1vcAVr8EDkLMvGicotpVVm
	gSegn6hYejT9vGHcETm8iFLRjQJ+Y6RuBasiaycLEJfbDPjS9k0UE+PlilxcDO7AA6mpXZuV1jgsr
	E3BtnjHAvk+QgkNWW3+7YoJtXQFn1r8mPkaSxj9uQIdB7BrfwHt1GPsNmCnfU9+6MzV65RzFLkNIb
	82DycAX70G30QBH0TYNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlI8-0045k4-2u; Sat, 12 Nov 2022 07:51:04 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlHy-0045iv-Va
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:51:02 +0000
Received: by mail-lj1-x229.google.com with SMTP id d3so6874669ljl.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a+UsEcMcNcwswMPlSrExlKrjtrGQnEDikWAfx7fSc14=;
        b=F8YQav2VqC9G/pMCy1ay6dcHQpohaoCsguqJCq1ux1FKgDK6q/F8x7L1FWCoemvRJo
         p4B7GLYT/kONcA7ztts82fMUcFTDKNdjf2u57/7xFjVSSHXxaDSWeEpkhCs3a+nu3LRt
         h/JXAqweBzv0HygVS7IZC1Ust4XIHUoiRW8NMh7HQtdkfRwDXe17aRner4dQdACviwvC
         jBdhbn4YqCidoONOmYigVYgDeSKfSJdPVtdPA+lo9O7a1H5cyuVgcvdSuJaDDxQ8H6E8
         VJ6QOMGGMC71ZFFWDFc88Qoeaq9GrjMY7sCREOFSU1Ze/8mpAvfEqV5+aFYaI0IgYfo5
         8e+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+UsEcMcNcwswMPlSrExlKrjtrGQnEDikWAfx7fSc14=;
        b=1ERH6Vy0IjrC3pooRy4udsFZFkKcaRKmm4aty4uuDR+luutiVU2Oou6HgtJvO3H3p3
         KaheTju0tz2efoTpcJvknFbL+JRviyNZwOo8BjAyvokNSkL5qTrTg6WasNBMSz5NEj1B
         qTEzPI4ThAxO5Zm5PE/C1EFpg+IChSKUVwZPWmfqfXs3bRUs+i88EzDpNfMLNL68qVV2
         r49P4uT0P0v+4Uf2f3rqrnY+7A7nYYDXOKxjEw4HfG37/o58SUyUdlwrum6j7IM8Kd6o
         uSqjviPHtWllmedO2+flOSC55n+SwE0/l6CwmwTow1WIdbf7RemDmG3Pq8l7e3/ap7uD
         M1XA==
X-Gm-Message-State: ANoB5pmA/6QegTsG3zuDKdSw4UpE+qIyMMPmkluNWHts3laqTYzTKHFQ
	GWzAHkzJwufcJwrhZZb41e60ng==
X-Google-Smtp-Source: AA0mqf7htDhPrt3ZavGZ+yqvxoI7/xMhVWSiC+npni4LfAPjxuywVVj37dbf4XQB6kpQV5yLfR41Ug==
X-Received: by 2002:a2e:b623:0:b0:278:f073:d3c0 with SMTP id s3-20020a2eb623000000b00278f073d3c0mr676510ljn.357.1668239453642;
        Fri, 11 Nov 2022 23:50:53 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h8-20020ac24d28000000b004afac783b5esm736430lfk.238.2022.11.11.23.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:50:53 -0800 (PST)
Message-ID: <8e211b4a-f102-5bbd-0b74-17e41734157a@linaro.org>
Date: Sat, 12 Nov 2022 10:50:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 12/22] phy: qcom-qmp-combo: separate USB and DP devicetree
 parsing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_235058_327926_4DC36566 
X-CRM114-Status: GOOD (  10.17  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> Separate the devicetree parsing of the USB and DP child nodes in two
> dedicated helpers in preparation for merging the driver data.
> 
> Note that only the USB part of the PHY has a pipe clock and that the DP
> implementation only uses the tx/tx2 and pcs register regions.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 81 ++++++++++++++++-------
>   1 file changed, 58 insertions(+), 23 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
