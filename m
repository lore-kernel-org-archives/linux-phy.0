Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A639C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 06:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Skq8dAU/T33BUUcwhNvDB2dWG3+iCd+mgvkwAfG6ecM=; b=uOON332d1CHigP
	gVX00ptry5h/zAhYRMq/w74by4AMuCgpbNTXUZG6x9z68sb63WRR7ytrtdIjuY7CivFAwVExlBe7Q
	Afu04Xy1KwboAaj+UDF0hqG6Az/45qX5a6pX1UKpkE31Xdkz4+heHdmXFbfNjJJqNTWnnMNgdveOB
	9b/ShH7cLHbcXkCQMsFJUa5GiLfhckB8+hcbZyH5dyRNj+uszjqjtf3NLwsxiEH83yooZ0q/djSWQ
	RNhJca25LeJ4tAoeNV4HSLKtp9dNOZ0yS/J41/m5OuJYLbJphziC5Hbzzi2+FB7Cd0LChAp/DEZne
	lDe/nSGpr+ZSnxBAcQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySmt-00533e-De; Tue, 07 Jun 2022 06:33:59 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nySmo-0052z2-NG
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 06:33:57 +0000
Received: by mail-ej1-x62a.google.com with SMTP id n10so33144813ejk.5
        for <linux-phy@lists.infradead.org>; Mon, 06 Jun 2022 23:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MrBdSE+grn8LT47tXLayVexkMgaXUe8RtWJBxBXFaqk=;
        b=bnFho8U7nOdhZMVpWkDFScj100VJe75OnkuyHoq42OR4uIYhU90/7FN5WdL1S5BX5F
         7l+inS94sggjLvtlgi40e2NrqQTewUKWTUIrW5vxFbzfOUkllvrxaLlEFPZXsXO9KA+C
         YP1cjAT++nZIF4ixUlk9Q+wPLXj1425e2L2Gc6avVyzDZ/EAPN9gjoj/3zMMEZQZ3CFv
         /oqQYM8gNcwCd7rxbkjeMqk/nUtQnRLnQWbjBk2SjpDs/fe+8ndEbpDb+Fwp9h/h/P1s
         JzyM9Ddj2CNbjD4r8E687StGwMCNPu5p8WQ+LP9lZKSIT9nk7C3NPnGJF4wUpk7BkB7M
         +rPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MrBdSE+grn8LT47tXLayVexkMgaXUe8RtWJBxBXFaqk=;
        b=Wdyyeg+jy2HY35ZhrYCzHtEjEA7WMIR6dEGznn9esaUqmvj36KDt0HdCWK+UKg/fR+
         YlrMwtrr6pbIYcJCfc0rEW8lucrjwMGPIsFTNQpWQ+Pnp3OJfHKQxwH6FT0wwnUo4CA7
         tg+sh7Wy1cv0me8tKdOX7CW6G4aF4Cyoe081xzUO1ec7pSOdLjKmgRODSr4nULq2RYMc
         ZmAtxTEfZpKJPRyca8+cKD153tcQ92tihUKQmfheHPfleWAgfPCk6ckfxDtJ1P1SZKmZ
         4DCWCUmiA6QTEjZDvim/PNU18LqPlWAHXvAC3zrEBhMYiNpuOHfR9CY0f43xnAvfDjY1
         3DCQ==
X-Gm-Message-State: AOAM5337xAKTOIsbmASu+CU2XbSjRwlekaCCLa9TVoCRPFyeWUfX2whw
	4yN3WwbYvIuyfckHoB3u4woq8Zq5pNwCeg==
X-Google-Smtp-Source: ABdhPJyplNyPIe/T6bYyLSDq3aa3CWsQKbpcGxl+tx+4NoectMYlag5lodWutJKGoaF/yraYpIb5uA==
X-Received: by 2002:a17:907:3e99:b0:6fe:f823:ab96 with SMTP id hs25-20020a1709073e9900b006fef823ab96mr25335841ejc.428.1654583631036;
        Mon, 06 Jun 2022 23:33:51 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e2-20020a1709062d4200b006fec2097d53sm7160736eji.118.2022.06.06.23.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 23:33:50 -0700 (PDT)
Message-ID: <2fad1706-563d-72c3-eab2-5f464bf92681@linaro.org>
Date: Tue, 7 Jun 2022 08:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 'Kishon Vijay Abraham I' <kishon@ti.com>, 'Vinod Koul' <vkoul@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>, 'Rob Herring' <robh+dt@kernel.org>,
 'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
 <20220602053250.62593-5-chanho61.park@samsung.com>
 <c86cb9c3-5fac-a990-f4cf-5aa8e4fe8a75@linaro.org>
 <000001d87a2e$6ed35ea0$4c7a1be0$@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <000001d87a2e$6ed35ea0$4c7a1be0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_233354_826603_8B3FB2D9 
X-CRM114-Status: GOOD (  11.80  )
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

On 07/06/2022 07:21, Chanho Park wrote:
>> Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of
>> ufs nodes
>>
>> On 02/06/2022 07:32, Chanho Park wrote:
>>> Drop "ufs0-" label name usage of ufs phy and hci nodes.
>>> Regarding the comments of reg properties, we don't need to illustrate
>>> here because we can find the description from the dt-binding doc.
>>>
>>> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>>
>> This does not apply. Can you rebase and send the DTS patches as separate
>> patchset?
> 
> I forgot to point the baseline of this patchset. I stacked this patch on top of below patch.
> If you do not apply below patch or put this separate branch, I'll rebase this patchset without below patch.
> 
> https://lore.kernel.org/linux-samsung-soc/20220526204323.832243-1-krzysztof.kozlowski@linaro.org/

Oh, thanks! Unfortunately it helped for the patch #4 (first of DTS) but
not for the next one. Maybe some other patch caused the hunks to differ.
Please rebase remaining two DTS patches.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
