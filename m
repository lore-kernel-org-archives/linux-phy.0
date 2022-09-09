Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5774ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoPifASupb02ntfdwgGYMXIh1A/5hHJvtCkdhiTg9es=; b=n03zX80R5MmBXI
	KIR8L7UHX/d3yijERke61+PySc+nbRtPlZfQo2zPPiVN8eHzcHtvB3MJ9sIqLifrsvskllxMz0lu9
	mZF9NZb1MeDO8EVvCWQUQe64VcBA1PebHcKtPKctohDG61YUioy3+KUWphbF03I2o7xHnqw1HrpJH
	xNbqODCrYuqI5hlS/e+amds3YoS/0hM6+LmfV9NGypOa3sPGQEqHFFbVIli409jzjE7bye7OjMdYf
	EOcbmG5k3i0dMr9fH5f/5K6McewUcze2JEWp01JtaEVQttsiK8qQLQi7MuwqUtpTGdzntKmVGBmpN
	wqv2bCXDAQGbTeHnCMRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaai-00F8jb-99; Fri, 09 Sep 2022 09:46:28 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaaf-00F8ia-R8
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:46:27 +0000
Received: by mail-lj1-x236.google.com with SMTP id y29so1160699ljq.7
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=UpwM45QweeVpg1vOTa/xFjHfKv4CPOt5gbzLBrB0rlo=;
        b=tyaDPn47LAyLt173aiZUvC5l7ujviCOgGtucIlFnfMUNp8h/OcH804wyr++79j4me2
         +NvZ/U5bbPOPU+cTE3y6JJYJ3TXaZ1HoLpebSa271p4XLdOwuR5hRHU9mjoX3lbtxSCv
         DMVacV03hCtKEjdpvTs7tE0LTsJWqKzVz8v5SaWM/zEhoE53rR3mfqvdCFoE3exqdHW6
         oKBY1caQOTaCpuB1zXpxtN53nBSI5M1f92Y3PIKcZqIhWOnAbJQLFLf/+jOC5I64NxNK
         ViwV/C7k1YBFJJ5naPibM+IsF1xAUAoVsNP/FcloN8QBQmrX0QfoY2epPAXLcxhVQUMg
         tDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=UpwM45QweeVpg1vOTa/xFjHfKv4CPOt5gbzLBrB0rlo=;
        b=4sTYaGIr5dcinC0RFgCsDB7vD/Cxmj0ZRFJXmvp+MJ0xZNDupsiAlTc7jGDrJ/RQlr
         Wf+UpjX208Bn6QFhPbSWVYjrBfvMlJbueZdij+rwiY3PKHbsHr7VF31jizQsX/kbZoV5
         YaIEe35a1aXsvN3dHHarQIoMr13QJnkR2ejFnFUaEfm4hw0oiIRePcFs2R/pS6WDOu2G
         3Z26Sl9kMSk7jmDavcu9Hob2RQNjJII8MrWFFFbn2D/cL2ZB4aDeseBljj02lMY8bcyh
         6AaOKpQ41EmjRCdeje2gmDnH0Wq47UXITNZE4CipJrkoLtx5hd40qpwPxS6LFsZVIg+h
         z40g==
X-Gm-Message-State: ACgBeo3Zld9kBC9upWK3XakrOb13LFMCHouV1T0a67UxeLtkcdcJT0Gh
	hBF8KkopGTNwB0eNI1J62bP3fA==
X-Google-Smtp-Source: AA6agR6VEZRDyqpyaWDaEDb+EKKg1XiXDBOBCCOhO5iuDsNEut96Cz1/1uR25KQhETBbxAdSronBLw==
X-Received: by 2002:a05:651c:511:b0:266:c941:67ca with SMTP id o17-20020a05651c051100b00266c94167camr3520066ljp.28.1662716784282;
        Fri, 09 Sep 2022 02:46:24 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g29-20020a19e05d000000b00492eb7205b0sm8436lfj.210.2022.09.09.02.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:46:23 -0700 (PDT)
Message-ID: <e886f62d-51eb-545d-7ade-1c72509b4204@linaro.org>
Date: Fri, 9 Sep 2022 12:46:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 11/16] phy: qcom-qmp: silence noisy probe
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024625_909735_005F86B6 
X-CRM114-Status: UNSURE (   8.25  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Drivers should in general not log anything during unless there are
> errors.
> 
> Drop the pointless registration info message from the QMP drivers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
>   5 files changed, 10 deletions(-)-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
