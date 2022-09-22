Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503F9C6FA86
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oJv5WJAtDI7eABHwsm3PtDfby9cbwo9fy0zSlLWzo4=; b=OlgNxhm4kUvFOX
	iu+wyxnQ5dKsWKFgYAht9Uoo+QBzqiN/A8sO5NxILW4VZxgOuXVVifjz72gpS7dQAAZykT2mW9+2n
	j35Jr6qhYZz3iOPgeNOIQexu0P/j750lbpoCxEajeJG/+sEqIwONTl0Y5iC8PWfkINoX/1rnvVAHy
	trzd0XJj2Sy0kRTCnqe8W0nYcZnUTSQ06KEoNR4ZDEe6sF2QkUsM/L0buEGMo4/klSHM48v5mFx0O
	9eA00phdHs/ku62vG/p3wC9H8YYZHAXFKAEBFRtJsq9dc17CkqfjOs2z+CNlBnV4iPhg1xf9l1yM4
	LHTg+9GAPLiOaq1ZXk1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNjY-00GGFW-B5; Thu, 22 Sep 2022 15:03:24 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNEQ-00G2pj-Hr
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:31:16 +0000
Received: by mail-lf1-x130.google.com with SMTP id a2so14998395lfb.6
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=DPmdZRIENec7MY1a8prShoDiqFdPmTaQvEQ0y2ccFSo=;
        b=B5M3h/VXI+/pqRAQyxHRxl/k2MaoF41qpu8qNBR+R+PIGEAobcudXsF9427aSCYfov
         FFDkBPzQtb2soozIpV8O3x29znvdpckjHGwXkn6Hrhaw7qfZ/qosLDrB/GzUzVBw8QjY
         2P4ZUHSkZ1Ah77GWm/pCWJkOAFKRLVW7O0CaGH+YAgeX26aGe2HZMnPBdjeUFJR7BHs5
         NigEYa0+9g+KJHValkOfauLEu2bGXy5l2DkxBWE+wtQWBT2oBC7mN8V2TEWqV4x+N38S
         nEGQHsZgeFCyupFDb4hKZv20duw9nAVKjuT7bWsnCgGQR4BdKyjkRqqlUoguBCpU55M5
         jdWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DPmdZRIENec7MY1a8prShoDiqFdPmTaQvEQ0y2ccFSo=;
        b=Zd3izGWl2ytVpwCR/oJPJzgw23YB2n4G+w7Ve2lzyyf4OiigB7Aoq7NnTn55o4rXXR
         5gczv/++aKdfxJWWi5dUgr9ydYYFTKSpau3hblMZZtc1RUBDI5evnp7xeZveapYNCnJD
         c75l7bUJgG3I622qoGA7M96yxmBoRjzORWOMINmj6nyw1WuOtqoBUED0nyTg4Aeyfx7e
         jKHcLiRNyzvl06ouaiI96IC+flOR3e2cL8t+qDFzyyx5ocmBqX7BQcjCMyAicQDBCs8t
         zypiWnVqusNcgJ2diQHpbdLNMeBheQxQUB8RvthnnRucM489O3I+aMxyKYFjvLy7+yd6
         uBAA==
X-Gm-Message-State: ACrzQf1xCkYfDP9qQNoP5ePs77QqZQib6G9KEATS42BCIb8UqOk3bATt
	+r7hr11iY2Xf//fyP1vrPNTj/A==
X-Google-Smtp-Source: AMsMyM72hThyK5AODueaKEuXAJEg2XB3Ts9aACzggiQdzkXc98vTkYz6DVlzMuZkh2j25O8qiQwSTw==
X-Received: by 2002:ac2:4e09:0:b0:499:1e3a:54ab with SMTP id e9-20020ac24e09000000b004991e3a54abmr1335524lfr.170.1663857072051;
        Thu, 22 Sep 2022 07:31:12 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z18-20020a19f712000000b0049adbc24b99sm971091lfe.24.2022.09.22.07.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 07:31:11 -0700 (PDT)
Message-ID: <07eb36a9-086a-2f79-99cf-2762487b63bc@linaro.org>
Date: Thu, 22 Sep 2022 17:31:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 03/17] phy: qcom-qmp-ufs: drop unused type from config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_073114_641861_2DED4CE8 
X-CRM114-Status: UNSURE (   9.50  )
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
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configuration.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 --------
>   1 file changed, 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
