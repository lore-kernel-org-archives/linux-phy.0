Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FC0AFD3764
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 15:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKSLJ3Am0/ECMqK4rWJcB3QiXJQWR2/FsmXzyIU9gRs=; b=x6ViWaERQi4G44
	0rnkTIMZHVHO9h2tTEEriqfhfaCBon2cnAEsgwRvcqZo6uMiYF69vxrhXrA9UjhdoMcHNsxbRT9y1
	ieaYK+zfvAf1O/jMHaK68ogH8Ta7n+hRg5QfyhthoR37hLTSh1UtYox6/qf0MIS1wbP6+3CIKGkOr
	f8fn+IJ+vYgPCLHmshg1W6p/YQlnUlHB436kkSF4TKT0B+f3HhXugaXkFZu2NDSlC812xBFZeVpVN
	cWnH9xAAvsnnFMBLsYzEEZY2J7NjTTIFUOrEBsDVUVu959DASo5N09ZvTc3K0nVbdikUxLvacHwdL
	wMFQrXeutX04qMYxCvxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGNR-00000004Ew2-3dvB;
	Wed, 25 Feb 2026 15:00:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGNR-00000004Evq-1IPR
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 15:00:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 393466012A;
	Wed, 25 Feb 2026 15:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 639AFC2BC87;
	Wed, 25 Feb 2026 15:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772031635;
	bh=qolp+34050B6CVS9hDfpeLf/AaTldYW8+jpHIvJTLic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fBCvffqhmtxRH0tkNdXLSmpENugxf8ooGK7/5+UWF8qDQZF+hmLP5ERpnBBQJ9IPE
	 ZvhezlEilReZUBD/uBgvOXIzyAyq6xpNtnQg7XMQ2cTTQB3lI6KAwEgOLsdssCx2Rb
	 mKmmF3HMQu/3ve0SOfUKRA6pn7Td+zRHiCshz9fGIp1lI9DgRW+Iau7NcsoG3+vkOS
	 iYrNNSXYFunokGnuW9FLMdb9YTSgymhklmxMtWgywLO2q/ZnTNn+FimSUkBhD3rLIf
	 rvljGT9ttNWOBsNvs1piKN4VHgoVK94L1ammlpOdwlxEX8OH2riGw9qNqE3ahLLZmj
	 usuScrbUMpyLA==
Date: Wed, 25 Feb 2026 20:30:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <aZ8OkJ4BH0-sVSHS@vaman>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
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

On 27-01-26, 18:09, Th=E9o Lebrun wrote:
> EyeQ5 embeds a system-controller called OLB. It features many unrelated
> registers, and some of those are registers used to configure the
> integration of the RGMII/SGMII Cadence PHY used by MACB/GEM instances.
> =

> Wrap in a neat generic PHY provider, exposing two PHYs with standard
> phy_init() / phy_set_mode() / phy_power_on() operations.

Is there a dependency of this patch with rest of the series. If not
please post different series for subsystems.

> +static int eq5_phy_init(struct phy *phy)
> +{
> +	struct eq5_phy_inst *inst =3D phy_get_drvdata(phy);
> +	struct eq5_phy_private *priv =3D inst->priv;
> +	struct device *dev =3D priv->dev;
> +	u32 reg;
> +
> +	dev_dbg(dev, "phy_init(inst=3D%td)\n", inst - priv->phys);
> +
> +	writel(0, inst->gp);
> +	writel(0, inst->sgmii);
> +
> +	udelay(5);

This is _same_ as exit. Why not call that routine here and document
why...
-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
