Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F25C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 13:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxfSsbMGkZylHW7Yb+y7/ltCr2kz8y1f2v8FlRCXcPA=; b=mnkksF9Y3TiWBq
	5/P21XjChpXlbrrmfsr60h6KGwpyV4xz3Yd+MSmXiMa404pdNEvAK3swQnivThRG/h15fWeZKiVtN
	Jg7yibO5nFkdA3/5LzLTIIRUIuZ5owbyE3LQd5kyMeW+036+DGDo0KoYttJNJPQ2GYWOGDq9H28OH
	lRg2K0oK2y8Q1Wukba/KxK/DRiNmobYLyu/6Ck+UmiwF8mObFijitJmrQO6LdsT47xPM3bczUVZsz
	bFOyBudEAEyxt33wDW4ZAG0hsqbed9V0cRuY0SVZWDszBqrVXpUysOUZeQyoz4JsXVU/5d8UOseC/
	JVuw6WHAptnlTH5WbdUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oco6Q-00548M-3q; Mon, 26 Sep 2022 13:24:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oco6N-00547c-MX
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 13:24:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0C8C760DCC;
	Mon, 26 Sep 2022 13:24:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A210C433D6;
	Mon, 26 Sep 2022 13:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664198690;
	bh=fGPXY4HuQM7bSnJZnNLyetKPUunr5Gj4RA4VKZKar/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hLOSBGewwfUS8IH4Q69aqseirmsf6IU5JuRtbN1SUEffmLfA1EnDAVWK78p9lD8sH
	 b3hxQAnfHwU8p8wFK+8+mY449VwWN9s5GkiRl80o/7QCSHmuUJRLYoVmyRGiwj9P2P
	 4t0X4h/GH4ftY1iCi+iZKB85T6BzA5nNzO8Sm4+8QXTD4EhWRf8ndQ95SqemlkkN02
	 foNesIlwSjQDcGjjs1o8e9UppGYSEq38wFQ7DHK+TsdYItrhzoulAbBCOaQoDqm02n
	 K5HoLUGP/hcF/VH9yHWvNZJJNkRLag6lzyZRDFdHT5yRlA6rJ/P8rV3zd1a9peJMsM
	 6EAa+9xf8Yo2w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oco6R-000279-I7; Mon, 26 Sep 2022 15:24:56 +0200
Date: Mon, 26 Sep 2022 15:24:55 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 1/6] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Message-ID: <YzGoJx55sFdw40Td@hovoldconsulting.com>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-2-dmitry.baryshkov@linaro.org>
 <YzFUcWSHkdSlIbHU@hovoldconsulting.com>
 <5a93a4fc-b6a9-6371-84c1-ff39c60dbb5a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a93a4fc-b6a9-6371-84c1-ff39c60dbb5a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_062451_835067_B73CE58A 
X-CRM114-Status: GOOD (  23.39  )
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

On Mon, Sep 26, 2022 at 02:35:07PM +0300, Dmitry Baryshkov wrote:
> On 26/09/2022 10:27, Johan Hovold wrote:
> > On Sat, Sep 24, 2022 at 07:02:57PM +0300, Dmitry Baryshkov wrote:
> >> SM8250 configuration tables are split into two parts: the common one and
> >> the PHY-specific tables. Make this split more formal. Rather than having
> >> a blind renamed copy of all QMP table fields, add separate struct
> >> qmp_phy_cfg_tables and add two instances of this structure to the struct
> >> qmp_phy_cfg. Later on this will be used to support different PHY modes
> >> (RC vs EP).
> >>
> >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 ++++++++++++++---------
> >>   1 file changed, 77 insertions(+), 52 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index 7aff3f9940a5..30806816c8b0 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
> >>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
> >>   };
> >>   
> >> -/* struct qmp_phy_cfg - per-PHY initialization config */
> >> -struct qmp_phy_cfg {
> >> -	int lanes;
> >> -
> >> -	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
> >> +struct qmp_phy_cfg_tables {
> >>   	const struct qmp_phy_init_tbl *serdes_tbl;
> >>   	int serdes_tbl_num;
> > 
> > So I still think you should drop the now redundant "tbl" suffix and
> > infix.
> > 
> >> -	const struct qmp_phy_init_tbl *serdes_tbl_sec;
> >> -	int serdes_tbl_num_sec;
> >>   	const struct qmp_phy_init_tbl *tx_tbl;
> >>   	int tx_tbl_num;
> >> -	const struct qmp_phy_init_tbl *tx_tbl_sec;
> >> -	int tx_tbl_num_sec;
> >>   	const struct qmp_phy_init_tbl *rx_tbl;
> >>   	int rx_tbl_num;
> >> -	const struct qmp_phy_init_tbl *rx_tbl_sec;
> >> -	int rx_tbl_num_sec;
> >>   	const struct qmp_phy_init_tbl *pcs_tbl;
> >>   	int pcs_tbl_num;
> >> -	const struct qmp_phy_init_tbl *pcs_tbl_sec;
> >> -	int pcs_tbl_num_sec;
> >>   	const struct qmp_phy_init_tbl *pcs_misc_tbl;
> >>   	int pcs_misc_tbl_num;
> >> -	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
> >> -	int pcs_misc_tbl_num_sec;
> >> +};
> >> +
> >> +/* struct qmp_phy_cfg - per-PHY initialization config */
> >> +struct qmp_phy_cfg {
> >> +	int lanes;
> >> +
> >> +	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
> >> +	struct qmp_phy_cfg_tables common;
> > 
> > And this could be "tbls_common".
> 
> I'd go for common_tables, if you don't mind.

Sure, if you prefer.

	struct qmp_phy_cfg_tables	tables;
	struct qmp_phy_cfg_tables	tables_ep;
	struct qmp_phy_cfg_tables	tables_rc;

Could also be an alternative. Not sure the "common" prefix/suffix really
adds anything.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
