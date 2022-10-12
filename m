Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 016D6C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qee0OEQTpachwcrYfPBhX1+GYTo1dkZNmupI34FBRHA=; b=wYe58MtKL+qCfu
	p7EsZWmR9JhPFMeL4CbekbXDjdowQoXDsCafFR90GNQFPRNPOqN1M7+nw3DiWUvtKwfyzjupFCIgO
	zVcN0oZ0B3ZFFZMjw9UtlLuRc4g/DD3KRky+lR1qfSCZpZRpp87L3leByHqOKd9di555ENH4QaETB
	lEy0xrLE+iEkEoDnldyMhOI6lFwzKyYyQRrc1MJN1ZZOO+IFDH+i4Fjq16LjXJmgEsKCc0TD1vaMP
	YiGw5ZhXV9SortgYeIUwc4shMJyii1tdStEj80fmpF8NlSYYl/mfYGlyO1ftpqJ98vDYOshoQmZ6S
	75iTXYdT9Pv8WhhC3cCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij60-009N3A-Co; Wed, 12 Oct 2022 21:16:56 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij5y-009N2Y-0E
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:16:55 +0000
Received: by mail-lj1-x22c.google.com with SMTP id bn8so47340ljb.6
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0VBSiNNdP6Vmjj9hybF4bhmKiJc3VXo8jl0DctURnTs=;
        b=FMP8F7ZeA1LdcgtFQ8df8rDtUJqjsFyu+sNiLiJSYqr86TP1Ghf0Me2o0hvpcH/65Y
         a4W5vMVWeshNrtI2p4b/QsL0TgA9Nmt1ruVkTl0xmF2qZOfA+sOwK5p5t/L94OYjfa0t
         ttj0cYzZ2CDGZnSTSfKL6PsN3D0GhO5L8vIwtDjldDjSshCKjM9q4UlvCrJ6QAiACiaw
         Cjd1r08RnSoba2v67HDfJkSsdXQgsjqeiBz4+nxNV5CSwovN4IOXJiuoz1/r/F5AVbi6
         dtMVa+0hj+5mqdBtD1SFI7uaqf18AWjuyyWIs1CC1PS+2QceBdfVwkJ4R+1VX2ocQDwA
         8YOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0VBSiNNdP6Vmjj9hybF4bhmKiJc3VXo8jl0DctURnTs=;
        b=liF12SVTUka/K7DKC5beUhzgRRdm+AV+ixOSPACMbqvFVb57JymW4+ouFTrSW5Y9P/
         8hb++ea9KcjN08gVKRaEFE7fTEkLySXm+jmlTIxpH9zyY9ejLgFIxYUCJcXAW+VKc1kJ
         rykx28GttsDhl0zCu6rpa1BT2ltADuYlEUKtZactpAvN5seTtNMJX+FqwaGKchF8qp5s
         jzKsx7VAw7Go9B+u8tleyS3qyUzdzXl7rXRhKSRHBDsv70o4p2HUz9gn2AGGtun7rBTc
         IXfK8p1C6xijGPYyh5ROERi8zttgumYJ+X/YMah3YvG3QfvwxDIVlv2wT9muevVcqY/8
         1YNw==
X-Gm-Message-State: ACrzQf3yzJ3zftrFbooPaKRcOh/Xq1O1F4fs/3Z/yQM837FT3cPpWZcs
	3x+EzPqRpKPN+C69GAHZODOcBw==
X-Google-Smtp-Source: AMsMyM759DAF2IJ7L6BA6YB2h2c5K0FjBvRsLYu5HqIy1exNyzhwKavziTnQkKo5Uy72UVJV0PyOKQ==
X-Received: by 2002:a2e:a889:0:b0:25e:3d55:b092 with SMTP id m9-20020a2ea889000000b0025e3d55b092mr11979006ljq.402.1665609410477;
        Wed, 12 Oct 2022 14:16:50 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j28-20020ac253bc000000b00494792ea34esm99484lfh.273.2022.10.12.14.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:16:50 -0700 (PDT)
Message-ID: <41f7aa58-839b-b8b6-8b81-24f9c06c5503@linaro.org>
Date: Thu, 13 Oct 2022 00:16:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 15/20] phy: qcom-qmp-combo: drop start and pwrdn-ctrl
 abstraction
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-15-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_141654_093530_D1973F34 
X-CRM114-Status: GOOD (  10.04  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> All USB PHYs need to start and stop the SerDes and PCS so drop the
> start-ctrl abstraction which is no longer needed since the QMP driver
> split.
> 
> Similarly, drop the pwrdn-ctrl abstraction which also is not needed
> since the split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 29 +++++------------------
>   1 file changed, 6 insertions(+), 23 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
