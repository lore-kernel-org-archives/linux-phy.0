Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B4ACCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 20:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQZgxjfCnq9MdvfFAc24SoBGn/Klo5kGjI8Gpm8A5T0=; b=d3c5/Z8fclJ3+k
	abzgJofIW8vX8qgI+TjK/jT42K2I7jARYVqD7RuQnANfRXKIqPue2r4p7PE974Lvo6qlnSqjaOmTf
	/oesNgxNPElcvvtGwLYJpeSRfd9eH/u6yqwbjAxbTlwzZ7Aq8qB4dANhojqHqqBZmfRdxQHxrZ54a
	pXQPIF+Cc3vPYlZ20wjakatUu/nO0Jm7y+MfAs6ZJ8SRlqEnBLBt10fmjt+VFSwfgnSkPAaB35fqY
	F75JOsm57WqAFBEDCdLxb3vp2aV8ZASRHc4ZsIFnifBJr7YlIzF4hwpi9ASQJmypCBes1EjVy2VB7
	ZVt93tBWbDWzPsMQBEbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x8K-000000074T9-214J;
	Thu, 09 Oct 2025 20:21:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6x8H-000000074S3-479f
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 20:21:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 818AA4325E;
	Thu,  9 Oct 2025 20:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D65C4CEE7;
	Thu,  9 Oct 2025 20:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041261;
	bh=aGXv2Pk1gOljG1ekFh588VDqSTo56s2dZdKfJW6cPzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=orz/AtsGM6gEQLKwHfX7n60y9MSGapSc45ur62ZtGrZGEq9iATmok6hqinw33rPER
	 KzCFSX8p0uMsP6AP4XaT6JmfxdOvwNLAC+18qsJXqAKr0jLU4I4J8rWa7zQ2OuFVWS
	 N9MxhXC+aHPI01Zsy47EyXyIecCP7FVvYybMPPdYvnhrs5a8A7YPL16KgVXVJ9ogDP
	 ltM1yqLBKLoDbvHJc18WhUg2HiU3PsnlY6cT0xnqs1wg8RRJQkDJKKO584KCJIB5xd
	 PwrBS/sg0ylF2vrPxuNQ/vNretFKYnjN+YebTr5aaeuW3bUratIC4DmQPPATNrxO3C
	 /TD7E8U9212VA==
Date: Thu, 9 Oct 2025 15:21:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
Message-ID: <176004125928.3290331.16433221750974859532.robh@kernel.org>
References: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_132102_041716_BBAA4C61 
X-CRM114-Status: GOOD (  11.68  )
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


On Mon, 06 Oct 2025 15:51:53 +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY can work in 3 modes:
> - DisplayPort Only
> - USB3 Only
> - USB3 + DisplayPort Combo mode
> 
> In order to switch between those modes, the PHY needs to receive
> Type-C events, allow marking to the phy with the mode-switch
> property in order to allow the PHY to receive Type-C events.
> 
> Referencing usb-switch.yaml lookkied like as a simpler way to allow
> the mode-switch property instead of duplicating the property
> definition but it causes some issues with the ports definitions.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Depends on:
> [1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
