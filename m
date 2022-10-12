Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1262C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWE0DUkJlvcTCW0TRvHJSkTDjK9fQcnusiqzfkIRJZI=; b=IZhkGUbWR76Z/o
	mIwDKu7DxJKaR0FPhSZ+Xz2ycPF8jC8d/fcKcb6b5LpPRO3I0Rvv09orTmunYOYvsYABcsBU4sPcw
	RK5zgKmb+IxjIxEyfSUONCNqnCpbDUN0t2kdlAgCGCKYus5FXc9SO5ZioK0jbizrqoIO/z6InzsOl
	7qo/JAXSKFivWDBFE6HjlEwFNgtC4dfczc8jMMZJMq3PA5nyIKdXnjCjQ0Pp4+goQwdy91v/VYTip
	FB68BS+8IvsEC2X6WNJt5hbe0MfuBVeuqtnKpEBqdgM4xmNQs4fTZXzGgpB7TA75ILKcfntUw3OQp
	JI6+FE6Q4v9wzG5i3B4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij4h-009Myl-9j; Wed, 12 Oct 2022 21:15:35 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij4f-009MyN-92
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:15:34 +0000
Received: by mail-lf1-x135.google.com with SMTP id s20so27546050lfi.11
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bbUlA3t62cYiSgjKjqmxBis0XWCHhSo31vwAwTxf5hY=;
        b=dr8jymAsgJbJ3bD1RSIr3m9U4kEE1PF+KztxBNU8+EgILr4mZ4BMCoSuVYyD3yoY/b
         pVr8bOg8mAvl2hw9AKF2WpV2SNK76gBaViKQ7QI+MBAGY7FswSM8vS6QRlRqO5V9JCiC
         kPVQFJacg9Z0KyhL34+zBSKt3DX1wfPn0+ya2KB6fkWXTihGUMtN/Br2T2jlpZxifvMD
         dTaFK4un781zbp2vmTgcBJM+rEfYDTezigTs17gOzq+trbXnE+GJW9Qzm2k674zMT1xj
         Yk920FIxBOLgPNz8ZqBN5uHZKk++DIg1pjCTUeYx7nYEk2yC4aGjt1MwRh7G/e1BNEKm
         +hmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bbUlA3t62cYiSgjKjqmxBis0XWCHhSo31vwAwTxf5hY=;
        b=vmKQr4uF39S+kPtD5AxikdxKBokEJOx/uAQ6/naJAHkMJW5krdEkPMBbGnURmr0JYx
         LaR5tXiaTe2Mt4nLwOn6g+A2pq0BmAaaV8MoIUfMfIPd0qq7KoNKJ25xeuHNYouyg5+/
         dVm6CjZM9JMBx3I8IEL/7IpMa3j19Rcfp3dyc9zX6a7XQnmg6blmAZa6fwP+fmnsHIS1
         fRzgTl7D3TKlnnYpH3APopC6elzjU9SAo8YHMbu7131CbrWaRjejfx8sD/wfl48I+5Qr
         qlJuhH6/DXkgT36hbSSOpe8NEPduz+bWBCn34sFi7Rt7KWt3SYDY+a+b7rk7w0VSp+uE
         cp2g==
X-Gm-Message-State: ACrzQf1Wg1qpyDrJDNkHfgYx7YOoMrDkarW1ULIZHu3sHRen/UXAPcHg
	9JUwiAkPzJNgxES0vmlqCNp8e3hT0gEdSw==
X-Google-Smtp-Source: AMsMyM7vL2mB+XFGIGYX46c+KPs4vYKDa1O5nLsF2hbfco6fH7OQpcw2/M7SHnsf4IMvn+barBddyw==
X-Received: by 2002:a05:6512:61c:b0:4a2:35fa:bdfd with SMTP id b28-20020a056512061c00b004a235fabdfdmr11964339lfe.215.1665609331706;
        Wed, 12 Oct 2022 14:15:31 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z9-20020a2e9649000000b0026c2d2a9b92sm111574ljh.101.2022.10.12.14.15.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:15:31 -0700 (PDT)
Message-ID: <664b93de-6ea9-9b38-770f-bdb56fd4d8e2@linaro.org>
Date: Thu, 13 Oct 2022 00:15:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 13/20] phy: qcom-qmp-usb: clean up status polling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_141533_371666_7153933E 
X-CRM114-Status: UNSURE (   9.06  )
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
> Clean up the PHY status polling by dropping the configuration mask which
> is no longer needed since the QMP driver split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 25 ++-----------------------
>   1 file changed, 2 insertions(+), 23 deletions(-)

Same comment as for 08/20. With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
