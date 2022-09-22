Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1D9ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UmvgQTEb/LmHfH9xSnexg6cdS6k5DSrtzrJFaNMrQp4=; b=Q6X9udUoIQELF8GVkqJKEEl042
	b+11pxPj6biF7o5o7+KNcPfb7+CW6WCzzr0EAr5eiOJBVUSto1XGt3C7lc7UlXY2povGt0y9hWhH8
	MoNSO2wP8lymJ6JC8CVMn/5A/CFvPksJrP0FraT/B6pRrErMiLJy2D+w73xuvterT/XTZLeOL1+hE
	rsHoeke1eYj8q3jf8C+M3pmS3s+8kn3z4qhjlPMmvmpiemJxHw9awDOkps1AqXZVNAwJkTCiLgn+a
	MUnyg3T1yuRR7/qnYtE83bGktAuZOk1fC5RhttPjbUZh9r73N6+tpxc5k2VFpEGbaJQ60g4LFsQuN
	C6smVvxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQY7-00HDNJ-IN; Thu, 22 Sep 2022 18:03:47 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQY5-00HDKw-BW
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:03:46 +0000
Received: by mail-lf1-x12d.google.com with SMTP id k10so15989722lfm.4
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tO2L89ScAtD8bTq4bm0kMbpJAPuelr5Yfp8Eooncy54=;
        b=ZWmtI/f+y8gegorLV1xCahcE0zjrLPkXHvKc1lqdKOe9+7fcIjHroNjgzF4jXL9tja
         cXxKCaMp8lltyz0CSyDoS/X82SQpfuQ1R4jqNs0P5ki0aSjbxXQ6OzmDgXKGUG09WiUu
         dHfDN12QCVVA2x7cZ1Z8ibudeDu3gr6xIxgVxtffpavbMnkUwEGfSo+nBZFhrLmzwiGx
         bw7xi0qI1GkFdA8XjnmlAU2xMnbKTyk5wzUxioQMwdgY6Qe7FPCGqGpKrBw0rx8CPOya
         FxavIKhZrpW6JJ/tJRfTiiV+iILOPVrhU22a8JPGjfJI2l7rHys72CXrGXqw+gzG9abc
         frCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tO2L89ScAtD8bTq4bm0kMbpJAPuelr5Yfp8Eooncy54=;
        b=QuXa5e45Irji3bNAAgU4ejf+cZ0yeFyINJ0HR4IA5ikR6lOiVPfADBug2HjnWzx9zh
         8c5mIaUuJg9qOJRJwKIUF855jn1jG1U0XO32YxoycGeqNRYhx+V7ojwyO70ZZI5oFZTV
         HeasxbG77kjPXpjfIVo/wqhv2FWsWQX8DZ/APzGNk+zDxX0RkZ/gtMY13LUfzEq9SRPG
         m4hDfmEyKFeInSth2flzYYmiMypROucc92gHW0GVRrdKbe42CuOAJyj0thOjwbPMuVIG
         YlANp/0USZQRrDu7c/0W1EiZnPCVlNehFBoaIEPUOtS0xhrG2sCsRU2X5T3/NKyhGShW
         +UOQ==
X-Gm-Message-State: ACrzQf3xj6ICd4aBiItuBT7p3QzeeGruqsuaN4l/Zj55ZYi7fRmxDHVx
	27Q5jkZWYW/wN1O7KK2obgXd+g==
X-Google-Smtp-Source: AMsMyM43HA7Lbdg3eayYNayGa2gBj0dL6oO/DWBPg7VxdCCdsmm9X4at4UvPbn1UTgqEe/GQxnm05Q==
X-Received: by 2002:ac2:559c:0:b0:497:a7eb:26a1 with SMTP id v28-20020ac2559c000000b00497a7eb26a1mr1663820lfg.49.1663869820742;
        Thu, 22 Sep 2022 11:03:40 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025fe7f33bc4sm1015741ljc.49.2022.09.22.11.03.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:03:40 -0700 (PDT)
Message-ID: <6ccb9913-e802-9cd3-3c9f-66f5e605aca6@linaro.org>
Date: Thu, 22 Sep 2022 21:03:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 2/7] phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to
 simplify code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-3-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-3-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110345_419360_B0C6726B 
X-CRM114-Status: GOOD (  10.35  )
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

On 22/09/2022 14:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
