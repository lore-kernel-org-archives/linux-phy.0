Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B72AEC6FA86
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEVe3QHQgS+mFSPCMTvZ4jMj7dKdXazPiPrt73E8UxA=; b=xybkEXFZDU355L
	VHBQBgElRcctZhKO+VErWtDNQy43HLpFZhwJgah2uoPLl/q3IFK/FwrLhm+q66kjsQY1te0pxPqtI
	UWcKqhYy52r57c6mEu3cb22/rbLPrzerxqcSIf8CvQfxf835rH3kSnApepj27g0G88xl9DSvNg58g
	p54QhHEMptflgrM0Wiatklg3qe1+Ft6Em9y1mJGNtSMT9RCeyTtbI9xpEtFFuNlmASXixDpx6kAf5
	z7Ldufnwky4iDg6GJJB0m0QPgqxSR60TP/HknLRuPIQVdNS8E6uFRg0yIgpYozNP8Xy/wn8FqvuRy
	kEg5BwjX0AmaWP/UPRSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNlt-00GHNq-0P; Thu, 22 Sep 2022 15:05:49 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNH1-00G49H-Vt
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:33:57 +0000
Received: by mail-lf1-x132.google.com with SMTP id z25so15044772lfr.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JxU3uKVUWz+9uazTKxzXKSZw/vdNYr+DWen17yUI8Jk=;
        b=UzRNr1HH172T/6Hta/GANHerNgkfJHmBMe9uw+ywAaTpTi2qPayhfmmRTtUZNWBxdS
         +qt1hjin1V8oFIv3vkfFXaeAon/rqqNm9dB8ANbt+O+/6vW0BC/hWtKV/iJnxZ5AP9g1
         jxC1QSjg7FIqU+lJlPq6gJXdz0VKO5XdnAqoBJHIjI81/4y0326iUeioV0TljBBlqGkD
         Dh4/n3phj6QmamyVgATL9y0RC6bpZBJFcCDdf+sRWEnvTawA4HqwRlI6dCOLD2K5oCHe
         iQlN5ArVdox5uwSC/vqFm3k8AsKFpraHMHrtzAs7cDm26O1DIAhRZPg467B5pMlsTXWM
         +m1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JxU3uKVUWz+9uazTKxzXKSZw/vdNYr+DWen17yUI8Jk=;
        b=A2Neg0DHantqxwKdlvEVulgCfDTDnMESOl0Jwm60K2kFW6wMuZldmnMQ9hJK7s8XUh
         QSyI5LyhEn6YF+wPhOG8Lh59jx6qz8NSJ/kVxdBndFevdCcWO7XvTu3IcXk+XGX+C3FV
         Cnr2H59u6S9EoUTI8w0xFqIp2Za66i4SwiRF+Uzvj7AJNnv48/mH4LKdLYWGR1m6BBoS
         SK4KXH/7R0NdJzIgQUWWwgTTcFaMjEStpDUz71XlOlRE+/DmptfJoujYCXywXuQDN5WU
         MTTxR2wvGARyL1yjiwUYJ2+J4z0018/Rd6oOvx8UaQep9NNBPWFhu58fWm/6iBDUbWA7
         6NHg==
X-Gm-Message-State: ACrzQf0+C9bAxmCXollQ8n5bHeH1yZ5YfhzEwBc5KibKlYO4sQGSkHeu
	FesGJRweK5ae6gM/C2+bxUU87A==
X-Google-Smtp-Source: AMsMyM4NGpSqJPgoG+mfWgdzhFHm14FMjK4eGJDPejgN+ufox6PMD6+NsIo0h3SwZCrkBLk3uRDaJg==
X-Received: by 2002:a05:6512:409:b0:49a:eadb:5ec9 with SMTP id u9-20020a056512040900b0049aeadb5ec9mr1285259lfk.253.1663857233608;
        Thu, 22 Sep 2022 07:33:53 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d4-20020a05651233c400b004994c190581sm960728lfg.123.2022.09.22.07.33.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 07:33:53 -0700 (PDT)
Message-ID: <f3f740c7-1463-28fa-bd64-4da6612e3f09@linaro.org>
Date: Thu, 22 Sep 2022 17:33:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 04/17] phy: qcom-qmp-usb: drop unused type from config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_073356_090616_3710057C 
X-CRM114-Status: UNSURE (   9.09  )
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
> The configuration PHY type is no longer needed since the QMP driver
> split so drop it from the configuration and suspend callbacks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 26 -------------------------
>   1 file changed, 26 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
