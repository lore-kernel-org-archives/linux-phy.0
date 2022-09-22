Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C16C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl4gfIVBlgY4qYI224/auS1jNReynsofUWtNjBNiTcg=; b=vpkwLuR+8JL+bE
	MEKYCn1DQ5zdBNsq0BMW96v1+Y3vmVJhL/17Wj1AYDrn4fB7Y7QuRJfN68gff8HCU5rPRKA/j7Dzg
	eRBplSLCBzWqHTwIjtYZvmaEP+r3/6+d+JHWYd4CbZtxa36Nm3WEWzeMXC0ztFNkds99uHKojMNLa
	MYdg8L4xDsW3ZWeCkupbR3vzgiqAaclWij8IMrSvHtpYRMWWH+yKy7sL5bSm0fy8+dpTSQPCtHayI
	VAgkIkTBeY9WSqpKYdQBtoxmOHLddhk41AzQDzjN/Cej0MPCLTy0mzABiDpPoobbtjrrERIJwWYcw
	2BDLw71JL1PJWPXcLZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQSn-00HBe4-8C; Thu, 22 Sep 2022 17:58:17 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQSl-00HBcO-6K
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:58:16 +0000
Received: by mail-lj1-x236.google.com with SMTP id a10so12001540ljq.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Z6UDGtQQO72uytLS1mdZYY+ykMsfHmukT+V7PXKhUUU=;
        b=un5AMZnBGkspxOGTwcdqsEvtTbBaEz3uI0DPqrX+BMvoA3F7wZEHCZDqM2KoU+slCM
         51FNfhvfhDnvDC4zvRsJcGVkS88YpBsBMDEGuA7P8UGKnY5DKIdfkptH8n9RG8096czb
         UKEs3qoNijVsu7upNpU5YRrhGzIrgD/Ruzs8QfAPN7n5XHe/esmqkH0ouO7NMmELlL3g
         +ukcEn3i4irj3sGVd/eTVytl8J2IwRGnSimWv5AvUAdRQp1SEoql11cd2V/gbYqV9FIr
         5R8k0NCBQQTGX8mRiIpijb/sC3sjisMnJlfysoSCeL2reKz7T2nWY8zzbVXt0+kUvzfV
         2BNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Z6UDGtQQO72uytLS1mdZYY+ykMsfHmukT+V7PXKhUUU=;
        b=snW6Ugo6BeGTBamTp6X8Co9OiEzOesGwR4hA2+iSpJP+6YmqgYU+HandnRaG40Ch/D
         NtoFfffqnTmYpc81xZv0hmxTIPFih86lVSrvCKKthtOk7z8ip3pwzXY1rdQO83wJkBm1
         Z8tXaY0Z1dLHPBf75+gv6MS3w/zna/KFMh1vHimebXp5q4EI08s+s6kGtSUq1wxRN0bd
         U/Ly/478fwOa5z2F+V1NndxujhZPiGnfFUw+/Y/4jAsm9T+ZlNldRUScH7H/5qx0x0U8
         5japaYxQz/x1s/0ZCz4nz0fdfK5W7aqpMA1nbEqYavh7TeYWVgtm/T2LEMSlAtkw/6Q6
         AmkA==
X-Gm-Message-State: ACrzQf2CCswfc3TCoKrnibZXTuwMuxcqlY3Iuwa4moV+xJeuypFNR1RI
	ldI7nQvMUesVQuQsOV/bMkBasg==
X-Google-Smtp-Source: AMsMyM6UtnpYXbDYK4AyIMwbvzo8vQzvR/vwrEkKLLaPXho/Im5vTne6648dSGqr1Mjfuokw86cntg==
X-Received: by 2002:a2e:818f:0:b0:26b:e97e:d830 with SMTP id e15-20020a2e818f000000b0026be97ed830mr1506351ljg.420.1663869490310;
        Thu, 22 Sep 2022 10:58:10 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b25-20020a2ebc19000000b0026c4e922fb2sm1013909ljf.48.2022.09.22.10.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:58:09 -0700 (PDT)
Message-ID: <cadde13d-0742-039d-6701-ae15460efb4a@linaro.org>
Date: Thu, 22 Sep 2022 20:58:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 05/17] phy: qcom-qmp-pcie: drop init and exit wrappers
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105815_275098_45B12D14 
X-CRM114-Status: UNSURE (   9.19  )
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
> Drop the unnecessary PHY init and exit callback wrappers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 ++++--------------------
>   1 file changed, 4 insertions(+), 25 deletions(-)
> 

Initially I thought that it might be possible to unify the 
com_init/com_exit functions, however it doesn't seem really possible. 
Let's clean this up.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
