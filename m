Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C55606DE77
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 11:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ldwuYrJJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hRSOhJ1U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jgXhPiDbld4qkJMaB9AZroQM5sfgkMOxUIKA9fzAXyU=; b=ldwuYrJJgY6fLMDdKRmFOU8awb
	U+dpmat7cDMzWIvNGL4BFtZip+Omb39h2yaAKKgUKeITQfQNImmyYPmwmtSH/7MuvI/AaPNsOIhkW
	IGK+nsy0Nh/nBcBv//D+lRzE/FJ24oO2ohU+jhm4aNwtb90afyVjO+RtCIkUstiPIrfiQqFcr3smc
	P2rbCv59zZDEnTSb3IyWFI22xJSU+dKSpzCyoDQA11iNNVP5QoN9mlkj3Vu1fPQHKjNfLHfaf4WdW
	9+SfGwKn6HW4dUODjcz/autmAo8W5rty36KHrrVr88mNbAogVJKjG91J9EaDPpII4HzG0irQzX5Vt
	cPbYeooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSxY-00000009hY2-3TdT;
	Thu, 12 Nov 2026 11:27:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSxE-00000009hEb-0jFB;
	Thu, 12 Nov 2026 11:26:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 98D2745642;
	Thu, 12 Nov 2026 11:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E80DB1F00A07;
	Thu, 12 Nov 2026 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794482815;
	bh=pxwntV3ax7d8ghlUHrSTVkv7b/WcoXHrf0AVg/hqyUo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hRSOhJ1UQfb123JzAtD9k716frj9o6HyPgxZFGPA3vj9ebbWjbV1ErBd2aXGbU7lN
	 M9rge3X+C5n94qtfAE14Sa7varsBnXqLo6YNAfEOlcokAChylNnf2IyLfK7r/ON7dQ
	 J/sE4YNl98e9rJF0AaCkNi+dFEa8W3O5wxqiNNqdzMgOhTx2C+IMzon8cceuZSJInP
	 ZRcavHzAFnj+aIqpFOsB2xtDOL5aQEmIrrytl+hs/cnfK/WoWA50e6Bp4KzhxqMh6r
	 +xnbI17vFoXpgAdGZJ77AYj8W4eyG1nLTJ+A9JZN1BnyeAXZs2lx2Jy6F1EHQuxXXu
	 1+hywFg8Ul7pg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC
 control bit
Message-Id: <179448281355.507383.5760526379124804602.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 16:56:53 +0530
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


On Thu, 15 Oct 2026 11:59:47 +0800, Shawn Lin wrote:
> rk_combphy_common_cfg_ssc() first sets RK3568_PHYREG33_PLL_SSC_CTRL on the
> RK3588 and RK3576 SoCs, then, for PCIe at 24MHz, programs the PLL KVCO
> adjust field. The latter used a plain writel() of the FIELD_PREP() value,
> which cleared all the other bits of RK3568_PHYREG33, including the
> PLL_SSC_CTRL bit that had just been set a few lines above.
> 
> Use rockchip_combphy_updatel() so that only the KVCO field is updated and
> the SSC control bit is preserved, as the comment and the pre-consolidation
> code intended.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC control bit
      commit: 96246dc6c16a5e5a6b4b9fde8f4ab9cdeb201088

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
