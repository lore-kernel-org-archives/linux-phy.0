Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3685DC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkCcBikWG2aCxWqfK2KqgKBoOzRYXClIPZ5Nluhjl+o=; b=poVGFiaijcyo7j
	nzEXCj86bpYf3psUHp6ahehxg4EJ/dYTMgPBbN6HK511f1ZvTeEOdpPlKytaeFsnVoR8hZpd/f8x9
	/XpW3rky4hOQ7v0GmwbbZifl4WRZX5hR7FRtidEUZ2IPfADymD4UGJSrgD9kXvOG3g7TUj8qO34dO
	W80c899DRmjvGKfl2BRdquKBlw6KAfrwktj5eSifHrUjkcihUY9bd9CuPavrnDoehyAZuogJysqBf
	dFjA78dLP17rf2YpLZJuzE6HBmzlu1X1JEyVvnKtQ6O9RnE4M5V6NbjnZY9qdLdQU2tBTRyCaoObf
	bZWy9uMcVZnp5uyIDwRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od79n-009f5Z-Hj; Tue, 27 Sep 2022 09:45:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od79k-009f4Q-5F
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:45:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6A54D61765;
	Tue, 27 Sep 2022 09:45:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B82C5C433D7;
	Tue, 27 Sep 2022 09:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664271934;
	bh=WQQflwImlllyVgjzTHWOpEtOO7mSqNuRbHDttqbWQsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F6YWgpNnhWNznblv+kd7GZ0nFcyo344bPP5Kp1ud4+9cBEJ7XGh4jbSKqVw7F59lk
	 yXFbL5HGdRSgKyjw/ojfk2ZlTEURh/ukMG1CZqi9+A04YiigCq0YuFEhNKHg//39uF
	 1WCeGLZgF+uPrUamBmU5J8GQC3Mzt5vT2+0aYoERyeI/NGA4rUBNfYDwADUi5yfIIp
	 /4hFM0viZPDw5yB9w690fiy9WLoRIcJ0p9TxbjqX8+VPSKASZZ1v5jjspTYFat5zfh
	 9py9C/GSPF3dnWj3oRpqL4iSiWiWauqV80cK5P3964PX1WGvgCUClkbchoGYGrNHTy
	 hdnBbE7rcACYw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od79o-0002OK-Tp; Tue, 27 Sep 2022 11:45:40 +0200
Date: Tue, 27 Sep 2022 11:45:40 +0200
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
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v6 1/5] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Message-ID: <YzLGRJTQv1/7zPLJ@hovoldconsulting.com>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
 <20220927092207.161501-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927092207.161501-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_024536_264897_94E87C64 
X-CRM114-Status: GOOD (  13.75  )
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

On Tue, Sep 27, 2022 at 12:22:02PM +0300, Dmitry Baryshkov wrote:
> SM8250 configuration tables are split into two parts: the common one and
> the PHY-specific tables. Make this split more formal. Rather than having
> a blind renamed copy of all QMP table fields, add separate struct
> qmp_phy_cfg_tables and add two instances of this structure to the struct
> qmp_phy_cfg. Later on this will be used to support different PHY modes
> (RC vs EP).
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

> +static void qmp_pcie_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
> +{
> +	const struct qmp_phy_cfg *cfg = qphy->cfg;
> +	void __iomem *pcs = qphy->pcs;
> +	void __iomem *pcs_misc = qphy->pcs_misc;
> +
> +	if (!tables)
> +		return;
> +
> +	qmp_pcie_configure(pcs, cfg->regs,
> +			   tables->pcs, tables->pcs_num);
> +	qmp_pcie_configure(pcs_misc, cfg->regs,
> +			   tables->pcs_misc, tables->pcs_misc_num);

nit: You missed the above unnecessary line breaks.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
