Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7B9FC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lmKQHCjJIAJ555jssonQHIvQDJSEr3d7nJJEvfBIeo=; b=2LlKxhx4pBRYru
	7zc1zxX9eTxQr2vabUwvQke1xCl5qVaFWKFbmUvmtoe+2vV/in9VQClY2pysrMxfLiKNwflbDlJnr
	yMLdWSiPGy3+woroGk0jSwyQryugcKlcRw2KDjbM9qhqWOwW7znZ+63lgCP0lU71jkd08kJS0jSxZ
	sIGD50yBAQP74nOMhw2+GrdG7c+eU6HRHhftNXcgH1YlcrCRxtj0D7pOCNWNdkvDGX56dWH0dYKM9
	LmsFX8e9wYtDNDCqszwIv3QPq4pIuiL2Avf7g5svQnyJKIU3hmbzqbxf3uAwcBN5XQpTimG45D2qS
	jWcVMfGR8eaVn8rTHHbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFg4-004OVk-2c; Tue, 11 Oct 2022 13:52:12 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFg1-004OV3-C9
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:52:10 +0000
Received: by mail-lj1-x22b.google.com with SMTP id q7so14428171ljp.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OxR0v/ndmgcsuPzjbLqOmbbrMc5VOEhwcb79QANVAz4=;
        b=WGNbpXLjvtsfc6Vl/bpIgYFr7RbCrUSyueqiIkBrdO4N13nbo7UgKj8f7cm4SLA0H5
         +5j6MxF9UVldncMF4puCTaGJc7HNrDwhAQaHYL/PtOsOad8+BF0ottFg23+ckx+ZjFKu
         KutT5bjxxLPFeos9GSXNTfCGuTDB2ohVEMGHlCq7dz1NG25KzGzZ5+kSgq2BqikIpQlv
         xaXgF8O5ZYdLMjT6hDSsjUJDMUN12Fd9NcnFNzVB5aUlAx87v1K/fS3faIi8TCiu3RQP
         w+Q4FKbfxlSDLvtrxI6TwcON9CCLVY7DjcAE/mCNPLbAMBc89+SDcYvKp3Ct0lfmML+u
         GN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxR0v/ndmgcsuPzjbLqOmbbrMc5VOEhwcb79QANVAz4=;
        b=7U0XzsTd1gybONsvUbHsqqMQB/8Xm8KPW4ZT+fJJgvMsVfF1S1MQ6utABGFBx5URul
         Bl0tM80ngkbTEVRTMUCKpOFs+FAN+yJSRMqMBl8qZHusvMA0KzkhImV0MEn/tjNm9UPS
         3Aq7v9Icxxy0pBMabdNugMTX0WISXmTvICt03p0NvybIxDZ79NxMqmvqEzNktrzsWkyy
         /LTk6nOJyFSjqVjtg6JmgWd8TTdM4ZL+/7rvKF198dCcJgF0S/yjoXlGFFGjEEjmkh8P
         mdyo5qr4cLS8MVPcRZBQrT3Uxx8XKDpsmNU3uRClrvPgpTfVyEwQ2L2FpZJ4lA5qmCHc
         C74Q==
X-Gm-Message-State: ACrzQf07Jxlw/MNYQkT8unjvetDhHplaHD2NU3Q9pLPLct84Tohh92hu
	w4UvYFvSBJ4yDqzFhVVfjxlBog==
X-Google-Smtp-Source: AMsMyM4/nklHTLz3p+xybaJMzzzkzXVdaYKrMfraaF3FGyJLTenKKTwePcIZcpcEqfuOYsZHIydRug==
X-Received: by 2002:a2e:95d2:0:b0:26f:b14a:d639 with SMTP id y18-20020a2e95d2000000b0026fb14ad639mr2680183ljh.57.1665496326864;
        Tue, 11 Oct 2022 06:52:06 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p10-20020a2eb98a000000b0026c47426cd0sm422510ljp.140.2022.10.11.06.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:52:06 -0700 (PDT)
Message-ID: <44f43f88-508c-d2d0-197f-f0e37d3bdd1e@linaro.org>
Date: Tue, 11 Oct 2022 16:52:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 01/13] phy: qcom-qmp: drop regulator error message
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065209_440191_D4C91687 
X-CRM114-Status: UNSURE (   7.92  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> Regulator core already logs an error message in case requesting a
> regulator fails so drop the mostly redundant error message from probe.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 3 +--
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 +--
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 3 +--
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 3 +--
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 3 +--
>   5 files changed, 5 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
