Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51274C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NW3kJ5yYDxNmRfDh6WWvejdm9OqAh2yICCHGsBdKwr8=; b=nexmVKAk8wLxss
	sUCmErQOOtmz5f3sk4dSvHc4S1eztvgJS4Vz8/MvmI8+HMjHldp1UA2MWKc7hzmotgCk54WF7MY6K
	ah5kdMuWW5Lu0rLLnTS/PfnLvwpQLAh1ilVNzA8nLlgvLSHS6xJI29xGxYR012HgZdtYTgCgZok8y
	BdY8ITiRGg5q4UxSscKv6gP6N1AmD5bFBlEgnQ3nC8tNoPzV3zKKNirz6CizWsvlR+lRez2j/aLwm
	8nB1WYD0Ap+5X3lQfIWiL7QNgHva185Pbd54sucSgfdlyFRVYFJNCMffQP11j3SWNl1I6WPeufE41
	nW7q64SB5s6pW7uAO0QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTK-00HBpi-Od; Thu, 22 Sep 2022 17:58:50 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTI-00HBoq-29
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:58:49 +0000
Received: by mail-lf1-x136.google.com with SMTP id i26so15910627lfp.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bUaFyQ94fZMRIXN/N5asK1vtQVwkzWhJGyxmV73G/hs=;
        b=WSdkF2ebXtZNI6gJOnCNAse/3uE4RgY6VSWqOlZR3D8kIl4csnP7fQnR3pUL9SCXWI
         2LgKdj3cJBSOu5MO2vp3JzFKh5Zp1WOLNeBtpclSTm18kZGe2NroCKNCyKY+q6fXFBnk
         wlqqyb89pM/eyM+e/c7kSsyPYzDf/5v1PN+iShEaeAbKTjHHy9/1mn0uImoDDp5sNd5h
         pQwZDUhc6kUlifqeygwUWi8aD0LHTazbeJn83PBxYDbjMG1YuVjqQ6tFn7d2vljLNDuw
         y5q68X/QOraDNuO0v0o+VQtpPj6DBCG5RHl5n0Xq1khzC2t63sz6JVikI9R0xEcW+tQZ
         XrQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bUaFyQ94fZMRIXN/N5asK1vtQVwkzWhJGyxmV73G/hs=;
        b=734PlgsoMlRzJcWYEs+kof6m4HQYxhqcF+t7s7jdA4oxXKCngRaFf6sqAIVLzKMnDL
         GwYfVvyKfom06e6m0+TOMoNEdPVBCBPR7gH21S99zXYQT6u/joJHVBaaoxLACARrRLnm
         2lsDj7XeSOLg9fTxuA1cXoUZzYuU00BOQHagjGMtQHy+BrPRBpkg+C9V+ywdLbgO9MW4
         wSbdTwz9y+hPI3HZMmN0zeyGOM7lXoRsWXR+LQAyhXKEAVl4HvTInT0+yyrQEjZ0SkgK
         vWQyEY7Ctbu2/EYU6AkMz6CD6xhyBIDvh/kp48o91wsPe6gZF6Qt0559B7VOOssTz61f
         fbwQ==
X-Gm-Message-State: ACrzQf13cw0tvhfPrzfOb08HaWndXANEtwCftmEPN7jl3eSWxHn9rmYU
	kH9OludLLMN1fqX60W+MofO5jA==
X-Google-Smtp-Source: AMsMyM6AVNDlrOZFjtzvPW6bScSQC0XExoQfPFreI/hlikLYnC0UgJkA9CU9kz0qFU1jf0DVXb5F5w==
X-Received: by 2002:a05:6512:118b:b0:492:e3c4:a164 with SMTP id g11-20020a056512118b00b00492e3c4a164mr1831759lfr.598.1663869525804;
        Thu, 22 Sep 2022 10:58:45 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q8-20020a056512210800b00499b726508csm1032447lfr.250.2022.09.22.10.58.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:58:45 -0700 (PDT)
Message-ID: <d78b87d1-145a-d73a-5dd6-d71b189f06d7@linaro.org>
Date: Thu, 22 Sep 2022 20:58:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 09/17] phy: qcom-qmp-pcie: drop unused mode field
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105848_131350_07433ED9 
X-CRM114-Status: UNSURE (   7.67  )
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

On 20/09/2022 10:38, Johan Hovold wrote:
> Drop the unused mode field from struct qmp_phy.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 --
>   1 file changed, 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
