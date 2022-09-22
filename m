Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D4EC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E7j3TNPBFeaecCScLYpntbZq3kwJiJECjHkcbFDGZUQ=; b=yAXTroGZqIpiN8P/AJoPBbDaR+
	vha4qHzz3FWUpBvLgtGhctZktaN8Dkdnkl+CIPToizPOUtZGPvWbUkck+9T9g3gxZ7rVCFGZ1V0m0
	IKATxETVxEjHgYMjoKXXv5zL9IGPTkCQ5obm8gKWjM9rwX9bjK9msztPbUtg75i5Nh08x3wz8V97+
	U9dDEd13GYlHmKPnC/C98IstPEJM7tQ6yWp66FvjVsqeCqki84j8aQKHjmOPJltwxfMqQdJyiGLir
	TvArrYWUmalDqu+90e7o/zgm21+wdwgZK/G7X+PfiU1TWL4wP53uxl5Uh3FMC0gCbKX9fx4yRYaPC
	7KfDXtgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLbR-00FRwr-2d; Thu, 22 Sep 2022 12:46:53 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLah-00FRXI-1b
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:46:08 +0000
Received: by mail-wr1-x42a.google.com with SMTP id s14so13373269wro.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=iW/HmlkUSePa8U4fkh6njA33HFa+ZhXmwd5ivDrMRoU=;
        b=n3Yq/b/KU0qnX4YnUfFJHBn46tzBINYgtWGSjwMmQECl3BWgVWyWG7bykS0AUPFSF0
         gyI5AqX090PsVSgoQvNZ/1reyu1Vvf2pbJXg6/VJhAeBsCp7xLCYz2KavFr4cEtZhpje
         WFjiIpLeYYve+5r6fy8N8pj4AajgIlNDH8i85hxpUCBs+o3lfSPuU6CcCh70cSUPzWA3
         su3uUbUrp5h0zBbVWoz6u3jFpYXsyKmZH598VNWd6Jv5i+ydAH5iXqHeveBC9546Hzwn
         rKUfftYJRosEBQg939F7O2r4j4c7cA7t3QZJUDzlZtg6T5ypDfww9q8XXonJUPBONZqg
         7VkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=iW/HmlkUSePa8U4fkh6njA33HFa+ZhXmwd5ivDrMRoU=;
        b=z6DebyR4i9PpOyOg5njZm2MhJxl0wsQGBPTyGKaa5LWFKuS+XE7rLjk5m/Sw3VZ6CO
         Bu7YrSUZB76aCNujbjsjthDNNGqnYPZz/C8YV11gcAu7H9QTd6C9MbCYpMrY+4E5PrIR
         lgJQQ6jFni+er/m6S0U7xDm0FOHlvyo7soaEYVQZ03qCsBRyWC2D0LARaojAjYJKEHYn
         fifcswRoxZgreeXgP4fmpy3toG/v28KW1ghX6wtJ038jEEu4kF60/8CqPe4CQQgoJ86w
         kqVf8ApZto+IOPzOlyy3CtSYg/rJakufniNgn+2KDS9+PfkoVjVCpSmskS6wcMKVPe2f
         tPGw==
X-Gm-Message-State: ACrzQf3aVZ+xKXwil7Dd0B3jNaMQ7T7iA5bQ6RBdTchC3zzyK3wMdjQQ
	tZG1Nhj6OOBAz1ix2xB+W6bdeg==
X-Google-Smtp-Source: AMsMyM5EBo1A+iTQ10BNdY10ujdRavbZQbwvvjhBxT5y9f3EoZrEEvsu647FSv8jr0Ikn81niZaIiA==
X-Received: by 2002:a5d:408b:0:b0:228:9c95:3b66 with SMTP id o11-20020a5d408b000000b002289c953b66mr2023616wrp.90.1663850763172;
        Thu, 22 Sep 2022 05:46:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6? ([2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6])
        by smtp.gmail.com with ESMTPSA id v16-20020a5d6790000000b00228dd80d78asm4960470wru.86.2022.09.22.05.46.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:46:02 -0700 (PDT)
Message-ID: <161594d3-be69-c55f-09ae-314c377e0ca3@linaro.org>
Date: Thu, 22 Sep 2022 14:46:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 3/7] phy: qcom-qmp-pcie: Use dev_err_probe() to simplify
 code
Content-Language: en-US
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-4-yuancan@huawei.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220922111228.36355-4-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054607_140669_552D8901 
X-CRM114-Status: GOOD (  17.40  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/09/2022 13:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 2923977b205a..6bbfaeb23672 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2458,12 +2458,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>   		return ret;
>   
>   	ret = qmp_pcie_vreg_init(dev, cfg);
> -	if (ret) {
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get regulator supplies: %d\n",
> -				ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to get regulator supplies\n");
>   
>   	num = of_get_available_child_count(dev->of_node);
>   	/* do we have a rogue child node ? */

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
