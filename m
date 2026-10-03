Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F496CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 14:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYIoTWt/XNa2SdPVF1Ml5MJJeJkUJNTB/XgTbPDfNv4=; b=fDe+eK0rwHhrlW
	07ZgYRLnIbhXfiKxECK5KZa7Z3eyLQXCvIt8JJUtuunKkEptKLZPFmWIeSv4+liYkx4/7oGIOiiPB
	0GRnIL60lf4dIEFcf8dM579B2rORtDrthdDVgcIUA4TDiL5xEGgdTVXcjksILO+tdGnGzw+Gns+Gz
	9mhnGP/SAytEyuFc+ajyjP6m8GhFkRB53RhDqMa67r0ibXFHm9DN4AAF+r1Pw9AAi0MtLXV5fnjV4
	yFwmrCIadgssn4ivZ+MAYxBlDLDzz2AG3r4NsNF76sz/moM+paAFjvaHXhYpM3NCqsYlYyXIeeFbU
	uV1DndGt9y1zn7ZH54BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD0lz-0000000DcdL-1z4Z;
	Sat, 03 Oct 2026 14:31:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD0lw-0000000Dcd0-1096
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 14:31:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9D14A41802;
	Sat,  3 Oct 2026 14:31:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E95501F0089B;
	Sat,  3 Oct 2026 14:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791037891;
	bh=85VSlzMBZ/eH8Sf9Ij3dGa3YJSvPkW8LRgUERVbGizI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PLmpsGE9c/T69rpv7vmO/ufo+g++I2Hyh6ycU3gf0O2KWf0y3W6F89MJDY01+71cV
	 CjloGXnBQR7VifxMp/TE/JDxVD9FwE7QhPuMO6CbL/sRGz0E6AgBXE3xopnG9HJD1/
	 AB82WDlyvelh0Avo6lQFHSHy0dGMy+ZjG04xX9fDQGZPyKbugZBV7bVBySJKzvpBxs
	 JsKest6WZImHDqR+e4u35x5nh9aChF9aHZJhqXyOoLNp9A30HJp2DRTM8hjaMi7Uve
	 mUgWWPObp32GRb3LYZecjT5kOIROs+CZzi3EOmuloL+lcSFZgfAiewG/X2rB2kJ9ci
	 dFEEBH1OY8sDA==
Date: Sat, 3 Oct 2026 16:31:28 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	JC Kuo <jckuo@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] phy: tegra: xusb: Add Tegra238 support
Message-ID: <asERwJjj3eUMm8Kd@parshuram>
References: <20261001-tegra-phy-v2-0-3e453b1fb271@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261001-tegra-phy-v2-0-3e453b1fb271@nvidia.com>
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

On 01-10-26, 14:28, Jon Hunter wrote:
> Add support for the Tegra238 device to the Tegra XUSB PHY driver and
> add the necessary device-tree binding documentation for this device.
> 
> This series also includes a trivial clean-up patch to use the
> dev_err_probe() function in the Tegra XUSB PHY driver instead of open
> coding this function.
> 
> This series is based on top of the series that adds support for the
> Tegra264 device to the Tegra XUSB PHY driver [0].
> 
> [0] https://lore.kernel.org/linux-tegra/20260903071937.533646-1-waynec@nvidia.com/
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> Changes in v2:
> - Dropped extra 'err' variable from patch that migrates to dev_err_probe
> - Added Krzysztof's Reviewed-by for device-tree binding.
> - Link to v1: https://patch.msgid.link/20260921-tegra-phy-v1-0-83466bf9a7cd@nvidia.com
> 
> ---
> Jon Hunter (3):
>       dt-bindings: phy: tegra194: Add compatible for Tegra238

Somehow this fails to apply on the current code, can you please rebase
and also check the sashiko issues reported

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
