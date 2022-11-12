Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BD0C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ+zCikaXurha+iDXH9kVWxX8N1P0ZSccEyztaRjY84=; b=zaIvq+uskTaldo
	dPX8d8NEvLy73kNngyeewLTq9W60zA/LAN51EIA3KSlJklmNRhgtYhEHGVLD6858jovNUeelTaSV+
	nJyCgCdgCxV949oKm815gdJpIOxLw4fiN45r4YeGd2T4LWlQLkQfNq5tDXZbIQ7t3+XGDrI/rk1+r
	Rp2w5AKM4RCWxeoQA7xBx3DuVz1Yb03xi3xR1uvcmUoPwUzGL/HK7RzeNsWxSr6RLsg4qJ9pMyhzN
	pdezGoCzuPiECd18bulchDfCggYN19EX0LGM9mHevcVGAKZtlOh+Ky7yKcJSpA2AWKPuZR/bK+gue
	ii/Qg5BMcgEh7xX+D79A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0q-003wqT-3P; Sat, 12 Nov 2022 07:33:12 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl0n-003wpm-Vg
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:33:11 +0000
Received: by mail-lj1-x233.google.com with SMTP id d20so6811022ljc.12
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bg6YBGl/EJCtYIdndJrZk08z2YDso/H/J+GwBQ40qAY=;
        b=urNOrd9RK3Rr5hkIX6zQEjsA8SH3ZPUsr3NfaZMmyMmIrId5/eofrpg1uiAYxrPaP1
         GSPD8SnQfe+ALS01K+OJXWfYH5KtKpBCu54ic/zHzWRKN09BgFGhtMsApJKZDY+EWYNF
         xvHhZ/ZOxd0jM+FliULrLaJhVWzWc3xatb+BeZxg6aYtg+2abelMnTZ2K6gnuL/Bn+pd
         xUm1pIZLvmEeH5GEJYpgPHtxMT8SectF0w2OyFbV5wfp8hQlR/x10H/RLNliq5VlamEU
         BKJETg1s+ZkaDfDo5roc2w3npvmJj4LzlU0oWFmGcLA+ofBlgsiP+BkSuF5XS5B8/xPz
         rIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bg6YBGl/EJCtYIdndJrZk08z2YDso/H/J+GwBQ40qAY=;
        b=Sk+9IeZqrG9XYqz38bdaYgdd0UmwVHX8AM1OB4iEtbQahPHtl7mNYHfwmyzU1442pF
         //G7Cr9kt0aSSQhQs2AgWZOYOsjgi98YeRzisC3Tlwjr+hX5NaDErcbGUZ1fBg7Tsd2j
         hwQFLd7JDeu12T9pQaAlg6EuIss4fDNgYuSCeRgLVG3xxFzO4YmblMsa/hHbz14thJw0
         abvAM6Ic5q1dkSPMjc2Z8M8tLLr21pE5jc96Op9m6vfuuRK1GayvbzT3EXdU3MuSeUOR
         u6kOGxtqXGkpM6i6HQdt2DFuPKJZHjDduqumC+IRSP6blgnJ09DBhusalG+jdzYTtEV5
         r+Aw==
X-Gm-Message-State: ANoB5pm4T8Wp+3AVdmRNrP80vymMY0tJ7zGwM1W/Xn0sr6RUCNa+qbJ/
	gqRoDDIEch1Wr5EIr7trt7by2d6Ky3iRaapk
X-Google-Smtp-Source: AA0mqf7mjfElPOP51JDmcGDOKve5lmvK8KwiAOy0IxQCbfzLoON7tXup0+UMt8K0nQ14A8NFYmCdAg==
X-Received: by 2002:a2e:8e3b:0:b0:26b:de20:ba89 with SMTP id r27-20020a2e8e3b000000b0026bde20ba89mr1616751ljk.254.1668238388113;
        Fri, 11 Nov 2022 23:33:08 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p11-20020a2ea4cb000000b002770473d813sm759680ljm.140.2022.11.11.23.33.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:33:07 -0800 (PST)
Message-ID: <4d73a96e-ab12-6b86-ef42-8e99f67c1bab@linaro.org>
Date: Sat, 12 Nov 2022 10:33:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 15/22] phy: qcom-qmp-combo: rename sc8280xp config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233310_045446_195FE3B3 
X-CRM114-Status: UNSURE (   8.89  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> In preparation for merging the USB and DP configurations, drop the
> "combo" infix from the SC8280XP combined configuration for consistency
> with the other platforms.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
