Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE6D8C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qw1rWAOz4ZmS+n1dtFrxWD5aoim0imyiDtnALcVfSu8=; b=uPcn+LSlDb0zXS
	NDlvVTLo9W1xUx7y90Y9SqDqzo0o+JG6oLhjLcyU9nXxC88xgakSIr4SzqQ4llPzeyxuYOnDtPR/A
	ewqEZB7GAkxNoKfz+kIQqU4VAO9WG1T/fTDVB7rFJuTuM+G2CVlAEnKlpCuTg1SdXReaWOnu8OgFW
	on+Z1aVSW/HdANj0CC4/42n00l/6HIKyg6GWMEc+gsbsNQHQGFUMxBuf0DnVHEophFAq/4O5zwBAS
	cw8NlP2o4OUN/uieOCqzn78qxGURK+tiM2wSriouf/u7m9b2RZkLkd2CWORvdXIs+PsZN0WZkbbSI
	PBgtbOfOs7f0fxrU3ODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl4L-003xv6-Av; Sat, 12 Nov 2022 07:36:49 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl4I-003xrN-HM
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:36:47 +0000
Received: by mail-lj1-x231.google.com with SMTP id u11so6849320ljk.6
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+OX/giQG0JpVo/NBsHgV87sgp361wbPnuLuWRkMeULs=;
        b=J3lsKMcD7uIsM0UFE0MSJQWf16+ukS9uM0wZM1DFKInoWE8WOV/SoNyfAO1y0zbhsM
         IxlyILDMtahH1jkjr9QjEEstFcG+NgbaSQ/hekIK0GwBes3Ox5T5reMcFlUT1DOee2SP
         fbIp/h2LBBr+UAWTxCu5FTcfuHiYpI599DpHn1yrDEnaHfgBoBjhwKBjpCwKVRQogqCk
         EAc1O965NYdNsXK88aI2GBLHWq6q/cE4S11aNny+wryoD8rSB4mKJeZgWbxKjI+ylLSn
         3/tZ763CzMMo628XPlmSbev1vj3tjPn5umBbC94nZRF/ecTLISQEhGTWc1l1F5IKusUq
         vE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+OX/giQG0JpVo/NBsHgV87sgp361wbPnuLuWRkMeULs=;
        b=8A24gLoSOGHETAe1gyuvGAurISBGFyax/1gkbhL0dvb1gTMPgcMP/NDoX9Ewnk43mR
         tGPJBtSbgL8KuIgNAFuHChAUJVpBuedl6Hm0NDpsSCHs3SJSt6/WpPlsvAsUOiuDJdro
         wqxkommqXReErVdaRqxdsD26peqGv065bKmrTogmoMnzHQVUe/spjPVD3kJ7cguTKqLO
         BcLMSonONcuKV1orJhCHXSj6z+q7AwOlWSZ5KMIQB4RySvY6H35cMHTHtwKT7F/lI+XF
         CbA07ctPv1J8dqyUim0fHQJHtFTXWyQyTRBrEIQ7LtJDTo9YTeA8GrHmMMduvMdrzw13
         t9zg==
X-Gm-Message-State: ANoB5pnoEAlIHEJaUdpjI8mvMzpJA+wMKRqrbjJZyfTP4xCFCmW1+WM0
	XJlwG97+J4KxeHqZWAdYaweZqg==
X-Google-Smtp-Source: AA0mqf7JsNX4MDYLP3mvntvPXJaVl5ZVOr7fFyk+vkdPxd3zNoddNV6phcMz2o7yn2B91qjLeZWedg==
X-Received: by 2002:a2e:94d0:0:b0:26d:a666:6358 with SMTP id r16-20020a2e94d0000000b0026da6666358mr1535671ljh.148.1668238604360;
        Fri, 11 Nov 2022 23:36:44 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q6-20020ac25106000000b0049f53d53235sm740229lfb.50.2022.11.11.23.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:36:44 -0800 (PST)
Message-ID: <f60d616d-a729-8862-00b5-3a4a62f79f49@linaro.org>
Date: Sat, 12 Nov 2022 10:36:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 13/22] phy: qcom-qmp-combo: add dedicated DP iomem
 pointers
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233646_612589_B58876C1 
X-CRM114-Status: UNSURE (   7.97  )
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
> In preparation for merging the driver data, add separate iomem pointers
> for the DP part of the PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 246 +++++++++++-----------
>   1 file changed, 126 insertions(+), 120 deletions(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
