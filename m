Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3470C5B552
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jun 2025 21:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mVOzn+AjLh4J6NniW2j+nlteZOdaypubawBAPj46cg=; b=CQwcOJ9Ax4LjAW
	DBzmCQKjifmD015c4cGHpv7rzHWiK6s5A9h9TTGAmCBFYVCMrZ7J6H9scUVwX0u65w1udsPKOlwak
	5atzbJaRbS+HPz24Nm0f8rUgdprqIbq18kGNfo3ukw9lraeDnYoXVp7abwjudVWF5hZ4cgKmhfzPe
	HlhUN1JfniBE94+TN8nWXoFzswSrlzPUmOinZ0j9Khlx2iv9g72TEmPufkYBBytj5geYhU2NVnif3
	+xduna1yZr8qVcFDreHtcZgnLOWDi/MiUblK6nMbJRbMySpdF2IAU24rw5w77TpWUrmIpwGID+z0C
	w5mvKzwPIkmnbUuhptsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uONLM-00000002yN3-1IFk;
	Sun, 08 Jun 2025 21:14:16 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uONLC-00000002yMc-3EvG
	for linux-phy@lists.infradead.org;
	Sun, 08 Jun 2025 21:14:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=5sk27JfuWcF0bH268NwzUVGeJr+yZGPV/LI7KbrbOYc=; b=0hfZ6/UtGOC+uFXgCJTereXSjs
	jzQKWR0fLiKgyagBXy+tJB7Hpmf+IfSDR8i1YJOai7pSXzaFbG18uwxlE2NiH2gAPIHuTObpFmOfk
	Cg2g3drf+A/ktxCiVtq385vOEU6fY0XSSAyCjcXKuljchcpqsC5kRmyGf3F2zt8BC4U4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uONL9-00F6Y0-LO; Sun, 08 Jun 2025 23:14:03 +0200
Date: Sun, 8 Jun 2025 23:14:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert Marvell MVEBU PHYs to DT schema
Message-ID: <34b67ca9-60f8-49f5-a457-c107bf846767@lunn.ch>
References: <20250607212609.743346-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250607212609.743346-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250608_141406_813496_C812B7FA 
X-CRM114-Status: UNSURE (   5.79  )
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

On Sat, Jun 07, 2025 at 04:26:07PM -0500, Rob Herring (Arm) wrote:
> Convert the Marvell Armada-375 USB and MVEBU SATA PHY binding to DT
> schema format. It's a straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
