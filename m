Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46471C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/Q7YaJoFKLvUNkNYg+GEJiHG14Ak3VLzD8RAYKHPqk=; b=CQshQIKy6anh0q
	VLEpvgU3QdCXz7B2qErchTaifYkaiX9IdgsLTKYkqDG+HBfgWB6vuEbPWpcRuGewSBh+f46b9dI91
	NfP/geN85s5Xvll37czAadwIkjktrfszf+uKqI+VdG7B2g+E1U6khcTAgEKIn80xRKESgrFRjccBE
	J+7i98inumPspjyVqp5z0QItcrWI4n/t1LhQU30fj86XgV+3ON8orBx+3DohjAsRtKkv5jujWy9I4
	qJArKkq8D11mMvTdefKV87p93DgYkZ10S8ezLf7ksyN6Hzf/lvKJTvHBl+q9PWwMEcMBqiblqZpaa
	JarKKw2yZaWE3Xlj2lZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiXb-009IxB-IO; Wed, 12 Oct 2022 20:41:23 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiXY-009IwE-Dq
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:41:21 +0000
Received: by mail-lj1-x234.google.com with SMTP id x18so13458772ljm.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H9ujzXXbv59Z0ptRngoz8lOSltMFrDvEPG60FkW1YYY=;
        b=xRZxj8PCSNCd0Bbgj3PBrUMAHBn3irq427ifdBdiCjCGRG4/KWYi8ajIMQx2OGFw8C
         FfrykJMM3gcedik9yVLkjs4X+qsYKP2X2SRKqYUkY76dutEZaTkv8RxprJeK2DVyfdZt
         bhNA7ImS+rpAFpsc3ghi1U93MlNBNmOz24tVQ0li9HWVSU3CKbgfIEPJGwUu5TP7mESN
         Qq/bY4CnQ/kOlDr3DQrRsWvo3kd4bQlNjE9OcgV9lnxFvCzxhZpsXAmJKCVkb3PotWzI
         XBSKMZc6OhIf/tSsMO5RaxmmetzmQ53855II2edLFr+PflLL+sOo7JS/7+DpiytGAuhA
         n6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H9ujzXXbv59Z0ptRngoz8lOSltMFrDvEPG60FkW1YYY=;
        b=tXQ9USz4/no1p9VIPSzGC9coA00PV1DwXY9ZFu57bZ/0Js7iRX1HFIY/lVXEaT2o/1
         84KIkCXYYMBtwwYoLdLRAwQyz7uu3AsWw8xpbkaO/kWGQRK2MVP0UXr3gMWxpCkbWYAN
         Acx67qi+4UyLEq1sC1El7WqhXLnXTbajFOLatvjRrJXAOQrNr0w7b6fTx8Eug9Ozchy3
         WMQJtl8BAaGBwzaNuYnQmoSMuz/Xd7zLqapWzLGu5+1g15BxLu1DZoimVyebs5W5wmzH
         eEBuUUCblzIPS3TRa+DUjz7IZKWMWp6FMGOtv9+pvstNT04hOieKqOW91tmZvHI85fq+
         Nl9w==
X-Gm-Message-State: ACrzQf1KKERgB0hqA+gZpHxrs3/EiY9DqdXY9/UIG3KoRaZURMDXTMiA
	W7d+UEf6nwG4oDvpPhxnx6ZSWg==
X-Google-Smtp-Source: AMsMyM5b3xOm2qqiyzFNGlyybWqS3MJgLrtQhJvbNFAjqafg2S0TGvBiiPOYdC/h3x/1jQ6FFurYPw==
X-Received: by 2002:a05:651c:1102:b0:26f:c343:f378 with SMTP id e2-20020a05651c110200b0026fc343f378mr798461ljo.261.1665607279120;
        Wed, 12 Oct 2022 13:41:19 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y1-20020a199141000000b00492f0f66956sm89007lfj.284.2022.10.12.13.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:41:18 -0700 (PDT)
Message-ID: <6db36a1e-731b-491e-f0f2-5d2ec70e8be6@linaro.org>
Date: Wed, 12 Oct 2022 23:41:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 13/14] phy: qcom-qmp-usb: drop sc8280xp power-down
 delay
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012081241.18273-1-johan+linaro@kernel.org>
 <20221012081241.18273-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012081241.18273-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134120_505931_A57FEB04 
X-CRM114-Status: UNSURE (   9.28  )
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

On 12/10/2022 11:12, Johan Hovold wrote:
> The SC8280XP PHY does not need a delay before starting the PHY (which is
> what the has_pwrdn_delay config option really controls) so drop the
> unnecessary delay.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ----
>   1 file changed, 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
