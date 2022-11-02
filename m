Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B57F8C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 19:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRJ8wGAzn+/Hb9nGVhugq3iD5Tdep+PZgSDgAn/vsoc=; b=AAopxYV3PBMvkL
	ipQ/OJkFu6HUW42m9b2nNBIGsAjtSq7blcFqE8yC3/dKVGUjyIim36mcfE1TUwyOGwiTUv3mGcd80
	0pqbISDo+PrcO034fLef9jCEEFuh7IqgHytU/BcGDt7peblmC21ti/5BT7o1RM2MjnKpj02HagzIZ
	P6QioeGyoisC3SCpTWB68vySQfaD0MVIvrjtItkOWbcvpxGiOAo5ilyKMMkFaGpnL0cgaFY5xqP2J
	dLUMXu/r2/CBQfanUfpGUYeq4fgl3Shp9YnginjYr+4YCmo0vbn3ocqy6x+1crfiyOevGdaA+/6va
	hCL9aTMKeyLbOunUsoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqJ7f-00DWWJ-3r; Wed, 02 Nov 2022 19:09:59 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqJ7c-00DWSI-1B
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 19:09:57 +0000
Received: by mail-qt1-x833.google.com with SMTP id l15so1251595qtv.4
        for <linux-phy@lists.infradead.org>; Wed, 02 Nov 2022 12:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AIkEh7BXAQ8EfVcaCpQmqvlq6Pnzwaj79KpKIFXtqKk=;
        b=D5NqaoeFxXGLhUM1iiPWsSusfvacuFdAOm6V8ErMS9WTejX9G+7XNSYvAnzL10LFFp
         qE4b9Fd5IJns9Y169x8pYIfvEM0CEQ7UlfQ5ml7I2wQplpGk93Og//KQ6l66s2LeF7Ng
         0QIQG2YvDP8l4BXttaBxEtpb+R11qglLFfU3r0tAVplqVAE9m+N5E+WLMYpPROr6YABD
         dDv1ZnUkW2HQDoRNxvZRD8RCgvwZFB7bKffmiB6fpEfwy093n055DP70XMYf0MNtGMTY
         cM6o2zeIscCb5OKxFh15wUhs+A2kcnIS8JdGXqbvwB/gsnlxMWnSn/3rzYMoDI8YAYem
         JlNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AIkEh7BXAQ8EfVcaCpQmqvlq6Pnzwaj79KpKIFXtqKk=;
        b=sCzVH1ZARVFU6x+yDPuPVnQVJowSjJz7OuxgsDc1+g0ojA1jRMemykMB274S9XpTCE
         RjuHW4Y8LXpr3P1HSKUMkOFlAQn6TuZoxlwbIBJbghAVD9zOoBS/Ix9vEUwCh1Ul5/Td
         FvZD+gT3rU8F2cg7buiC6ZVXRHS+amqBwcTMRlwIWw81ce1PL2+lpGXe4EX7DWwcLXd4
         s2VzV8f3QDJW8Ic94rsYOPToSF5yse6UXz/nogTI2nDROEauje8YtnK+dqGwYdUY3Hwv
         LnS7fqrHHo3G5ZvMjN5DF6iKI424Ex33H+LAUYUTFiM1Rf68O2PyLVo/uxVQH5bed+A0
         D8Lw==
X-Gm-Message-State: ACrzQf1Wjs2+I3mtRCvrw4iC+qAsFP33jba9mr9xG5GHjMd8ZQ418o7R
	wMtPfPY8GmMrd5aD24oLUIFxEA==
X-Google-Smtp-Source: AMsMyM5rtL01pS0TQ+i5UNqkH3/BIoMq0q2RjMMZmpCfyVX3jZh1yBtxA1LpksWIIs0gVwKIiDmLaA==
X-Received: by 2002:a05:622a:407:b0:39a:836:acfe with SMTP id n7-20020a05622a040700b0039a0836acfemr20925776qtx.133.1667416192736;
        Wed, 02 Nov 2022 12:09:52 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bk20-20020a05620a1a1400b006f3e6933bacsm9098388qkb.113.2022.11.02.12.09.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 12:09:52 -0700 (PDT)
Message-ID: <1fe8fd96-7770-0bda-c970-aa38d030ff3b@linaro.org>
Date: Wed, 2 Nov 2022 15:09:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear" property
 for UFS device
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org, ahalaney@redhat.com
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_120956_116343_1972781F 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 31/10/2022 14:02, Manivannan Sadhasivam wrote:
> The maximum gear supported by the UFS device can be specified using the
> "max-device-gear" property. This allows the UFS controller to configure the
> TX/RX gear before starting communication with the UFS device.

This is confusing. The UFS PHY provides gear capability, so what is the
"device" here? The attached memory? How could it report something else
than phy?

The last sentence also suggests that you statically encode gear to avoid
runtime negotiation.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
