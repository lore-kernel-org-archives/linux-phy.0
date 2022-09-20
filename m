Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CBB2C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrHWLb7gUWLiuF9k8zrh/yUuUJg/gEuZ3a4ww+V4Ehw=; b=lEVFV1Vgj0RM+8
	sMMLAn42q70bmZbsdtw3SaQma9LY2+S6l7lhnR+GR5DqHQrshXPSJCHzrFjQ+T3RX3iiYvEDkAhQQ
	KWZqViH1zSOMlaDkpbZ2ONFUP5ih7qpzwB3vVKlCmcI6xX4/nCnWuKXeZIn6Wnmtb7AeF9EzGtMpQ
	AgMFcmvqpMw2QTbvJvS/khQkIn6tLgLdVu1fU9epln7rtLz4Tv4fB60qCcXpWFLxxBGqKUmCwW6yJ
	yd1ens0KjOv9HDcn6cFWQhW3cWWxdzz/XJl+Igxdc5NO/hG0I/enfz8TNzfOAW75+XtuAutTcn7AG
	lGYxpv/rf+rQkBTFGKNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaX1C-0017OR-LE; Tue, 20 Sep 2022 06:46:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaX19-0017Lw-Iz
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:46:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CEDFF61956;
	Tue, 20 Sep 2022 06:46:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CCC9C433C1;
	Tue, 20 Sep 2022 06:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663656362;
	bh=IWfJeKWmLuHACzZrveUELh0VlbJlmxI/wfJ2qMqFsas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iF9bHGCB+k3DdAqqx6WtJCfbxp13KHbYMMp3nUNGhp12rQwAu50+gMuWPy74YL2vO
	 v2ky4yOA9MYZOvzh5zYqkFOHXSxs4HRaY884iX/wteKBXSuNzXt7ZMEPw8yimvOeSd
	 7uuB5F0Us0fVv/BWryXEbuPSkXQOM8t+AoXkuXZSp2rIsHdUvCgc88lAcC0F5X8mKf
	 wTE509G2RFVuNB3GOadoSNfUaNdQir9Ydl2OcFjh3KbMXDXpjKBQnIL5bFoPKma00h
	 eSCEKC0vKlEVWAPZgnJTnVEfqF7OBR8mYqsW7YwnBd/TshoZCyMBgQ3oKYzXVgKlja
	 m2jsibnfRs02A==
Date: Tue, 20 Sep 2022 12:15:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix the SM8450 PCS registers
Message-ID: <YylhpBtz8d2dqJhv@matsya>
References: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_234603_687755_BFA1956E 
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

On 10-09-22, 12:08, Manivannan Sadhasivam wrote:
> In the PCS region, registers QPHY_V5_PCS_EQ_CONFIG4 and
> QPHY_V5_PCS_EQ_CONFIG5 should be used instead of QPHY_V5_PCS_EQ_CONFIG2
> and QPHY_V5_PCS_EQ_CONFIG3.
> 
> This causes high latency when ASPM is enabled, so fix it!
> 
> Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 4 ++--
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 4648467d5cac..b508903d77d0 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1332,8 +1332,8 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_rx_tbl[] = {
>  };
>  
>  static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_tbl[] = {
> -	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG2, 0x16),
> -	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG3, 0x22),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG4, 0x16),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG5, 0x22),
>  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_G3S2_PRE_GAIN, 0x2e),
>  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x99),
>  };
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> index 61a44519f969..cca6455ec98c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> @@ -11,7 +11,7 @@
>  #define QPHY_V5_PCS_G3S2_PRE_GAIN			0x170
>  #define QPHY_V5_PCS_RX_SIGDET_LVL			0x188
>  #define QPHY_V5_PCS_RATE_SLEW_CNTRL1			0x198
> -#define QPHY_V5_PCS_EQ_CONFIG2				0x1e0
> -#define QPHY_V5_PCS_EQ_CONFIG3				0x1e4
> +#define QPHY_V5_PCS_EQ_CONFIG4				0x2e0
> +#define QPHY_V5_PCS_EQ_CONFIG5				0x2e4

This conflicts with c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")

where QPHY_V5_PCS_EQ_CONFIG5 was added as 0x1e0

Do we have a different v5 for SM8450 and SC8280XP?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
