Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90782C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBnZYEJsY5R+yI3+ZJTqAiGTB/vIppYZph3EM5i/ZYg=; b=NpV/V/gE++BVJR
	bR4TekiUx4ktK82dC04BQTwchIuLayJAvFe+t8qiJnqcCRMr7mMG7P5u03fLnjdhbANchyE12f3X5
	1uIiJUjpqIq+H6tOTJJFKGqJXxeNGD4hjNR8B6rtLE+gxav9SGVmwxLvKPVO+l/Dd4l3SI4+cN5np
	PnKIMBLGQ+TOrt/4kH1ulz5luXXqqX/nwKiFzkNjTgowCQ5Dn0K5iVjkHaoFwabmOiOIXHxOuwzae
	lmyaf9siki9ERDoVEAQtwcnUC1AAXRuei7bxC1gJ3rMoeUlc8732lCelPcjlCpKhPh35O+2YjTv8e
	fpc2N4Vrhdcx6Muw//DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij4D-009Mwa-QF; Wed, 12 Oct 2022 21:15:05 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij4B-009MuU-5P
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:15:04 +0000
Received: by mail-lj1-x231.google.com with SMTP id by36so52453ljb.4
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uieyqLCDpOucubx9r5cYMTeUx9aYigU2t/tMa1KkfyQ=;
        b=fmbdXe91hMXZMN5EfJ94KhwONxi2dZtPaaTf0foUCp/ovWy0ZDqipIrD2TBtez4rZp
         BQxHVqv2J2oaxP+kTZ5HqcPGzYA3eDuKtPPHVAZg1+tf0AgDVflRqBYPEhml8qNxp86z
         kT89JF73g/Y/PoCgcOmbaOadp8MD2MM5T2B+LFaPs97S5M3MbSu7dQmyLTCTqpLsHgWL
         8vaETvW7JNqJBPgntWkacNVS+hFgwsit03C2ypUul7rHxLdPCEg/nfflEHByLPwsMwVs
         +MYTux5vSNi3NMomLOjzEp50KOa/fAZ8UHC4grYJrQa5YMYykIyPgbDfofDJ+R2633aZ
         6jeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uieyqLCDpOucubx9r5cYMTeUx9aYigU2t/tMa1KkfyQ=;
        b=EhBJoP7qvl4+hhE9+oy/vJ4OXvCQGx/gJSjUiYrReqCwP+eaZ8dS2O8VXUlfNAN2sw
         0a1vCx3LMZJKoV4jhj4QomfBK7GoEU+8UMQPhmhqoonEdzTBh3mzstJciR2NMceqxQx6
         YZXSX6BXzD1YV1qQ5CqgnMEUbrZQ9VAtfwv0tWhIl0a4laTjEOiAjFt8izXTjZ2yQocD
         f7tb+8MsbjS3p5Y1m4QXeRT/mH/uKqEAo8joyPiS8iZfKuBgiZteqXtCun+ZoZlvj3Xa
         aJaL+xFZzcGLUKT53CYUPTmgKwUNZ8uSePrMXaq5flFgNRTIcMSIDJXMjGpqdi+rHPKp
         A6gg==
X-Gm-Message-State: ACrzQf3iqwtlhpnEdkGJ017u1UJ3+XrMjDgYy4LB892Ztyoz+Lwca8lc
	5z1st3jTB+cKCbZP+OtYnF77ww==
X-Google-Smtp-Source: AMsMyM790rUgzg/cSHIcS3cHtmXSk/OgaixrsnsRxMdVtBQ/oX2B1rwAoCFcOjWbLvN3MoipZj9Czg==
X-Received: by 2002:a05:651c:14a:b0:26e:9a10:6b90 with SMTP id c10-20020a05651c014a00b0026e9a106b90mr7238274ljd.306.1665609296268;
        Wed, 12 Oct 2022 14:14:56 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t15-20020a2e9d0f000000b0026e8b82eba6sm125872lji.34.2022.10.12.14.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:14:55 -0700 (PDT)
Message-ID: <6e9786b2-6aee-addb-7ee3-a5194a159c01@linaro.org>
Date: Thu, 13 Oct 2022 00:14:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 11/20] phy: qcom-qmp-ufs: clean up ready polling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_141503_235739_9A7878C5 
X-CRM114-Status: UNSURE (   8.70  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> Clean up the PHY ready polling by dropping the mask variables which are
> no longer needed since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
