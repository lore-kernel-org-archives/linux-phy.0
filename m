Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B7EC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4QKHdSmsJCY1IWIL5FYzEpgioNFA0WLrPYsr0e+ygo=; b=tAA5Wg5obgicJj
	Mklj2OtC2opEINsGKH6iP+bTLDxSoQqHxw246St2T+ayc38WehkXDUaj5rPSU/K0BK96Bg82Htqf+
	iAO3mkr+B2vLir4xtm9uUeTs1vakOBRqhfotVuW94Jk2E+Av7457sMkaqHcS2/NHL3SHhBEM8kNTG
	8p5PNRxh/OCCE0WeJR+/bwOiwRzHA0ZNldyeLvgHJSC2WGCXxMhWvnKFVWVutxYSiW9m07OEcVOhC
	roFEqgLrVF0DsPVtvGiIsJmweGL0hoXq2a3HLcx6yD8MYm6Ty6+V4wxun+dSyh0NVeiZtkGJv8P7E
	p1TPkDLPBP08Ock7MgEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlH1-0044xw-0k; Sat, 12 Nov 2022 07:49:55 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlGy-0044tC-Q0
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:49:54 +0000
Received: by mail-lf1-x130.google.com with SMTP id r12so11493437lfp.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=30J2drolwEdJFioQwxJ7KbRHiB97elMWssOgX7PXxuE=;
        b=g5xU8CTsdqine+E+rnn9RW+8LBJUVXiUuYqMi/33ptmd3iwNCpi4I5Z8VsysHqkOrF
         ZjjYqPp1lDP85m0tDpUf3Ul+SV0n+whR+X/UOwnAkBnixNM6qaquTN89EAGL2osPa3m3
         jcMV37ipwmRaWmHoU0J4zItvolLCZghvTnKI0mXc1AF7aX3QMDtSYzJd2AsGmGUAFgsq
         NsilbQF0zM0XFtknKaRDSs0LLAnwc/gh3JXErKPDyDNX37rvzY3oPF2MpWCNSe1fzhhA
         Sbi3epsyozsQEh+1g+BgPR8pRDjs2ZcLW4BG7/6Nym0wNPnmGcA5w0xnZzRYzSHV9IUb
         pUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=30J2drolwEdJFioQwxJ7KbRHiB97elMWssOgX7PXxuE=;
        b=HrIfy/D+FkYvcGyg/R7li5iwCcRiyu3ZkwUnUJH0eMXcKSK/w6+vpZpBp8bjSZL9wo
         Y5NtXPqr8nUQ5RBLzADPpNo4+bAh+VW5AjWGUIgq4DPV9B9UO4rjHvca/7fvt5HLyqRo
         g+TOc3W+NjyoBIJXTJGRPGXfdO3gt8FEkxFajDL5nYunsgUGvnBTTzy1g4+T4ZdgeFEy
         GbtSBgMMukMMyBBX0JCsL7oD6VJQ0ZxowP8JW7rxCkHlBZZpHYyV/VGUilB86SAbW1Z2
         vvnBMY+dRJiBsyPNI0PEdnCDVwz5dLT+Yoj8uqDOiDmvD/CdFBn7BlNRsf6nOSWQWlbm
         iwsw==
X-Gm-Message-State: ANoB5plGvkG+Omety4Acz0NOPhXDeH9qCg6X0Lo2Gx+W9HTpwZuASFbG
	sAum8cVhW3y/S+Jyk5zuEmyceg==
X-Google-Smtp-Source: AA0mqf7ggFgwcdb+uqAvGg/978ceqJ+bPrQysT8iY12z4ezGuFl/5OQT+LEYseZJNE9JQ+ssdjXndA==
X-Received: by 2002:a05:6512:3e20:b0:4a2:5522:d37c with SMTP id i32-20020a0565123e2000b004a25522d37cmr1677537lfv.662.1668239390374;
        Fri, 11 Nov 2022 23:49:50 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t10-20020a195f0a000000b0049c86ca95bfsm746128lfb.52.2022.11.11.23.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:49:50 -0800 (PST)
Message-ID: <af96cd1f-b370-c20e-980a-662acb950ef7@linaro.org>
Date: Sat, 12 Nov 2022 10:49:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 22/22] phy: qcom-qmp-combo: clean up DP callback names
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-23-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-23-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234952_876080_DC065377 
X-CRM114-Status: UNSURE (   7.69  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> Clean up and unify the DP callbacks by dropping the redundant "qcom" and
> "phy" prefix and infix and by using a common naming scheme ("qmp" +
> version + callback name).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 +++++++++++------------
>   1 file changed, 41 insertions(+), 41 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
