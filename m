Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 623F5C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1pxV2N00gC5x/GOf/N7tkRgPVHyxju7EVgioMdUWUw=; b=MbkXhghlhjlsYt
	pEuR0U9eJjuoIh4Yfx2g9Caq0E6OVH+rkFrExvAWPPyBbOP3TlRyZNvIeJuuumjhT4jeHovKUl2ki
	DSzp4+K7zQtIdLcVCUJB0zjGyZMeL2Hg0XS7Fd+yCJORBMHmrJ11tV7RUB/N7QxwotkTJbfLcsIT0
	mDDN1SUe7UVtbZTChA73h+d9YxMfjCZyPTnuOdZzk27BaL0cb1aoEYAC0ltMFqjuMczs3DzeevWYl
	RYH490kqhCHhlT/DWn5RNaRMh/z3oyHo6qt1FVn8poeqvgCZqmTJRNSxHdMY5hOclCHEUA5q7Zd+S
	tw9I2zYWh5hLnrSFCF+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8lo-001wCH-PB; Wed, 19 Oct 2022 13:06:04 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8lm-001w70-6X
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:06:03 +0000
Received: by mail-lj1-x22c.google.com with SMTP id h8so22080119lja.11
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hkU5CJVPM8w28zvAmjVOcpJHc9WnxNS4s4QHzh73UBg=;
        b=wBHcNPDSnkO2WOpz0CAH3Sb1gJ+6t3XqfwkD0wY+R02Q4IL41mVxMnivcPc/eWvaeR
         BaEy8xcpTg1oU1QCvhd31rl9xOLAbiFgrZUgnlwMO/gD4zk8H1nBo/zaDzNWJ4bdc+Vq
         rJBQ+ITqT75A27ANpt2MzFIrn/4GcfqIGc/hMPGjCc/RLMuY/frR5IWJq5UgQwzHI2dN
         sdxHneSTJDvX34BmvdqfiSbvYjdxKEajnq8jdNT82jKih22rMlYu/d2kxM6Ble4Q+sbq
         j37NUEhrubwIgeFkI/zxTliXr94Dt/JrRnLFJoXXY6FQK+O7WvmH1lYTArHKLWIxVLsb
         Gz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hkU5CJVPM8w28zvAmjVOcpJHc9WnxNS4s4QHzh73UBg=;
        b=G3KHXRyH+csD+RPFQj8jhnFpEfubj7M3lsJg6lahXifEDYhFu+vam/yrgfimLuFGnM
         VOXA+9B8EfSFG/6IgBwbZeE0GuEKHY9GJoTdjf81qw6TG81Kpie+++Tr2Cvrn8KLwZqs
         gqAao/LtvrtUpZufz+o5k3AwflNa1J1B5FyNz6GN3r1Ga+qbUYqa661Fkcba/JAALBHQ
         tFdRFQCuoVrmb815st/IdUxtYL4A3FQRdaldEVNQNMO7spjJB5afXuTxQjPNcUI1a+Lb
         3YRMVPjDy/2lskmYJ2Yj9IM3ujYZfczLcOFOygWMycc8cwG12TmkOz3bWqc2SSkdWoh6
         QZGg==
X-Gm-Message-State: ACrzQf00xiGlcLKjCxnMuojtOVjUYDRiA+ge5SRf2lhZNAACvophG4GP
	YMTidTa9FhCp0R+2IZ1W0fU0Nw==
X-Google-Smtp-Source: AMsMyM7FMyQvAw4FpSNfLyO514H2NhzJIoPo24uC4C7rLWtdWW9cjLPlFh8qlplgz0nvbbB0dk5ljg==
X-Received: by 2002:a05:651c:178d:b0:261:bd23:a5f8 with SMTP id bn13-20020a05651c178d00b00261bd23a5f8mr2683157ljb.411.1666184758489;
        Wed, 19 Oct 2022 06:05:58 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n28-20020a05651203fc00b00494643db68bsm2285934lfq.78.2022.10.19.06.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:05:58 -0700 (PDT)
Message-ID: <58e2f639-b764-6712-2072-5acb0fa2cd93@linaro.org>
Date: Wed, 19 Oct 2022 16:05:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 06/15] phy: qcom-qmp-pcie: rename PHY ops structure
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_060602_295447_D9A4D4CA 
X-CRM114-Status: GOOD (  10.57  )
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
> Rename the PHY operation structure so that it has a "phy_ops" suffix and
> move it next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
