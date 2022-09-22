Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70213ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1voNhxgsdGsIo4uaoym15RRdrIcr9fkp6aybbYE3xeE=; b=md8bLOexV5EcZs
	DzheWihVJfo7pD0XVxmsEJiAqH9fL0FiNQYK6kZTUNgYZkQZalp7OTi0k4QIuTj6ayWEQWEgJAKwc
	LQJ+pVkea+pM/gIy7SG7IIp3cE0NotKSS7kEJnSkvvBLLVU2cqM6V5p35sPpTTvS0ZcMPWW0J8jcU
	NI5UJfPjseY0vfFjIhVx162+/3MMee/7TZ+zgXzVp2tbsREvMPUm9adhoWvQmXU2aT1WIjOLd2laW
	WlLLxJ+y5EmlqIGFwRA5ZrHkzqKh5oIKt0OxD4WfqTHzttxIc2sRza7NYY4k9KhqoRIdaNyypzT81
	cvah6M0kFysSLEebFnbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQXH-00HD5V-ON; Thu, 22 Sep 2022 18:02:55 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQXF-00HD3j-VG
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:02:55 +0000
Received: by mail-lj1-x22c.google.com with SMTP id q17so11905245lji.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=EshXMg3nUCHJe7fYmuvFDupXGZNi3eqDvUI4H5rj+18=;
        b=DVd2fmll2k0DewQswrBXEruZUT0JaLC2YswtGDjFUwXL4v9abfjTOyN0Jx8C1PfzBw
         kbCvqP2/pX8ZdcLDV6se0YoqafGud9kx5sL9nCEa4tBmvE+CiafkYQjM+cHUtlsRxrvI
         cE6hB9Ls876ApMG+R8Pk56OT6XdiHJ8mD5MTUjcQFVhXu07c8shJc8c3GBuT1IKtwrfN
         hCZmZq9FAtPDH/2J66kZLO0NfRK2IOnCcwyOhwWqZYRVIGXgAeRQpnDmTy+SqAXGvBpj
         tRrGjUBqZ+enqxJ62VR3NUFQ893HzB6OHTJAKG2v7XaWwc9pZRIMsYBVZNtTGpJWw87H
         rubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=EshXMg3nUCHJe7fYmuvFDupXGZNi3eqDvUI4H5rj+18=;
        b=2BJNOfbxthxdIfhQ+ZZojpfs0JVthcE+AEaG5PIae3cXG46Wa1bmrqPrLB0GSiFUxQ
         BzC/kGNH8IZd53JU4r1AozDHwCYgX5Dviz1PIwi6H1FXXmhIK74Xhz5lCnyD0p+P9FCh
         89qQIPi4/BhcrUTeDPkIgPZzpC3SbA7hZEuLt4J9VD+tn7cUmamewRtLIkLyhOUqCK7/
         y9m6wG8piUm/exCwf8UXVMo2aX61EjG/eX+UnfqgFGvxmOrjGL4eXL3VTo8aRVYUpOhb
         SfYm6XsVWFSzna0afhlc2ysCjdxxAD+mIOeUs9CtB7n3W+Y4q7CSB/AiZq7NiikvkZYk
         OcpA==
X-Gm-Message-State: ACrzQf2xLWa893MHpGhtt0//dDKYRUzjarF9p3V5PfrDvJI/bweiDF10
	YiAYIVqRJPKrVsLmFw3NSxLRDg==
X-Google-Smtp-Source: AMsMyM7yUdTtpYylhtYbX4QNSfYH4Dti3r6SyaejRw3rSVmveu8hWLXUMpJ+Zm6ekHuENAp4gGF6+g==
X-Received: by 2002:a2e:1458:0:b0:26c:3b83:e039 with SMTP id 24-20020a2e1458000000b0026c3b83e039mr1642085lju.484.1663869770188;
        Thu, 22 Sep 2022 11:02:50 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c4-20020ac25304000000b004996fbfd75esm1045483lfh.71.2022.09.22.11.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:02:49 -0700 (PDT)
Message-ID: <8de63b63-f88a-7342-d286-8826a55e78ab@linaro.org>
Date: Thu, 22 Sep 2022 21:02:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 17/17] phy: qcom-qmp-combo: drop redundant DP config flag
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-18-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110254_039101_B9067E91 
X-CRM114-Status: UNSURE (   8.89  )
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
> Drop the DP_COM control block flag from the configuration data, which is
> set for all combo PHYs and hence no longer needed since the QMP driver
> split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 63 +++++++----------------
>   1 file changed, 18 insertions(+), 45 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
