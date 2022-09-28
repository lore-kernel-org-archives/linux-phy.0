Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72964C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53xTaquldGM9ydPFXVpba8kbjckXd6afqT/FTGYka0E=; b=QfzP/Il75Q41h6
	PEpgFfroZj3GxXjG8sTyyDFyAyIhAi4zYha/BJRHvcNqBtt0ocMY6qBYQCaigdykSliLg8SoeCmNq
	aS/VX4UREh+iMGM+ZN/jnCTSwv3S8qIYvIpnp2vfuBr9vrCyjbbPxZtXMDUQlWv4X/LZ/CRsX1hAl
	fnj9tqjgO5Q3maKZiGvvlXN1TXYKMMbGI87TxcszpKekQkYbtuKOgyFPWjWl7SJyYKIHgmN1ehF1i
	CID001Da0UqyT900ZBUfC3Bsd9vXorjEc6j1/oJhs7nJfui5UcrGAzDgULLemUNnmN96YhF5exGRn
	0Ow2MpZJ1//rOrMqFmMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZSY-00H1Cc-Bt; Wed, 28 Sep 2022 15:58:54 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odZRL-00H0Of-1E
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:57:40 +0000
Received: by mail-wm1-x334.google.com with SMTP id l8so8814162wmi.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=gr4NX9hKRksMUEvq5iTnWXuuqbt/cVaS54wl4qK2lz8=;
        b=mdJ3llifS4oJUpDPAfPfMM/e0Rps1EgY/vfmcdeIeb1PTNfbiUzu74Rq35J8bTdz68
         Ki4TAcYr2QXp+pVREY+gV6TixTC3BV5nGW6A1Uj1uFmC4tZPVuYoJE/zVbRRClGSr8a0
         t8bA2ch1kfpMa4or71ORVt8H+6QD/00XeuiY3OHKh0kXm3f6Up+tVoRVkN+ieq2gEaiG
         nNSerlekU1cbt/5nWaetLqJR5pdnGIIihnmjk6KGf4tjxDCtjX49MV7pl5TIkShAYKuf
         BRnLcTfMXZJH891uiyW/cEIqPN1qSyRLvEqfV5s2Kbxm1ByCZ3/L2nlq/tL0m1V84Mrf
         oWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=gr4NX9hKRksMUEvq5iTnWXuuqbt/cVaS54wl4qK2lz8=;
        b=z3xvts+XBPwe0mqhYhtCK5Wn6bMjzGUCykCbllxB9X0amPFHIGG1/njCGp0AmCrn0K
         NM+3lFvR0DFSegmWg0Fu1UypFFYDCn4+sdgN295L1yWmlEKUvBO+bY39qM590/jV5TPT
         DkjtI4Zta7YeR+D7GkhQBY7bN8rH2EClKRYUClKNuE9quLygFxjsb9EcuSclQJkQM1vu
         FJ+90NhP/pCUV3F4uZ29GPPqf6YiDTPFSEF8eKzlW1ReoY+QdFEGVXWP2RkFnaI6oiaO
         BYx/PSIzRdzNqFMEiB8He6nBdT/3goJKXnKaJ1ZlPMOVCzkw2HnvHssK+Mk3LvX6fFzh
         l+Ig==
X-Gm-Message-State: ACrzQf0Xi0TMP6IymRtgmbuRhIS28Iu992x1t5jUKWl1n+7375oEu5kO
	ZB+RXoX3/srodIFMl5hrLJGz7A==
X-Google-Smtp-Source: AMsMyM52RP978MnDNTMt8hGiwehpzwFh2XZw41YvZzfZBT9JDhg3g2F+igKOAnGTDVkRxYzJwttHcA==
X-Received: by 2002:a05:600c:3844:b0:3b4:becc:e43 with SMTP id s4-20020a05600c384400b003b4becc0e43mr7446114wmr.33.1664380657522;
        Wed, 28 Sep 2022 08:57:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id q16-20020a7bce90000000b003b492b30822sm2098621wmj.2.2022.09.28.08.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 08:57:37 -0700 (PDT)
Message-ID: <85ce689b-4fea-49a4-2faf-eac15eb2ab6c@linaro.org>
Date: Wed, 28 Sep 2022 17:57:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/13] phy: qcom-qmp-pcie: unify ipq registers
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-5-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220928152822.30687-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_085739_123078_4D7B7CD8 
X-CRM114-Status: UNSURE (   8.38  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/09/2022 17:28, Johan Hovold wrote:
> The IPQ register array is identical to sm8250_pcie_regs_layout so drop
> the former.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
