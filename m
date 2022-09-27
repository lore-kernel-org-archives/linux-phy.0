Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4754CC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 06:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nefPHC2goapiGcqTlc06MQKN95/LP5mykp0jjgzqLQ=; b=xlGeBlVvmUMrSd
	fD/wL5qDTmIzuXox8sHvMWM2GcqkIY7Va8Ba58WzRoWnR/oGlAzg+4v6FopoY8DE+FINgCyb5JU9W
	fwlcbQxa5Lg8Wa3AAfyTPsyqACw0GFhJm9JPGYNjunRxLKe2LnXebLpf+AYKAK5BCquojtYy6PCoc
	ZqqXZXEx0NHH/OCRo1yUool4tz6FtQe90Y2A4evH6rgUw6vBLOF3/11L1Y6wHio9ppMYLO9C2RiXz
	VzxmcpQJAjFyR3G1B1vBklYB0si8RaJvIa8SPFwThIrVEBSpV2Vflm9sX27vA17JbtC2G/xnmzOOR
	vaYFgRkak+yeUKcpvHtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od4So-008fKp-MO; Tue, 27 Sep 2022 06:53:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od4Sm-008fJr-0S
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 06:53:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A9EABB80C6D;
	Tue, 27 Sep 2022 06:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BCEBC433C1;
	Tue, 27 Sep 2022 06:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664261576;
	bh=mU9f9LoidskksX7PDIWPHuh8+QezhzFTM0/tR8Icdkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qxBglPoVVeXt1IoW1KKQdwz0b0EcST7l27JJVnYPVGz4mhbyb2e4Zzeb8H69IlDxc
	 rKS4ekkNMmrCwKCCs0caRmeWyP+Ym46KPtpjZhVyVPKbXPK1+FzxChJw1nkLeiQDfz
	 gka7guPUPKRXGKalPYjlqmqXidA/LWimXSa7pu7bOCb1phWjOsEpoPMyarQirGAuMk
	 RIXBDZ9ShVTVDmII1GL8hJk7B0Z6RwtsbhPNc6bz0lj4xT1Vg6Y1PclkM2WkBTWPlN
	 YO40uefqy5NjE2yiJescyK+oZLmZG6AQA2gZgZ95zOQxoXVZae9r3ogBA3fkCyv5jD
	 LECr4eO+pdGxQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od4Sj-0006aV-Gu; Tue, 27 Sep 2022 08:53:02 +0200
Date: Tue, 27 Sep 2022 08:53:01 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: fix resource mapping for SDM845 QHP
 PHY
Message-ID: <YzKdzTfZXYz2mF4p@hovoldconsulting.com>
References: <20220926172514.880776-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926172514.880776-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_235304_237346_2CA195C3 
X-CRM114-Status: GOOD (  19.81  )
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

On Mon, Sep 26, 2022 at 08:25:14PM +0300, Dmitry Baryshkov wrote:
> On SDM845 one of PCIe PHYs (the QHP one) has the same region for TX and
> RX registers. Since the commit 4be26f695ffa ("phy: qcom-qmp-pcie: fix
> memleak on probe deferral") added checking that resources are not
> allocated beforehand, this PHY can not be probed anymore. Fix this by
> skipping the map of ->rx resource on the QHP PHY and assign it manually.

Bah. Yet another QMP hack (the QHP support, not just this fix).

The binding should be fixed as this device does indeed not have separate
TX and RX register blocks. Note that the rx table for this device is
empty too so that repeated "TX" region is just a place holder.

> Fixes: 4be26f695ffa ("phy: qcom-qmp-pcie: fix memleak on probe deferral")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 7aff3f9940a5..5be5348fbb26 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2210,7 +2210,10 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
>  	if (IS_ERR(qphy->tx))
>  		return PTR_ERR(qphy->tx);
>  
> -	qphy->rx = devm_of_iomap(dev, np, 1, NULL);
> +	if (of_device_is_compatible(dev->of_node, "qcom,sdm845-qhp-pcie-phy"))
> +		qphy->rx = qphy->tx;
> +	else
> +		qphy->rx = devm_of_iomap(dev, np, 1, NULL);
>  	if (IS_ERR(qphy->rx))
>  		return PTR_ERR(qphy->rx);

But I guess this will do for now:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
