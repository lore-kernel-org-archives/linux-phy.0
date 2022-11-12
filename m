Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789DFC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKw0G6pwA3QWPmPiFQQY7HhsN1qOGINPJpoyTwNpD+A=; b=CBZnXAFE2EboG9
	UOBkXBb4GV9adChXOgtam7sLVH5W8ERwo1qLuPzb0jebmmDdLqtdcLsdnwDPx91snEXmYNVRtnHCX
	29BIzjimfxG7o1xFl+iDhI2dJXuPDlYPx+WYjE0Gnb90AVq0Pq7jkbLxBlQXQZ25cMN0Jspj0qNUg
	CbZkY8vyzdyXmNFXnMCiGZs14M3uYjoaIwg4o9Xn+eGkVI68jARgszxoL2TAeOnIM6V4Dv1XOHPWJ
	pQRRiROcBbq/yKyHnDVJU8rZXEn03cugaiI+09jXPMgB1P6tRj1tGanl+0VlUAB4vYN+zU3akIAH/
	C2GKb4ujL2TuGoc+LF9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjr0-003eOi-U3; Sat, 12 Nov 2022 06:18:58 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjqy-003eMs-PS
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:18:57 +0000
Received: by mail-lf1-x130.google.com with SMTP id r12so11307097lfp.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oyBD99VaO8VEQVZq7O+KQJj5GoNeYJIQtidVjSm/ty8=;
        b=iu52zPDJ4DjSeKErAKY4WaitqjDF/Fb0973RWiJZ12PobXfu1qoEZRIuHoCo6nlv8b
         kEueIT+reRE4b/ZInCpH0GdHa2b+3c6Vi0jR7FzywyhKT0aZUk3jUsNAjNoTIcwzF/1s
         mzujLZD30yVhvYwO4jJ+wt6z2f7Dh7tnEcZIi26Q3KgIQ0Hh+wvOVwCZLKgXotWUOHnV
         sInlhGzvlGY8Auz53eQ8izQw+Cxc5KgRrxfqjSzdf4BABqxsDczthkLI4cFOaW3zMxUy
         WyKNdK2s5JIj7rznbecz9vcl6Emo9YfNfAGZPYwnBFaaHN4EbJOc/PPv9+Gg9xY/jrW9
         DJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oyBD99VaO8VEQVZq7O+KQJj5GoNeYJIQtidVjSm/ty8=;
        b=2rW00JfVCFDcdKPY952RJtEsgrl5hrRwc8sPmFcSgB+ssQfqMpPGJ571xln9YHXcg3
         c525gMrPcOL2CgckoeAupypb3N0UYtnpPZvdDtFItsYlyRwe4ngNsTVKROXa6vuJDSMi
         VEOA66t0E919U5sSj85mG7aQzsRaIlp6dJZ9HlQ4lE/nL40BuhZtEjmIojo9PzYTG8P8
         u33lzbj09URBTnhbuTeVF4K3H9bloIOU6Ox/ZNSeV4c04uH/B8QN8YFVYwUA1SLATSJM
         kVR/QSk3MVY96T5K6RDoBnWfOQEuSwlDuqwZlUaWBmF936ycKQjqteey8BLznyw8ip49
         IzKA==
X-Gm-Message-State: ANoB5pmZ1HvGmjySnABnRyQ/QrkVR9f7DickLFUDV7WKTCDs/uggbRRR
	dng3qrd36WSPqB7wv2MCqdUHhTS17ZcADrYR
X-Google-Smtp-Source: AA0mqf6+ON9YCNMqvgS4Z70cV8ixaeVDjHjBP6+s4aw+cLKlnc4ZDE1hqeEAmTcfNGn+ZDOxPl8e9w==
X-Received: by 2002:a05:6512:3885:b0:4a2:2d86:ad85 with SMTP id n5-20020a056512388500b004a22d86ad85mr1779468lft.277.1668233933019;
        Fri, 11 Nov 2022 22:18:53 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651239c400b0048a934168c0sm714172lfu.35.2022.11.11.22.18.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:18:52 -0800 (PST)
Message-ID: <4b4d7773-d3eb-8bfd-7b83-ad87a6b7d13e@linaro.org>
Date: Sat, 12 Nov 2022 09:18:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 02/22] phy: qcom-qmp-combo: move device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221856_874538_7E2D4783 
X-CRM114-Status: UNSURE (   8.10  )
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
> Move the device-id table after probe() and next to the driver structure
> to keep the driver callback functions grouped together.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 50 +++++++++++------------
>   1 file changed, 25 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
