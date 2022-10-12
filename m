Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70270C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uG/xPvYbiWpMP0YinkKKqNBhcVXkQGiZPd1EYkZ7k4=; b=3cDk1bhdxBzNkj
	TnevCjANP+8spS0CgF4Y7ZEGkpw+mghvOwC4st8U+anisq9xJ4y2J5Zq2ZlFFPcFCB5ZfVFcH7dvk
	OLNRLiBF/s45G1bRSzoZnXWRLQb/hj9ZU0LZkITjarNHbRIxBUFEXCkvBbai+V+XnlgwpY8vqT76L
	Ru+YwpvkAI0VUgPZUvaUigU2mqTB4rvCXzOk7oGGWZuKVZa/qwjK56drcgSw+OXwXiSCqCgL8RStu
	bI93ybqmPcK+mdFzCrJ5pewqpWFZjPynnZE/KXUicZwz+Ahrs8uST4f0dSpor29n75aE+lhvS9NID
	/ypPv9TLO8zUrK/Zh13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiXP-009Iuj-RA; Wed, 12 Oct 2022 20:41:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiXN-009Itm-OF
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:41:11 +0000
Received: by mail-lf1-x132.google.com with SMTP id d6so27425019lfs.10
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhIhDVAW97twCZ5MabuY2Ud1J2BRwr7Q3gcJPzfiaEk=;
        b=tY823eaX9qaerZcByxSCq2osg6Lf/C5tVZOcbk+7w6oMH2Yb3eXKepAmmFRsxdQfmL
         msXjMQQC8rPz+4rmbII1HicOWeLPBxxR+O8v7To0wVTXM9JNXwq+9UOpFnUmEqzlSDPm
         qB7hJ9jQbsDXaHaCtXozTdI5udkBZ6XONT1aLVmt/52+9ODjbTqvwr4zNJXYQuwRr+pl
         xQNYWDid92w8r7/fWf2z2b/zH4vcNecDUw8HpQIwFjzkTL4QlZOwEUK+XF9ToYLirEDe
         anERX8ikS0QWwV2ptGuGQXwdSiYw+D5zJi2naA7wX5MQNW+AvVfTvcyLuelxW+rbvgyM
         093g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhIhDVAW97twCZ5MabuY2Ud1J2BRwr7Q3gcJPzfiaEk=;
        b=z2moE5fEimaj9CIqJ1s2aIa1GJ84rPTbHVGMAYNPC7+5srCfZAPnCmTxTfH58Oh/qD
         ebjCvP7AxOzw0fM1er82ECIrIPcRS/wgqj0K83ejIhEOhp1zkz7dSHM6Pk2Ml/WRQ2Pq
         dDspw33F2RsKF3ElXc8iYUXRuuq3ABlBhtR2plIs2LRIKEdbXU113STCNMqxWoHZSyzE
         qKCZ1vZn+klnw9ynOf7LLZSWxZwm1GT8dtGLA/aNHdzN+gJzM7mTKd2BlPOHa/OJ6zo+
         b3bC6313av5c3hOC1FSNEDAP/ruFKfbbj/tk5wP/WX5UAdEXnbAvn5fKASLL+HjIyB26
         mE/Q==
X-Gm-Message-State: ACrzQf0XN3sLnmdp1CjfaIoqk2QOZiK/aP8SztWnjq2EmwHAt5pY32IJ
	YinivpoWHJhoFJJ1vQyh4opCCNZ58eb7Nw==
X-Google-Smtp-Source: AMsMyM7BZl+KItpQHc4Q5ULHiFXjULZdB5o+YQoucUFZJK4MoeNepvpiWO07gZm3CSiyDLBss75QuA==
X-Received: by 2002:ac2:4e0c:0:b0:4a2:4042:8698 with SMTP id e12-20020ac24e0c000000b004a240428698mr10713490lfr.170.1665607266941;
        Wed, 12 Oct 2022 13:41:06 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b16-20020a056512071000b004a27bb1ad62sm93941lfs.205.2022.10.12.13.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:41:06 -0700 (PDT)
Message-ID: <24474f58-c513-f3f4-380a-e09b5e0cb30c@linaro.org>
Date: Wed, 12 Oct 2022 23:41:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 11/14] phy: qcom-qmp-combo: drop sc8280xp power-down
 delay
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012081241.18273-1-johan+linaro@kernel.org>
 <20221012081241.18273-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012081241.18273-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134109_840368_669D859A 
X-CRM114-Status: UNSURE (   9.52  )
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

On 12/10/2022 11:12, Johan Hovold wrote:
> The SC8280XP combo PHY does not need a delay before starting the USB PHY
> (which is what the has_pwrdn_delay config option really controls) so
> drop the unnecessary delay.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ----
>   1 file changed, 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
