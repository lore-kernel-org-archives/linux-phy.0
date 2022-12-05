Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B685C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qY9iKpZFtwaDoOmVdiTfhjgLrauLGMbe+PjH6S7P0aQ=; b=ewaJfLQPSK9X2W
	Yw3xSuGHQmMjf9XJsIdp7mN1RhIQ9g+q+pBXjWUTi5g5952LO+B30njMK/ofcujHlPpbkpmB6qRr4
	N25TUSzFJvXmKrxLBOI/wQQmHoqdT7c8CIuzbkFCnmlVvPsGhO/W9JIo71V0unm+tJRqL0JUe6K5K
	NnvK1QpbUoYXWit9q7ix5iCWCn+rw0aMxUjbeqj0A/24r/SbzkLJAPy9TsBkoo4G2nn3N+CvLkyq0
	rvbCUWnccREYJmyZb6Z/6eqtyJcCU7J/aLkFMx0cpE0E0q6bbxZeILUhnLLhvQh2b7qdRZNajJItJ
	dnGblSckPWIlFLBZYaog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JRi-00Azw2-JJ; Mon, 05 Dec 2022 21:56:18 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JRg-00Azu8-P2
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:56:18 +0000
Received: by mail-lf1-x12f.google.com with SMTP id cf42so14953463lfb.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9ouwMuYuz2oARizUtl7vzXJdY8RwuaCzneky9hi1f4c=;
        b=l2lQpqKKFAiJUi7/jAj8kNG5nQy91Jn341kmeJ5FkG/igoqQYJ78WDLru7D56uLTVa
         N5iAxwfXk/DC+m3bhinTJuHu4Gr94G3XcF81t0E/9Wnjjp0rpUtcc8gxftJqA1i1GsQi
         NnZBfXYmv0gF0Kf5W1bPM3NVNjFDrUuHR80LaM0w9dSKiYg1/kO4+39PNez37/YY51rC
         F4DQSOUHq4NOxy5KtyzTQoLMIZJdvvBAYllMiw8y2KViGrdfl7kJwpg35eXAVIUQlJIr
         NgAb1WGlKj4HIXbbkQ/3+gvPD6w0LRDgrqiRlxcLQutoKmCKuq9iLUHxEcj5a9tUSDyF
         weZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9ouwMuYuz2oARizUtl7vzXJdY8RwuaCzneky9hi1f4c=;
        b=ZFAlPWclfTqG/oD8Dw2M0Oa/jUcwmxVgs9X430G2U6hooXq7Onu4OOjbVz+aTAHI1V
         Tx8aR1mJwXO6XSLMUUTdo/a6gMsYh0i24egTqpWblQRZ1wG8uNkGB1ofOnWR7XhgqxVi
         sXftmFs3ux1JZfCJz7D3xS1KwFbjpU6hxxYLj+axnf4EX4GZqXF6FxOYbnkiOjtoFCkr
         zrBOSpfOreDNFbi8G4giOAXPbrJdBxLTt97Nlpvsp0fQuvWJvpM3eyFkpwE+qjm+Cyev
         NcP1gDdGkoADvdckzXCslMb3uzCLROTs1l8+t4/RqiphAEPAXVReAQ5b5YHg/OITHpPb
         ctXA==
X-Gm-Message-State: ANoB5pkyrt/zt4TVcjeg7jRX7U28/08B4Ji7aIEmXnES229AGIiaRlCM
	5pV0gy3xWJqjzMvXdrgAJjY6mA==
X-Google-Smtp-Source: AA0mqf4zwnAwfKtw3LMPJAu09UOZ7qPeq7PZzh98m4mubNvYFfJNS6m7yZZh8qckmGXoI80VmkzSYA==
X-Received: by 2002:a05:6512:2591:b0:4ae:c2b5:29c4 with SMTP id bf17-20020a056512259100b004aec2b529c4mr24285208lfb.614.1670277375355;
        Mon, 05 Dec 2022 13:56:15 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id l7-20020a056512110700b004a46f92a15bsm2246422lfg.41.2022.12.05.13.56.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:56:15 -0800 (PST)
Date: Tue, 06 Dec 2022 00:56:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_12/23=5D_phy=3A_qcom-qmp-ufs=3A?= =?US-ASCII?Q?_Add_HS_G4_mode_support_to_SC8280XP_SoC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-13-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-13-manivannan.sadhasivam@linaro.org>
Message-ID: <6799A9DF-2CFC-47FE-B8AE-EF74C54E0C9B@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135616_853317_63BBC65D 
X-CRM114-Status: UNSURE (   7.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1 December 2022 20:43:17 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>UFS PHY in SC8280XP SoC is capable of operating at HS G4 mode and the init
>sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
>reusing the G4 init sequence of SM8350.
>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
> 1 file changed, 8 insertions(+)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 96e03d4249da..9f5526758985 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -763,6 +763,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> 		.serdes		= sm8350_ufsphy_hs_b_serdes,
> 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
> 	},
>+	.tbls_hs_g4 = {
>+		.tx		= sm8350_ufsphy_g4_tx,
>+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
>+		.rx		= sm8350_ufsphy_g4_rx,
>+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
>+		.pcs		= sm8350_ufsphy_g4_pcs,
>+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
>+	},
> 	.clk_list		= sdm845_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
