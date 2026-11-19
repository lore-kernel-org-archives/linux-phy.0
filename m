Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD215606A320
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 14:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Hc/QJx3d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ofABxdmM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=c/1HI/qES5o22B2ROu80p9W5MSAOC47ewVcQWOUFy60=; b=Hc/QJx3dZ6gGmClgLDqSLhuur7
	2HDh+MXXSYPVGXP6xoh9h9mzfjU0X64FqQsRHZtujZ3Xk3rKgU9PxalefZF5rLgFu2siw+dwu3Y6v
	DsVrx8Ajark4vTAov9MUu3iY1V8ZZd7q9p21yQPPYKoRbxHR2yOWDZ1EUejdDcgOw3QJC2YIlVQbQ
	61C/C3QABXOXPsaCAY09fB3Qdx0kerlxdqgG3Bky4SUjD4Bn1eh9k+TNPc1IXEk5/XkQidNjXnawB
	pqZiUsgu9V3BDFFyN0tpIrV5IAUln3REqso37GxPE06h7RO5QirnEkmxnG2tYL1X8SdMNfYFGKOTE
	E5FhGfHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2y7-0000000CCIg-1Av7;
	Thu, 19 Nov 2026 14:18:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2y5-0000000CCIH-2Dnt
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 14:18:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D72CC60139;
	Thu, 19 Nov 2026 14:18:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 922541F000C4;
	Thu, 19 Nov 2026 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795097907;
	bh=RigG/IIrtQGPjiX3IVH3cpZVDq33wmqZHZUoX+hefIc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ofABxdmM6JNAZpa5ROmlASSoJu2N59+mq2FfadCmx0tnn271Jz8ViopgORKeHMJzn
	 o0UEsadPfN1lfEB1ze7EPLwgpGkCd97L12Ihub2r8JKomDUCkS9fHH2lILkUeRRylV
	 90s6DzFQgiR7LiI78Amc5L/6B5AH1WaLQa2OD0enE9rjDYZSU4OmV6u/+S6zHDwVRg
	 g9TcIuibDd/TBO29EGdmSnwVO/qhs8dDnhhwVxRbEm+xcKyA5CagHgi2XAxMPwUpgu
	 1RFnJVEtBwwyMN0+TBBEKkP11kFRbaXLKse5WyBcGGmJ+hD8Cwhv/fZVdYphWGJXUg
	 piqTy+nfQqaBQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Francesco Dolcini <francesco@dolcini.it>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
In-Reply-To: <20261116162409.218059-1-francesco@dolcini.it>
References: <20261116162409.218059-1-francesco@dolcini.it>
Subject: Re: [PATCH v1] Revert "phy: freescale: fsl-samsung-hdmi:
 initialize default rate"
Message-Id: <179509790520.1342948.6264004404640336761.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 19:48:25 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 16 Nov 2026 17:24:08 +0100, Francesco Dolcini wrote:
> This reverts commit c01ccf91b257741e9edc374a465126bae9ae4711.
> 
> Programming the 74.25 MHz configuration at probe fails on i.MX8MP boards,
> the PHY probe aborts and HDMI is no longer available:
> 
>   fsl-samsung-hdmi-phy 32fdff00.phy: PLL failed to lock
>   fsl-samsung-hdmi-phy 32fdff00.phy: error -ETIMEDOUT: failed to configure default rate
>   fsl-samsung-hdmi-phy 32fdff00.phy: probe with driver fsl-samsung-hdmi-phy failed with error -110
> 
> [...]

Applied, thanks!

[1/1] Revert "phy: freescale: fsl-samsung-hdmi: initialize default rate"
      commit: 11cb7e479a15b631cbe5f9038a28de0a1966853b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
