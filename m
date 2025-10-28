Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BA4CCD1BF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 14:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu/YaR7C/mG3A4QOWU8otsU1wEpUlQxRHJ7JfO9HlJ4=; b=2Y25YJv7hD9eXS
	SYgf6sauLHLkSWOk2jwTEu0KMnyAM7Dt+12V2iKnkxlZiFtWuXSyAhmrLATj92lTj/yMrrFXgdXGm
	4XepMs1vvHwulBY4P2qnWG5/30PhT9o7BfOLh5OnDem58tmdCamNzD4Szonx3elaLhlwCmvUX6oZw
	kVzwwQLLKQ75xIHVNnaLAEeGJ0UcXqbtfzL5TP2E2AWqnpA6dwB8twfOuSU7ziBpONwQknVQMO9T2
	z89h0LeGyPuUGc5CNzXkd1FOIeFu9nRyLb+oCQV0GWbIY00C+vMjXlVt5iDjsQLJ7FuMA3h8rjwy4
	v0LYs9B/aB3lK4OeSQHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkT0-0000000G4o3-1CSI;
	Tue, 28 Oct 2025 14:14:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDkSy-0000000G4ni-1YfL
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 14:14:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 870C445846;
	Tue, 28 Oct 2025 14:14:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0469C4CEF7;
	Tue, 28 Oct 2025 14:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761660867;
	bh=3VOmtzVfP8rEqarJwOAk+ziIA6PjTjNMEu5CtoUoCFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qd7ItwOxGn5Say5y+Rz4vtUUhgSCdYFdancMc8WF8PRHPadwBheR88UHHjkpzlyRW
	 lu7GFLRQTGQU+GTw22K47FvuKoNK/v1HMMdYBMNB7qQ4+PiGL3AyVQDaYJutuuw/9w
	 GAKiFoSOv9Zuq+CldSqdKPU+1HebK4daLHuJLdq+zTT2AwdO6faPSE+aW3NGuEHAAm
	 8L/3+5nLL530uc6Elwt4llVL5abFteKGnEXVS64+jTeaXd5Kq37xiWaOjWp+cOo87y
	 NirMkaMwfDxXDwFnhq+nf4ohQI3EqQm2rYxI77BOK+Kee4XRBtQKdt+TMBywG61r4b
	 CiTO+JV1n5vPQ==
Date: Tue, 28 Oct 2025 09:17:25 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
Message-ID: <5b7rv52cqu55jn5ku6hy6m7u7yn37i4iviaj4eutlgudw7mpny@w3vhaulnmi2p>
References: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_071428_778238_6A5A9C04 
X-CRM114-Status: GOOD (  22.62  )
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

On Mon, Oct 27, 2025 at 11:54:58AM +0530, Prashanth K wrote:
> Add runtime power management operation callbacks for M31 EUSB2 PHY.
> Enable/disable the clocks based on the runtime suspend/resume calls.

Please start with describing which problem this solves.

Regards,
Bjorn

> 
> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 40 +++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 0a0d2d9fc846..1aeb5e3de07c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -240,6 +240,34 @@ static const struct phy_ops m31eusb2_phy_gen_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static int m31eusb2_phy_runtime_suspend(struct device *dev)
> +{
> +	struct m31eusb2_phy *phy = dev_get_drvdata(dev);
> +
> +	dev_dbg(dev, "Suspending M31 eUSB2 Phy\n");
> +	clk_disable_unprepare(phy->clk);
> +
> +	return 0;
> +}
> +
> +static int m31eusb2_phy_runtime_resume(struct device *dev)
> +{
> +	struct m31eusb2_phy *phy = dev_get_drvdata(dev);
> +	int ret = 0;
> +
> +	dev_dbg(dev, "Resuming M31 eUSB2 Phy\n");
> +	ret = clk_prepare_enable(phy->clk);
> +	if (ret)
> +		dev_err(dev, "failed to enable ref clock, %d\n", ret);
> +
> +	return ret;
> +}
> +
> +static const struct dev_pm_ops m31eusb2_phy_pm_ops = {
> +	SET_RUNTIME_PM_OPS(m31eusb2_phy_runtime_suspend,
> +			   m31eusb2_phy_runtime_resume, NULL)
> +};
> +
>  static int m31eusb2_phy_probe(struct platform_device *pdev)
>  {
>  	struct phy_provider *phy_provider;
> @@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(phy->clk),
>  				     "failed to get clk\n");
>  
> +	dev_set_drvdata(dev, phy);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +
> +	/*
> +	 * Prevent runtime pm from being ON by default. Users can enable
> +	 * it using power/control in sysfs.
> +	 */
> +	pm_runtime_forbid(dev);
> +
> +
>  	phy->phy = devm_phy_create(dev, NULL, &m31eusb2_phy_gen_ops);
>  	if (IS_ERR(phy->phy))
>  		return dev_err_probe(dev, PTR_ERR(phy->phy),
> @@ -313,6 +352,7 @@ static struct platform_driver m31eusb2_phy_driver = {
>  	.probe = m31eusb2_phy_probe,
>  	.driver = {
>  		.name = "qcom-m31eusb2-phy",
> +		.pm = &m31eusb2_phy_pm_ops,
>  		.of_match_table = m31eusb2_phy_id_table,
>  	},
>  };
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
