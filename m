Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC535C04A68
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 12:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EF51nohfZ9xssexphEqokEQs9iRizEs2ugFB/f7G66c=; b=aLYZyA3ReYuJ6m
	rOfBu0TCISWT2UlJpLenYGdY3Wsz7E6MO6+PwX9qganzE0jUzheY2XdebDTe9ed1Mc1Eek+hTPFE0
	eR7Zdd8DxukgCTv1L5nOVNWEio9Wy6ytLCIciKXzO6qNbKLeUkx2Do2ltRmpJgQpeR2B8fYtXhmdg
	UllWNaJcyHGt27xAtlV9BRj9Txcd4Ay1TdEVquh8tSocAt4ODsup5j1c0c8vz8An+rEZnFeJB89Sw
	+cGZIicYXJZ2wQaxodo6Fbs8KsW8CZ5gm3x/RsT8ixenuTfqQ2u9MNNYtuNSRm501qCdkwCv5GeSH
	gLCpPO74TK39y1Qeg2fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH2F5-0092eY-54; Thu, 28 Jul 2022 12:03:51 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH2F2-0092aS-LB
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 12:03:50 +0000
Received: by mail-lj1-x233.google.com with SMTP id b21so1721823ljk.8
        for <linux-phy@lists.infradead.org>; Thu, 28 Jul 2022 05:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=q9T4iy1pZp5kC18JyQLxVFdDu8isMdHf7HBSk6vNwbE=;
        b=xV8MWaeIavDGen9mt2j3QZmf3CU0Z4oZxsP7O1C4PduaceBZ+fltC8DkKczdMrwgUa
         +k4TMxxkH+s2HczuSjILcePmorXBVowGbaCl5/kFW840iRVGiiG5sjWXMz68iLLPge0C
         9VNOFAuAS7Wc2UiZ2UAhzJzlJrFSD+3f1WKRljfdNIqtvgZvdSKZtbiHwpckMfrLkheJ
         wEVQ6v0+7mi+6vKDi7dbvpQiQiE/kDTywCqz+I5jhmoxbz6ZFUjojnBagxbnOThfwbsu
         RHR5mVOqY53lJ1xN1pHPUaOvtU5kpN0VLsKiOpZLFckrviQxPq8ZXWOeI/3Onm+1Ga1g
         EGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=q9T4iy1pZp5kC18JyQLxVFdDu8isMdHf7HBSk6vNwbE=;
        b=0xe++FyDjTLZXRLnqu7qS1nuyYL4iluQ84s9JHvyqYciixBGPLfYSwaLWB3RwCqPF0
         qObqaaoUharkovfizUqkt/osDVGyvOUp1XJnZYxSdIsfs+farnuQS/sRRMGNg5VncPsk
         5mr9w53OjFEywRbjLuGDcTj1fsZTKA1JH+7x9IrGW6iaiGF7fctk7+wkLhWbeahneAvW
         gGsjjrj3rPqEl5W7qgMRVmgGHWkweUD0epF4L0hkHklN387i4pZUKG8JQu9BWOA2hiFd
         eYEQIu2X8firoXrUlxVBaNG7adk8C10fiaGGAV3roO5Ad22NEn5ujV+8ER5tVdqFeBXX
         XZpg==
X-Gm-Message-State: AJIora+U+NKy0l8ZEpaI69NE0UnFNoWMAnX1SSDjo+mONX9WI36iADp8
	OtXlWqF1a0Xa0SpbPY6yn4HQkw==
X-Google-Smtp-Source: AGRyM1ss6s3dXMIqkcr4wYj1FsNn44b4U8NcjOWWRxpcNJloMstEGWpRv7gTXsnaUxiwChK8XtK4QA==
X-Received: by 2002:a2e:5705:0:b0:25d:f295:c9d8 with SMTP id l5-20020a2e5705000000b0025df295c9d8mr9472731ljb.292.1659009824736;
        Thu, 28 Jul 2022 05:03:44 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t20-20020a2e8e74000000b0025a724f2935sm105370ljk.137.2022.07.28.05.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 05:03:44 -0700 (PDT)
Message-ID: <9ba45cca-79c9-d1e4-5b2c-15c73a8297b6@linaro.org>
Date: Thu, 28 Jul 2022 14:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Content-Language: en-US
To: David Heidelberg <david@ixit.cz>, Shinjo Park <peremen@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220728111740.30595-1-peremen@gmail.com>
 <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
 <875f6675-9d28-7ca2-704c-4d1a6c69a21c@ixit.cz>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <875f6675-9d28-7ca2-704c-4d1a6c69a21c@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_050348_729902_EFF59A25 
X-CRM114-Status: GOOD (  11.23  )
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

On 28/07/2022 13:54, David Heidelberg wrote:
> On 28/07/2022 13:47, Krzysztof Kozlowski wrote:
>> On 28/07/2022 13:17, Shinjo Park wrote:
>>> Document the changes introduced by MSM8960 inclusion.
>>>
>> 1. Thread your submissions.
>> 2. Use subject prefix matching the file.
>>
>>> Signed-off-by: Shinjo Park <peremen@gmail.com>
>>> Reviewed-by: David Heidelberg <david@ixit.cz>
>> It is a v1. How the review tag got here?
> 
> We have a Matrix channel ( #linux-apq8064:matrix.org and downstream fork 
> for apq8064/msm8960 [1]), so I saw the patch before it was send to ML.
> 
> David

New submitters and beginners should rather use full-mailing list
process. Since there is quite a chance of beginner mistakes (which was
seen here), they might misunderstand something and add Reviewed-by tag
even if not received it with respective "Reviewer's statement of oversight".

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
