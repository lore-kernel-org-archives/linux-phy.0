Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B4AC3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 18:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVb3Fo3rJa54wjYCNptSefS7CTvgh3wjQCSe6IlPm9E=; b=OmiaB1jLW+fcCk
	O+jbZgz/3OyZJ33bibecmkTSVbnuNPCRto6HrhJRRk2oO98umd5lBUzSSTEeHY+QE9sTyofIJ4YRZ
	orWk0D9oVFuv6xd4DPJmkloRYPwG6RV4jEtMnsElY8zNZmYerJhy3mMHEl4YyRIaSWNk1/rYqoCWU
	JZCeZWVxdzfJq0GRYiN1KucB/KPIPs37wFXOoTeaj5eNDzZSX00SHzQmQp0HJXnDCFdjdLRwHcJcg
	5vTvg+ftrAi1O5ZkYf0X88pNFcemHJ7rtk3Ib/VFB0mSADFIZ9HAqy3J1mmvSuiz8uYDJC0Ia57qz
	2E3m1lOa2plpbvUXSaaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTQ4e-00000007xOg-1aUB;
	Mon, 15 Jul 2024 18:05:20 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTQ4a-00000007xN3-2Kk7;
	Mon, 15 Jul 2024 18:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=pqHqXcd4plsh9mCkPXR2+UXnLFjsClDH5v3E0JBOoQE=; b=CKpW3p5q4tsnCI3dVKqNYaso+S
	mVRZ3Vkg+Kz7cAUwxYVtehoLS2I7YT0yFtxmiTswRrcp7iXBDzqEvxgphA19KEvgLU/gqbs8UKMtr
	gI+OlZP5Eclswf+dFVRqWFcuy8ZbTGILQ2LP9aUxQ8zpMjeeDW3ZPQEt4NLUetc9WiAU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sTQ4S-002aUF-RA; Mon, 15 Jul 2024 20:05:08 +0200
Date: Mon, 15 Jul 2024 20:05:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Josua Mayer <josua@solid-run.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
Message-ID: <837de973-0a58-4a07-a126-43445bfa7721@lunn.ch>
References: <20240715-a38x-utmi-phy-v1-0-d57250f53cf2@solid-run.com>
 <20240715-a38x-utmi-phy-v1-1-d57250f53cf2@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240715-a38x-utmi-phy-v1-1-d57250f53cf2@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_110516_623088_5D68A9CA 
X-CRM114-Status: GOOD (  13.00  )
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

> @@ -191,8 +196,15 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>  	struct mvebu_cp110_utmi_port *port = phy_get_drvdata(phy);
>  	struct mvebu_cp110_utmi *utmi = port->priv;
>  	struct device *dev = &phy->dev;
> +	const void *match;
> +	enum mvebu_cp110_utmi_type type;
>  	int ret;
>  	u32 reg;
> +	u32 sel;
> +
> +	match = of_device_get_match_data(dev);
> +	if (match)
> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
>  
>  	/* It is necessary to power off UTMI before configuration */
>  	ret = mvebu_cp110_utmi_phy_power_off(phy);
> @@ -208,16 +220,38 @@ static int mvebu_cp110_utmi_phy_power_on(struct phy *phy)
>  	 * to UTMI0 or to UTMI1 PHY port, but not to both.
>  	 */
>  	if (port->dr_mode == USB_DR_MODE_PERIPHERAL) {
> +		switch (type) {

Just looking at this, i'm surprised there is not a warning about
type possibly being uninitialled. 

> @@ -285,6 +320,8 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>  	struct mvebu_cp110_utmi *utmi;
>  	struct phy_provider *provider;
>  	struct device_node *child;
> +	const void *match;
> +	enum mvebu_cp110_utmi_type type;
>  	u32 usb_devices = 0;
>  
>  	utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
> @@ -293,6 +330,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>  
>  	utmi->dev = dev;
>  
> +	match = of_device_get_match_data(dev);
> +	if (match)
> +		type = (enum mvebu_cp110_utmi_type)(uintptr_t)match;
> +
>  	/* Get system controller region */
>  	utmi->syscon = syscon_regmap_lookup_by_phandle(dev->of_node,
>  						       "marvell,system-controller");
> @@ -326,6 +367,18 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
>  			return -ENOMEM;
>  		}
>  
> +		/* Get port memory region */
> +		switch (type) {

Same here.

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
