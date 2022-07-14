Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53814C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7D5Itx1/GmT3nTHidKUwlPMoeB9CHtkhNjIBtfZXJ0=; b=VIM7aLQFoZfUWr
	mtNKPBoOJCjqEe26BkPEuIjjM7LE60lVLcxNi620aIHK5vPuzuEl2wCk4Rd6lDOmRClKZPIrMi6X8
	u0fVKkpDTOz3jeVoZCQttMzXBDvfT2q0cIrq9mUpg2zBdD79tbK9QDHq0Cup+bedYvA3YNMjU6s4E
	nbR6LqdpqTLZoh4b8bXsE7r4xMjucffZNdMsMM8vYigxP1KphJzVQDtIFkSWxm02brWtvpSyDmTSX
	fW5pyhNzNImloKfIXUx+EXJLE3a4SMuTVXAl2fKtSQQtVfnAS3I4D4EUg/i2Iop5SHY43HpMT9Z0o
	KpVy1Iu7y2snaFsYFkrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDO-00CtBr-Jl; Thu, 14 Jul 2022 09:32:58 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvBA-00CrQ2-W4
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:30:42 +0000
Received: by mail-lf1-x12a.google.com with SMTP id t25so1831266lfg.7
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SHM451NPbgKsmNQ8PtztjljKT0jHIg5pN+JDdK2LOGc=;
        b=JGBVhHIf2Ztn+/rTU20oGHT3tRc+uVB74gZZOjFy/Oq4+pilCf+trBlX2JYNeOWhfy
         HIsDDNEGlB/opLqgZwih4kcG9bVjpkXRKAQMQo/BBZnOL49xGsEEhHAtesqMWaf0sP2H
         4KM1n3403NMikdrDY5LvSOgXPvH+qMXNROXjvbBpy1Gpeo8Aq5tGC8DGkWwRcGuG4phH
         DNCHnWnaFiBGakxRgtEa6Omf+pisz8qLAJGenYcJR2QwM4uPnQGsciqVkCrq41L4sN0V
         mhm1vQhnA1idS6q7gUEmq7sWUrSZ4QPUs9jYOcvwfsFW8KQjI4mjQRqN8oBhgHG4jyDP
         9Pzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SHM451NPbgKsmNQ8PtztjljKT0jHIg5pN+JDdK2LOGc=;
        b=TO/fjUCdcn8q2nLFsl7SGkRWe1qS8PsKd/zsypXyJcKKC/ki+T38l94/tAALmN16Z1
         yLUrw/+BlD895czI/hMA4V535ZH9vWN9DYok+fzK2c99REjo7ibl8sJwGmbfTSoW99AK
         VJ9Jtg45Rooj1J9SKJSe7yVHdHH7HZqTDeEcLDOR9V0mmB0uD28LTQns2nSGC+hGa1G9
         VX/86hzave5U5BpAuPw7MwSyFGYytxP9YFoS12yD4qveGLC/qFMuStjaNCLd06LkmHTn
         L8nP/W68Y8QAkkcW1xb6SG/46zIgQCuxEYRNp3Ok0vLpNNBrGcSN6IN2Pqmv1rkVsVpJ
         6NxA==
X-Gm-Message-State: AJIora/OBL5LhGoIvaxmboYVeiquMRELWhiVQ4vNtlLS8szdfQdGaGej
	YxXV71KpktINlWhXoowqeY9X2Q==
X-Google-Smtp-Source: AGRyM1vZbPmXWd/Rg+BwcDzMyac2id4EVE5D5arZiQqoCdYui/t3G6LCIBqQ6q4eve6FLfeArgfxkA==
X-Received: by 2002:a05:6512:22c8:b0:488:e69b:9311 with SMTP id g8-20020a05651222c800b00488e69b9311mr4450974lfu.564.1657791039566;
        Thu, 14 Jul 2022 02:30:39 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id k12-20020ac257cc000000b004811bf4999csm257295lfo.290.2022.07.14.02.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:30:39 -0700 (PDT)
Message-ID: <a2706253-41c1-84fa-2e17-053759888214@linaro.org>
Date: Thu, 14 Jul 2022 11:30:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane
 suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-29-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-29-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_023041_071275_E76FD3AE 
X-CRM114-Status: GOOD (  16.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 812d14afb5ec..af2f14a53b38 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -872,7 +872,6 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
>  	struct qcom_qmp *qmp = dev_get_drvdata(dev);
>  	struct phy *generic_phy;
>  	struct qmp_phy *qphy;
> -	char prop_name[MAX_PROP_NAME];

Wait, it looks like your patchset is not bisectable. Be sure each commit
compiles cleanly.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
