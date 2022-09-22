Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67888C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zNVzl2khvHFZ5wGGK54NlHvd5Xh+Fha1Csr5X9iPg0Y=; b=tp5BuBDWypRAG3Cl2Yc1Es5Nyt
	21M2OEGC9cFfs4G3KgqjECeZlOlMO4ar9X2jXjsDYGK2wV1blO3xvjIZb7ix+thJlTkrWp280XZV6
	WL1ptuXsAJbKKRw78PKItCbBmsvJdlh7lWZHioasrjA3Jeqqecp1dPlIkD8woSCrgpBMurJJhyUr3
	DtikhjBOwWaLWuVmnc7iN1gEC84AD+e2JayNrkid+gR/T7/aogXVeJdRzEHZFl/iqAi4qV4WkM/lP
	BCTXLBCc8DlOZwYhIJnI+9gR4H1PuxiVh8nt/7YpF/KMvW2OwJFjLnaQQnLDLdJ8+7dSM92ti+H9v
	+QfMB0Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQZj-00HDtQ-Rg; Thu, 22 Sep 2022 18:05:27 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQZi-00HDrv-84
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:05:27 +0000
Received: by mail-lj1-x22a.google.com with SMTP id c7so11918281ljm.12
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=WVxa14W9DCNpiIuvLzheW0ZLCfsZJ4vjRgb2dEpJ+Jo=;
        b=EUfYZimbN9JrX7yCouBtnzB2ueWjV0/PnTlvC2rrrVkrYBt4sO24c4E1QIxf5qNTBv
         bM77u7P6eNKA6Qxamh1Laqhz1PdExqBKt6u4OAWWuH3GiM/AKtXmIElaF+pp6N4KoVeI
         OVJ22pzkFtoRij4Rf96T4HJJ6U52y3aLInIjXpqwPbgForn4NJvK+IhQUPHs1Ecb3lAm
         WcX9wbYUmtHem+rwQekAQLE0dAV3HIAwXd2vC2BWR63SjtsoANwMik/OwqkVZ0DM8L7j
         X3Qtk5jB2lvZfXUfDD39nOGDJ2yeKPjNICcQ4B2RNXG5Oxomug0UA/l97WC2gXBtWUBu
         sw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=WVxa14W9DCNpiIuvLzheW0ZLCfsZJ4vjRgb2dEpJ+Jo=;
        b=fNtFrJadK5RfFkcirpt0HJRoOr/w89k8y5jJZJh0ND/ZjfIkL91nB/lJUQHV2WMhTk
         HTfxNxyP5pHn/GnrDN9FIZItrcmulfhlBbOxhZL78UP9B3zbykUnW2VNolFgKoOOazrp
         NMGAwD1ohaix/9AfV8ezZ51wWE0LTw/jfENGQeRnLcvBF1tryLsdBjkG1sS7EddpvXPG
         0PS6yUhb8KHIvj+zIiKhU5VjF2rsLXfI9wirBrmjsEphlk011YJp8BfUy/tbO/lCTbsr
         ax9ACvSDKJ+rEk28DrZs0veL1T87R8o6j6T7iV4ii3vqggznwbUQC5aB6PMaAmC6GwXh
         jY8w==
X-Gm-Message-State: ACrzQf2yHZUfJvzswguI+Sqw4aqdwF0jtghRZouUs2Ymyeq1Kn98MsCl
	SPnE0X0bBF+xiqmaPLfVAkLZ8A==
X-Google-Smtp-Source: AMsMyM4hTaxUY5vhGAEwSILLREKcc5flrHrXzBpFvWcfM4kadYtiTRmRHvRqgwwpnFBafSjkIN6Tog==
X-Received: by 2002:a2e:9dc6:0:b0:26c:5d06:e18 with SMTP id x6-20020a2e9dc6000000b0026c5d060e18mr1482048ljj.64.1663869922465;
        Thu, 22 Sep 2022 11:05:22 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a056512348800b0049adf925d00sm1051670lfr.1.2022.09.22.11.05.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:05:22 -0700 (PDT)
Message-ID: <96ce54ed-a6d1-7b06-1eff-c153965637f4@linaro.org>
Date: Thu, 22 Sep 2022 21:05:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 6/7] phy: qcom-qusb2: Use dev_err_probe() to simplify code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-7-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-7-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110526_320141_840CB54D 
X-CRM114-Status: UNSURE (   9.85  )
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

On 22/09/2022 14:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +++++++++------------------
>   1 file changed, 9 insertions(+), 18 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
