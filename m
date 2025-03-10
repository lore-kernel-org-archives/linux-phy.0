Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B32AC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 20:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYMMieKg8SzsLefydpDbACmWke/ZtgAi6C7HlOLM7Rc=; b=LFLTIeF3rTa90B
	VskMMMDHPM+FXNVUswL/caVkmbSoPprfYOXIOX7yws7ttMfE6fvpBW0J2rOA3BLL18tvQYTi4H2n9
	wLNIPCBPO5JRiZ/5+RPx4RKnBgV6M1IIRnIVNRvW160pStxAX/onJiVqczdtgUiO3K6FbT+myUANI
	FDCyE6URkMIv2qudybnV60q28j0tL8hftYd8X9v7/XqqvVWBTpp3siz5QkcWu2OMKWwcZhCQt71hc
	R+6hdk4ghXWounG0sdWnuyzTO1q/Ex+oz8zWFi9hS6JxO+wmJ2BUTKgrRmg2z3iXFqoAxkP8hKBc9
	2muNw8C7uZ94hmXvxTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjba-00000003rEn-44Rm;
	Mon, 10 Mar 2025 20:20:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjUp-00000003pHx-405V;
	Mon, 10 Mar 2025 20:13:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 998205C5EAC;
	Mon, 10 Mar 2025 20:10:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75E97C4CEEA;
	Mon, 10 Mar 2025 20:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741637587;
	bh=pwT39giEdOzrATke/Go754xjWmqpTejDczTvTc4LmLo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PvFJaMHd1RdC/g5djtx22/46v3J0qj+Yc9d2cSCc5paDGT9IqCAr9+Qtb3VpOwbJP
	 qU/BwFi1nA67/u6vFnq63ncp06yks3dG7bCewpylTwre3m2YOSNYu5gNYy7rjdNI27
	 c/QGUicBRGAbxLi10hU+d7deZPr0mc56WF/HJNGE/U9kFPYzShWcPDyrqN6g5y47QV
	 nm8rftZFmJzaGo0vBPBSiH5JwBjYN5yD1b5uiwUf+X7Vt2oVI3v7IOmzwMVqo9glbL
	 aD8DtcoVJUQ/Um3KuV8e5DIcFJdcz1HvSr/pOjEjWeylgPZn3B27yxybGOVqZGS0J1
	 SR13cVMqi3FfQ==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20250307005712.16828-1-andre.przywara@arm.com>
References: <20250307005712.16828-1-andre.przywara@arm.com>
Subject: Re: (subset) [PATCH v3 00/15] arm64: dts: allwinner: Add basic
 Allwinner A523 support
Message-Id: <174163758109.467704.5227333743858525157.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 01:43:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_131308_037539_87519A53 
X-CRM114-Status: GOOD (  10.31  )
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


On Fri, 07 Mar 2025 00:56:57 +0000, Andre Przywara wrote:
> this in an update to the series introducing the basic DT support for the
> Allwinner A523 SoC. It now comes with DTs for three boards, using
> slightly different packages of that SoC.[1]
> Functionality-wise it relies on the pinctrl[2] and clock[3] support
> series, though there are no direct code dependency series between the
> series. Two binding patches from there are required to pass dtbs_check,
> git put their patch IDs in the footer below.
> Compared to v2 only small fixes in the NMI controller driver: renaming
> the struct to better reflect its new usage, add adding the DS pin to
> the eMMC pingroup list. Adding accrued tags on the way, many thanks to
> the diligent reviewers! More detailed changelog below.
> 
> [...]

Applied, thanks!

[07/15] dt-bindings: phy: document Allwinner A523 USB-2.0 PHY
        commit: 1f7af7f3c353ae3b384a66a82c5074ac28901160

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
