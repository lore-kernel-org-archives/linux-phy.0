Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C00AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 11:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EorNaRBHEY5tsLjLNIqcHMgtuStQkxUmp6XGAmu71qE=; b=b8S3VCkhmWisNp
	dbWqWbnNidkvYTbVGSI5giw9rQFvYQ5JpbKx2D03SzHx8hnfK6u7AWdXCjmMJk764dax5IGD++DXW
	f7IR7VvDghIMhnvrN7/COEW8Ea0Le6uc8U8aNyiCzk49S0IYok6cZC3MQ4pEWg9kmsqdtIGj0Gw8V
	on8cDmwzqk8WgJN0QqhR7Q3dlbs26aMt1eoy1RJHHgLZyFIOt6rkjpWxbY5GPj7M52vocylsRy1lc
	6susjMxALtYv02UGerplfdFlJYSQGkUConkhHYwKanl/2SSb1lbyl4zDuV25KW4VBq099bBbmfI6d
	BAfKADej7Fi/HSt/xSnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZEo-007Nr1-Kf; Mon, 16 May 2022 11:50:10 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZEl-007Npt-KO
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 11:50:09 +0000
Received: by mail-lj1-x232.google.com with SMTP id 4so17761422ljw.11
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 04:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=ZFe7/wdjx5mxMqWgs4Osx7jXifgklv9bLHg970iFRUk=;
 b=klXOGYWvVmZaudgsJvnSuPoQYgQ+QiMV5vqkaC5z9UwO2+FQ+RjX5dstk7S+s3ver3
 bh6ovJTb79U0SL4tL8kPE8hhEM2NE9L8TLabHBmLAxv850tLy8xhJQzuSU0Vsd2Xhi/k
 dDGhg/s2khWI2W66z7hFAdU1/rdSF5hFq99rhcCU2SZ2dsRixVRV6wx94kXfV8G3RCpI
 BXaIwdJ0de3pS+YkA1KEv5kCCdIqA576bir65XqNilS0DleadYPaoZE4hFccFdWy8JLJ
 IXBIAnGx7QiaMpTN0MtsRG+rKSNJ3pZp5mEYJZ1w6wMN8aNvNgQQg/n5+ck2KLY/Rpxe
 0kTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=ZFe7/wdjx5mxMqWgs4Osx7jXifgklv9bLHg970iFRUk=;
 b=nZLX35BgUyKehZEQjQIs/cGvHI+Q3q94/wbVEBLz0Mi1H/fFALH6C2xV/BP+jNlEfa
 F7VwI38B+UJ8cRN31Svx/ACVWDcFri2wSWKk3SwwRWiob9UFvLP+JbEd+7NIdOygRdNi
 Q2C/jRYMnjIDKqL0+gxrU7fZE+cCIqNnyga6LRqxXnCT+3dBny4oumzAJj9N9bLLyLEI
 t4+X98TlurxE9nFBslFone0xO+5FRiGme6KvBDQ2EwtkAM1WfG2XzEMVzfXkvVwk+8ne
 vGUW+yYmf8gWfBTXggnBLO7qETv9BwNxmQFWDNmUS6c/QHD7qdh2BRFa1jvsrLgrciC7
 +i9w==
X-Gm-Message-State: AOAM532dU7yLjG9syUBQ1ahadiAPH85u+dNnl7L7YB/3VJpfNhWlMnxg
 eRElfrtzEU43degz9Mu1DiHlNQ==
X-Google-Smtp-Source: ABdhPJxl43mB4mx017SbIkg3y2yheFOLhF2zqj3Nl6AA/ntbvBQkAmYFbpoFQs1XOI3tKOM4axN6NA==
X-Received: by 2002:a2e:bf1d:0:b0:247:dea7:f657 with SMTP id
 c29-20020a2ebf1d000000b00247dea7f657mr10934815ljr.454.1652701804105; 
 Mon, 16 May 2022 04:50:04 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 m3-20020a2e97c3000000b0024f3d1dae94sm1533170ljj.28.2022.05.16.04.50.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 May 2022 04:50:03 -0700 (PDT)
Message-ID: <652b11e8-bd2e-e1e1-363f-4f460bb20913@linaro.org>
Date: Mon, 16 May 2022 14:50:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC PATCH 0/5] phy: qcom-qmp: split the QMP PHY driver
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_045007_722232_861F523D 
X-CRM114-Status: GOOD (  17.94  )
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

On 16/05/2022 14:45, Dmitry Baryshkov wrote:
> While adding support for the PCIe EP mode support to the QMP driver I
> couldn't help but notice that the QMP PHY driver has slowly become the a
> beast with tons of conditions and corner cases being inserted here and
> there.r
> 
> This an RFC for an attempt to to cleanup the QMP driver by splitting the
> QMP PHY driver into four smaller drivers, each targeting a particular
> family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
> in some code duplication, but I hope that the end result is still better
> than the current situation.
> 
> If the idea looks good, I will continue polishing the drivers. A
> feedback regarding the common functions (ones, left in the
> phy-qcom-qmp.c file) would be appreciated.

Oh. 3 patches out of five bounced because of moving the tables between 
source files. It looks like for the review I will have to split this 
somehow. Ideas are appreciated.

> 
> Dmitry Baryshkov (5):
>    phy: qcom-qmp: split combo PHY support
>    phy: qcom-qmp: split DP data to DP-specific structures
>    phy: qcom-qmp: split UFS PHY support
>    phy: qcom-qmp: split PCIe PHY support
>    phy: qcom-qmp: complete split of the QMP driver
> 
>   drivers/phy/qualcomm/Makefile             |    2 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1362 +++++
>   drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  290 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1945 +++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  863 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2104 ++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.c       | 5983 +--------------------
>   drivers/phy/qualcomm/phy-qcom-qmp.h       |   43 +
>   8 files changed, 6732 insertions(+), 5860 deletions(-)
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
