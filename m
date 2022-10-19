Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9AEBC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/QFcZYTc9GGv2y7CI5jiVLzp7VAcHB9JnJ0iTshZbI=; b=v8KeQEbVP6riru
	Jh41h2RbWBd2JOHzxmWUxrieEeoXcD+re/MHLAUAO1FJ1+7R3K9JYIwYlxpG+0JVQt8+vJ4SgmZ0e
	eosFQZfFLhR194Gt904hFVLB59tJ4b739yqIzNwKLrSt4qUD2YUeSvzJUU/6iORD5AxG6q5XXtdh2
	dnsKIdYzeY9TMLM7BFPPS0SAjhjMUs0ipGepkC8CiZ/p5NaNURz/vYwc1QKs3bPuMv+F4gcV7nssT
	OmuqCN5rKkyet9+W0wR1ArX7xPMYUvBWoGSNg3FRCxYJuHYsz2xx+fiQ/yfLAgQHawIy9XbuyMXqv
	UHzEtVvM+RErOFxItNZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9NZ-002E3r-CE; Wed, 19 Oct 2022 13:45:05 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9NW-002DmR-VU
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:45:04 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g1so28161078lfu.12
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mi+LxXEoeheHG6dh6zF/4rl0OCksLbDke1IojHO4tA8=;
        b=irdHAYA9Jwqqm0lxZQw+hxnUNsTL0kw7lUyDAibF1ONGiJ7yP9iggjkSnbYBaNetnY
         OHh6i4j6+BxG1lhj/4bHWifcc1AZl38kf1netmavd6C1Fir05OUvIdWSxH78x7kyRZnl
         dYO4XAfcGTfX7cQ0On4Wa0/m6/Ptr+vxvNa+WoR+MrtnmyfPFanzPgxlNYxASXdSs/aA
         g72AZJ2eb5OiL1Nbj7Tn4VsZYNkfD1roC/jGZ/RWB7oqcSEuuecOuu06c7JwwzxNK1SS
         v2HpB7S50pordEQFWQKqTKjUsh2KdXLwLX5jlutGSbBE1BNE/2Thg2OF/5aA9WArNsJk
         sxuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mi+LxXEoeheHG6dh6zF/4rl0OCksLbDke1IojHO4tA8=;
        b=gbBfC0yTpyZ3YrybDhj29UMx6BOUpMj1E27tLN+I94o4PR4JfT5QPTjRko11y928Xc
         7NyyoKVD5qMPA/fkCnGqOvaLTJR94Q/HrGNHScaUwDS9R9y5Gsoh43hf30RUiYvEogjv
         1ZTwC+McFMcirYe8ctWvRWnqXrNhmIwEKMBShiaMrHH6k3FfW5RYZrchBVh26rU057Rl
         0SCLYeghHFZPpmNI8OFyR2OHkOaLKtuuJfgvBjbkvMDs0Ud2UHhrZXiONQSJxS+M3wXi
         QGc+XidXXAmlR3bvw+lm/ASt2o2vkWrB1CZ9nmqq+9b0qqnwy25a/Od1UACcEgNGr7D0
         rH4w==
X-Gm-Message-State: ACrzQf1ktMbCuPmdnn617roXTtaZlv+C6v6iuI+o/tvasp34d7XIrvem
	BWfP9R9UaoaQVTVNUMfPbUiJ+g==
X-Google-Smtp-Source: AMsMyM54rKUClMHRJrOCc/1SNFrVq4sFv2gmYRmlKpizJzuAPsZ8y2ng4/eO3zYlb8FE8WHHi+7x2g==
X-Received: by 2002:a05:6512:3da2:b0:4a2:6fb7:b64b with SMTP id k34-20020a0565123da200b004a26fb7b64bmr2725454lfv.442.1666187102434;
        Wed, 19 Oct 2022 06:45:02 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id s12-20020a056512214c00b0049f87fb416dsm2315571lfr.12.2022.10.19.06.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:45:02 -0700 (PDT)
Message-ID: <a9c4c02e-de96-bada-d4a2-32c06e2eed75@linaro.org>
Date: Wed, 19 Oct 2022 16:45:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 07/15] phy: qcom-qmp-pcie: clean up PHY lane init
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_064503_043315_D9AD7879 
X-CRM114-Status: GOOD (  10.94  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Clean up the PHY lane initialisation somewhat by adding further
> temporary variables and programming both tx and rx for the second lane
> after the first lane.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
