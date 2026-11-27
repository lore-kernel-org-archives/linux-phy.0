Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CF0606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 14:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U7Hu4GCq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nkL3oTpf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PJUuP8Zv1LntADKaIyDoS3kdAgyykGw/MpbcF2TxufM=; b=U7Hu4GCqQcl4H22boXH2GiPJEf
	ys/FsjHFOa4kGZzkjQmvGCEq+SULLYDxSpMNL38UEcxAY4DO/cbPFwOqrS7/ngPZO6/+ef0JkKx12
	vjtMv3a2TDYQIo9CdVSKKk9/ZLJ95EVeY+G24jSLJQyRMkll4TJSrqocFF5GmQsL3AbZNhGRuhjiJ
	AXvx53CGGKgZQ1Gt61ZdhJ4iQQqZeOv4blqzC3/K9q1LOPIrbPAn+cQmSKFWcXinGTVn8yEb0XE7P
	4h/pmYiCEzEx4COPRL5QGlXoj3dDOCPnmmedVwzZTN2+JhwRnnenjO/cLc0ZNgPPEyHBjvXw2VPiG
	gYFU8U4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwoa-0000000GMPE-1ICy;
	Fri, 27 Nov 2026 14:20:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwoZ-0000000GMP2-1NEz
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 14:20:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D03E742CC1;
	Fri, 27 Nov 2026 14:20:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C6001F00898;
	Fri, 27 Nov 2026 14:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795789238;
	bh=Kgs7wFN+rDT65O3xOykNsRGmtOt720h2hJLHwk70/Nc=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=nkL3oTpfaIdjpDp3MrA5cigT4gIOOBaZyKoIsOZ1kRvC7SzZNQIlU/laZngXyQ78X
	 GKL38XmBVHh+i7ZhbumXH/dRRbrwYwjmRkoPWv/TAguGhZdz5+EgmL/kQiR4P4pz94
	 8fZa4yron1cWzPk//Hh3Hl2dFdohzbhwmcuDhCtvB8rLMvgco3mmmToflZugwBwrst
	 FnqyRHOy/qIZzL1kKoSOjFp8eEPaPOtjDR4ZQfeq+tfDq+3hkgrvoWJPKbypS6RMFh
	 xyt1spLj/9h8mOjVKn1q7JNR8myREhYPhdmDWo5mwCsX9iOlYWJZQEhxO6d1Z/CBGq
	 79TCZsH0Sd/fA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] phy: tegra: xusb-tegra186: Extend Tegra264 fuse
 calibration
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-tegra@vger.kernel.org, 
 linux-phy@lists.infradead.org, Wayne Chang <waynec@nvidia.com>
In-Reply-To: <20261116-tegra-phy-tegra264-v1-2-a82b8e10a553@nvidia.com>
References: <20261116-tegra-phy-tegra264-v1-0-a82b8e10a553@nvidia.com>
 <20261116-tegra-phy-tegra264-v1-2-a82b8e10a553@nvidia.com>
Date: Fri, 27 Nov 2026 19:50:31 +0530
Message-Id: <179578923178.13164.18174436960653488279.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3217; i=mani@kernel.org;
 h=from:subject:message-id; bh=FDkL8TxCdGt4Cot5ZWKl2DVZjdjNpPaai+/tR4lm0r4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCZGyPFaCXzURl6P1NsgTMnDY/wNb3kHWstCFT
 rhY4OhPxBiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmRsgAKCRBVnxHm/pHO
 9clyB/97O11fXYXpVTrahiofe1gtv6SR/ialX31BVmoEoP5jOSrzI0+Zbun7SBpo/uSMuwh5STf
 cfg/OFmFghe83IELOA3i307f2pzeWdJAEoQ6G9Og4QBDne9Q3G/4yTHe5rCyYbNVe56k05Dm5ao
 0NTsifKlsyXHa2D8ghsh4eDEe0KyAiRcPZsuEtptQ2btwbKAF67aoFxxL9OD4Dg3+LfR/WoiA3z
 LoNdwHtEiNtMC31Hx97CnduoOsDMrn6Damv6/LRjo4SNDGCWtnWuhwouZQXJjEzXQfpkUqKji+L
 krkWorP7vTVYXJZ9IJrV/SUxOqlhLTqEtr5fcMd3u1CYXH0l
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-16 14:51 +0000, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Add support for receiver offset and squelch offset calibration on
> Tegra264 to compensate for manufacturing variation in the USB2
> receivers. The receiver offset calibrates the receiver differential
> offset between D+ and D-, while squelch offset calibrates the squelch
> detector differential offset used to distinguish valid high-speed
> signaling from low-amplitude noise or idle. Each USB2 port has a 4-bit
> REC_OS (receiver offset) value and an 8-bit SQ_OS (squelch offset) value
> stored in fuses.
> 
> Add a SoC data variable 'has_rec_sq_offsets' to indicate if the USB PHY
> supports the REC_OS and SQ_OS register fields. If the USB PHY supports
> these fields, then read REC_OS for ports 0-2 from FUSE_USB_CALIB_EXT_0
> and for port 3 from FUSE_USB_CALIB_EXT3_0 and read SQ_OS for all four
> ports from FUSE_USB_CALIB_EXT2_0. Apply these values to the corresponding
> fields in each port's USB2 pad-control register when powering on the PHY.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  drivers/phy/tegra/xusb-tegra186.c | 57 +++++++++++++++++++++++++++++++++++++++
>  drivers/phy/tegra/xusb.h          |  1 +
>  2 files changed, 58 insertions(+)
> 
> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
> index 82f5c6c8f6a8..8bfc340724e7 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
> @@ -27,6 +27,10 @@
>  
>  #define RPD_CTRL_SHIFT			0
>  #define RPD_CTRL_MASK			0x1f
> +#define REC_OS_PADX_SHIFT(x)		(17 + (x) * 4)
> +#define REC_OS_PAD_MASK			0xf
> +#define SQ_OS_PADX_SHIFT(x)		((x) * 8)
> +#define SQ_OS_PAD_MASK			0xff
>  
>  /* XUSB PADCTL registers */
>  #define XUSB_PADCTL_USB2_PAD_MUX	0x4
> @@ -81,6 +85,10 @@
>  #define  TERM_RANGE_ADJ(x)			(((x) & 0xf) << 3)
>  #define  RPD_CTRL(x)				(((x) & 0x1f) << 26)
>  
> +#define XUSB_PADCTL_USB2_OTG_PADX_CTL3(x)	(0x94 + (x) * 0x40)
> +#define  REC_OS(x)				(((x) & 0xf) << 9)
> +#define  SQ_OS(x)				(((x) & 0xff) << 14)
> +
>  #define XUSB_PADCTL_USB2_BIAS_PAD_CTL0		0x284
>  #define  BIAS_PAD_PD				BIT(11)
>  #define  HS_SQUELCH_LEVEL(x)			(((x) & 0x7) << 0)
> @@ -255,6 +263,8 @@ struct tegra_xusb_fuse_calibration {
>  	u32 hs_squelch;
>  	u32 *hs_term_range_adj;
>  	u32 rpd_ctrl;
> +	u32 *sq_os;
> +	u32 *rec_os;
>  };
>  
>  struct tegra186_xusb_padctl_context {
> @@ -935,6 +945,15 @@ static int tegra186_utmi_phy_power_on(struct phy *phy)
>  	value |= RPD_CTRL(priv->calib.rpd_ctrl);
>  	padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>  
> +	if (priv->calib.rec_os && priv->calib.sq_os) {

Can't you use 'has_rec_sq_offsets' check?

> +		value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL3(index));
> +		value &= ~REC_OS(~0);
> +		value |= REC_OS(priv->calib.rec_os[index]);
> +		value &= ~SQ_OS(~0);
> +		value |= SQ_OS(priv->calib.sq_os[index]);
> +		padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL3(index));
> +	}

I believe this can be simplified with FIELD_ macros.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
