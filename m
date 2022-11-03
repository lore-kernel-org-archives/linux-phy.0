Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F1CC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 15:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0mWyIyWYs8j8Dgz9sHfB+uNVu2wZ95/cmcitecPShU=; b=JSpWpiLbVTJlxz
	m6y3OuMq8gc+AHg9+yEOGzmAG3TbnNj6eo3hbKZBdTqoiYW7IWrH9JcYs2/+/bCWuwU7VEy66ltiK
	u5B+ieQ3Dnh6V51hAMiTXfTp0jVc1+ghZqmCJZk1P9sBkTwagnFIPEnhEt9g/c+ItNaBqmHCr6+AB
	yNIKyCeODDX1MRGXQ/ZyXJigykrCA4OQCIu1ACnxxpUY/wOZFKltwlrNdC3zGtsw5Dl1CbYAd7lTj
	QnpirBPm1dpDyl2pygLFiu6cGejJJknpTu04VsdJWBwa8TObeBOdymVfOYngdYzRFwPfVCmMiAENJ
	ncEynNG718Bsm2u+devA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqcKZ-000SSo-Q2; Thu, 03 Nov 2022 15:40:35 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqc3t-000Kxz-VV
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 15:23:23 +0000
Received: by mail-qk1-x732.google.com with SMTP id g10so1330003qkl.6
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 08:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f7W935H1KbRw0Ag8QHM/Yn3lqfyL9ka2fjOWNd1WB1I=;
        b=c6nzyMKW9ZnRtwa3zp76mKQ0QUn6sfJTsCuR8G4mpyrAxY54i5HSj7n6qSXMzftZ17
         80m8TF5uOv4YXZFb5VC0HmjwMnd6inedHNSNgA/GcUaOnKei0IiD8BOi1vbZsOT3tCrI
         2rYW/hQUTMKwCfn/T+utoFWvmmllBQXjZ2ykiqhGEKoT+MMUr/5ktX6RzNjmD+Ui3/H9
         fy2n71ovs22yMfa2zo0wpjYYsPnfkDH99eq4X9KS1qirEdUCL8ckTwy/BMhKjCVuj5pf
         aQFXgOmQYassXRfNcYJx49mTSK1RIhc+rbvLzJdyLlYLDfmWSt5LntqoE0eIHTUc7aCs
         aKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f7W935H1KbRw0Ag8QHM/Yn3lqfyL9ka2fjOWNd1WB1I=;
        b=NGPyeKDGaKL60wrCuOKfQF07FJhyBE43IiVUJ9o7cx6Y44c0/T90wljMYct3U7fN3I
         nb0Ep74RG4HdIvb/CKuiK3rS1mfzMDTv7GwgFKgAiUGTwaOQ0lhln5AiIDo1+g7RXmc9
         RXlMFafwE3wPMNYauipWXz3JH7LHMy7UIox5jQNdodV7K9pX0D3ctHrdNVwhHbQT1aEo
         LERJrhD7LNw75wRXRTT04hAJPM/rxYZK3FaXy+ue3aNsrnV6Kep38kq4NYJ8VVWiHISH
         tiHtIMshK3IA5BxmMu4aF6MU1jZjNBjKxBbAHb82vAQafNNQVeCkTXilf9+Ap9OAYjll
         +GNg==
X-Gm-Message-State: ACrzQf3NF7GrGTMr41HOOl8eWTNyHTbuJV5JLJjUowZBQBdZotZvfE1E
	oELxG164+hPrFdmsHjhJMTrW5g==
X-Google-Smtp-Source: AMsMyM5I530rv1Yc4w34Zr+5MBIkr1bF9RF9uIG79s0fyenDsdb3MXMg/hmpxWiucjGppUIk5oaTNg==
X-Received: by 2002:a37:de03:0:b0:6ee:88a2:eb9a with SMTP id h3-20020a37de03000000b006ee88a2eb9amr22330615qkj.241.1667488999874;
        Thu, 03 Nov 2022 08:23:19 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id h6-20020ac85046000000b003a494b61e67sm675911qtm.46.2022.11.03.08.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:23:19 -0700 (PDT)
Message-ID: <a170e4e8-fc9d-9be1-35ba-733f24cb93e8@linaro.org>
Date: Thu, 3 Nov 2022 11:23:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear" property
 for UFS device
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org, ahalaney@redhat.com
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
 <1fe8fd96-7770-0bda-c970-aa38d030ff3b@linaro.org>
 <20221103122850.GD8434@thinkpad>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221103122850.GD8434@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_082322_127355_18AB3C05 
X-CRM114-Status: GOOD (  19.92  )
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

On 03/11/2022 08:28, Manivannan Sadhasivam wrote:
> On Wed, Nov 02, 2022 at 03:09:50PM -0400, Krzysztof Kozlowski wrote:
>> On 31/10/2022 14:02, Manivannan Sadhasivam wrote:
>>> The maximum gear supported by the UFS device can be specified using the
>>> "max-device-gear" property. This allows the UFS controller to configure the
>>> TX/RX gear before starting communication with the UFS device.
>>
>> This is confusing. The UFS PHY provides gear capability, so what is the
>> "device" here? The attached memory? How could it report something else
>> than phy?
>>
> 
> This is the norm with any storage protocol, right? Both host and device
> (memory) can support different speeds and the OEM can choose to put any
> combinations (even though it might not be very efficient).
> 
> For instance,
> 
> PHY (G4) -> Device (G3)

Yes and look at MMC - no need to define "max mode" supported by eMMC.
You define the modes supported by controller but the memory capabilities
are being autodetected and negotiated.

> 
> From the host perspective we know what the PHY can support but that's not the
> same with the device until probing it. And probing requires using a minimum
> supported gear. For sure we can use something like G2/G3 and reinit later but
> as I learnt, that approach was rejected by the community when submitted
> by Qualcomm earlier.

It should be then referenced somewhere as it might be a reason to accept
the property.

> 
>> The last sentence also suggests that you statically encode gear to avoid
>> runtime negotiation.
>>
> 
> Yes, the OEM should know what the max gear speed they want to run, so getting
> this info from DT makes sense.

Not really if it is auto-detectable. Just because things are static is
not the sole reason to put them into DT. The reason is - they are not
detectable by OS/firmware thus we must have them in DT to be able to
know it.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
