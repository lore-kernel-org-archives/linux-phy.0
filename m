Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5E6ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q1cPBK1gCeiXohxpzplafO6ybUxX8aBOArbRK/MrpM=; b=DCXbYALzNlmLpf
	B7RYTU/bCNim88MRyeluKFfD6nCY7RYN7lBcgSEl+zp1aUQbFOVhr/iTilkCbX+WbMfVFMRolLQ7E
	ROaBmxKnQiiHXMDCyoGXxEWvqQa1rSe8jtnHLvSXpZY/oYnb6XDwdbjPvDAIi/YEs3VEfeJS+Bb3/
	3RRlZg81psGwLltpSbesLIGGReN9bA9969RWOtkUrgsFHYruRlk7Xgp7zrG8v1kIThcuLL4uWWEF3
	rMqmt8PrzhbVFtqhM6zWxU83KO2YSF9sSd3t5Hc+vzgIcTXWJ0KxV4UGj+eXZqSx4Hs61GBH+dbI8
	Qduz1OBcPiPLRHDH1S6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadew-004Fjg-2u; Tue, 20 Sep 2022 13:51:34 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadet-004FhM-HL
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:32 +0000
Received: by mail-wr1-x42c.google.com with SMTP id g3so4336269wrq.13
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=YKx3gEss9Ksfr7CoaBT02HFqh4qQduBn8r6zIG3rpsk=;
        b=DkzSayrYvsH63XDpw8lLNOAHvdV4JMOs0NeeHAboW4aUA4RMFsKf/YFMX9o09+KkPJ
         SpREa6gNX8Dgq/e9eb94RjHwoGLexLbFAsdSWRdZUgcJ4pf+ifiMZLgNO1p+OY6w6+Zg
         L2Er3dlLsWKZFb2GekCgYZzRf2bAE2ri3fXX0LWlOQxFV+oEhbUHNWUjSzulwwvfC+Q1
         RhHL1XcCh9uYC2SlUetwOCYyAzpCGUembmS1B9sq4KF/s3Chf5sZ5qqAX/aD+D0VxrXd
         OP64bj1tI9JLoKGsEwawLCysOWFe09sA7kN6gfjLv8wEcvPNC7WRIVD/2sKasXdD37Bd
         MG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=YKx3gEss9Ksfr7CoaBT02HFqh4qQduBn8r6zIG3rpsk=;
        b=hhkpjQwxiAT2omgINTxBh/+kPGP34x6s7ohdHzBG59EPSx4CIq2/cS3xKgApve4gMz
         JRN0j7GPJOpWkGTc7mn3cxn3PMWwM+o4XDhjzLAcklJYA6IvfPg6oELf4uyVsb4K//f3
         GUy2lwHFyFIbL9exKux9uCXsOplWGB3KlEJb2exIuK/r8I/icSQRWUdAE8rHR9U3WKit
         JyzRf826faAxSkXQi/F7dKPDUYk6F8tPSSIvTUnTGMRKXVk+ISsM5dCJeyEgmMbkr4Uw
         B5pziEUyBg9aaMHM4jEHcEDp7vAq3Xs3z3Yns3B0r0oX/vM4V3CzTwWU7EKGtcYjwsAp
         RMlA==
X-Gm-Message-State: ACrzQf3W8EDG7nQnwbin3dlWEBjE9Co+oWCESIeaDsTYwuevQ6Fdp7HQ
	HCS9XL9kpy8ZyYh8kxUPM1sgDQ==
X-Google-Smtp-Source: AMsMyM6bXReV+ohW83SA9KuJt9EduiS7uA+WnutoGpJ3oZlSw6FwuLmd5+Y2SEk3+pBYw8PxV3Q9SA==
X-Received: by 2002:a5d:64cf:0:b0:22a:b61d:875e with SMTP id f15-20020a5d64cf000000b0022ab61d875emr13602202wri.100.1663681890310;
        Tue, 20 Sep 2022 06:51:30 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id q15-20020adff78f000000b0022a2dbc80fdsm142308wrp.10.2022.09.20.06.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:29 -0700 (PDT)
Message-ID: <72da0698-8599-12db-91c0-3cd2cdf037b8@linaro.org>
Date: Tue, 20 Sep 2022 15:51:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 07/17] phy: qcom-qmp: drop unused forward declarations
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-8-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-8-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065131_623934_0635CBBA 
X-CRM114-Status: GOOD (  13.66  )
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
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 20a76b1b23a2..7e755213e9c5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -184,8 +184,6 @@ static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0x0e),
>   };
>   
> -struct qmp_phy;
> -
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
>   	/* number of lanes provided by phy */
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 525097e3b041..666109a11329 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1300,8 +1300,6 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
>   };
>   
> -struct qmp_phy;
> -
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
>   	/* number of lanes provided by phy */
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index e5c8d3a4fdaa..cc49dec46df4 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -531,8 +531,6 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>   };
>   
> -struct qmp_phy;
> -
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
>   	/* number of lanes provided by phy */
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index a42e13905c15..820062a95211 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1427,8 +1427,6 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x21),
>   };
>   
> -struct qmp_phy;
> -
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
>   	/* number of lanes provided by phy */


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
