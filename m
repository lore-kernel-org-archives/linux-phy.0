Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71EDC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7sHUXOCqjpIc3ahQ93b/G/Vcp+63M9vVBsYJtIE5Vo=; b=qw2lZK0DRO8Mzq
	zpTkrlzKnZxovwvSR5zG9EhbTWCAuuSNz1fPoYfVz17B9PMkPZmCU3zaVTCzJrvJuibVImK8tKmL2
	M6yotjgoE/HpUtfDj8TiWNBTKKqmLr/YhVVqq4xdWinpo0nVpHKj4mn4NteAGhyHSZRHK6J1J3bBj
	gk43vo21f2nG4lXNzmNjbqa5bHnbYFFnEaFEXQM8YbiS0BC0XTzJVtA33z1japKku20cEjO101UeO
	P8XyDNrxCOrcqsM2wjtWBuLKXuMe+LjIP0oC1VR5mfRrpo56cBmetbfcjXgnJtDm/MTLB0XK+xgiL
	pmPjRIVmayivN06AnGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVMG-00H1N5-S3; Mon, 14 Nov 2022 09:02:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVMD-00H1Lj-Jw
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:02:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 48A51B80D30;
	Mon, 14 Nov 2022 09:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA1E0C433D6;
	Mon, 14 Nov 2022 09:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668416539;
	bh=8UEpQjEb47LuTp63/zFju/XzGEz/yGBuPxgcbXjfIGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h0CU3JNsXmsr+qoUSxkQhOd5zI24pfJC+P06nJrKDMegD+pzRMtFvmLRqdvfbPwK/
	 5qtbP/t12TeSj4Hc5X2pZN0Cmvch0qWB3EZ8T7REhHSx8XvEncqsSbKnXGApNjA7OR
	 idb7zkKSC0xRy9n+Ymek9lDcsNCN+7m5UG6VkB028NjK9ErBJhafwK0AYdF9X65K2a
	 Keq2JpJREhjahym4DtwpNXWhOiaEC/kIDYO3+/fPBr5SozAcg7EHnFiLGuOKTXxwV+
	 GtqX/jFdkBn2XgTePFZy7joY3m2ZmKOT3Be+bVi9VLxKPuA8gSA+VpyJoR0teL+3EO
	 bN0gHN4Wkj6nw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouVLe-00025y-LT; Mon, 14 Nov 2022 10:01:46 +0100
Date: Mon, 14 Nov 2022 10:01:46 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/22] phy: qcom-qmp-combo: merge driver data
Message-ID: <Y3ID+jTI4Bf6wvh2@hovoldconsulting.com>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-19-johan+linaro@kernel.org>
 <54d3d1b4-29de-4d18-a39e-bf74a5c61509@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54d3d1b4-29de-4d18-a39e-bf74a5c61509@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_010221_985829_A0F6D408 
X-CRM114-Status: GOOD (  22.56  )
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

On Sat, Nov 12, 2022 at 10:46:53AM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 11:56, Johan Hovold wrote:
> > The QMP combo driver manages a single PHY (even if it provides two
> > interfaces for USB and DP, respectively) so merge the old qcom_qmp and
> > qmp_phy structures and drop the PHY array.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 690 ++++++++++------------
> >   1 file changed, 313 insertions(+), 377 deletions(-)
> > 

> > -/**
> > - * struct qmp_phy - per-lane phy descriptor
> > - *
> > - * @phy: generic phy
> > - * @cfg: phy specific configuration
> > - * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
> > - * @tx: iomapped memory space for lane's tx
> > - * @rx: iomapped memory space for lane's rx
> > - * @pcs: iomapped memory space for lane's pcs
> > - * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
> > - * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
> > - * @pcs_misc: iomapped memory space for lane's pcs_misc
> > - * @pcs_usb: iomapped memory space for lane's pcs_usb
> > - * @pipe_clk: pipe clock
> > - * @qmp: QMP phy to which this lane belongs
> > - * @mode: current PHY mode
> > - * @dp_aux_cfg: Display port aux config
> > - * @dp_opts: Display port optional config
> > - * @dp_clks: Display port clocks
> > - */
> > -struct qmp_phy {
> > -	struct phy *phy;
> > +struct qmp_phy_dp_clks {
> > +	struct qmp_combo *qmp;
> > +	struct clk_hw dp_link_hw;
> > +	struct clk_hw dp_pixel_hw;
> > +};
> > +
> 
> It would make sense to keep the kerneldoc here.

I disagree. The above kernel doc is at best pointless and mostly just
restates what can be understood from the field names.

Note how it also incorrect by referring to "memory space for *lane's*
...".

> > +struct qmp_combo {
> > +	struct device *dev;
> > +
> >   	const struct qmp_phy_cfg *cfg;
> > +
> > +	void __iomem *dp_com;
> > +
> >   	void __iomem *serdes;
> >   	void __iomem *tx;
> >   	void __iomem *rx;
> > @@ -899,59 +889,33 @@ struct qmp_phy {
> >   	void __iomem *dp_pcs;
> >   
> >   	struct clk *pipe_clk;
> > -	struct qcom_qmp *qmp;
> > -	enum phy_mode mode;
> > -	unsigned int dp_aux_cfg;
> > -	struct phy_configure_opts_dp dp_opts;
> > -	struct qmp_phy_dp_clks *dp_clks;
> > -};
> > -
> > -struct qmp_phy_dp_clks {
> > -	struct qmp_phy *qphy;
> > -	struct clk_hw dp_link_hw;
> > -	struct clk_hw dp_pixel_hw;
> > -};
> > -
> > -/**
> > - * struct qcom_qmp - structure holding QMP phy block attributes
> > - *
> > - * @dev: device
> > - * @dp_com: iomapped memory space for phy's dp_com control block
> > - *
> > - * @clks: array of clocks required by phy
> > - * @resets: array of resets required by phy
> > - * @vregs: regulator supplies bulk data
> > - *
> > - * @phys: array of per-lane phy descriptors
> > - * @phy_mutex: mutex lock for PHY common block initialization
> > - * @init_count: phy common block initialization count
> > - */
> > -struct qcom_qmp {
> > -	struct device *dev;
> > -	void __iomem *dp_com;
> > -
> >   	struct clk_bulk_data *clks;
> >   	struct reset_control_bulk_data *resets;
> >   	struct regulator_bulk_data *vregs;
> >   
> > -	struct qmp_phy **phys;
> > -	struct qmp_phy *usb_phy;
> > -
> >   	struct mutex phy_mutex;
> >   	int init_count;
> > +
> > +	struct phy *usb_phy;
> > +	enum phy_mode mode;
> > +
> > +	struct phy *dp_phy;
> > +	unsigned int dp_aux_cfg;
> > +	struct phy_configure_opts_dp dp_opts;
> > +	struct qmp_phy_dp_clks *dp_clks;
> >   };
> >   
> > -static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
> > -static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy);
> > -static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy);
> > -static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy);
> > +static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_combo *qmp);
> > +static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_combo *qmp);
> > +static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp);
> > +static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp);
> >   
> > -static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy);
> > -static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy);
> > -static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy);
> > -static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy);
> > +static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp);
> > +static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp);
> > +static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp);
> > +static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_combo *qmp);
> >   
> > -static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_phy *qphy);
> > +static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp);
> 
> 
> As you are doing the cleanup anyway, would it make sense to move these 
> functions up to be able to drop these prototypes?

Nah, we want to keep the DP implementation together and for now the
configuration structs live at the top of the file.

> >   
> >   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >   {
> > @@ -1265,11 +1229,11 @@ static void qmp_combo_configure(void __iomem *base,
> 
> 
> The rest LGTM

Thanks for reviewing all of these these.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
