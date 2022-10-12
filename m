Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C84C43217
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5a6ntkBxif7KR0JUtCAw+moVHc0lfa+OBCMqB3uuH0=; b=M4HcfMsEtX2zSs
	T3KiPZ1a7F+dtM0j/9WUMCzVXXh4RNP40K9O4xweJLmc7Fz36jHSQZ0e2CJXmBb40NGvnLAd+Htjf
	uktWtkYcNykLw6anfhe1jIEzjNr4pTkxIpIDubhvZAvLvnGLpkv7cX3RXgRahkJdTYwHsgdxzFgQm
	mVo/ikZp3RiTR39V4s2L+yr2INKB7CyFIKGa+v5bET3474H3xIWY9bImPaWce72HxRjwUyGN6w70y
	XJeK/G+jYpMd3blNJfWy7MF7PHwm6YVyVyktNbmfiQgd0G7cjXIXDXtR/6H2UwXGhP3VtXyBlKHtx
	hwWddwcvW7UfGbdStT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9z-009NLV-Dn; Wed, 12 Oct 2022 21:21:03 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9w-009NKm-Bw
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:21:01 +0000
Received: by mail-lj1-x233.google.com with SMTP id m23so79809lji.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFaY0bTV2pNdJEMhntNT8kQbE1jsf4XB01gxcWojyUA=;
        b=BcGce7H7B5+yg7pRFZ+/9Pveo80w+oxNQJBlcOUyCegyYAq3bat37anbhDUv/sOWFb
         0m7b95xDw9b8HfqZ4RRXlqIYi8BIPgm6Lcy7X39xugVID5+J9m75uQ/o6FbJ5pyfHw4w
         1qYhbTGLCJXjHXUEBNmdcHfDKkPfVwlelLwPQJu9zkJ4d4MpKvo11dynjItyWKwfw5F8
         ClXFa4tmJ+IEKMDezHPn9aofQXh8xyAbgVBPsWUoMROCo/L4YoHsykkIDed5BDlkhEin
         /YvjyEyddvj06EMlDo1ftaDK64KV+BS2x4xxvo/84z4FlmpK6kOhBW9+XMg9e2uARrxj
         J13Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XFaY0bTV2pNdJEMhntNT8kQbE1jsf4XB01gxcWojyUA=;
        b=r6EeBWP8R3ABz1LLI8G7g1uSv1HpgUpC04fGlCqPLgpFC4rgrf2OVw9aC3IlNm/Haf
         f9DDLskucMD9FKjGo5+EUy3yJKA3Ol+0ETA0IRPwuaIcm7CKL4X5QRwHx4gtXvIG3l9d
         +n6PTgYyipM8W4sZ4Mo3Q0nPsTi2NDii0S20KjSWM/AuOuvl+H9WshYzKBq4c/iG6cyA
         UGX9f3ky4WOIY1vFLQV/5DBFOO3hx0xcJTQLJE8xasthc1HqBzG4/njTbzxbLZfkcATv
         0fbpeUzXHuKI/b/hZ7qnJDBl/8pbeqA4l9wIm6nzPb7Hdi87zzxdxYeQE/vV2IBZc0vr
         yMVg==
X-Gm-Message-State: ACrzQf2ruQtBvkOBUct34cV8qngXSz/rHCI3PoULNXZK/t+r2pKCYNOS
	Ahd39I7jlkLnvhk4o2+h/4zRfg==
X-Google-Smtp-Source: AMsMyM7fJ4ngcKmn2XRftNx9QXJd+rZIJi/OCB4vYqsSmgbl+5SqWAxAfQAFOWF2+FjQOc2INOrbog==
X-Received: by 2002:a2e:bd84:0:b0:261:e43c:bac3 with SMTP id o4-20020a2ebd84000000b00261e43cbac3mr11989739ljq.198.1665609657350;
        Wed, 12 Oct 2022 14:20:57 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r8-20020a2eb888000000b0026de0c8098csm126859ljp.26.2022.10.12.14.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:20:57 -0700 (PDT)
Message-ID: <cd6986b7-c053-7838-1120-86684d6dc2ee@linaro.org>
Date: Thu, 13 Oct 2022 00:20:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 19/20] phy: qcom-qmp-ufs: drop start and pwrdn-ctrl
 abstraction
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-19-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-19-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142100_452666_2CA56260 
X-CRM114-Status: UNSURE (   8.35  )
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

On 12/10/2022 11:50, Johan Hovold wrote:
> Drop the start and pwrdn-ctrl abstractions which are no longer needed
> since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 35 +++++--------------------
>   1 file changed, 7 insertions(+), 28 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
