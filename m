Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47CD2ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8K2dLPas8SBvQDC0/DsrPIrDww7oE4MuE+vYKWkdSk=; b=oK+RCBFzxvnb1O
	vE6JUVJzvepYZWSyM+/9pwBgR7kAThJ8WzJoYjn85UwHq0LWH9VV2Gap+V78nz9oF4gz2w4LOjqQ1
	6DRqA+tSs3UYDNCZ4Ga67HtIgdLHnx8ndK4f3qUc3+BTBhrUmhS3igVXptQ93/F3RdVGguh7X1bCJ
	iM9PtGLHhcXVyrA/KbPErmORnbT+jlDw4ULKuVceZL8hDnHrpHO50YzsFGa9gqj2pkwz32JQH7lXc
	hOrcm/IyssASzafhPlz8H0x6sRP5l829/80w+fxUtgrRknaBvCvFYWQFA50GmfYrik1Ex0ljEph+W
	CUSHDrw0Qac9VDE878VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfB-004Ft5-Mn; Tue, 20 Sep 2022 13:51:49 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadf8-004FqC-0a
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:47 +0000
Received: by mail-wr1-x430.google.com with SMTP id s14so2460369wro.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=x+vE1v09uZ5F67MZ186nd9KS7D/kqnY9dzU3Sc2cm8c=;
        b=XhvE8ANh8B5Dww2Wv/e97EJu2OELPLFbfmWOsT+jJ0iTHn7CaxSCCXpND4sW1wN9NX
         +w/69DK8HL64oTUwlpj7gV1/li8qu2EBdKlgzxHLZz2KnJYzdSDi8NEqJqfyho8Nlm4p
         uU9//viVQGl0ibAx9ZD6gJbZ+SXDNph5Y6svLHUMD3RUEImEiDe37SYuoeDaOuERd663
         jiLVYkV485fK50EA60rcZ0aHHAhDBTsVZJEB3J0Z6Bq1XcocEuhfowgrHp3qIthpye64
         ONPtAul7nePYiXfQUrzNwkSnqS00DwO9qoSxryRrF/pT3cf7G8ch6u+ISP1Or7A6vnG5
         lK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=x+vE1v09uZ5F67MZ186nd9KS7D/kqnY9dzU3Sc2cm8c=;
        b=0P8ObIssJ8kxd6i0nRJXJJo+FzonxuRuNlo/jDoY0xpREMye+O1vxeih4lrg0TTai5
         EIuOdvlYc4lIZKlB64QG7UafuddqEbogh/7mUGoQiuryILz/IHyyeu0I6l9evBu2kzhL
         nC2M1ze6kxOpPVkY7fyOpNBzcrWkPgJSZjxBguyh63CTJDJnkRkYRUvDnIfN/lLceFqX
         RYDiw4Ram2vK4sXkyK31hqRTfEtVJguxEtmclPEe3RaSQcojAUbArq2bQZAZsE/KxEsD
         Um1ieegI6qbEP+9da0m7IOYSKrIZuFiPhXlL4hhEf1V6TONtS8z3AOtxhxIBC0Mz0lTW
         MNJA==
X-Gm-Message-State: ACrzQf0zerrzZ5Kk8qttmDh3iV8BzK14otV30VIWnOH6DKmEGGOLdwEO
	MlcmdV7Q+qXpOFBKYQnsYA47ilnOkVR6jffV
X-Google-Smtp-Source: AMsMyM4ZwPKKzmxB4U5B0iMQagpKk6Q0q0gf3Yiug7TATvkPxgEFQhhMD9HWIcyDrksD3KUBw3i7+A==
X-Received: by 2002:a5d:65c2:0:b0:228:68b7:e7b2 with SMTP id e2-20020a5d65c2000000b0022868b7e7b2mr13898091wrw.440.1663681904821;
        Tue, 20 Sep 2022 06:51:44 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id i1-20020a1c5401000000b003b49bd61b19sm141483wmb.15.2022.09.20.06.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:44 -0700 (PDT)
Message-ID: <a5279480-dd66-7529-9632-08a63fa14ae6@linaro.org>
Date: Tue, 20 Sep 2022 15:51:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 10/17] phy: qcom-qmp-pcie: drop unused config field
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-11-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065146_086905_A4CE5ACB 
X-CRM114-Status: GOOD (  13.71  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> Drop the unused mask_com_pcs_ready field from struct qmp_phy_cfg.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 65825ca41e96..d22d2cf2fc18 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1342,7 +1342,6 @@ struct qmp_phy_cfg {
>   
>   	unsigned int start_ctrl;
>   	unsigned int pwrdn_ctrl;
> -	unsigned int mask_com_pcs_ready;
>   	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
>   	unsigned int phy_status;
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
