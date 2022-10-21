Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 022A4C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FReHxSGTfHArQownVF3qMPnx/EkE93bRtn6FP2TpiA=; b=g0VfYjgfuPIx9y
	gFhNJTIYRpDwnRO9HSSyy/ZmXcsEHy3JDG7j7TrbtFAUBn+sVRrlM9mZjkbfoWQMS0Uu049NNh9hN
	/HS69fCXCd1cQoBZQDu4U4JXe/DQFy1Pjh/It6xaYEr92CFOdIEqdBkKErwEeVq8xSw/5hPNOiCGQ
	6eRY/BgHDs+ManfBBEpHRqLZ6o0E/IPp+2Pl/ewtGXR1JrvF89455hus0kZWTpUYdS6z9FJhtJU/+
	XWvI7erIJPf30AR012PjaKlDTf71s8D17oYVJQY8J+hfRVtBDYJ+dmWrizgHYJ3VwD3YwJMhdCntb
	q2yecaHkVSiyj1OKGV1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq44-007LCG-Dg; Fri, 21 Oct 2022 11:19:48 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olq41-007LAk-Iq
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:19:46 +0000
Received: by mail-lf1-x130.google.com with SMTP id d6so4493317lfs.10
        for <linux-phy@lists.infradead.org>; Fri, 21 Oct 2022 04:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ry8J3AzsAYcOp8SmDfnbNUXitGgoYOKaYRQ6uRWnRWU=;
        b=daE365yCa1g3YT3Ogsc/0phvnpY7BrOOzncWnQ3sfLuU0gpU2cH1cbumKwuTfm12j+
         nhkXFut2118tOsAdLXDvjf8sDSNV9p2u9bm/0f9JTNkW9RR3AgB1JXoQrUxUF5okjfwl
         nlmc7nRkMhb8IcQq9Tp8YXHh2wFFRdj0E4MEE22MFVK4iHWKtZmGMwGiv9aztYevI3Ik
         y/ECRXjNKpNAAObiSLxryE2yGNyV1A8Q8QUbtTLHpgxLiyjz2Pg9WDNu7b7D87HnZze6
         Lel9eKeAAbPws8UExyJh6YIoNl2CIeNOI6hJfr71ChuCnhwEfNp7rg2M9UG84x5QOaKW
         Yo3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ry8J3AzsAYcOp8SmDfnbNUXitGgoYOKaYRQ6uRWnRWU=;
        b=FqRt9edjD9mhaMYxDr370tMaxXRepXbVIqVmDwKLZRWZ73AfTWobXwP11s//TrH9S6
         gqfS0X39QAgAFJFNERzEBqr33UXmzLi/HpheJaV/Php3hh/eDCaAUtuyFmCvMyyi3iof
         +Besj9EzEPi6WFXLiJoiL8ZDR5L+nRJVrnMbWXDT5Nvg1ZRU7QId8e9tUWWM57MjI9O5
         /vQlNyagExv56obuxXXaztOjbW86Df41KZow7BXiCNtok4AiASOQkxpuwJDFuqltCfUX
         VWOn/r8xaH2Imz5zOQVh/lrhrzBn3QW6Q7AQanc/Z5sj3G8JM2SPsZLxZcOkiI93i11v
         xAEg==
X-Gm-Message-State: ACrzQf08MOXMJXD/UOizX173I+tbH4GmmaIDu/kdaPDRI2kVRrN9Kn9r
	a9NxHtI7V9MfB6T8za57Ph24F4tLeoDIMw==
X-Google-Smtp-Source: AMsMyM4ow9jYgXDgpVjyT18F7PpTAHJgqNxNuwIMrdbae9umBoBzQMLU0ULg0iNON8oQ6+JowOTHQg==
X-Received: by 2002:ac2:50da:0:b0:4a2:44dc:b719 with SMTP id h26-20020ac250da000000b004a244dcb719mr6259514lfm.652.1666351183033;
        Fri, 21 Oct 2022 04:19:43 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id f25-20020a19ae19000000b00497aa190523sm3123186lfc.248.2022.10.21.04.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 04:19:42 -0700 (PDT)
Message-ID: <d2c2b274-ecee-456e-25b1-dd161641720c@linaro.org>
Date: Fri, 21 Oct 2022 14:19:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 15/15] phy: qcom-qmp-pcie: add support for sc8280xp
 4-lane PHYs
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221021110947.28103-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041945_646636_AF65F574 
X-CRM114-Status: GOOD (  12.33  )
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

On 21/10/2022 14:09, Johan Hovold wrote:
> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
> PCIe2A and PCIe2B).
> 
> Add support for fetching the 4-lane configuration from the TCSR and
> programming the lane registers of the second port when in 4-lane mode.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/Kconfig             |   1 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 117 +++++++++++++++++++++++
>   2 files changed, 118 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
