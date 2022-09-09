Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28CAECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpH5Q2kA9rAL+Ed/iG5lVEhPA0UeDSykb4UG8hGlL2k=; b=fOYWDlFkBVCyVO
	rXllQ8xf+xKtTiZCF6HcgIpw7XZowFLO2HbEWbPROWhrEdCJXR5faC5k69GD2IcJFzbb0d44e/cE4
	lOOQiybS2IKgO+LJMlokIlLPLm38SVM9NlAwYgOiZQnhqkJ5hps01uV4prZA609fRrCebcbcyuriI
	YYoYT2Ob95M9PCInRt310gsB5Vd5hUu0ycuZ15IPa+Vux6u6P1WwAQlGGAA+jjDmPzhn5QgIJylLG
	fpNNxIvje4e2s2AsSycYks5DCvL3GAp4DoxRE2UkexYUT+MdZ464sYjsMaevLta2ycuTHzIj99fOv
	O2RwRCskZRtpzyQWblTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaA6-00Ezov-5Y; Fri, 09 Sep 2022 09:18:58 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaA3-00Eznq-Ts
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:18:57 +0000
Received: by mail-lj1-x229.google.com with SMTP id bx38so1073875ljb.10
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=kuIhzSkq3fDg9/NxRNM5sLOQILPo0CbgosVBQmELZ3s=;
        b=Q5xo/72AqUs037hXFiKMXBWP9qQ0QCQQ5+liSy7CDb+vWuxmBFg9ZenRUPHYDJ+3LS
         jZpyw2Fta5BxclW0Wr0sNrNL7aBK4EPIICj1rbzZ22Akx+mgm+/mPR31xaIzWWvSuf3y
         gDfn1rzYrs+7VJeFQjypK4x+vyzr8nhRtQrxMZQeu2Ng8GjE3uBZgWOFxRUruFl7kuPc
         Sr15nYY4iSg64vSH6bSSLtMdCU8zDYONnPixDlkpaSPJXabM+vWDe8y83SQaFavRO823
         bHshACNkpvcKdHJ42YyFwZnX/UZQj04vtCy8/cGvMyEuwCOv8l/rR87/x5jwUQ+G6+RX
         8mCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=kuIhzSkq3fDg9/NxRNM5sLOQILPo0CbgosVBQmELZ3s=;
        b=KE1MKXXLu5tsqJ5qn/2kV9jRb6zXN9KVZ8vX+z7NYKne4tTjrrqb1SU/MVIpFm/TKv
         UQ5bAMUbgus2D9lZj0XrrNRL6RU4SDnftoSPJfNoufi5/0LxRtD5jMk02w7LPEo5dglR
         F7dDPSGp321zqIZai+raj48F0Hhl/JWCOr1Gdm8A/5MhdMficE+g4BAvIsxkBkd79eWp
         gqWNM7gnStPF6sQEzZ7mpak8ATePwfKRl+a6XL2Ynp2oSEvVyBKNIT1zHVTQJ4yfWe8Z
         Nd/qos0mTq6JGEbbk6XhmkFCK5fAwzaHV1c1+ixkT2NOwqt3h3ai4cRws0dXOZTTplGq
         HlFA==
X-Gm-Message-State: ACgBeo1Lfw65WVAdz/X7n/qSf4mGNiehZVrc8djDd2FenquswD0FG5QS
	jN+mvdB5IYwdVJXJO4lwcLa0gg==
X-Google-Smtp-Source: AA6agR4dZ40n+zYZc3ZCFRVBIqM5e2s9DGInqydOWBOPLjVazMP238WR4ZOgRpQsHcPHjYnMs4DiRA==
X-Received: by 2002:a2e:50b:0:b0:26a:b7ec:59ea with SMTP id 11-20020a2e050b000000b0026ab7ec59eamr3860803ljf.312.1662715132031;
        Fri, 09 Sep 2022 02:18:52 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r24-20020ac24d18000000b004949f7cbb6esm6928lfi.79.2022.09.09.02.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:18:51 -0700 (PDT)
Message-ID: <9a6c7419-a636-4af3-b4fc-d33b06c89505@linaro.org>
Date: Fri, 9 Sep 2022 12:18:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 3/3] phy: qcom-qmp: drop dual-lane comments
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220906074550.4383-1-johan+linaro@kernel.org>
 <20220906074550.4383-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220906074550.4383-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021856_009919_A7F43474 
X-CRM114-Status: UNSURE (   9.16  )
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

On 06/09/2022 10:45, Johan Hovold wrote:
> Drop the obsolete and misleading dual-lane comments which gave the
> impression that only combo PHYs have a second lane.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 -
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1 -
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   | 1 -
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 1 -
>   4 files changed, 4 deletions(-)

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
