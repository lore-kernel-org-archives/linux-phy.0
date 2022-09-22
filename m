Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0682ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dW6AqE2ilvedNTuwNilLWEndgNOw4COl7JYiah9PCB4=; b=FLgEysdp+qPMlV
	CP9sH9bbu+4Wd0OM76TjFW/ir1iUqRv9sjMOkfC1Nuk4Yx118oKLC6HCXNowFeOXP+Yn6e8IKtnqh
	g1cAHbKR63xOVveNa/VAFpDabI0jG42O89mxRUbA9obybQgp64gTwythUVOGL733XQ3svJgAKptPE
	z+4fCHffgcMOmpnJgtJ+9mTtMo80Axc6zihuo2XmmJVoBs09HYQqAhBeuU2EfPeE5fYGYydc0a0Q5
	jKJ1b3SIyW/pQVBqJWaBM0FoMG4k5rj/PoIzR2ezL/+1MCS0tXesSCwijMbyFAiC+yE64t2cGSiCy
	WfVoYXZKY8jYeWE0B9Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWa-00HCmy-5i; Thu, 22 Sep 2022 18:02:12 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWX-00HCip-AG
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:02:10 +0000
Received: by mail-lf1-x134.google.com with SMTP id f9so15982896lfr.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Prm/7dt9Jb09jIgZ3WTvMH02jdAfiYwvGQl1oWckd6s=;
        b=Yzv6NyJs1WI7yVQiKEize54ZkCL4ZWr/ikYefiRVj8wHZ2DIego2yDZ0OcerECcfz7
         9IekGaK+r5IFBedLeh/ianEHZHDxQ/ugF/DyDay+Z5w5fJgEDmQqyUMyYvM7b4Klg3Ik
         UU31K6Iybg3VUIA/sHAfxxetfOzjZqYQr3n3adROG+u+U8yx3qhHYkccXrR8wji1QS9H
         5rSnTNtIWxt/re33fGX5eIIabn1BUnVsQwCmpkjBf4nt7PXjqs01MnKrha02xJfAb6/K
         x2TtNGCuDtgmzhSg6IDGTu8M+AYmxV7oTyqXH1n6uiJZqHyI7knDdWgVxD5fB48I4Dv4
         Lccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Prm/7dt9Jb09jIgZ3WTvMH02jdAfiYwvGQl1oWckd6s=;
        b=KFlbqC70lUciZyZ6G1itxzetGilQOoHXWnTJLVhUPWIrsW6mxh70LE3CQ7VUeWUqJ9
         DMz+WhPnEECIensOxV/TZof/MU2YU8GfQhhGwWWnYTGUTf7eFIzEi25cBcAuSBugLGmp
         Rq+hiQIQsNupZr3CfKxDuK9W9EqJqwPO7G4OfLNtxmZuGxNbQGJV21pdbav6VfideBVd
         qyA3D8jDsH5H/hQdMhXe82dD7L+nuHZEWcd4th1zaS/UJNJk6kJBXkh3i+Be8cFkRAuG
         kgUkhp+CI/6sGOJiRDhq/Ielpf9mY9wXts9quXqAACLi8zWYZsAsNxbPcqGQhcsOkBeb
         qCGg==
X-Gm-Message-State: ACrzQf0uaU2rOo/0f7N6v9r2IATPOfRldzDfEf30UjnBjd9KWRab94fX
	YXbjVtGlqn6wb8VD7FH7rNS7tA==
X-Google-Smtp-Source: AMsMyM5xgxVGkvgeO4Fft7GBD83ULM342IAq1Z+JxHJdYHC43UPCH6Fq9XYeNfws8rJelLC2HB8New==
X-Received: by 2002:ac2:4d0b:0:b0:497:a7fb:229 with SMTP id r11-20020ac24d0b000000b00497a7fb0229mr1664179lfi.174.1663869722482;
        Thu, 22 Sep 2022 11:02:02 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o4-20020a198c04000000b0049f54a976efsm1045611lfd.29.2022.09.22.11.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:02:02 -0700 (PDT)
Message-ID: <7032e571-fb69-0747-e39e-b83161886935@linaro.org>
Date: Thu, 22 Sep 2022 21:02:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 15/17] phy: qcom-qmp-ufs: consolidate lane config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110209_384692_9A2C824B 
X-CRM114-Status: UNSURE (   8.86  )
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
> For legacy reasons, there are two configuration parameters that describe
> the number of lanes a PHY has.
> 
> Replace them both with a new field simply named "lanes".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 31 ++++++++-----------------
>   1 file changed, 10 insertions(+), 21 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
