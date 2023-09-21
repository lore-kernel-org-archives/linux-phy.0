Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C93E7107E
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bP0n/RdwtBGn9sr+4uzXEOikMtgOPDnnpP76PyPvW2Q=; b=x0OcfYRJunwjbK
	rpDmfz1x6Y6ckPcV/XMLigGCrQEJJsYkzY/nl2lUEwXTgfSYRz1rNDlZ1u30BxKf48KGON0dr5mSa
	rWP0JEvbfeh40ENjuF55ySzqmI+qZ24bKHhCd1WhuJYHxJcKXGuLU4QvdJ0e3S0CegVirFN9fSyHb
	CJtIoTTgG/fHxOU/JR/YYstX7QPx4/o4YvNIxVp6ytox/mVjlO2QKLZddY9BO1lDX1FG2PMCJ65MC
	H3MK1yqBAJnjsiefXNwZci9pdtDYfKrHYFzH4JmnJs/eFSyv8B5zKLXfLHiMUZZ9ouIrGd2Y1yUfx
	2ZxZZNJUTxcGhNEHHSKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgI-006H0o-1p;
	Thu, 21 Sep 2023 14:29:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgF-006Gxt-0a;
	Thu, 21 Sep 2023 14:29:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 51FB5B820D2;
	Thu, 21 Sep 2023 14:29:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E36C4E75B;
	Thu, 21 Sep 2023 14:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306560;
	bh=3KLcy3EQJ1puV3dzsk0w22+qc/0ywWz1dFJWwZrszw0=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=ZgN2pHpaTAJywaqK3L2xHTEt38W3XyjPeK6GHDRQUF05hLwTBcXgmV4+tnzV8nRn4
	 sgUxL7hA0SkOSJEh786iIP01Da9ywW645pkyx9mS2uEPNHNYAqFJ7j1godAfJh5U5p
	 EM5WqjyCeOPb0wuvNrbftYywu72dh3CXaD+EoXVccOOfcQsnVi0AD9GjoSzirNX7nO
	 RoDIOT0Fvp1XA9D2MVhiIaphWcKxUkaZboNg9emaGKCYHG4RtGExTbxPkGKM8M3gEp
	 tJNM4GNgAYKLCcCvVDovR+WhqCNAelh6sVaOxA3D4BLh8OYDO+N8nU2DXfNvrWHOt7
	 8oZc8PsnCmtiw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 catalin.marinas@arm.com, will@kernel.org, kishon@kernel.org, arnd@arndb.de, 
 geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
 peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <cover.1693468292.git.quic_varada@quicinc.com>
References: <cover.1693468292.git.quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v12 0/4] Enable IPQ5332 USB2
Message-Id: <169530655544.106263.15705008242028949711.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:15 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072923_361418_51F01AF4 
X-CRM114-Status: UNSURE (   9.32  )
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


On Thu, 31 Aug 2023 14:47:42 +0530, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling USB2 on IPQ5332
> 
> v12:
> 	DTS:	usb2_0_dwc -> usb_dwc
> v11:
> 	Driver: Rebased to accommodate https://lore.kernel.org/linux-arm-msm/20230824091345.1072650-1-yangyingliang@huawei.com/
> 	DTS:	Sort nodes in alphanumeric order
> v10:
> 	Driver: Restore register success print per Dmitry's comment
> 	DTS:	usb@8a00000 -> usb@8af8800
> 		regulator_s0500 -> regulator-s0500
> v9:
> 	Driver: Since the driver code has been picked up for merge,
> 		(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
> 		adding the coding style fixes alone in this patch.
> 
> [...]

Applied, thanks!

[1/4] phy: qcom: m31: Fix indentation issues
      commit: 90f7af497a78bf920a63119f2c7e9dcd98d028fe

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
