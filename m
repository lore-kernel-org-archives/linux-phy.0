Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BEEDC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kD6y3e0+B+QzvN7PXpfmZq01OHKUy4PbKePu6gh7Rn8=; b=NFpuIl52vc/2b6
	oYjDe2PSufp2cMYnYpw+/6n6yxCz/WEvwtWj+JQ0ZvrnnLePkuWwNv2NiE4f9sjpxNJfpoeSDrsTP
	iwiqYfo6U/DAobHxZSWcCsD5igpOvz/rOwhoM6RH+/2Q++e4Iom4xJeT95ERVKu+F84G7yvqwxhBf
	9wNc16binHq7yFqQFpwVWy6etRVmgPieQDJIt84fF/34TZOVBlAYi6jHWCRkjd40wSRoGrC11hY/l
	fZW5LhW2+fljgWqIGCMcKFq3qWrc28u8HJ8PNvTbrs2LpfkWjjGtdP97k5j+vQty5qx50g03DkX74
	vh+kz8eLsP+PoZ3kKHgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjsc-003ezI-MV; Sat, 12 Nov 2022 06:20:38 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjsZ-003exg-Mw
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:20:36 +0000
Received: by mail-lf1-x136.google.com with SMTP id j16so11233361lfe.12
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=StJ5ZbDgRapS5ZgNpDfregL7n6HNhInzM+P2c0de+0w=;
        b=Q5+upwR+LxjW0kDF4ztWz20ethrxgRSP1+NBBG7sMSCfGPtiAyuZSsfcMshi/CmIWN
         B7HiwaFcIAi0CsagUTDqEqbHzS9Liu3AFw6iuBc1vKct9RWJeX724Qn28qQKPXudPvxD
         /jzz/LaaP8fkt9ws5i9ScqybrKfJT3/TQxYLmJ2jq6p2WzMixDYRDT84kN7ab6S5YtR7
         tV0lYQ6+AJkVblph1kxanCif/nyAS22yPrIREgkMJ3rjqaGxsuT/jARVRaosP/2QmW9a
         pWtL7CVowsolPckWYuEFbhtPI+q5sEHCSlGHdkExXiv7gAdeYol19dLuGesQ5NFs1xE5
         knRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=StJ5ZbDgRapS5ZgNpDfregL7n6HNhInzM+P2c0de+0w=;
        b=QCYEZccf1ji/f//b4niB0Emg/nfrDtuXCqCsq3K443PYMOmZQNcC7DxLfGHtATsWx8
         anDCy/7oAeZ0s979rwvkDSJ5IQkTgOVj1/odEjabBUrj0to9f8ZFiMoow8AzXMpIv+MW
         FT+QgIF7Q7ZWIvhdrzcWDhSD+5qY1a9o1jZSliOqJvETZe1IYxKwgKiu5EEkVlUIqufi
         2xlTuOm0ROvevK/ZgKmARolryjJGhWymPejUksRqTPv+aJAaliMHcwMR04BXDL7MGe7r
         iiQdfhOX/s9qyz+0VboPpy8Vwe7phggdh3DpYV41PajNO9+LdV5kVZZP0OSr1BrCGSSJ
         e/CQ==
X-Gm-Message-State: ANoB5pnCrLX1qfRYF1qmnK9OSUvBrk+g9nEWeEG3SxbesTz7XbGQDM6w
	CWa9WIRxsc90fFr2CpzJS2VgiA==
X-Google-Smtp-Source: AA0mqf4p+16IjJogDZBIgZF8+dp07HJN12I+4GOQotjw8LDQLHdgSWJ/SN1B17M8P9aymGkYX/+sbQ==
X-Received: by 2002:a05:6512:138f:b0:4ab:534b:1b2c with SMTP id p15-20020a056512138f00b004ab534b1b2cmr1579741lfa.426.1668234034358;
        Fri, 11 Nov 2022 22:20:34 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s21-20020a056512203500b004a8b9c68735sm708507lfs.102.2022.11.11.22.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:20:34 -0800 (PST)
Message-ID: <865ee69f-9fe9-9042-f36a-01388cae27a4@linaro.org>
Date: Sat, 12 Nov 2022 09:20:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 07/22] phy: qcom-qmp-combo: drop unnecessary debug message
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_222035_800018_BE6EC4CE 
X-CRM114-Status: UNSURE (   6.68  )
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
> Drop the unnecessary (verbose) debug message from the init PHY op.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
>   1 file changed, 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
