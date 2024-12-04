Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817C8E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 14:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bicVly/Sj8qoVl9E9YnXISqlsdY8dG/bdFoiTbT3fc=; b=y/iCL8Kwg8ZYJj
	Zj8s/FOMRdfxy+itTaTWIQWiQP6hQUb+gGe7teHUARW3gN1Y2TG2fwo/DGyPlqChIUbAIWwlXl/WZ
	LzEZ5mAOurLVNGRiXdxQGlyeqVsnnhrwg362DEaMr1mft5gnpFxMD1VgzMJAMxbIjqOo8jHz8Fpwy
	BFd24CB9xu8W88+ueioEU2Hlyi88GTCgsCv48JslErRcEwBoFeRqusjSEPng9b1HCXAGCweC+zvxS
	fI1Xi28YA3EHVjJZOcw27jpDUT/c2t0x/fH9J78GAQZtLVDlM+XPKVNM9R/J6i+m79R2g4QU2VccI
	MMNYIL3K0kI+hcHOEaMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIq6v-0000000Cmsl-02WP;
	Wed, 04 Dec 2024 14:12:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIq5O-0000000CmVd-2uOM;
	Wed, 04 Dec 2024 14:10:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 47CF45C6E98;
	Wed,  4 Dec 2024 14:09:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27C5CC4CECD;
	Wed,  4 Dec 2024 14:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733321437;
	bh=YYSDsgbu4kMtRDP07uuP9pCt0culwplV4KoPxA6I3hI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H/lWxIYjb/XMOitGejfbUCVwTnb0OQSj1sa+6z8o3yOf4vflWP64boaCLJocOV4Ua
	 nWsNmJVSmkzqfwRHMOn67u+rRQFvBClGDfQ/Z1xKOdG+O1PzGPCXaoReoDJzuY1pes
	 3wdqP2Nox7ZMZg6TyUIWi7RRSKoA31J3sf0D1MGdije5K/uCQmqCFd9zOCs4VmwH2u
	 NPKaS/BiZG333RDBeSLQ6fVxw9IL0Rqx/C9HPxQnY7YrGy+V73ArLNIb3S/ljP4U/k
	 MyDtgIJr1GYIQSxcgORFPh7DH+JyjoEPRMucX+x1IT3LSVl3ZRjeAiHIjtHA3gwAVH
	 010T6iI30fqhg==
Date: Wed, 4 Dec 2024 19:40:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 8/9] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
Message-ID: <Z1Bi2gRJefYy1tyo@vaman>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-8-1b7fce24960b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-8-1b7fce24960b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_061038_819222_BC4C1471 
X-CRM114-Status: GOOD (  30.90  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27-11-24, 10:58, Andr=E9 Draszik wrote:
> gs101's SS phy needs to be configured differently based on the
> connector orientation, as the SS link can only be established if the
> mux is configured correctly.
> =

> The code to handle programming of the mux is in place already, this commit
> now adds the missing pieces to subscribe to the Type-C orientation
> switch event.
> =

> Note that for this all to work we rely on the USB controller
> re-initialising us. It should invoke our .exit() upon cable unplug, and
> during cable plug we'll receive the orientation event after which we
> expect our .init() to be called.
> =

> Above reinitialisation happens if the DWC3 controller can enter runtime
> suspend automatically. For the DWC3 driver, this is an opt-in:
>     echo auto > /sys/devices/.../11110000.usb/power/control
> Once done, things work as long as the UDC is not bound as otherwise it
> stays busy because it doesn't cancel / stop outstanding TRBs. For now
> we have to manually unbind the UDC in that case:
>      echo "" > sys/kernel/config/usb_gadget/.../UDC
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> ---
>  drivers/phy/samsung/Kconfig              |  1 +
>  drivers/phy/samsung/phy-exynos5-usbdrd.c | 60 ++++++++++++++++++++++++++=
++++++
>  2 files changed, 61 insertions(+)
> =

> diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
> index f10afa3d7ff5..fc7bd1088576 100644
> --- a/drivers/phy/samsung/Kconfig
> +++ b/drivers/phy/samsung/Kconfig
> @@ -80,6 +80,7 @@ config PHY_EXYNOS5_USBDRD
>  	tristate "Exynos5 SoC series USB DRD PHY driver"
>  	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
>  	depends on HAS_IOMEM
> +	depends on TYPEC || (TYPEC=3Dn && COMPILE_TEST)
>  	depends on USB_DWC3_EXYNOS
>  	select GENERIC_PHY
>  	select MFD_SYSCON
> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsu=
ng/phy-exynos5-usbdrd.c
> index 1a34e9b4618a..2010d25ee817 100644
> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> @@ -394,6 +394,7 @@ struct exynos5_usbdrd_phy_drvdata {
>   * @extrefclk: frequency select settings when using 'separate
>   *	       reference clocks' for SS and HS operations
>   * @regulators: regulators for phy
> + * @sw: TypeC orientation switch handle
>   * @orientation: TypeC connector orientation - normal or flipped
>   */
>  struct exynos5_usbdrd_phy {
> @@ -415,6 +416,7 @@ struct exynos5_usbdrd_phy {
>  	u32 extrefclk;
>  	struct regulator_bulk_data *regulators;
>  =

> +	struct typec_switch_dev *sw;
>  	enum typec_orientation orientation;
>  };
>  =

> @@ -1400,6 +1402,60 @@ static int exynos5_usbdrd_phy_clk_handle(struct ex=
ynos5_usbdrd_phy *phy_drd)
>  	return 0;
>  }
>  =

> +#if IS_ENABLED(CONFIG_TYPEC)
> +static int exynos5_usbdrd_orien_sw_set(struct typec_switch_dev *sw,
> +				       enum typec_orientation orientation)
> +{
> +	struct exynos5_usbdrd_phy *phy_drd =3D typec_switch_get_drvdata(sw);
> +
> +	scoped_guard(mutex, &phy_drd->phy_mutex)
> +		phy_drd->orientation =3D orientation;
> +
> +	return 0;
> +}
> +
> +static void exynos5_usbdrd_orien_switch_unregister(void *data)
> +{
> +	struct exynos5_usbdrd_phy *phy_drd =3D data;
> +
> +	typec_switch_unregister(phy_drd->sw);
> +}
> +
> +static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy=
_drd)
> +{
> +	int ret;
> +
> +	phy_drd->orientation =3D (enum typec_orientation)-1;

Should this be TYPEC_ORIENTATION_NONE?

> +	if (device_property_present(phy_drd->dev, "orientation-switch")) {
> +		struct typec_switch_desc sw_desc =3D { };
> +
> +		sw_desc.drvdata =3D phy_drd;
> +		sw_desc.fwnode =3D dev_fwnode(phy_drd->dev);
> +		sw_desc.set =3D exynos5_usbdrd_orien_sw_set;
> +
> +		phy_drd->sw =3D typec_switch_register(phy_drd->dev, &sw_desc);
> +		if (IS_ERR(phy_drd->sw))
> +			return dev_err_probe(phy_drd->dev,
> +					     PTR_ERR(phy_drd->sw),
> +					     "Failed to register TypeC orientation switch\n");
> +
> +		ret =3D devm_add_action_or_reset(phy_drd->dev,
> +					       exynos5_usbdrd_orien_switch_unregister,
> +					       phy_drd);
> +		if (ret)
> +			return dev_err_probe(phy_drd->dev, ret,
> +					     "Failed to register TypeC orientation devm action\n");
> +	}
> +
> +	return 0;
> +}
> +#else /* CONFIG_TYPEC */
> +static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy=
_drd)
> +{
> +	return 0;
> +}
> +#endif /* CONFIG_TYPEC */
> +
>  static const struct exynos5_usbdrd_phy_config phy_cfg_exynos5[] =3D {
>  	{
>  		.id		=3D EXYNOS5_DRDPHY_UTMI,
> @@ -1789,6 +1845,10 @@ static int exynos5_usbdrd_phy_probe(struct platfor=
m_device *pdev)
>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get regulators\n");
>  =

> +	ret =3D exynos5_usbdrd_setup_notifiers(phy_drd);
> +	if (ret)
> +		return ret;
> +
>  	dev_vdbg(dev, "Creating usbdrd_phy phy\n");
>  =

>  	for (i =3D 0; i < EXYNOS5_DRDPHYS_NUM; i++) {
> =

> -- =

> 2.47.0.338.g60cca15819-goog

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
