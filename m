Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67202C6FA91
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 15:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+RCMpG09J1VvArnL9RtyfMgX2Umt7DsQT/YASNJdAk=; b=Bq1RLsw2W/anHJ
	DxILh4sUYZMijp32x0LlwclJ3fFYrOEHjos4/H+kY2abMoKwwH02vVpsdmWY/eT3w9brnxcuwWEkr
	UqRuRKTLbthMpP7Ik2VFIIgQQRKEKMF3LeQuiCVQ1oHrejM8E4bNVOMLz88Xhq0VTJMCKmz+7ifvQ
	C2DPd8/TEmq0Np5Ftl5Xy9TYCMkfjZd8BRw2lfJDAVsSpetAjTDT2j0heGT1pMFiOTQ46D+VlyM6u
	04M2EJq10MLbOY4dhVDJHd6G+4ql6UYCibgEZyDEfMuaYNA+kl6kQ3C9gPWZr6xgrj+01bzVOeA8l
	mGz1trZ+LIJYsuiG+y0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNlh-00GHFs-Jq; Thu, 22 Sep 2022 15:05:37 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNEr-00G34B-RM
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:31:43 +0000
Received: by mail-lf1-x12a.google.com with SMTP id k10so15011510lfm.4
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lWxYsKHunzTLgP+6yLWJNKwWAFjPCUjcE8E10qG99PY=;
        b=Odm792L6nD2rKtq+NN9HM2Io7lJc277RtK+cNXOOe4J8MNwznd+yulBBWvLzsYRaTL
         8d1MAfRO7Cc8WwEQFCtYnkMBFZaw1K4Yu07h2GPSpHDZ+pqO3mQt1knl5KSg9UD0OcRj
         rZxmwFPql7hYebCtYsvsw8sCyvlp70DqtfpfLsyPJomHN6gJkeO5VrMcLg/ujfH3rbTF
         CBYEyM0Hcg2q4o3zOChaJ2lSMxNi6EogGPB48O5aR1IUIrCTTB6wfSKOEBjkVJVN4s3g
         VKeKIoyrzy8pLMvMMo00Mgxt2pqLsVJFmqjzvapGjsNav+/lFVDjM1VJwCSmI/Q0pgwd
         R1Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lWxYsKHunzTLgP+6yLWJNKwWAFjPCUjcE8E10qG99PY=;
        b=UevOoYXVBviaApUx9Z5PkJAalc+AWJq3OeD1uYgRvj56DO6fZzKv+iBEszHZawQC/E
         rde3Ab/gHURBBFg/Wj1RIKOQWbwEhOPMiCF0IR9ZnOzdGkjKAET4t+ACI7AXCCJDxiGe
         dVq+Le0Lt1jxNSkcX9aSRjjKsjHAhhP0X8+0vFMDgFtfwxub0vT8L5Rp69GJu5EvJOt1
         misJxZPQ16GTuQexVbKLoNLSIk4qJiwnS3ik8POTYxYwliMAzZ1Uil/eAKt7vQSE7s8s
         iCRcE1TuhFUdM4/LGTjKWkG1e1lTQZVyngCMsMuC9snVolRpJvXCJpix0RJwFPaNH/eR
         4VGg==
X-Gm-Message-State: ACrzQf2oOu4xKMxx7mEwJk9kDpJc/+Le96Bo/D/XCcCts8Sc2wc/iwZ1
	fX9OUrjuGY74NpwhOdHXuLAZuQ==
X-Google-Smtp-Source: AMsMyM6fumXbvTNcAX8qg9kGyIM6pmClMHydCp1AtDlObTKqMNVpLsIRB943A5Jw6UOZ30Af4dYByg==
X-Received: by 2002:a05:6512:3e26:b0:497:3a4f:d1f with SMTP id i38-20020a0565123e2600b004973a4f0d1fmr1513807lfv.31.1663857099045;
        Thu, 22 Sep 2022 07:31:39 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x10-20020a2e7c0a000000b0026c2d2a9b92sm908884ljc.101.2022.09.22.07.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 07:31:38 -0700 (PDT)
Message-ID: <8709d913-79c4-be12-ed75-b46eef155cc6@linaro.org>
Date: Thu, 22 Sep 2022 17:31:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 07/17] phy: qcom-qmp: drop unused forward declarations
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-8-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_073142_019961_A320F311 
X-CRM114-Status: UNSURE (   8.41  )
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
> Only the combo QMP driver needs a forward declaration of struct qmp_phy.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
>   4 files changed, 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
