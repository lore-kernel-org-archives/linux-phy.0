Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE7FFA3742
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 19:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9Kc0zsU4CaGajAyQTv+Joe0ztkhXxI3kADe7ZExgvQ=; b=RDsUOrKL0+o8Ry
	VdqNMjY9+HwKUi6OTeFD19pkPdKEoloYk58QkYSk4DfVMpDeOeym8quFmwRkMsDCufutP5ZD41hNa
	/10Fo5jwVZubJbDmF1+qWEpfEdDEKEysifYVdHTuPXBGXeQZ6p7PrSF4qipPUr4Fv9+pOyqvijlv5
	tcHgAn0Ooc2cvTdOcBquW6a6dHpAl34bfUu+JTPO3L187a6cBh+cLOhPMZkV58Ad8FN0XN7gX28VI
	RMYPJkTsXP8LVPwCEgguh46uipo/CX2xLBEwP5mIDi8Dk0SNQ/6EUMLceT6tqZw1hJPoqYCW+RmwU
	To89reKe7f9C/fDY1hDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onmL9-00ApyS-D3; Wed, 26 Oct 2022 19:45:27 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onmIc-00Aokz-Br
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 19:42:51 +0000
Received: by mail-lf1-x129.google.com with SMTP id p8so30847553lfu.11
        for <linux-phy@lists.infradead.org>; Wed, 26 Oct 2022 12:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zMYZxL04hWH2PZ6vJak+KLXReH8LIrsCpuymZRqCQuk=;
        b=ZAx/9und4SFDOlvDZ90doIyigl1AirCbsf8z2YGYEMc3bk06egUUEnFcVFM1BgdTyc
         O6fqj4TVqhqMAN8EZm6Vt2eZtZN+qjWBNQMC5Vc8ukJIt8cumjiH8GcoHZEQOt74q9mO
         DdrGLyflrMRO8MnizNC6H9DQfc7mOATT+5ZjdplMQ6vvBi9bGzIj7fi7KdSr/ucrmhVf
         6vUckxsvzBW2cu3KX6Kc8V+holQLkpum6Gma33Y1mke8Tt9Cfw0TQQ8aLWPMdESVJNOM
         ZuqtfXYPEvqAvUiv+PwWDtIk50PHjY5/pPnRD8rjjCIEn9XxQGSfqS3KM3yvbD5WQjwY
         OWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMYZxL04hWH2PZ6vJak+KLXReH8LIrsCpuymZRqCQuk=;
        b=xvxm98ydHTbJCU7zzN688OlY0cTxT4RQ2acvuzR8rhX30P4Cd8yDwoZycS5OPYNNiB
         ExlD5+33BPLh8cqZktmP8jWrDOkH0qkGrrad8TLXcIrGFT8/DxSqtJUEU6BZ2Dif+MVg
         HZ8Nqgjgnq2SjsK9uK/v/kyoWoTGjzqjOz0Ez7DR0BfHkLg4FPx0XvxYAfqYRLxBBA7B
         TfyNbWy0IM8moPoAevto5K6Hf4n38PHppH6tRqQtfdSeWTYowvsrfXTFS5hD3IMOLExx
         +qb+ywlFg7g/CAWXq9jWcXwV+RkEKbd7VOkjMJg8+n8ncN2ROLeFDfvU/B4nG31TWzHe
         Mwyg==
X-Gm-Message-State: ACrzQf3tMepvRdsbSFZgn65891hj60Igh4FJgYtlF9EQuFl73EpLs2iQ
	A4L504nIGSyKr7ziP1Us1W9Evg==
X-Google-Smtp-Source: AMsMyM67lIeLflrZFt4dXiuUg4lborbWndQxvZ66aIfbu2PHV9pOgXVdY2Tf1eV2Lal90qH3qePTVg==
X-Received: by 2002:a05:6512:3d9f:b0:4a2:4986:281 with SMTP id k31-20020a0565123d9f00b004a249860281mr15907943lfv.123.1666813365853;
        Wed, 26 Oct 2022 12:42:45 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id b14-20020a056512070e00b0049f54c5f2a4sm943868lfs.229.2022.10.26.12.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 12:42:45 -0700 (PDT)
Message-ID: <5ff7957a-d220-f134-4b33-7c388dbb5627@linaro.org>
Date: Wed, 26 Oct 2022 22:42:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] phy: qcom-qmp-combo: fix NULL-deref on runtime resume
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20221026162116.26462-1-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221026162116.26462-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_124250_461464_A6111F0F 
X-CRM114-Status: GOOD (  11.86  )
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

On 26/10/2022 19:21, Johan Hovold wrote:
> Commit fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate
> PCS_USB region") started treating the PCS_USB registers as potentially
> separate from the PCS registers but used the wrong base when no PCS_USB
> offset has been provided.
> 
> Fix the PCS_USB base used at runtime resume to prevent dereferencing a
> NULL pointer on platforms that do not provide a PCS_USB offset (e.g.
> SC7180).
> 
> Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
> Cc: stable@vger.kernel.org	# 5.20
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
