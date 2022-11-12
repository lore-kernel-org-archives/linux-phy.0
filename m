Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0995C43219
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1A7PfeFM4QLSBQVzJFPIYWr1Nn3ZLuPEVw/W6yITkdc=; b=3qbTegSaAocEWu
	kN9M+RPutlK3t9wyybU2sc4+4uvCrlo3FgqqcXDs3I/EWXxkT0b5M23kg98kQtApdLCa4h+eqkdBQ
	5ef8HS8lalkwAdcMk7G3SU4jqZ7giHyBxHdzctUtjkKegz3v5zUt42rUfDyDhlXenYAxLWWKTJ4WO
	+i2WcckHvY4aNisYqeeM4lyZd8USZP4ogjHwqUkEkdKptngd4Lmose21LJsZfMhI+ROrlOlGPXtkX
	HN3xyVcSFJvBA9JTNIgBTQHBBw/ECRls5ZU61UgDJ+RZVpDvSbk9EErrrAkMVTWxpxzrwIc1itahq
	UeMmKy7UtFclKxHSUjnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otp18-005OJM-7g; Sat, 12 Nov 2022 11:49:46 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otp15-005OGe-Pd
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:49:45 +0000
Received: by mail-lf1-x135.google.com with SMTP id f37so11990567lfv.8
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4oNgcDzAUynKRRT1NTYmiRuAAnV2qyMqsSjvtfnRj8g=;
        b=b2oAN9hLamT+7bUdqbVUObYzuMEXQ2KhWnDf/DTBjBcc9VXz4cSpyHSY2srgzMwHOO
         RPCA2VE3ooPB2FfxIgti+s7moF+bcdQbx5Nx9h3gGpBRN2S2V0Oued4UK+wN9RgEJRfZ
         GLPWlQiGu5JeY2c9T7b8cil2Czn7LdGBUWZX0EnT0mOurUEa9M7+O2b3QfYZRb/UVTkl
         UMSxPOs/Iqe836E46UimuCF12hmjVeBDz0uJ2gftWY4Oxx7VgSNTXeLcksHArvJ/PkLO
         JlnX/QSOv7F/YtCZa0vPU5RJiDNiVjF5wbKuiW4ge4mWxxzKgg4bhMQSSJOkXlwME6E0
         KvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4oNgcDzAUynKRRT1NTYmiRuAAnV2qyMqsSjvtfnRj8g=;
        b=VpI4XcLm9tytynfM4w3E0vW1sHeuDj8h9jdBElkHQ7fHK5Th3MhIo8wU9MAaLqlEHY
         +JUIqEYK5WExRq16EeGXYhvst8H7BkukXU7J4cdTl2FH21G/4MaT48djpncUDC/TsDXg
         O6EvVZAz+gZ88g/jd7NVCRzVe87plz++7rGFEJxetcbKCQ6X6khmv5C6xQ8TSN8uLcQy
         kLWvhOC6srVcG+cPLhM296LFhR9tB+nYCtqXRoy7k5czrDahHUEDBYXmC9N5pXa6XAFt
         s2IAPkUHtiYQttDjeS5A0lbfrL6SUk7ZjWxPNlMYxKyZYO6XPyviXBOC5tdkQZ6KCSIl
         C7iw==
X-Gm-Message-State: ANoB5pmXhdTjqwU/YVf67L+rEVzdqZvQdpmBfzYf6VE+jeevYdpcL7pU
	zS97653Vte4r8SLeM87ssaE2Pg==
X-Google-Smtp-Source: AA0mqf4SA4FNsJtTeK540ABTurSznwTaWEG1mn5nfaXargOpNqwuQeJlmyzdOq1CNq4tdSubS2xikw==
X-Received: by 2002:a05:6512:298f:b0:4a4:5e83:e07d with SMTP id du15-20020a056512298f00b004a45e83e07dmr1875576lfb.409.1668253781771;
        Sat, 12 Nov 2022 03:49:41 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z36-20020a0565120c2400b004a47a92ff4csm836171lfu.193.2022.11.12.03.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:49:41 -0800 (PST)
Message-ID: <4c3dd58e-7162-3457-c785-dbd44eab7628@linaro.org>
Date: Sat, 12 Nov 2022 14:49:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc8280xp: drop reference-clock
 source
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111093857.11360-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_034943_865619_C116A663 
X-CRM114-Status: GOOD (  11.93  )
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

On 11/11/2022 12:38, Johan Hovold wrote:
> The source clock for the reference clock should not be described by the
> devicetree binding and instead this relationship should be modelled in
> the clock driver.
> 
> Update the USB PHY nodes to match the fixed binding.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
