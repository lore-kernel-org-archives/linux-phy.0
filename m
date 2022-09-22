Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C7DECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gU5PeKXGis7iBU/TY9DBzs75tAvcLiTotHAXZcw2YpU=; b=wuCy800Q+OoXvXDo15ZYV6JvTW
	RpT6VEBEssDKm4uyodOB6pcLu4f6hM9en0q7lvTaNvq5jrKmkYzwgjN+breEuvCayIU/Wmxy6TAZZ
	FrPdbxo/pcG7Cl+QoSOzFIkeBHwEFKwEpjKE2KPCESKHVvUoMJW/m2tLBC0AaEd1fbIbtvxnwS3WE
	RqswqpXwwV7faxxe3rMT8xYVdEvg1JOhkhENl07Qpfx7AiZ+5AtplOr2qoKywTJcdYk4p6fcKIN5Q
	OHahwbPnCJHht7kyD5e3xRSua+M/p0S68PK/HNA30AGWknCnxzoRIxGj1mt4Hthk17hmguT7krs6X
	d7JQIIDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQYA-00HDOu-Kj; Thu, 22 Sep 2022 18:03:50 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQY8-00HDKw-Hv
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:03:49 +0000
Received: by mail-lf1-x12d.google.com with SMTP id k10so15990273lfm.4
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IKFX2PMEfz2vf6aqIVh0l0NaL+tVIPErD6UiWDYhfQI=;
        b=YGNw3dPGi16qwvxznOjw0IrqWfsjy1NZEP6PQlj62gENwYwNmX6k8ty9hEBqhdoLZP
         DeM5FX4pWFO4k4PtxtZRl1yNbftunq5cZDsJOoIBQ0yIZbQXnKfSn6rgO6RhKWuwyUZP
         OMfF5seRAlXJM2x7Y4gHKxZjiRvM/ePZbnf6SrhCz5VxvdN2Pc2t33rDNkkfTljoEXUr
         NuS+bzGbp4xGpq/4aPJVObOhS5ToETtWpCtYJoBRlJVtvXDboWC9tdcQu+qchAQww4Rv
         97XLxLAPspzmyl+5Sv83vADWKLfC8GR+mE3b/j/rFLcmWosKHn+AlTqr3Nxvw5G5RXxN
         sWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IKFX2PMEfz2vf6aqIVh0l0NaL+tVIPErD6UiWDYhfQI=;
        b=KNl9OK96e48gRK9w+djo3FYw85kHu3o+U4keeGH6m2Q5RBDmXrWLbi0QgNikPfvRWP
         yS18UHvkBiguZtLBH2CFtyDGJcrGcBaPcPCTFETgcMTGo79CUrW0wIK8X1rYEbNun328
         WPKp5veUrcSwt8GjKaDRif0O+8Fa3V3GNDv2G/jPYGGXr1uBf70r5V2GXXL2xZ6/P8GR
         TDHe2Io4j0zVsn9g/PCKg/8O93bJi4ei+gh/Q7UGRwvMKwuoeQcTmev+NfjGlYeeBMC1
         /rHMt6SwT+m6ZHbvF3Xlk4ULQ5qP4EwZU5+nHVkZLpyzzGq3DYXmjDSM5eH+XnteJNc5
         J1jA==
X-Gm-Message-State: ACrzQf3hPuVWkyMz11sJDj50NqEAky6ncFizQbxsYsR6HVxyNgjZfGZc
	d3ZZmi2pTUpSwnh+EFSO68KN3A==
X-Google-Smtp-Source: AMsMyM60gG3YpynvPRcgnNPMdkMfZ4LHP4AyKrypAsz+iZT7vIWuTT7U4ikYf2gL78Gj2tdsaJb7TQ==
X-Received: by 2002:a05:6512:39d1:b0:49f:6084:4414 with SMTP id k17-20020a05651239d100b0049f60844414mr1858917lfu.195.1663869828101;
        Thu, 22 Sep 2022 11:03:48 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x13-20020a056512078d00b00496693860dcsm1036322lfr.232.2022.09.22.11.03.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:03:47 -0700 (PDT)
Message-ID: <bd519fd5-62ec-fe11-96a2-40c402d7f04a@linaro.org>
Date: Thu, 22 Sep 2022 21:03:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 3/7] phy: qcom-qmp-pcie: Use dev_err_probe() to simplify
 code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-4-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-4-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110348_638911_F8FCB2EB 
X-CRM114-Status: UNSURE (   7.96  )
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

On 22/09/2022 14:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
