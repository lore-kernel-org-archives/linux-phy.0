Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60781C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 10:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqbA5MgmP84gW/6xXEHRHA+qcyx+J9g6JFvpqxHdWTY=; b=KSvojYBXokhn3v
	thuNyVnGFPs1jKZF1mB0yg8cO1bm+PKkMb9ruB+yZid+fnjdeAERb459nH9Mc3Vw42WJr5TQjafeF
	WBzrsLfRpZXa5vObWZBPq11iEdsh6mmPNYjTYApp3Rcx8gRfHOa0y/zYeKdY7yZzacR3sHlfxHQL8
	MVV0r7FX1mlN3R6KTIMgaIuZ5e9nDLzqMUuHSouSnfMvzQZF8Yemz3zTzpdHHQEvk8MqksprHg2OK
	IrEO7fDbh3nTKqgPk11jQgUTbIN++S8RwG0f5MPSmHLAz/dNRFej3d/+BFYls6TbejbvWM7cUCayX
	NmUPDmS1EYTcp5XS61rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeDiM-008iGQ-MR; Fri, 30 Sep 2022 10:57:54 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeDiK-008iDm-C2
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 10:57:53 +0000
Received: by mail-lf1-x131.google.com with SMTP id g1so6295191lfu.12
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 03:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lbb5B+qeP0c49eKSYxVRJmj2eG8kfdi5AdwAAZCocVw=;
        b=C8kLnO4QnhIFyv+/jARRnADkAYjc2jY6H5O+7yw7D56BX3QqcGRouGcNmiCLCdC48s
         JX33APu1UjW6/aQ5J7eNz7Jw4RMm+APw62SOcrOyEyxFVw6OPT9euLNedNhZfW2tp+po
         kiCWR16PFmB3UZNV33SUyrIWHuIS0LqzCu0cjbPrW3cjPueAWTBeyG273rInW20ThF3D
         6qkhAS6J+MkRuiVvVSz5JFtBmaUB/0fdsysltrvRfIM8jMCZFXbUwOMoCa1adCSNYvv+
         L+n8dd0rWPPLVRau4o3JWGnMexItw7ixlzu5u39Vhbm4AC7LwCAPZ6ReUwJzpC/5z7Dc
         ivQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lbb5B+qeP0c49eKSYxVRJmj2eG8kfdi5AdwAAZCocVw=;
        b=BOseBb7+3JB0hj/hAPKsFn9p5BqyHriavsbR3q55BGFPKY91FlxPwAg4xLwU5xStMQ
         mvI6btJALtrk9cpQzAvHX25WepwWGwElFDEMzYV8DNRJc4fm1ZEgFQZUFRcRkPBn5VHp
         f0/LYtWAhGGQ4WdJrNvWfRmJ6SZXlAEWsc6up+tEbHT5MQ6Lf8eGfY80wDM8ICTyGgey
         MGr3Nma+ft69Nfb6nKEur+ASBeAL1JRMMx3HkwQIqvC5VCESO+02BnXYU6hGGf1zhb9e
         vz3y/XZ0ruvLqdGiNPwvnAhj6NBsNACoApDZKarFXVEs5holfjrGvU2iLS7Lp4FFOAfA
         aNLw==
X-Gm-Message-State: ACrzQf0vasRSpR6iu7QfGpOOltIUDeVB0NOi5yWuv+DE6rNx4CMH36RI
	fnZSez/sWS0cY4smsb34D25XjA==
X-Google-Smtp-Source: AMsMyM78vR+NBhU6krFftu7B3Dla2vzFMTBXOHhSPjgKD9zG1t6cjHvQ3NsmqRd1d3xQ3/WOQTHtRg==
X-Received: by 2002:ac2:4d2b:0:b0:498:fbf0:4f89 with SMTP id h11-20020ac24d2b000000b00498fbf04f89mr3039758lfk.500.1664535467632;
        Fri, 30 Sep 2022 03:57:47 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a5-20020a2e88c5000000b0026c41574790sm127366ljk.30.2022.09.30.03.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:57:47 -0700 (PDT)
Message-ID: <d82b0c09-194d-9357-a887-f0c8f81fb6ab@linaro.org>
Date: Fri, 30 Sep 2022 13:57:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 11/11] phy: qcom-qmp-pcie: drop bogus register update
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220929092916.23068-1-johan+linaro@kernel.org>
 <20220929092916.23068-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220929092916.23068-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_035752_448401_9FBC98C3 
X-CRM114-Status: GOOD (  11.36  )
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

On 29/09/2022 12:29, Johan Hovold wrote:
> Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
> PHY is powered on before configuring the registers and only the MSM8996
> PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
> initialisation table, may possibly require a second update afterwards.
> 
> To make things worse, the POWER_DOWN_CONTROL register lies at a
> different offset on more recent SoCs so that the second update, which
> still used a hard-coded offset, would write to an unrelated register
> (e.g. a revision-id register on SC8280XP).
> 
> As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
> the bogus register update.
> 
> Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> #RB3


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
