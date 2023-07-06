Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CE7DEB64D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 12:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMk6jyROXOsYYxqtPnnvD8+B0JZUOFM4+Tv+T0KlkYo=; b=LzzjQfXBm0h+Cx
	7t1mL5/WxEb1ZXYUgM4ZSqA4u0T9euRCcRNsVUMHulm5bdSt1WUS4LHnNgniT4CK3r9EBzIi+GlZQ
	XPElwNuk9S+AqsmQy0DZAHanvBFpSBFKX+yH06ZufxMfF3AwXofJRtg6IDLpiFnZfdsh7WufR/Xq3
	8EJvnXIKmdEgbsD5vFvqee3n+s4zkhCDSxcXCHfvrEGGi2UDAXaUgebWTXUrp2BMmCu2TJSe98PV5
	tBB1klwcPoMKvLXutxcqOiT9tJlhfvzXKQu78xjju8hcXX9wQWAygaxpAuXRv0YPHZdezkgK4L+N0
	yP0S1aPx5JHkIpd5s+gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNr4-001a7h-1y;
	Thu, 06 Jul 2023 12:13:02 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNr1-001a6H-2Q
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 12:13:01 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fbc0314a7bso841744e87.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Jul 2023 05:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688645574; x=1691237574;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eCOVUK9V8z/x1Thad53qnFqqGUkU711ApVBne/oyWeY=;
        b=sNFCebxbR41MtEhtSQUKMTqJjk7ECC7CPb3H7aCiGYe/Y+JdfxK1pDGIYQpdZF5BKQ
         X6QYtXSpFIuXmnh/9WLxf0hnHh8EtGv9sq7aQckriFm8//PtnG8niveRRA/3eMxBhYf0
         mTKKV7ZDSnnbz6dbUk+zJkJzCNAZkiHzQvT0xKHm6z4fSDs7W0vvS7YPb2udwUfmQGJW
         7x190SWDu8mCU6CmXbgA9clKRHBGYtZg2BwyaLH/or4eMQ3Dqigsknc2ReTnRINB31iC
         hBaqJkM7oT9eKIcJ8Ev5o9OLT8642YfXPLTneHl/aALsbroyM5kv0aZSyAZ7EZbMlojW
         k09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688645574; x=1691237574;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eCOVUK9V8z/x1Thad53qnFqqGUkU711ApVBne/oyWeY=;
        b=FZIJYKn1SxUmxgbscwU30yMJ2g6yu+P+jMJE9PxyTLfGPbu36DapB8lxmSLGyZXZGx
         3TOdlw6lz5gI1gjkQkuKVItYaAicOVuvTexCFTq2zdJ82hs9zjyr/Cz17BvAa6y0AJqH
         U+oT9cHy+Z2pmC7W08c1iYvva2FGIJJy8KevONCrilBB6vHgTeaNiIgr3qo4kMTr4xTL
         /K380H9yyf7Nq6jzBz8iSzQFGvxdenTtq1MiUlN5w2nbT70HDKYai9+flO63d/mu6yeJ
         VN7/4lg8yX0G1PERjVIojuFHTgsrOB9Lo/6zxBO7DAhKhWSCkdAAVd4P10XAk3d95upH
         Ez8g==
X-Gm-Message-State: ABy/qLYoHoHHoB8pHLlFBtQCsfUv5dYow5v4wqKlTs71kARQHm1Os7P3
	WkOlwmuFAl6rPlozIPnRZxaqVg==
X-Google-Smtp-Source: APBJJlGlb5wLmYtED5PMTrWEhdmg5Zph4EtRP/kgQEPFSN6KS+oRNR4Ei5uxAPG5QgIwUyis8yArfQ==
X-Received: by 2002:a05:6512:3d0d:b0:4f9:7aee:8dc5 with SMTP id d13-20020a0565123d0d00b004f97aee8dc5mr1629293lfv.19.1688645573888;
        Thu, 06 Jul 2023 05:12:53 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id k16-20020ac24570000000b004fb81fbeb33sm227379lfm.251.2023.07.06.05.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 05:12:53 -0700 (PDT)
Message-ID: <9b93bbad-1299-2afb-eac1-218cf209b293@linaro.org>
Date: Thu, 6 Jul 2023 14:12:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for PCIe
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <20230705084606.GF11854@thinkpad>
 <a450e2e8-307d-49e9-d76d-de397b801a96@linaro.org>
 <20230706111218.GA4808@thinkpad>
 <878103c6-0dc3-164b-92ce-17ec4f87bff6@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <878103c6-0dc3-164b-92ce-17ec4f87bff6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_051259_830504_316E83FE 
X-CRM114-Status: GOOD (  11.94  )
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

On 6.07.2023 14:09, Krzysztof Kozlowski wrote:
> On 06/07/2023 13:12, Manivannan Sadhasivam wrote:
>>>> Please note that the dts patches should come before driver patches.
>>>>
>>>
>>> Why? DTS is always independent thus usually put at the end of patchset
>>> or better separate. It is the first time I hear that DTS should be
>>> before driver.
>>>
>>
>> This is what I was suggested by Rob during my initial days and I've been
>> following this pattern since then. If that's not the case, I have no issues.
> 
> I really doubt Rob ever suggested that. He probably suggested that
> bindings must come before user, but not the DTS.
Besides, the flow in this patchset is very logical from the Linux POV

1. describe the hardware in bindings
2. implement the drivers, conforming to the description
3. describe the hardware in the device tree to ensure the (now
   existing) driver probes

Konrad
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
