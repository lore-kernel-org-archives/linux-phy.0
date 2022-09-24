Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5269C07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 08:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDtpMzWdJID0WxUQmWe06dqb3i2Kid0w/gsemorYPYs=; b=0byknRMG2zvGiJ
	VxTwr3jOxKuMEaY667BFXxoqFvALoJJd8yuZdhWg2mQDGR6OFIEkTKcNtAWBhY0QE3x5IYeCZZc8h
	IiC3oYK8qURDNiMTOwKis8nVb3G18JRKiGtG3fu+0xaxEGqhqydWSRJNpSF9FkMiDSHvUlLJ3cQBN
	+oNYSIdLhZ54p0EZhvrANVgvG9+muKxSSvG6mTVQI56fGWY2bcGRHccqX+xwIsHn3wEhxTfDrYkyO
	3FDaMGOyj7YsWSUuHqd6ndk8lJXZLL1r25m2AeyayH/OG8r7CS6VNR2VJcxEHZ9dQuVtUVR355QXD
	DNY8MvdZCepM5ATzlkiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc0NT-006fsd-8V; Sat, 24 Sep 2022 08:19:11 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc0NR-006fqR-GY
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 08:19:10 +0000
Received: by mail-lj1-x231.google.com with SMTP id p5so2293886ljc.13
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 01:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IUE/+MWwacfn51Izxt1vXbrhqVbso0tR1cYYPVZ3iMA=;
        b=I3Ij5QEe3r5mA60sGtqRyppkSrwLfz3i2E8+rvxRR5+WPA6GUO4CehAImiHrraJFvV
         A0HVQ4eaw8RjLUF+v3CHMXUd7F1J/nC+/1EYh7/myyoMm1wSkKdyN9QUNnmhzNGf2EXi
         r6jrZpaTE8tYmK89Rdh15VLh18bGKZwXHJpWZdJ2Ix7gkPJrWxV+sUYyCRs+ZfCo6FSs
         B4qbik/a0k48wsmUqgyE6wBjJYp+GacfCXa6GTJyKCRDi7Hwz3q0LPRfPg4mBUBZ1vLO
         LwhgNvRChC97cvexZKso2Kjb6IFBbZB03vPO4dEcXCATgWXKHljXXucWKZigzwURVNVh
         UBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IUE/+MWwacfn51Izxt1vXbrhqVbso0tR1cYYPVZ3iMA=;
        b=zobWes92vJO9AwwdYXjjA4fS6+2dkuHsqAHkwTbG3vwLqQ2lN9+yRZSMz1JRhOIj7n
         2kRqOxt0DPdU90sEW1nxfjaosxm9uv0KvtZ3umO67zYZKdRHNQ3druA2/t3pshoNFxcM
         y1qpmC1676at4HEWTE6IXJTgOIRIm7QpjWBTOIaLW4+mbqXMa7pT6ZrLRRq6NhbdnWf9
         +E5AP4caJtLf4M4N0BxDLpYsokrk+DWt/tp0gzaPyRTAu3P98O8Uyh0QU6H9yLXjMX82
         qKfhNHNS3fV+SA2ya1dD4hf4VbWr1UiUemX5PU8V144E0u1dxO9OMKMtPJXsrlqGSWvO
         qI/A==
X-Gm-Message-State: ACrzQf2p/Esc/LzbMm5GpIW/174SjXH27gEbKaPV3/9BcZqZWf7mlBtO
	dZK+iMn0BtpKNjbJlEG7BfLH6Q==
X-Google-Smtp-Source: AMsMyM7fjGjnK2ccg3RmkldGnW8jdo95AjKCJvG6bWcH9F5P6Vic+jXEG7u2dQjfMV7osqb+0nfuiA==
X-Received: by 2002:a2e:958f:0:b0:26c:fd2:80b4 with SMTP id w15-20020a2e958f000000b0026c0fd280b4mr3901884ljh.147.1664007546068;
        Sat, 24 Sep 2022 01:19:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 17-20020ac24851000000b0049496855494sm1823078lfy.104.2022.09.24.01.19.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 01:19:05 -0700 (PDT)
Message-ID: <19bbb34d-0b6f-862b-3fb0-3b10821fa172@linaro.org>
Date: Sat, 24 Sep 2022 10:19:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 0/2] SDM670 USB 2.0 support
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Richard Acayan <mailingradian@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220922024656.178529-1-mailingradian@gmail.com>
 <Yy6tHE8VZ2v347Q9@matsya>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yy6tHE8VZ2v347Q9@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_011909_575121_BA27126C 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/09/2022 09:09, Vinod Koul wrote:
> On 21-09-22, 22:46, Richard Acayan wrote:
>> Changes since v1:
>>  - drop driver patch (some maintainers might be excluded from v3
>>    recipients because of this)
>>  - add entries in usb clocks and interrupts
>>
>> This adds compatible strings for USB 2.0 on the Qualcomm Snapdragon 670. I
>> have no way to test USB 3.0 because my SDM670 device doesn't have USB 3.
> 
> No driver use for this?

Driver already supports it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
