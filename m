Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CD0C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohPi58pevzhXtRdqDF+asQfMWJUER17lLQ6sEFJ7lTY=; b=bIiX9eW5UE9JXi
	NTQfSv1WTd1y8LrV2cvkx2GwI5bPvFIFjaS2AHqE5ZxFnCFsuzq0VH1w46SvspGbgO6MjZwx0oxRZ
	JsCs4ulwQazMwlBbhOJixY4MahdvmQMNlo/XTsOluB8+6u6f8R9dlo64XZ290zUZIxBYoR5d3K8eM
	cBl2Yf3CxUKOxc5CmTp1YskRxt5lekQG2F5S9/w+HkvK2rSok2ZXAEyx5R2ScSx3+YE17wcwmFkFE
	T+J84VZ8Vun85IfOm1yXSyQAcr1BW7ZGmdCGKGfl15t8bIvA+CaJf2GyXSWS9kNr8XeBVk+M8V/Dl
	X/F0DFPt/s0se8X9p0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNjW-00GGED-Az; Thu, 22 Sep 2022 15:03:22 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNEA-00G2hM-Iw
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:30:59 +0000
Received: by mail-lf1-x131.google.com with SMTP id m22so287924lfg.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TVpqDq9Gq83T2g/Zt6RPRB8MTfZo9+TmbmZmSKnXjnk=;
        b=rQe3815xG47JqBHhtnlBmBU7Z5fm//Dp/mh0rLGX49w6L3fJnETIhy/TKTdItiuwLY
         qu09XhEb7PSuJWQF7GWDal7WRQYxmKtp0uGnBsVNy2lwGGyFKhgLKkfjRVeXmmuxnWM3
         BGKaIc4mcu0KVkA3Y8dH0FmhOrr1K0KFFu8TPssLJZssqRFw1FOOUCvTKD4YHT/qgq5r
         WNukJ+RhKgdKLE4/W3w66Uy70EY3+9Ai7NqcitpRyBVsCDtHObU1CLWgHjakWJKUYSXz
         BwKlgxSieKeUEi882udGp4FSVPGH1URxdAtvsJgu87cdzpM4aV2lopPRDVC78ucJQAaw
         SW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TVpqDq9Gq83T2g/Zt6RPRB8MTfZo9+TmbmZmSKnXjnk=;
        b=3AgWG55yTYnNq/0lKAb3IRArzkybktVqMUlEAWcnx/JO3rAQ2i43jfK+It9LEi7lD/
         4tcqxq2cdtbBvgQg2xvSuZb7Pwhlpmn3eBhJGejY+Vdq1kTfQ8aR+SW3QluRCcZn6bA3
         fC+MuZxcISU383fb4HdYlhcrMbSsu5E65oOPvhUat2SVsIb6V0nLepnsBeY8dzuPjFt0
         Uuw8x45ZQiIhPSygHy+wsSrGjh0Rr/cV82drq7+4iDG3IEOmz+9j32lgCZeNyiaM0zTd
         6nGCcejNKOXLDrH9TrlvdcSi6/i25Kijgj9Y7WWn6JMW4/3nPxoQJAkUm+rMEolMlE9h
         6RJg==
X-Gm-Message-State: ACrzQf3NB9SypOszZGvsjD+EP2HYUeElDD+R31IlwlAMZgxJB53+kYUT
	/MO4AOdMIQs+zZXm5D5Hx0lqDA==
X-Google-Smtp-Source: AMsMyM5qe3tWeL8CN4ENBSw/uYXYt7eGxRA+TwCDEsoxVu9fawyJg4zf1dAIqcs7/Df6gTQlClByjA==
X-Received: by 2002:ac2:5cb9:0:b0:498:eb6f:740d with SMTP id e25-20020ac25cb9000000b00498eb6f740dmr1308941lfq.106.1663857055151;
        Thu, 22 Sep 2022 07:30:55 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o19-20020ac25e33000000b004945c1c5cccsm955021lfg.268.2022.09.22.07.30.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 07:30:54 -0700 (PDT)
Message-ID: <bbf9df4e-113a-9b57-65f2-380ff02b63d1@linaro.org>
Date: Thu, 22 Sep 2022 17:30:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 01/17] phy: qcom-qmp-pcie: drop unused type from config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_073058_675924_CE107788 
X-CRM114-Status: UNSURE (   8.94  )
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
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configurations.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 --------------
>   1 file changed, 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
