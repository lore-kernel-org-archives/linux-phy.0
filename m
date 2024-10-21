Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B04AD15D95
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 13:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7zyxLBJrBXYWTVBVo2Hs8A5hugvjiy/WLrTdHbRRns=; b=C6yk+QqlGwxBS2
	DoXDWw1zuwE4nXbyUqG8IXkB2jYQEVgw/WtIcejBwc+309R95FW4qYh7qPM/ImLSeYOWxmMGYPWcB
	N6+cO7hPsFeqinUppv3zU96qJ6FuhIdSSV0qLMefJsLl1xx3Sn1Qu5EuUZELmBDv3fgWr2ThvDEVL
	9j/jAZSycj46C/20NNZ6jDodXPiLJih+yudHqcmvrOlh/GEYEfkuO498NZDZQlkBf67HiNqxUYHKA
	+9ErZFFxuf4ohulhsInjXrzL2sIZQlkMP9mVpD82PTNkoRjej2qlNL3K5XhyRmZZQm+FGh3gU6SdV
	AavFySEklSThiYwRx5MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2smZ-00000007UWX-0Ajc;
	Mon, 21 Oct 2024 13:49:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sSr-00000007QGP-1qlE
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Oct 2024 13:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=86YjahNXFYDJSZZ5qYJlPMZSyBcwmknmKsGoTDnWxR4=; b=aLaSDzvnQjcdwmEon5YMjN5v5i
	8Q0ZBCeji3Wseua3nNMXjcbRhIt/Hxrgvktk0j8/tPaU0q4Ag9bdqc5wLSoi6ZokivShdt+s5LhjP
	FLvtjShAi0YPL9tipy54qFtG+cDSR4orVb9wkC5F5XCDO1DcGIXWzNjr1KBbLLPBeI+gkJzmW2Ggm
	b6x+igSDufklj0bw47Z+gyll2Ubhvked/dS5DM0QuIRJLuPHmszwoz/gjvoyGYS2zCYooOQe4AWVM
	FtIYyVUGJSGDHk3CGMjrFB2TBEjRnPayuatHU3kvfgW0Omb/HxtbbgBGjR58qFeBbEGMeJvFgeK4j
	AeD5xR0g==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2sSn-00000007xJP-3ml3
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 13:28:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 675D85C5674;
	Mon, 21 Oct 2024 13:28:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80200C4CEC3;
	Mon, 21 Oct 2024 13:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729517325;
	bh=I/lqGfR6DjRwRm7x77Ce84OzvDVzs3+1+CsEADwNolo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JXXfwab4dNShaGhHGRWIl//4ACrC9bDO2LurXIq+yB26mxrFkuaJh8yl9VnF3G8Va
	 jw1VH8el1Akp5ByhaXYe/m/fByNwNmM6DRRW1z1mBaKmVsZRRXD9NQ3fI0KABx0GV0
	 KZOp605UfqLoLlZMnamVV9C6Gl3dIXFl5Qd3xleNzS2Y2cH1KTUTcnkJJeIvSye2qO
	 oFRxvjLC/pUMr2Fj9gkJIAxLqqxfr4+I85y5rxWiAO8MyVJjojLE9jpb0A8KLY1aR5
	 Y4q7uMf/yU3j7lOElSiLfab9o3Ei8So+bvLhaK5QmGV6Mu0YSbjlaetx+MDWxlzWje
	 /uAwumpfztBlw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t2sSt-000000001Bv-2NzU;
	Mon, 21 Oct 2024 15:28:55 +0200
Date: Mon, 21 Oct 2024 15:28:55 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-ID: <ZxZXFx9T-9Uw0Ndw@hovoldconsulting.com>
References: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v2-1-1b11a40baad1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v2-1-1b11a40baad1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_142850_183522_CB7BB62A 
X-CRM114-Status: GOOD (  10.10  )
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

On Mon, Oct 21, 2024 at 04:10:21PM +0300, Abel Vesa wrote:
> The PCIe 6a PHY is actually Gen4 4-lanes capable. So the gen4x4 compatible
> describes it. But according to the schema, currently the gen4x4 compatible
> doesn't require both PHY and PHY-nocsr resets, while the HW does. So fix
> that by adding by adding the gen4x4 compatible alongside gen4x2 for the

nit: s/by adding//

> resets description.
> 
> Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Changes in v2:
> - Picked up Krzysztof's R-b tag
> - Re-worded commit message according to Johan's
>   suggestion
> - Link to v1: https://lore.kernel.org/r/20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
