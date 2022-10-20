Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E063FC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 12:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4iAW3l0AmUOlDoGLCD/+wvAsKXJZdkoltkqp7i8zfw=; b=JGIt1T8/m2EtpA
	yMFBqUAkSL6yzKKqr5C6j3Ba7O0cKi4Zy+tdr3ffsoYhlNiTpU8iTqWphwdZNHR3GsmEcCGLXz3R3
	5EMr53zjeTgcM7ml6jFqolUojQLlU8AkTZwsg9V1plads2SKaIeX9WtSddcIMo/pOD6bQQp3zKMsu
	lvqKkHGxMz/XchieDOuoAzKJTGrOT2gr3YOJ0FqBr6t/fPL4iICU9h6EpnsXzEMGIhBKk0AW4jnie
	YFLceeFs/iv6gu0L064upBkrQmHCBxb/fa7F85R7m3RMLERgPQXVQVbOWqjnQcOYfX6dTESWbNSjn
	AjLgmMh95P2k/po8Jd5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olUH4-00ES4r-TQ; Thu, 20 Oct 2022 12:03:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olTHF-00Ds9I-Ih
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 10:59:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D49B7B82705;
	Thu, 20 Oct 2022 10:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B3E6C433D6;
	Thu, 20 Oct 2022 10:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666263590;
	bh=oNTahkkZ6EJ/BED5DDzmzj9s5hQoDekb/BIBiCvXL04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GAneG2oc8jEpfBXNZcINY8mPfqRun9rCjs2s+ctvZqqTjpqmE3wsnjWWsfjED+HJn
	 fTNMJN/ptqz9FAneZtb5g2EezpCVMhhG7w7rjqYBpT0VixHap1C/j27J8JSRAmRsVr
	 ijran+p0y7xHfvK/YC9dsgDe4lIjS7eidIEIWP5KybDUJ3kvdEsLILNDURjxZJwInc
	 NYlKw/yqMmr69gjxs8e5pQsh2Tdfd3ldFtqLs4QxQVuzNujrjj36T/dlnrWZyefFqn
	 vjlAtOQjbfBDoMaAfhq8Z5YBv2vLFNlU+MFD+Mz24blovOlCMDVlQkGNKFC1qUVm/i
	 dS+zgsDhjXyEQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1olTGy-0002Ib-EE; Thu, 20 Oct 2022 12:59:37 +0200
Date: Thu, 20 Oct 2022 12:59:36 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 15/15] phy: qcom-qmp-pcie: add support for sc8280xp
 4-lane PHYs
Message-ID: <Y1EqGPc/UzZJmGcz@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-16-johan+linaro@kernel.org>
 <2902e7e8-eddf-149c-06fd-86b85d8af326@linaro.org>
 <Y1DuB6hzb3V5Lqdy@hovoldconsulting.com>
 <004a6ab9-690b-db13-08a9-c42d09368814@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004a6ab9-690b-db13-08a9-c42d09368814@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_035953_940883_DD38B555 
X-CRM114-Status: GOOD (  34.49  )
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

On Thu, Oct 20, 2022 at 12:32:13PM +0300, Dmitry Baryshkov wrote:
> On 20/10/2022 09:43, Johan Hovold wrote:
> > On Thu, Oct 20, 2022 at 06:43:47AM +0300, Dmitry Baryshkov wrote:
> >> On 19/10/2022 14:35, Johan Hovold wrote:
> >>> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
> >>> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
> >>> PCIe2A and PCIe2B).
> >>>
> >>> Add support for fetching the 4-lane configuration from the TCSR and
> >>> programming the lane registers of the second port when in 4-lane mode.
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

> > The gen3x4 PHYs can be in either 4-lane or 2-lane mode depending on the
> > TCSR configuration. Port A is programmed identically in both cases
> > except for this serdes register, and in 4-lane mode tx/rx also needs
> > to be programmed for port B.
> >   
> >>> +
> >>>    	/* clock ids to be requested */
> >>>    	const char * const *clk_list;
> >>>    	int num_clks;
> >>> @@ -1518,6 +1527,7 @@ struct qmp_pcie {
> >>>    	struct device *dev;
> >>>    
> >>>    	const struct qmp_phy_cfg *cfg;
> >>> +	bool tcsr_4ln_config;
> >>
> >> As a matter of preference, this seems too specific. I'd rename it to
> >> split_config or split_4ln_config.
> > 
> > I'm afraid those names do not make much sense. This TCSR register
> > controls whether the PHY is in 4-lane mode (instead of 2-lane mode).
> 
> Well, we just need the info that it's 4-lane. It doesn't really matter 
> if this information comes from TCSR, DT or e.g. fuses. I'd say that TCSR 
> is a platform detail. Thus I'm suggesting a more generic name.

No, it's a specific configuration flag for this (and possibly coming
platforms) to control whether the two PHY ports are used as individual x2
PHYs or as a combined x4 PHY.

It's not just about number of lanes and can definitely not come from DT
or somewhere else as that TCSR bit drives a signal that's needed during
programming.

> >>> +static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> >>> +{
> >>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> >>> +	const struct qmp_pcie_offsets *offs = cfg->offsets;
> >>> +	void __iomem *tx3, *rx3, *tx4, *rx4;
> >>> +
> >>> +	tx3 = qmp->port_b + offs->tx;
> >>> +	rx3 = qmp->port_b + offs->rx;
> >>> +	tx4 = qmp->port_b + offs->tx2;
> >>> +	rx4 = qmp->port_b + offs->rx2;
> >>> +
> >>> +	qmp_pcie_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
> >>> +	qmp_pcie_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
> >>> +
> >>> +	qmp_pcie_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
> >>> +	qmp_pcie_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
> >>
> >> I'd use BIT(2) and BIT(3) here. This would allow one to make a
> >> difference between programming first pair of lanes and second pair of
> >> lanes if necessary.
> > 
> > No, the tx and tx registers of the second port should be programmed
> > identically to that of the first port.
> 
> As you would prefer. As a matter of fact, we do not have CFG_LANES in 
> the PCIe PHY. Thus I'm surprised that you didn't drop this. I think 
> CFG_LANES usage is limited to sm8250 USB and combo PHY configurations.

It's actually also used by SC8280XP so we cannot drop it (see
sc8280xp_qmp_gen3x2_pcie_tx_tbl) here. Appears to be unused for UFS
currently, though.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
