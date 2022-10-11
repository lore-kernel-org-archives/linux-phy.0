Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A09C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLjwDizGwncrI42EUc03qZ9I0aW2v2alu/ijHCUWkc0=; b=oRUORBDwGgy1AE
	HFPAocXf2YzH6MieczmN1M6y45A4lI1P2of5of3wsBBzDqFOpSNrQx5Pb8VHIXLjq6g0Uotu55543
	odZGg5aFlvhY1ktf0D5UOdR4aVfYzffjK3LWqiQCFApAhOo2U9Lw5hwAvuv4Edo76uIKl1ksyUmuP
	aFnRoWjMAWw32z1FGoEAFTR/hxffccEf9mU1N6CliBaJ4L6wrxZ3R36NdbKsgH/QXThufpDyFKMPc
	KRhHP6v5Tyso5xYliUjX0k1hg4s0w4HAmaVJVA5xHYEqgJ0zX6kDmMferRUtZejd4Ts4ALn3ZpVY4
	AXNY2rkOaO/c1Xb+3iSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFtI-004QEv-Dm; Tue, 11 Oct 2022 14:05:52 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFtF-004QDr-HU
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:05:50 +0000
Received: by mail-lj1-x22a.google.com with SMTP id s10so16971790ljp.5
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 07:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8vXGY2FQD0SmjquwVrvQMgguyJMrvlVrQ9GO3c0qOHM=;
        b=HkGuYtt/EZyPyD9ckg/JYMMda1MAxj0DBMlo/GDBvLTh3AKZ7WW2AIkLAx0b+E/8br
         zUila7U6c1voNoKmeB+k85RHDCck5geZ9Tx18LMvkMKwqQ2d0yvwogHPyM4IsUWYERAB
         jcJNGedzyPu8tGWv0hhkQyEbWFM2k/yQY3H6bmvu7G3OGz5Gjl3f0Yo0R7J7HD4yOshm
         BJ7alVpacFwCVTdysKBTTLNZ1XyeHKVd3TBn1Z9UudF2qMUguj75BP96/WL6Gfq8Y50j
         PRgMY6eIhEnAl4qYHU1JPFFAH4JaXu3R3IJIySTW0XEgLI8M0JdCaBLYzzshr8rCAKd7
         cVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8vXGY2FQD0SmjquwVrvQMgguyJMrvlVrQ9GO3c0qOHM=;
        b=h37W7TplgBFKc5KuOlSDYQPzAa0BP0OXMp9zti1bn0ID92GF9XFaxA+DUX1zVRBn6j
         Nri1Cbw3kjsD8IjXs4bc6MA9ReNSpYNKUvkAeNyWpZtfgItyeRuDL4ZtGqHhTUGJTQUo
         jdUURSES/Rw94lt2PuRDsZpRcZgeTd/uhD6uLXDfKVzjE01OBgpK9FhDQZQ4iJdJJFx8
         78zpMypZFha3WzcaBJrYulAX5j2VKago4b12xHWAtpbUTl5vDHXc8lqjhID7dN5z1HtV
         2UriBBjGRw7G24JIkBj8HkQ633FDaUBpkFKSgw0f9M1l3MSQAQcDsg2cU1zIDKnWHDTO
         QLHQ==
X-Gm-Message-State: ACrzQf2F3eWr4xEe/1Dfng8pEKa0vcuuo8I0X+HKwhb7LQNKoyF7P2Pz
	dfkf3UeS36zTrGvnLyKkChNguI4qho7etQ==
X-Google-Smtp-Source: AMsMyM4oVTsQAm4QAWtn9JgMcWAYzDKMUyCQcIEkLooLNkHTIKRbbJ5kAke70XfECNOILD6oPqQJAQ==
X-Received: by 2002:a05:651c:158e:b0:26b:46a6:bf63 with SMTP id h14-20020a05651c158e00b0026b46a6bf63mr8530052ljq.21.1665497147910;
        Tue, 11 Oct 2022 07:05:47 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q11-20020ac2514b000000b0049f54c5f2a4sm1868188lfd.229.2022.10.11.07.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 07:05:47 -0700 (PDT)
Message-ID: <236ee060-4001-992b-a1ee-b40c66fb94eb@linaro.org>
Date: Tue, 11 Oct 2022 17:05:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 13/13] phy: qcom-qmp-usb: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_070549_610190_A58A669F 
X-CRM114-Status: GOOD (  13.03  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The power-down delay was included in the first version of the QMP driver
> as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> Let's keep the delay for now, but drop the redundant delay period
> configuration while increasing the unnecessarily low timer slack
> somewhat.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 35 +------------------------
>   1 file changed, 1 insertion(+), 34 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
