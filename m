Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87111C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85hYhZ8tBmXQMTj101n/QEZP3GSXRFJLLTWvwxJ5SKY=; b=yrvX2UWFBLxZKL
	wOcZF5xFLWdNFXv+mmLZHFQwWKPjpycQpz2q9oxRfGedbNSBq4MIgIxfNvH7ceV+1ydjUD6cVD9iD
	Eon7N23MTrcCB8xtoA8d4SDTZLsjzsOHPAI+VdreIRcE2cjH+i0iExAs9KDNHzvzrZAucwRpGDvh4
	hdoJvwF422k6VGT/+b++2ja/XZccMOIGdwdQFms5ZuTGG7bFx3GxIsO6UU6uxddnJ9G0XNAeHK7uU
	I9S3r2jfUzWtuAvjySIAu+BMgYxma5dAS298o4UnGHXWhz3A2wcwiOeLBzWOX/da8+yKBnTdsMiiE
	ytW5L8NELH1q6r1XbjLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiib4-009JVF-Tu; Wed, 12 Oct 2022 20:44:58 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiib2-009JUS-G2
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:44:57 +0000
Received: by mail-lf1-x133.google.com with SMTP id m19so26108893lfq.9
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q9wl5+PiSZN6AaJzBZ/KLRxxihfd/IciBfNo3fkYfNE=;
        b=RkTPnQLNHAFNhKBnX0jd6a8iEC8tcazzvdET2h5nGgP0nysQZ94sDVwrer8iIaBN2C
         hiboq+h869MYgY8zS0R8+EDoVcApXEYgpRaBLtqt0eKvRAiVBZBDcseyLseA1iWIPaER
         DoAe0Icg+c4m8AZXamFNYhOndCInZISW6XoFKB1+gCmYdnxAaqk6tsdtkTiuA/mAw3KP
         KYVSKEfkAbCGqOHbmlo9WIUXO8QvgJ0tyrAiBChPLzaCTb+/VWyfaqTa7RwlHz7b+6uy
         7vVVbHRNN6bpPdGbjZS6ZCl6TAp/LdLV/m0e4TqEs3NuU2N89Tz+e1ZXl8z7yFQA8f34
         6ASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q9wl5+PiSZN6AaJzBZ/KLRxxihfd/IciBfNo3fkYfNE=;
        b=LGSU9mSs8uNiF5I/z+AE4Qv2uW/Hc90lqeJfEFnGmthyflua7NRLMk2Ql+usqU8lA5
         xRVGIay9MiNBLG+IRxkem2HTiAN1+pV0Nyb3YmGV1mGB4s0gcOuR9KvLBYrjsjEq1r8T
         org+jsMo0w2oXH1+gjjZJKY0u6xbtuKQnCGMayHg/bQuLxZxF89jqbg8V7hhLwz/j0rm
         oOi+VBbsrFYwQeKjFZKFoeB65fJVpTQ89pADNMHuwH5VxO98j4LxBMGLstc7fbAJ5K8h
         ibi8x1JLTrlM/7oQfBJ7X4G2+q/cTjAOBm4pwF1L4XlKCa+x4xrrcwiQtZi5VIEoqgzy
         /6FQ==
X-Gm-Message-State: ACrzQf3WO9CikkRDd6mh4LbklHnN1zEviAhCnr8w+QqP3PBfVXjvScSz
	MPiKetuYnkpZ7oVbVyLzp099qA==
X-Google-Smtp-Source: AMsMyM7SrYIpx4hJ1TfdwcVVt2hXwM9KLIZKDfBrcAuFImQPd0eSRK0JEmCZGB3vyARdRbmiebiDoQ==
X-Received: by 2002:a05:6512:b1e:b0:4a1:ba8c:7ea7 with SMTP id w30-20020a0565120b1e00b004a1ba8c7ea7mr10975882lfu.608.1665607493425;
        Wed, 12 Oct 2022 13:44:53 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q1-20020ac246e1000000b0049f9799d349sm95735lfo.187.2022.10.12.13.44.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:44:53 -0700 (PDT)
Message-ID: <0a32e581-9b75-0d31-21c9-cae65eddfa86@linaro.org>
Date: Wed, 12 Oct 2022 23:44:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 03/20] phy: qcom-qmp-pcie: fix ipq6018 initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134456_562402_650E1D03 
X-CRM114-Status: UNSURE (   9.73  )
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
> The phy_status mask was never set for IPQ6018 which meant that the
> driver would not wait for the PHY to be initialised during power-on and
> would never detect PHY initialisation timeouts.
> 
> Fixes: 520264db3bf9 ("phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
