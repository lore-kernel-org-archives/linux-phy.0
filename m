Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 816F0C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVJe2OmLgzTs7yFv/JgUtVPE4FphFF5itBB8u9DDNjo=; b=OJa0rkU4y6evHY
	686BPhhmIJWvn5XSxUvrCjKDzEAN8rL32JZZC9ovpoIDmbFxk64pTpMhjXslgQ1NmSjfu5wSL8HjS
	BveBOFASZ4/8VIZFEKErzP8Npuffmq9QldTEz7gt7dvTweJwVzgwUJEUOWyUYcxz4FwQFHUZG12Zn
	5VuMW+Vq2A3C5VTW6GQL6iDaLlONaYxZ5RPOydLJMZSmTpD6uyeuE4xf1EoNYXxYQanlleyDTXIVK
	8aChS96TOQVzW+dkOti1Y3TwSOcMYq5BPp7tLyokMPiK9ACPlSmiOJgishG+ktC2wO1risrOdJqV3
	uzGk4M0/dy2DeHWOGbWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odazL-00HPWy-Uf; Wed, 28 Sep 2022 17:36:51 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odazI-00HPVk-UR
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 17:36:50 +0000
Received: by mail-lf1-x130.google.com with SMTP id j16so21472571lfg.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 10:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date;
        bh=w+MFvmRFQw8K94SsImKDP38Aj2nWJgY5XIWG9ozikEw=;
        b=Dwkprnz8wFxJLVMDPF//mbzEHe74Ic/GADCjZdO1ADy1CIGntvxDOdncWqpCJvKAV+
         qNyvAf0NMQ16vsKR7f3E0TA3SfB7BQBv6847ltA6IGRjwc0R7RedTK09rAytQ/IlOp0g
         5+x7/vuYY1aHCLqwW3QqIGpMp2dCZZVWjekkNyGvdTSzaAzjTGsbhUeJ7yZSEloTGcby
         Arz1mb51fW1VaERgu/NssIT5/txVM2chZudhawS+2mMgfzu5ougHqyoxRLQi1OC2Ib84
         /VEIHAqnVicdswHJemmV+0MuVjzc6fBCh99/XB7bNuvaR8HMzy6we3VZxv50B6jQhrLe
         yeYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=w+MFvmRFQw8K94SsImKDP38Aj2nWJgY5XIWG9ozikEw=;
        b=QcyyupYn8fow4aIpOtZe0WoFaiN5m0ICHkVhOIu3dsqeUsXcOdXllPv6NyOZYViGmS
         NUwkOqFm7p5uLgV2TDhN5hHGjes1l/5nsSQYe3HtJEEjSCvDYxT8/rVxBw/SNb7XpwWC
         x5wxIS22P3uypb1pV9Bd7aoTbB9drR+eJ2Vdi5+9ti3R1NifKDmo3LvEtOiw4Xa15Huz
         VkSWVbb7OYD+ycUX7DxMLo2wuYFCT6W8sq2FRSLmLLI+oiFxIA1lFb/ZVhcdhyVhVEwN
         Cr8A7gf7rEp4yivFfI8/Rqsy7XA+ToTvKrTbLF0cl1DvwNeImETAkEjfZZ//Ww2hG5S3
         Q57w==
X-Gm-Message-State: ACrzQf3WcpqNgEJI280rFTTp5ScjAv4Dxq1HZ2J/Yx/jX4ctksbmgfPr
	/Eo4lFgbyrUyNIr9eo+RkmcsCQ==
X-Google-Smtp-Source: AMsMyM69qcnLaoGodQcX/ivuUVEVAxn4HKJwBR3GkIzuZ2dJCAOzzbaj4OPtuBRd9ESjriBGCjhFHg==
X-Received: by 2002:a05:6512:10d6:b0:49a:1fc0:cc62 with SMTP id k22-20020a05651210d600b0049a1fc0cc62mr14733885lfg.138.1664386606380;
        Wed, 28 Sep 2022 10:36:46 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.4])
        by smtp.gmail.com with ESMTPSA id o27-20020ac25e3b000000b0049464d89e40sm529972lfg.72.2022.09.28.10.36.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:36:46 -0700 (PDT)
Date: Wed, 28 Sep 2022 20:34:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/13] phy: qcom-qmp-pcie: unify ipq registers
User-Agent: K-9 Mail for Android
In-Reply-To: <20220928152822.30687-5-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org> <20220928152822.30687-5-johan+linaro@kernel.org>
Message-ID: <CD3050AE-693F-4AD7-9F1E-016E2AB1DF99@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_103649_075898_5B8DC3AC 
X-CRM114-Status: UNSURE (   9.82  )
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



On 28 September 2022 18:28:13 GMT+03:00, Johan Hovold <johan+linaro@kernel.org> wrote:
>The IPQ register array is identical to sm8250_pcie_regs_layout so drop
>the former.

I'd not do such merge. They belong to different generations. I'd suggest changing these arrays to use symbolic names defined in corresponding qmp headers.

>
>Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 11 ++---------
> 1 file changed, 2 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>index ec453f908f1d..7b3f7e42edd5 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>@@ -86,13 +86,6 @@ enum qphy_reg_layout {
> 	QPHY_LAYOUT_SIZE
> };
> 
>-static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
>-	[QPHY_SW_RESET]				= 0x00,
>-	[QPHY_START_CTRL]			= 0x44,
>-	[QPHY_PCS_STATUS]			= 0x14,
>-	[QPHY_PCS_POWER_DOWN_CONTROL]		= 0x40,
>-};
>-
> static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> 	[QPHY_SW_RESET]			= 0x00,
> 	[QPHY_START_CTRL]		= 0x08,
>@@ -1492,7 +1485,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
> 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
> 	.vreg_list		= NULL,
> 	.num_vregs		= 0,
>-	.regs			= ipq_pciephy_gen3_regs_layout,
>+	.regs			= sm8250_pcie_regs_layout,
> 
> 	.start_ctrl		= SERDES_START | PCS_START,
> 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>@@ -1523,7 +1516,7 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
> 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
> 	.vreg_list		= NULL,
> 	.num_vregs		= 0,
>-	.regs			= ipq_pciephy_gen3_regs_layout,
>+	.regs			= sm8250_pcie_regs_layout,
> 
> 	.start_ctrl		= SERDES_START | PCS_START,
> 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
