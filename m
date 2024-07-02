Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27B25C3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgqreH8+/Qo7aKMoxWBFRXL806KY3bBaG96QZ/Sq0fY=; b=eCfqRc8O6X4Nrz
	lyWQ1B8dhB1liU8lmUChhIiLOFeID0pchCz96R4TrEkGuvRYLIe6rvTnGvglT3amV8bQUpKsgYnPX
	tT8W9a6GNsgxyMQo8Sg/gPtg+Psirw93VueWHsqWB9wckIM+cK7J+1kGAbS46j3SsMQX1uorzGBJr
	dUiIxyWbHTMWpJgEBZ1KwGpmG4h6LOYD+ro+GA3cE8UEhJPDWXAKXLTkCnSqfMRlXLg1loibBTlNO
	kUcpXFoY6Rxvmav24G+sL47uAyWvKM3X6rSFGL/9oEDxD6kYcSXdXAgxw4K8lB5T/XT1UhtCAXiWv
	E7pepzelS10yA0vx7pYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgm-00000006seb-2h6L;
	Tue, 02 Jul 2024 13:36:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgI-00000006sP6-23r5;
	Tue, 02 Jul 2024 13:36:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8D4B619E6;
	Tue,  2 Jul 2024 13:36:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A917EC116B1;
	Tue,  2 Jul 2024 13:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927385;
	bh=HknsU8WwUKZqagKR9KNNTTxKbEJAn5qGk/RSvr/NWVY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O6wXdR5TV241y4FfFjaal25QZYZ3TzvCkxVg5yze72ZTpON6J6YkjGd1apJDiHRQT
	 URJjfhal5XJ3SJDIAIPXUJ/XeFoRGss92nhnnkUXKLGlFQ7MFFs7w2K5kVhji3OEEk
	 tY9iHT6iXOS1qTaFVZT6KTqQYZ0SjqImOITS35wXeNnulXpXlGzyIg5E9IKp2X7ILp
	 pFz67S02HQ/yWTUhfiX/cRj6r9FV0o3WXPFfntya/G9oqWn80DCi7ctAE8oxCBLyot
	 YUCa8VFv6jZgEoGFrBrITWYz+u+ceVHoUldkC9AwrulKiPbqcs2rmDgHn04s8bu1O9
	 +BifWJnF5By0g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
Subject: Re: [PATCH 0/2] Add dtime and Rx AEQ IO registers to
 phy-airoha-pcie driver
Message-Id: <171992738030.699169.10416915810808814993.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063626_634561_538DAFEC 
X-CRM114-Status: UNSURE (   6.71  )
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


On Sat, 29 Jun 2024 19:51:47 +0200, Lorenzo Bianconi wrote:
> Introduce Tx-Rx detection Time and Rx AEQ training mappings to
> phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
> support to En7581 SoC through the mediatek-gen3 PCIe driver.
> 
> Lorenzo Bianconi (2):
>   dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
>   phy: airoha: Add dtime and Rx AEQ IO registers
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
      commit: 5854d0aa5226816575d2323e95bffdc9267d78b1
[2/2] phy: airoha: Add dtime and Rx AEQ IO registers
      commit: 2a011c3c12e8de461fb1fdce85fa38d308c4eb8b

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
