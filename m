Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F69C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ucA39px6LIWLNDcn9phZ+zP4E9oaszWB00fbYGTF8Jo=; b=nVEUaV2xyGq1p5zOcmtykF6YNF
	5aMK02pfjoUzeF/0ZxbqSh3tncnfulbu4yAoHBHjfIj6Y9PxOzutG3YQcIqKuekMZYjdStIODhQiQ
	j8OlgUpLL3rTrNIoQjBlxigJ1ImPRCRapMCCGtkFCoHvphsdLoIeH8p2/Q/gfNl0Mtf2cTU0Q83wI
	mYtjT6j8r99fzbvwd7WP8QALftgy3IfnEO0ZLqJZaew1EQHz+i0mf1aI8wJx5iTrdxvF7QZYiSVQS
	A9V5mu/6iBTaKW0lTmPGF5NWuaJzSYZQyiny1Qd07Bxc/xAKDvBArbT+GJ10YderHFvEbIwIoHEyh
	k3jEDa8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQYN-00HDTc-NE; Thu, 22 Sep 2022 18:04:03 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQYM-00HDST-05
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:04:03 +0000
Received: by mail-lf1-x130.google.com with SMTP id a8so15926099lff.13
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=H7+ooF/tH3iY7f3hSlBgtyNTBl6q8LL6YfgYqWaZw7U=;
        b=Cn0NpsLM2yB5hWPYP8CZLXMb0t/ePWWGynaimsTKmIi5sScc9itfDLXGDUFVAfmMlu
         aEbE0bIfL+MNO94VsxBnspF2TDTaKS3O2gyzkjSOvrO+FSPR9uB+8urRbE31q2ZlPd2j
         bhl/wNdoraysSwIugaPlhak7xPNBeDEhYcGswA2jVFhx0im/RxkFGd46bLFQq493PAsV
         GefOaeTOV96bKzFx/cFHD4PNQ3p/OqKvY16HN72vdWuyqdZvLGqAoUISXRATuE+D2o6N
         RN9Cv09CKIHhWkPIqx+Vle91aQIyfAjn+QE0lgUE5xpoesZNAm1+MVryxG5ulVRJWINR
         vRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=H7+ooF/tH3iY7f3hSlBgtyNTBl6q8LL6YfgYqWaZw7U=;
        b=m/vGuXvDmhTDw4Vy89E9rBEoOIdSht1FlZ4fFAbKa09e5PEYALP1qGTLP+cQ3vcTgT
         fWz/c3whqZzNuF/O8riX7vGbBcZKfLEZDTvPom56PzSP5AHB2fqlN/qzg9Iu6UVoqOby
         cG4lmEEjZtmXeNOPx1imcNERr49MS2IOXWFKr1IqqmWyxjTz7l8/DFoZyNrBedqszzQg
         AdE5zhpVMP+lH3EA2nviFbwHcbNACw4tS22BvCvZH9ejCcd4pUlBLK9L0hYzNbfPD6tT
         iuR4HKoR5C20CQ3NpTapzi6u/kSB6KWPCiskmS01cK5BEuMXnWSgIQ0ODoLYcS0zOWsp
         iK0Q==
X-Gm-Message-State: ACrzQf3C6rqRaj37SBmqnN7q9cNdfoWLDCfvLQKzIZnj88sfP1w3NmR7
	/rbUTNDK/LUMAsq9OL6SYaujPA==
X-Google-Smtp-Source: AMsMyM5v/2seiSERhm7v2X9MBz/y6K555rKFmNrrAWfRC+uK2Gk91A1DY7J1HrzMSf6CZQCa0LHY1w==
X-Received: by 2002:a05:6512:3b0a:b0:49a:7ce8:c450 with SMTP id f10-20020a0565123b0a00b0049a7ce8c450mr1907267lfv.231.1663869840355;
        Thu, 22 Sep 2022 11:04:00 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512068c00b00496d3e6b131sm1035691lfe.234.2022.09.22.11.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:04:00 -0700 (PDT)
Message-ID: <ee1db15c-e811-2eef-dacf-f6de42b00aa8@linaro.org>
Date: Thu, 22 Sep 2022 21:03:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 4/7] phy: qcom-qmp-ufs: Use dev_err_probe() to simplify
 code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-5-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-5-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110402_074369_E1F8346B 
X-CRM114-Status: GOOD (  10.44  )
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
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
