Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A62C6CFB448
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zZRnGfyeIcVjx5/kLQyJ5XVmeBKlAC5JZA4dtqy9vY=; b=TUo9c50A6Z50DK
	RIAM9kyDcBEboc/JUNUchhORUpDGq83Vwhc/57aOLJiNWkAdSg9ar+Cz9kXUhq5ffqSliKQVIlRjr
	VXgPsXNrYLEogrpqvwDm7kmwbB4vIH+9wEnH++0uIlr3lPGLDrVozBZ9IDAkcTOPZSaTQZTCEEhR+
	DwVwJPGBgo0AIR0Qtv1P/m6ltNgX5Lneyd1o8PHxj6MwfcCobGAgdbFDSVsD8xRZBu24W58sbvnXd
	2qKOLIqKk1d5YwV/Vo/kAp1gpljOKz9hqUkv4Z6n6xyT8H8S3roAPPu3oxjuDXZsmVFS2QHka5M2u
	ccvtjZeWIwC4pPcYTFRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxq2f-000000032W5-1coH;
	Mon, 07 Oct 2024 15:53:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpyv-000000031ia-3dau;
	Mon, 07 Oct 2024 15:49:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 896BCA418B4;
	Mon,  7 Oct 2024 15:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B5A1C4CEC6;
	Mon,  7 Oct 2024 15:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316148;
	bh=S3COoiZdIFf6D1j3gJ1awjWFFgi6Ggt/jCMljKFYw7c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qj5L/uuv3ULO/yuK/wZwH96zW+kuYsPsSlE2Y6I14/VBBpGnmNuIK7EYQIYiN3729
	 tCFAPhyAU+F/mFguZO/OqX5ywRHu6TKrJ+r3MAhluXSmdR2b+W7ufcZ1LHgIV5jTi7
	 anmS0YfWvg7YzipzbwN9uW1YQOw12HIbr4vx/cICJDq3aizL9MEeb10B2mXnuRVZ6l
	 3a5P/qs60kHgwuEj0xDllF3PB3HqgGO0+l4Qs4t/94yWQRP8tKqZ47CUqrA17IcR7d
	 YRAZOVhEsLhtTCs7B4V29TcslDKQKvNJyInpBZ5QBe9SadJRk+6nCcFO+mWX7Ws1nS
	 9GsU0C4BkRbbQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, sjakhade@cadence.com, yamonkar@cadence.com, 
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 conor.dooley@microchip.com, nm@ti.com, srk@ti.com
In-Reply-To: <20240930095145.3004053-1-s-vadapalli@ti.com>
References: <20240930095145.3004053-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v2] dt-bindings: phy: cadence-sierra: Allow PHY types
 QSGMII and SGMII
Message-Id: <172831614467.134526.16993157211985653714.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:19:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084910_023793_1472255D 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
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


On Mon, 30 Sep 2024 15:21:45 +0530, Siddharth Vadapalli wrote:
> The Sierra SERDES can be configured for QSGMII and SGMII protocols. Hence,
> update the bindings to treat "PHY_TYPE_QSGMII" and "PHY_TYPE_SGMII" as
> valid values for the "cdns,phy-type" property.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: cadence-sierra: Allow PHY types QSGMII and SGMII
      commit: bbcc9e2bde693ec3fc6aab650abaf748eb9f38f9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
