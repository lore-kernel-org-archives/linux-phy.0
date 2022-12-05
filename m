Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96360C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAHuA1Xnt+/8JuVGS1hvz+dWm3PWv6fZfJhP9oM++Ww=; b=STBp7Xgmh24Ehz
	8HhFLjctMvW5DpAxsgcI4KFaN2iZfwGe0qjXu69VpdCHUX4vthpz66GPbXZib4UA0JswIVEr1MRL9
	oT5ZH+Waa0qyJFoJ/ynwltA7Oyz0AmOgt6nC5XmqdCz5ZgMi+DZEIODqRbEygHOdh1ves3GCTs4G7
	GEV2gTB5ZXz23ae2RDry/HntCMZihFKuLf0zMj2HwFXxdnOZ3vY33mLUnWej8rKwiXVXY6ONzkbzx
	tntZQOrlXcHKshwbDA4jIKezG5LyjdTSThSRhOo2JYHpAeOaIoBHk82+TnMqjzSMVBnYsBNTUh7NA
	Wx1ArQzRZuJqt0QRZzCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JRO-00Azjb-1E; Mon, 05 Dec 2022 21:55:58 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JRK-00Azgz-Uc
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:55:56 +0000
Received: by mail-lf1-x132.google.com with SMTP id p8so20695915lfu.11
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oKO88ao55DxeeXnBljoXeld0kkAkjM3hR01wftgKVTw=;
        b=LGmal3EdUpWrC1R3nF6mkwM7Df/F/iOHovzKOGvspnP8S0/6optExX0dgJx1r0NI8P
         JnTquIdtNcngTOk2jvqi46vEF4u9YUwXWEdKPdzsT9gLjw19VUW/lkeCp5/nWKT9nK18
         B6lujK1mJ5qNwhpP+k8U0kvHvPJfnE4pCmzVmYkeIcaOYh/bNZyHCrR4dtGi779nu336
         cUzJ5DL/0R7IBNZDm5UHVQlzQ625m15k7CGHGnx1sFsRaY73R7LHWJCn9wt+0OT877qY
         pXmaHqAEod8VB7YF2WRTYwAoTPTWSa7pVaKNdrpVBbFeO3agAHKqBCjLDYZT4RAgSUVE
         3BQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oKO88ao55DxeeXnBljoXeld0kkAkjM3hR01wftgKVTw=;
        b=OJfnrBjSb0GylsmcUDueknALYnGThl4j7R/Dm++yHNf2/PtXSxK5c1toa/PFYmc4MO
         P/SJiaKQAHzNEJdgOl/xLV+NSLzrnL7vzHQUrimGdbTJLYkk4EZhiZ0D8hmrnIfSYXkb
         cxMZCdSSFLaoHFIDxJ+7gcP8IM0RsYwgdCeIFS7npmxPKY5r7xaSKjnm2mymEH8q65ek
         KezI7+kz5BrsRhFllocYdSTPN8V1YmyAb30Y/E8BwuDnGgvsFg09sgWj2BgDRwPq2EbK
         jMiEqwrTJ45hyLGUp3fcXh57OoMWHaYlHbgH4Oau8rsSJfLVQepLQ3T/gzPg5AfmjX8T
         lOmQ==
X-Gm-Message-State: ANoB5pmyh2Sn+oFd4tYA2b3vL1/Z4HX/K8FCppCON9O/rj7O70zXZyaF
	CEK5Ud0CzAZx+NgDiGMePSoJXsfLoSOHDSmD
X-Google-Smtp-Source: AA0mqf5SswWygv24y9yRXfk5wHX/CIUMUkg6260+JfxCoIclzTWfee5uW70fP+owZxwIDKvbFGsPdg==
X-Received: by 2002:a19:760b:0:b0:4b5:67d8:e3c2 with SMTP id c11-20020a19760b000000b004b567d8e3c2mr3416705lff.166.1670277352663;
        Mon, 05 Dec 2022 13:55:52 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651c118900b00279d206a43bsm1250265ljo.34.2022.12.05.13.55.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:55:52 -0800 (PST)
Date: Tue, 06 Dec 2022 00:55:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_11/23=5D_phy=3A_qcom-qmp-ufs?= =?US-ASCII?Q?=3A_Add_HS_G4_mode_support_to_SM8450_SoC?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-12-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-12-manivannan.sadhasivam@linaro.org>
Message-ID: <977DEE2E-FCD8-44AD-BB52-49EDF586B796@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135555_016848_48764C7D 
X-CRM114-Status: UNSURE (   7.47  )
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



On 1 December 2022 20:43:16 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>UFS PHY in SM8450 SoC is capable of operating at HS G4 mode and the init
>sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
>reusing the G4 init sequence of SM8350.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
> 1 file changed, 8 insertions(+)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index 75e55c4181c9..96e03d4249da 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -935,6 +935,14 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
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
> 	.clk_list		= sm8450_ufs_phy_clk_l,
> 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> 	.vreg_list		= qmp_phy_vreg_l,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
