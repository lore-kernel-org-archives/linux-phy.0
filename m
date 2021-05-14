Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CF5C43460
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:40:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 109AC61457
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:40:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 109AC61457
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9MxlXFm5KLXcim5ctTYottc/kOtku4Q2Jhsiz0TqD2w=; b=QFecrlBUv1VCpHfVsqs9LylcN
	iJ45QZiGi+QIIc0aQC9UpicLCNOXAQJtRpNS31fHIwFU/+837Uv81hYscMf1/JooBBxhlpG7Ik6j9
	aNoMg7TF17PnZnG3wE9sPpDiJ6Qo90J1MPOTFGzQfyOxlrsz/KWdR67dkVW0GbgfhE7wSt8vtMusH
	D9Cu1JOv0A+4rq4n0UcTn2aoK+DLcK9hm2AdnOHz2T8gJCCWawu9foXY3JZfBww9CfaPkQPysOBSj
	uUFizK5oIQc0yGQVYGjy24esMekmAQhXIzwF1gmbR5/CNrUsIlGkHpiLF26jrdj8Z0ehy43MOwJdB
	wYJmx+EIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhVF7-007nVT-Hz; Fri, 14 May 2021 10:40:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVF6-007nV9-In
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 10:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+s1zeNLZJi8g+wsfApMn6tHWkrK9Ydz9DuLgfIBjkGo=; b=lkqifOcbivG3Rn9yBxhOmlV5TM
 kYckcC2a181rTWq/SNDspkXSmkdfs0v6g3NjEmmag3d2lKdcumM4KcVvtAQkreOcHyw1qkn+o9xri
 08yyxb2n0D5d0bo++BN3qFk7fTR1iObrNGYfOF5yGa7NAe7qE2+VRvoLGspgsXO49oX6ieSEKgvQQ
 ytUFIvSdjnqNWLW+lUT4KoZosTK0+MO69GPeD/FYE2EZduErR5r/TSuCoZ99jpGRzB0ZcJ2INd46e
 EXkpbTpA/YCMP1dZyO6zAuFOt5PwLn14LgOR28fLl+d5pxLtdFxi84AlXNuHT9pEmjkop6km3vcJ7
 jdBh9Hsg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVF3-00BuGu-UV
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 10:40:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB8B561457;
 Fri, 14 May 2021 10:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620988825;
 bh=g0jXJvsgVOWS5QTDTdhTru5zSKl3V7XCKEVjfVb4Sfk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TcUnTh2iM7D/niM8ustdCUOjGkzByM5CYBxaDdQn6zdE53yvG0lpso5oawwjpZmIO
 gLFK4U2Tyloc2kOkMmIvXsLAIPy7J4ApDhNjxHLaKligEYP8o7hgouIAG13Ov9T1+a
 S1wyzpr9+Nek19O0i+RuNI0wEffvBKKbjX87ifq1KCFq7v/TLV2NVbdkY/kNY2OzM0
 KrnSAaetrgdE3qiqJ6savhV26qasUa4akhF3PE0liE0CL7RDyaZWK/3wc5h7mShDLd
 f2WKTftF7xP25tz9wwG73A7LBciVuN1NX0P+fu9nTbymMR9XxpNUEGSveS+7rv8MAF
 EadB1XliUvk3g==
Date: Fri, 14 May 2021 16:10:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, sbillaka@codeaurora.org,
 Rob Clark <robdclark@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YJ5TlcwcxV4E+jyh@vkoul-mobl.Dlink>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <20210511041930.592483-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511041930.592483-2-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_034026_048811_5C649FF8 
X-CRM114-Status: UNSURE (   8.77  )
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

On 10-05-21, 23:19, Bjorn Andersson wrote:

> +static int qcom_edp_phy_power_on(struct phy *phy)
> +{
> +	struct qcom_edp *edp = phy_get_drvdata(phy);
> +	int timeout;
> +	int ret;
> +	u32 val;
> +
> +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> +	       edp->edp + DP_PHY_PD_CTL);
> +	writel(0xfc, edp->edp + DP_PHY_MODE);
> +
> +	timeout = readl_poll_timeout(edp->pll + QSERDES_COM_CMN_STATUS,
> +				     val, val & BIT(7), 5, 200);
> +	if (timeout)
> +		return timeout;
> +
> +	writel(0x01, edp->tx0 + TXn_LDO_CONFIG);
> +	writel(0x01, edp->tx1 + TXn_LDO_CONFIG);
> +	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
> +	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
> +
> +	ret = qcom_edp_configure_ssc(edp);
> +	if (ret)
> +		return ret;
> +
> +	ret = qcom_edp_configure_pll(edp);
> +	if (ret)
> +		return ret;
> +
> +	/* TX Lane configuration */
> +	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
> +	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
> +
> +	/* TX-0 register configuration */
> +	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
> +	writel(0x0f, edp->tx0 + TXn_CLKBUF_ENABLE);
> +	writel(0x03, edp->tx0 + TXn_RESET_TSYNC_EN);
> +	writel(0x01, edp->tx0 + TXn_TRAN_DRVR_EMP_EN);
> +	writel(0x04, edp->tx0 + TXn_TX_BAND);
> +
> +	/* TX-1 register configuration */
> +	writel(0x03, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
> +	writel(0x0f, edp->tx1 + TXn_CLKBUF_ENABLE);
> +	writel(0x03, edp->tx1 + TXn_RESET_TSYNC_EN);
> +	writel(0x01, edp->tx1 + TXn_TRAN_DRVR_EMP_EN);
> +	writel(0x04, edp->tx1 + TXn_TX_BAND);
> +
> +	ret = qcom_edp_set_vco_div(edp);
> +	if (ret)
> +		return ret;
> +
> +	writel(0x01, edp->edp + DP_PHY_CFG);
> +        writel(0x05, edp->edp + DP_PHY_CFG);
> +        writel(0x01, edp->edp + DP_PHY_CFG);
> +        writel(0x09, edp->edp + DP_PHY_CFG);
> +
> +        writel(0x20, edp->pll + QSERDES_COM_RESETSM_CNTRL);	
> +
> +	timeout = readl_poll_timeout(edp->pll + QSERDES_COM_C_READY_STATUS,
> +				     val, val & BIT(0), 500, 10000);
> +	if (timeout)
> +		return timeout;
> +
> +	writel(0x19, edp->edp + DP_PHY_CFG);
> +	writel(0x1f, edp->tx0 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x04, edp->tx0 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x00, edp->tx0 + TXn_TX_POL_INV);
> +	writel(0x1f, edp->tx1 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x04, edp->tx1 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
> +	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
> +	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
> +	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
> +	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
> +
> +	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
> +	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
> +	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
> +	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
> +
> +	writel(0x4, edp->tx0 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x3, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
> +	writel(0x4, edp->tx1 + TXn_HIGHZ_DRVR_EN);
> +	writel(0x0, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
> +	writel(0x3, edp->edp + DP_PHY_CFG_1);
> +
> +	writel(0x18, edp->edp + DP_PHY_CFG);

Can't help but think that this should be made modular. We would come up
with next set which would have different set of sequence/values so
having a qmp style table here would be better..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
