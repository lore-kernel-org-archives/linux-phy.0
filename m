Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7502BCD98D5
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uoZSF0JvTYobr/OdVgPYTSPqKoaY16HliuBRgAh0YU=; b=QL5pwGOMmNu2dK
	b2W215ES+/Ec64MUdh20thTjj9qE1mJz5t1j/au2+W/6C8dywxXkH75lRtD30UsL4E4kUHVoID7gW
	4u6UNE84Tw85NtfBcuFxjuYTHUvJlsOt8zx3SNUgYZxyBtIQchjdW/L1mXR0yy0uSSD2WcD+VEPHv
	K5nyT5yhL0rpRxBQrC2W2kedMFQWvZNvK1EMeD13Y+p6UZtXg9FAuaSv+zFVs+vBSe7XDCn8CowGy
	uW8k+00mkzMwci66TG0nOMQrq2MzXwvrNlOafYw9bE219s+b52t0GTAWkHdyNg9F0sWg3WPjdvRu+
	7EL9pbzw3ENpiCglReIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRT-00000009goY-10x0;
	Thu, 11 Jun 2026 15:35:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRS-00000009goL-1rZM
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 38D4343C38;
	Thu, 11 Jun 2026 15:35:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 614FD1F00893;
	Thu, 11 Jun 2026 15:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192138;
	bh=FiPKvpg3Vb0S2yd0YOEXvcnYXILER1tL8jHfs8aWZyc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=DdKr/4RfzC0xZtIXcmbfHh75mAyhD5WMUpLozUi4lzDS0BSRB0srLHM9GdvWR5m4J
	 bHJ5ZxmWCGYHV1QYeVsoqYuoM0iYdO7fesXdhrrYmSixUyO5m1KW1jeNXmaJL8lEi/
	 7hGuXbq3QDVTf2Cad0Bt7OFItWS/RTRG8q9lFm6/n5VMsLDHuxfo2+/wZLklt3adlC
	 oGRd2rKgRU+4FS3UvLgKPYWXuxWwtoS3wktpCz+loVNbZ9pOBwUrFcQPnBsm7vw0wH
	 pcGd68GjewA+hh4zpCu63mWPONWlx5f9A1c/Bu/S/EnQNE7l2tWoyGuRq8Sqsq/KjZ
	 sTJ0khxrntGAQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Tanjeff Moos <tanjeff.moos@westermo.com>, linux-kernel@vger.kernel.org
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH v5 phy-next 00/16] New Generic PHY driver for Lynx 10G
 SerDes
Message-Id: <178119213601.568088.6988958637317642909.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 10 Jun 2026 18:19:36 +0300, Vladimir Oltean wrote:
> The 10G Lynx SerDes is present on NXP LS1028A, LS1046A, LS1088A,
> LS2088A and other SoCs (unsupported here). It is an older generation of
> the 28G Lynx present in LX2160A and LX2162A.
> 
> Modify the Generic PHY driver for lynx-28g to create a common portion
> (lynx-common) and add a new driver for lynx-10g and DT bindings.
> 
> [...]

Applied, thanks!

[01/16] phy: lynx-28g: avoid returning NULL in of_xlate() function
        commit: 493f8fc57bf685e23d3c924dbd787249d47fb972
[02/16] phy: lynx-28g: reject probing on devices with unsupported OF nodes
        commit: a45f9dac20b6757487502109feac0298ec78f3bd
[03/16] phy: lynx-28g: move lane mode helpers to new core module
        commit: ac0ffe7cf1221182f4068d8aaf825b01655c7ca9
[04/16] phy: lynx-28g: move data structures to core
        commit: b7021a4d3129aeb0e25c3edcaf3a36199e73f652
[05/16] phy: lynx-28g: common lynx_pll_get()
        commit: d4550ea4b161202607e31b0b6c6c34fef7e2b797
[06/16] phy: lynx-28g: generalize protocol converter accessors
        commit: 51c25f4b0c883c1b7eee5f8f3aa0c2245eb6351a
[07/16] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
        commit: 09697afa157df0a420fb6b107a71bb45dd32aabf
[08/16] phy: lynx-28g: move struct lynx_info definitions downwards
        commit: 9515c35eaac9fc51717c8dbb5d18ec5a923b8342
[09/16] phy: lynx-28g: make lynx_28g_pll_read_configuration() callable per PLL
        commit: b1c4d866edb7aa62048f5e373586ac8580ef0ec8
[10/16] phy: lynx-28g: common probe() and remove()
        commit: 719a2da392349db052532db89637622a71d14d49
[11/16] phy: lynx-28g: add support for big endian register maps
        commit: c6c1d7dfd59b181b96b0909b63e140b0aa61ac59
[12/16] phy: lynx-28g: optimize read-modify-write operation
        commit: f64ef1995dd6f902da0bd3bc60c72c825098b652
[13/16] phy: lynx-28g: improve phy_validate() procedure
        commit: f124b54b19223c85dabd9421ec622d8256e240de
[14/16] dt-bindings: phy: lynx-10g: initial document
        commit: a7dc4e95d31c6bc674b24697aacadf7c6f1cbe6a
[15/16] phy: lynx-10g: new driver
        commit: 6dc92ba487a21b923eb409357ffe966a6e9d2343
[16/16] MAINTAINERS: expand Lynx 28G entry to cover Lynx 10G SerDes
        commit: 61df73e12eb245adc54606de287cf8898b3a66c4

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
