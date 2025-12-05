Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78FAD374B9
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:MIME-Version:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RhrYk0OV9jHzaLmQigR8dlZqPp8sIRLNNe8yBw0OAmw=; b=4bt7KOQm9LJo9pvvgHXzN/0qN3
	vUcjZjYfi6yjAijooniyFxYXLtWrMzveztjM/4mIrJPOYjD1zKHzMu7aTFNo7QaPB3Lw5YUw6HjiW
	fsWQJYOAOYICA/sv51dL/FXy2QbhK3n4TYJ2WdWhv9dFxi0521Y8NFcBrTm1rk/hbX0plsx11q/Aw
	yQff6V/cupGjW3mfBU7sU7ABA5ag7Lq1vrXCXozvkHt5yZ9sMCxEe45eOPsBWOB7tzgvsO303VA7V
	HVhh8JtrlT6WB9w+U5PM6XlUqdhObZ8TIhM5zi6fbiVIPJdNMDr9cmtIy2lAObWfs/MBTTBhoT0nV
	8dYiD4aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vReQ0-0000000A9WZ-2Mo1;
	Fri, 05 Dec 2025 22:36:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRePy-0000000A9TD-0Rtb
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 22:36:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CB507441D3;
	Fri,  5 Dec 2025 22:36:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B729C19422;
	Fri,  5 Dec 2025 22:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764974209;
	bh=fozoT2mIHoqlaC/dIcUWXWiqeKFS54g8S0cfQ4C96mc=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=qQ06qna44Yx7eukWkJ5er0z168gA9PNBFZ9s0IewUszxj7u+iap3qm3VxGwydyei6
	 SDlHlwMeQZguV/AjhbmqOIRiHqHjrhSA5mAI3W2RkUPw+P2CeK9QqkVlZGm2PeQ86T
	 HStDYp0ioSaWzKHhqrEqU8740sr03W9527l0lVv3NVNBgl13g7/HXlyY//3PqrK/c+
	 Tdh4arNZt2fBtLtA41+PowHDAt7bziXnsp7OP3+yPH3g0UxGqGAO135jj/Ny+pICaK
	 G3MuvxnJhYGlbmeykaMDGXQ0ayeYj5hWBIsTnbXarbZBqI8RVFdZrybkHCqNWcrdMo
	 nVXJfuY7XHr8A==
From: Rob Herring <robh@kernel.org>
Date: Fri, 05 Dec 2025 16:36:47 -0600
MIME-Version: 1.0
Cc: Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org, 
 JC Kuo <jckuo@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Mathias Nyman <mathias.nyman@intel.com>, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
Message-Id: <176497381829.863612.7431013132555369131.robh@kernel.org>
Subject: Re: [PATCH 0/5] Fixes to Tegra USB role switching and Smaug USB
 role switching enablement
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_143650_186614_E6050042 
X-CRM114-Status: GOOD (  25.00  )
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


On Thu, 04 Dec 2025 21:27:16 +0000, Diogo Ivo wrote:
> Hello,
> 
> This patch series contains two fixes for USB role switching on the
> Tegra210 SoC, as well as enabling this feature on the Pixel C.
> 
> The first patch addresses a wrong check on the logic that disables the
> VBUS regulator.
> 
> The second patch guarantees proper ordering of events when switching PHY
> roles.
> 
> The third and fourth patches then add the necessary nodes and properties
> in the Smaug DT in order for role switching to work. Currently with this
> patch series this feature can only be controlled from userspace by writing
> the desired role to sysfs as
> 
> echo "role" > /sys/class/usb_role/usb2-0-role-switch/role
> 
> with role being one of {device, host, none}.
> 
> Further patches will enable automatic role switching via the 'cros_ec_typec'
> driver which is currently broken on Smaug.
> 
> N.B: This series does not add a 'connector' node under the 'usb-role-switch'
> property added on patch 04/04 because for Smaug the connector should instead
> be under the node for 'cros_ec_typec' node and as stated above this
> driver is currently broken for this device. If it is deemed better to
> describe it but explicitly disable the node let me know and I will send
> out a v2.
> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
> Diogo Ivo (5):
>       usb: host: tegra: Remove redundant pm_runtime_mark_last_busy() call
>       phy: tegra: xusb: Fix USB2 port regulator disable logic
>       phy: tegra: xusb: Fix ordering issue when switching roles on USB2 ports
>       arm64: tegra: smaug: Complete and enable tegra-udc node
>       arm64: tegra: smaug: Add usb-role-switch support
> 
>  arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 13 +++++++++++++
>  drivers/phy/tegra/xusb-tegra210.c             |  5 +++--
>  drivers/phy/tegra/xusb.c                      | 23 +++++++++++++++++++++++
>  drivers/phy/tegra/xusb.h                      |  1 +
>  drivers/usb/gadget/udc/tegra-xudc.c           |  4 ++++
>  drivers/usb/host/xhci-tegra.c                 | 17 ++++++++++-------
>  include/linux/phy/tegra/xusb.h                |  1 +
>  7 files changed, 55 insertions(+), 9 deletions(-)
> ---
> base-commit: a8817ff3b5cd99b0a5af57a92d1a3a7980612550
> change-id: 20251201-diogo-tegra_phy-86c89cab7377
> 
> Best regards,
> --
> Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: base-commit a8817ff3b5cd99b0a5af57a92d1a3a7980612550 not known, ignoring
 Base: attempting to guess base-commit...
 Base: tags/v6.18-rc7-8-gf402ecd7a8b6 (exact match)
 Base: tags/v6.18-rc7-8-gf402ecd7a8b6 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/nvidia/' for 20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt:

arch/arm64/boot/dts/nvidia/tegra210-smaug.dtb: padctl@7009f000 (nvidia,tegra210-xusb-padctl): ports:usb2-0: 'role-switch-default-mode' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/phy/nvidia,tegra210-xusb-padctl.yaml
arch/arm64/boot/dts/nvidia/tegra210-smaug.dtb: padctl@7009f000 (nvidia,tegra210-xusb-padctl): ports:usb2-0: 'connector' is a dependency of 'usb-role-switch'
	from schema $id: http://devicetree.org/schemas/phy/nvidia,tegra210-xusb-padctl.yaml






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
