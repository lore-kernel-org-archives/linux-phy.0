Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B142C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMnDK0b3PbN/fV5K/I4O6fTu3Awv93cuKR60ZKNITVY=; b=w6+hkTf0LbDbjY
	xsOsm9nx7NRp7xT6R2QVFxMTFSPb0/x5La/9xbGAJ1l9NoEI6TTvqXhjSWqbzbw5TfJBYL97N+ukH
	JWXTJVJRgZYBp5NFWhfbczQUubTOC4U7Yh2dZYk1NeWQzjBRParSv/+L4zJ7WTnz8Ovls1LzuDmGf
	XO723H6Z66KDz96vF6FFe7Rn7zIzGJ8bCwE32lzT+jywcgrYmOBDSQkLasIcW9FRaEjJ6xuV/daJT
	HKftg/ryLHfOZpX92G3exanm3zC6aW4TwwL1GLI8lVD/DICttSSTWDK7ryhsihk+FfsVa+7ekTAeG
	JyYZ3zVex3h8mLQs0LbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQSw-00HBhM-FR; Thu, 22 Sep 2022 17:58:26 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQSu-00HBfA-BJ
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:58:25 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a2so15957830lfb.6
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=l478WV2PQrEPincbg/O4NBfPJTT4Q+S9mMJy9BBn9a8=;
        b=Hb3m1qSIZlO0ry2k89IBZPpA4nRFpA2iWKCH0ptaFKAtKTlVBkmUqVKJXpP1uv+iqL
         Bpq6iY0xoewsqqpOuNQ1dztfX9Yl+RYF8O90kcT08YahUow/vZyM6G/v15qqnQ/q+IBY
         45oKHp5p824FtfnHleaBBAMopHhquUHf1GzvjLWGdLr6xhDRqeq4x1+W+HLj3dPb80cV
         ppqTEihAApF2J0Y44kH+C+/WVn/DgWgSe281UAT/6CjabmQwEFw2EaGRfBuOnpCxZMq9
         7tPypK3EZQv40V7iAT2R9unbAK1YaHNi16SWZvrncLiJT6OC+zPUt7bWal7mZsLeFYl5
         9SFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=l478WV2PQrEPincbg/O4NBfPJTT4Q+S9mMJy9BBn9a8=;
        b=acRz3Tcx25sZFmVE6wL9YoSoQduq36t28thbCZfU4VheS9LmRSRQALA1FOCDbG+XF7
         9J1rullTW50fSUqibWA79L97Y3r1UKjSn60VYq1Zu42+zm+KYNuHpDCZsk9MF/8z7uQg
         igdRljD/oWFDtmlBg1KCHV1G04vyHmGHFRvGqmDs/l7V7QbqAKO8qTWtjv0aCPt91D1h
         Cl/28pYawD3Dsuvi7Cqlp6IQ7yn3ssGlrRIXwWNSs0effp2u0qpgl4fVBu8/+o7vR2ly
         6YlbWrTSXW4cle4B2TFJZwXFtR1M/V1FcH2JgJjgD56iC+wph4qyKuXKL6guBZ+WYVII
         el6Q==
X-Gm-Message-State: ACrzQf2iDrrgqu82Z1Hjyv8VhAu5KDLrpnn2QDD6w42hwLpBcZsrDT3q
	ubgSHz2LUua848oUMuNFoQfyxA==
X-Google-Smtp-Source: AMsMyM5vNqMo+hkzshJzO0Qq1ZzNX6nDvB7bj8jVMr5fO2m3SsASi78YwcnbXvJGoN+FkfvM+77GoQ==
X-Received: by 2002:a05:6512:13a1:b0:48d:f14:9059 with SMTP id p33-20020a05651213a100b0048d0f149059mr1898038lfa.110.1663869499748;
        Thu, 22 Sep 2022 10:58:19 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 3-20020ac24823000000b0048cf43c3a85sm1032371lft.238.2022.09.22.10.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:58:19 -0700 (PDT)
Message-ID: <0d802f2a-5bed-28b3-7160-e1fceee34ae6@linaro.org>
Date: Thu, 22 Sep 2022 20:58:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 06/17] phy: qcom-qmp-usb: drop init and exit wrappers
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105824_415289_A719FB39 
X-CRM114-Status: UNSURE (   7.88  )
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
> Drop the unnecessary PHY init and exit callback wrappers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 29 ++++---------------------
>   1 file changed, 4 insertions(+), 25 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
