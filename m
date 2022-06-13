Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83355C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 09:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlR6vmxLTMXWOBLty3osnemcXi/Jbpk1JCHPDXnhwoU=; b=CuBteRkwsuhyUR
	ks79XVM0KyHka0DqM0maRxNjwpXBLzXnBIWs1x0/IUwOt5D8Jwq2A5bIlA3Exsf9ThLxd0BBZ6zW+
	iRDE2ZZGe7vXa+QJwbrudsESM4kuSnfZe1nBcx9lJWro3m+MxVaOjzkAy4nNf7N6A7yJW9yk/cvzY
	+MVsw+wTSOMjKQwMczP0wYAlQFaAxSanosGjKYIFtWyCfjl5eYhR9lfM7qcVYWg58XzsaHH2CArM/
	1eYRmwGLTaTQ6ZECwATuGbhQrAhRPK4yjRHWLTDM/Mil/w/u0vIm8nrsRoz9u9UG4irDQp5ziEeFE
	WaAHAlk+AHY0PuZQjLYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gg8-002dkq-Tg; Mon, 13 Jun 2022 09:48:12 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gft-002ddE-8Q
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 09:47:59 +0000
Received: by mail-wr1-x431.google.com with SMTP id x17so6392267wrg.6
        for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 02:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZVDWXyhPhCXrdQGEcNHxhh8HhuL/NBNEFLkEQfvm5p0=;
        b=gdhbV6lSda6rqgbGzWHdOWH4WWs0+gOK9aMOW6u6jwTJI0VZuPJK8+rKHyFSpSp4Ng
         pqleDKgIiuMXXLztRhxkj7YHkUE9QWoSUJiTVB9V8CoBwACGNIrHjxMVqSNwgOIEzmLw
         B7Gl2n/0EPVdoiqx7tOIjg2b6hVEBtGeTTu8qcvG3Vj4+4eYKyMLOSiNb3Hur8dw/WTb
         w7+BS5uLm3hgaeFGrlEkvYwynALa5WKh95u9DwOgDmSoe4qEpEHa4Wf8RO1LAt3j2P1U
         EllID+OOw81g3b9t2s3zqupDh47S7pUwDQj5hm6/LcUJlX+3pkOaE35DpYvEhWHomcXM
         AVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZVDWXyhPhCXrdQGEcNHxhh8HhuL/NBNEFLkEQfvm5p0=;
        b=cG3kHJnq8/Yo2SDp56w22QoooDBVo8KTBmUr6p0fwMADwQz3KxQR3A030Nc1MDVUOe
         XvkbXjKQPDvEvNgz/qBVrMDsPSsDPKSpqib/6oHLu68v4+rrSCzHsTMSuSnmionebJQM
         rOW/Zn/9DvEAqITQuoiNyxRex36ibJkf9BVpmRcvKa19i2PIHy5PqzEKi5xtHhrJrl/J
         HRksByqpXDKydAt956x6Vgcy4x+d0t3jIlUhQebu1hYRN9o+aubcYXvXiNoNZlc8F8Iu
         D418PUznGITWZBRTELvl5Nd2DgnQW8U++O9nOwglpfelD+0vMJyMhJfi+dyJng/gNBZS
         OCsA==
X-Gm-Message-State: AOAM5322jOfguEKTeEijSaNlV7xecdDnjSmJQkVhm/rNVUpT0qVLfC6j
	asKBBu01K5Ld6LU5tfnN8w8LEw==
X-Google-Smtp-Source: ABdhPJwPDCW6nEnGMnnReym2Ekgk+1u7LttLdpWDuxseqRriQQtptnJyoMYlHioW/xfucYl3IyywEA==
X-Received: by 2002:adf:e7cf:0:b0:215:8dea:d67 with SMTP id e15-20020adfe7cf000000b002158dea0d67mr47764360wrn.532.1655113673258;
        Mon, 13 Jun 2022 02:47:53 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id b2-20020a056000054200b0020c5253d8dcsm8005192wrf.40.2022.06.13.02.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:47:52 -0700 (PDT)
Message-ID: <d2a334d4-8454-5b0a-222d-6820b9c30aa3@linaro.org>
Date: Mon, 13 Jun 2022 11:47:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 5/6] ufs: host: ufs-exynos: add mphy apb clock mask
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
 <CGME20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289@epcas5p4.samsung.com>
 <20220610104119.66401-6-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220610104119.66401-6-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_024757_384091_2062097C 
X-CRM114-Status: UNSURE (   6.58  )
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

On 10/06/2022 12:41, Alim Akhtar wrote:
> Bit[3] of HCI_CLKSTOP_CTRL register is for enabling/disabling MPHY APB
> clock. Lets add it to CLK_STOP_MASK, so that the same can be controlled
> during clock masking/unmasking.
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>
> Tested-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
