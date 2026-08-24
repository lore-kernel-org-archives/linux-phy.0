Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69ACDC5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 14:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EO/M5Q/goEmWMP7hCzrj6kUEJp6YKo56Fv+76P2z1zc=; b=Uh+tRm6fdG2EkI
	UpZYnZAD9wixhr5F4D3nC18BBmoBBZ/l+bu+mLicUd7BBs4QoRTW9glR2dEfn8hMpMd3wAzr2KAMr
	p/OEvhsJX4WaU5AVDuR8WKTx4qVzkkB+/pu+csFFGn4SYRPo+KTbglUEyJvgKnWSIFNfTA3bUJh34
	s0TtHcrIIHmNRsnnZVOU8x20ekezjn9BCceUk2sKVXNs98guONw5qM4b7Ykblcks7QaiPEz7P2iQE
	9g9qV9hD05ekBJjvRXeDwCGSJrmk3vxNrjAw5BuzeqK0lnP35fPsT79lfjBnDOmSTzd/3hNXhts2x
	ztZRf/zeXgMWwdtsuYHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyViM-0000000GnJq-3EIQ;
	Mon, 24 Aug 2026 14:31:54 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyViJ-0000000GnJ0-1Pbp
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 14:31:53 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 20ED72003DE;
	Mon, 24 Aug 2026 16:31:44 +0200 (CEST)
Message-ID: <a01e558769b4b30e792c3b37fd0bfa60d022159e.camel@pengutronix.de>
Subject: Re: [PATCH v2 02/14] phy: qcom: Introduce Qualcomm IPQ5332
 Super-Speed USB UNIPHY driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong	 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Praveenkumar I	 <quic_ipkumar@quicinc.com>,
 Varadarajan Narayanan <quic_varada@quicinc.com>,  Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Greg
 Kroah-Hartman	 <gregkh@linuxfoundation.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
Date: Mon, 24 Aug 2026 16:31:44 +0200
In-Reply-To: <20260812-ipq5018-usb3-v2-2-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
	 <20260812-ipq5018-usb3-v2-2-8f355d7ff0ef@outlook.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_073151_521688_DC204D62 
X-CRM114-Status: GOOD (  17.29  )
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

On Mi, 2026-08-12 at 13:34 +0400, George Moussalem via B4 Relay wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Adds Qualcomm 22ull Super-Speed USB UNIPHY driver support which is
> present in Qualcomm IPQ5018 & IPQ5332 SoCs.
> 
> This PHY is interfaced with SNPS DWC3 USB and SNPS DWC PCIe. Either one
> of the interface can use the it and selection is done via mux present in
> TCSR register. By default, the PHY is configured for PCIe interface and
> needs this driver to configure the mux for USB.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/phy/qualcomm/Kconfig                       |  10 +
>  drivers/phy/qualcomm/Makefile                      |   1 +
>  .../phy/qualcomm/phy-qcom-uniphy-usb-ss-22ull.c    | 304 +++++++++++++++++++++
>  3 files changed, 315 insertions(+)
> 
[...]
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-usb-ss-22ull.c b/drivers/phy/qualcomm/phy-qcom-uniphy-usb-ss-22ull.c
> new file mode 100644
> index 000000000000..089de7cebef0
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy-usb-ss-22ull.c
> @@ -0,0 +1,304 @@
[...]
> +static int qcom_uniphy_usb_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct uniphy_usb *uniphy;
> +	int ret;
> +
> +	uniphy = devm_kzalloc(dev, sizeof(*uniphy), GFP_KERNEL);
> +	if (!uniphy)
> +		return -ENOMEM;
> +
> +	uniphy->dev = dev;
> +
> +	uniphy->cfg = of_device_get_match_data(dev);
> +	if (!uniphy->cfg)
> +		return -EINVAL;
> +
> +	uniphy->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(uniphy->base))
> +		return dev_err_probe(dev, PTR_ERR(uniphy->base),
> +				     "failed to map base\n");
> +
> +	ret = devm_clk_bulk_get_all(dev, &uniphy->clks);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to get clocks\n");
> +
> +	uniphy->num_clks = ret;
> +
> +	uniphy->reset = devm_reset_control_get_exclusive_by_index(dev, 0);

There is only a single reset control. Don't use
devm_reset_control_get_exclusive_by_index(), use
devm_reset_control_get_exclusive(dev, NULL) instead.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
