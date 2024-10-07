Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD2ECFB45D
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 20:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=negkwG4LLKZ8FxMERDymWAsiBYKIN/zV9TD9SNFPWbA=; b=Iswka01ADSjROA
	xvChSWDRSZ0QDzokgKfPHksAPzJ6uPWZvop89qn4UvBCpqj2/zDVODg7kQcrJ8bYaBOC3PPiUoxLP
	jU5APEPUTK6UnZO+mmGG0QMPfhmE40/AmttA70c7bpBGqZSYezxwYzX5/v9GboYxs/A+EpI2fhDW5
	qnadyrfE4mpbXO31AMlzQzA/g/XhjT/Ie8f8sg5tae/FKD1d2w5woqWkkF+TbWDw/OVffT3fPZcRE
	MAFH4CjbQ3k+uBV25w2vC91vmOKGp8TGXHT8PBb0rHFmbQQmyDT/Y5f5zCMV6FsKnaXafYVp7HFkt
	/lbSzecTDcjl2jIrvsQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu5z-00000003huk-04eW;
	Mon, 07 Oct 2024 20:12:43 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu4f-00000003hil-11s1;
	Mon, 07 Oct 2024 20:11:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 35EFFA42588;
	Mon,  7 Oct 2024 20:11:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B03C4CEC6;
	Mon,  7 Oct 2024 20:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728331879;
	bh=SYtr/4gcSfXcVr29qn4rBMAGsvYyAgt2rpNPLMtwFiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fCa+E6pIleCBfL6XsVkaU1LPzTBKDAQf7WxSkh2HJJSD3JvSGpKsMLuge3IddJaJf
	 iRtF4nBquybECuafmB8UnSogqKd9tS5KkV0Mw2E+UhumYUkqvWXkP80EOUfPuFEMzf
	 tiV94HGrZhJU0FFyZEH44HNGWq7P9Ez/jKzsaAbM4XbdopiM9u58lQNA0er3YZyPmW
	 /6pDQpBzOurYqzhv8NskDGhboqjXyJxKPmiV3kjhg/oLt6q6fBZtf7GYxAryQd0hHg
	 4ZkJk1Wnk4LVnmUhrhgnNoSsuTozeO7zwy+DU2CGQ5Ci7a7/ssQ3xOVT65TQToUfmu
	 FL9rHmodNmpRg==
Date: Mon, 7 Oct 2024 15:11:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
Message-ID: <172833187233.2320517.14578580436121276126.robh@kernel.org>
References: <20241007162732.2450168-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007162732.2450168-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_131121_367044_304F90ED 
X-CRM114-Status: UNSURE (   9.28  )
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


On Mon, 07 Oct 2024 18:27:32 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml and rename it according to its first
> compatible instead of the unspecific rockchip-inno-hdmi naming.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/phy/phy-rockchip-inno-hdmi.txt   | 43 --------
>  .../phy/rockchip,rk3228-hdmi-phy.yaml         | 97 +++++++++++++++++++
>  2 files changed, 97 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
