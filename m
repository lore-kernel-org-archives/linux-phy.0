Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D94EC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiILXW716RRnLeU6lWZ8EyVhe32qTTHfeGxoxuNOUiU=; b=uIi8zAQzjXNF4S
	LyVZ+sKFJoB7BHRcZ4H4ssfNLhlLhHYYpIIlcfAPhLCwCnUUaGniX+4oMEbCYe0NmkRAxZmI+kGv0
	H1/LGj7tr1VVY04Bj1PPowBQevMFj8P9Ca1ROrNOtByS5Qq8WtvfN44a44KUcqcFoEEAj/9Ptb51b
	eGHgNsdZWYNINuFqEvVGOtXw3Cnyo0c/k4F7IRgczcLNn9vjSaZoTFVRP2Qkl32wIYSkLLOkr+7Ur
	kNJ+lcsQpl1C5kjyZsa+sxr2M7ILEheoa+RaCYJgWO8riuolcLFQTc0qXQoaaKAF24L0+VOhkqyEZ
	7tE1LdDbWJnqECNz9RHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijAE-009NN5-Nc; Wed, 12 Oct 2022 21:21:18 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oijAC-009NMV-NR
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:21:17 +0000
Received: by mail-lj1-x22f.google.com with SMTP id b18so26066ljr.13
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gMoJtkP6GDIvxHiFlOtDDZAchlStTRj58VoeHhcLfyA=;
        b=l8IBEA9/bY3lLPl84OdADiyojZcsaaHG/bRcPFzNy5oR8J1vniBNQ8M2bj3hrAoF1G
         e4/0cB4k7OmWIAvZu9LpxLrbhFufXcLxvKxs02DDE55iUcZULCL/uImMqL+F4qGNnjbC
         NqWupxvSJIbv+9vvcYeJqZs9llq1thPLyZk04E4jx4ZdJ42wYQENMgD4TLlbBggoCyMA
         lhz9aA4ijC8mlxvtWDGAwEkL8q8MsUV7xbGpkltMTEvzFlfi3r/il7hbG4Hvbj4uiiQR
         q3ElyOlMCSUg0Y7HvUeqIzXeSNoANbrnBiyy8LQ/5toAZIl1xnhD5H7RPlXpzyGeqmIp
         ySig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gMoJtkP6GDIvxHiFlOtDDZAchlStTRj58VoeHhcLfyA=;
        b=J0k+jLC8JwVAQNMaLSXJcOQl4vyttJDZKiTzbiFO38Bk75SF7fDrBQaTHlrt9LQ6Re
         21uTFZRLwRDsXB74zaTO/Lz05qi3jgVsmqv4ZmxR01rTuVN9lgPlH3C/HOmwLmyFT6jM
         uj+rNwZH9ghX97LFT/wAcCXhZw4T2NF9D8OlxXj98YwucToqvdsX0mr4Y07rNjSpeq/o
         14zILBAYfd2XdgAoTV6FQZpT6P0G7yLrBRC0CLYgcmWNEV9pqwEc1Gx6RAU9p4HSm2IB
         DCEatayKRqs9FEk5SflgjPBCP1oEUM/CKrqCZsS7dnIL9ipg6DtgqXzEv5AArf7a8qVm
         SXng==
X-Gm-Message-State: ACrzQf2I8odWeKMwYuii/0XgPBJ+VFcvgPmxgA/vMCy32wQqWYYgIM1c
	W8jBR9zooTaYtWTCpNKfliSd5A==
X-Google-Smtp-Source: AMsMyM6U3PEKV/Z4doHXSyjGCJi+t8X+DP4P3abKMcGtoJYTe8TU7GsJWVYFYZS4KVY0nUoO4r53MQ==
X-Received: by 2002:a2e:7401:0:b0:26e:506:380a with SMTP id p1-20020a2e7401000000b0026e0506380amr11252106ljc.222.1665609675171;
        Wed, 12 Oct 2022 14:21:15 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 13-20020a2eb94d000000b0026ad753448fsm121554ljs.85.2022.10.12.14.21.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:21:14 -0700 (PDT)
Message-ID: <d072875d-4275-a30f-2fdc-2ee0c51879d8@linaro.org>
Date: Thu, 13 Oct 2022 00:21:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 20/20] phy: qcom-qmp-usb: drop start and pwrdn-ctrl
 abstraction
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-20-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-20-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142116_803050_3DC833BD 
X-CRM114-Status: UNSURE (   8.34  )
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

On 12/10/2022 11:50, Johan Hovold wrote:
> Drop the start and pwrdn-ctrl abstractions which are no longer needed
> since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 61 ++-----------------------
>   1 file changed, 5 insertions(+), 56 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
