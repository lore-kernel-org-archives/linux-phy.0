Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C97606A330
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 16:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4GOA0zx0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hPXLV/Ym
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sqL90VO1Y1tF8vRZfae3JkbEIlIjVi94dqlh76vkn6I=; b=4GOA0zx0sYIE0eVXNh5u/GIP93
	5UidyXhN0ROyMn6b//aj7IdaTgbglG0FTtLwpHXnvFMR82XI9XdPyuMKN1Vj1rUiNorijzFdUf9Mk
	E0/smrVl93GxUcwnPlD4hLt8f68rpzPws0+efKk6D7Z3NePRD52kb3aomcq/VQVTNWsm0MgqXZHPF
	8q3pPdNgaworhHvepVVpOWXCUQLdMe4dvQ0YP1JyNjvra3LI+4HS4y1bs5OVvZLpPVm6OOjhTlVSs
	suaOY0FnxzBQ9qedkVds/Mm5YWKYwMt9v1BNzr/Oe3PHDTTGqrLMyNt1+Ffk3VcNFW5mOHTGWF+YB
	tfiLNipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vg-0000000CcZP-1XcH;
	Thu, 19 Nov 2026 16:24:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU4vf-0000000CcYa-20oS;
	Thu, 19 Nov 2026 16:24:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D5D24562E;
	Thu, 19 Nov 2026 16:24:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D1111F000D0;
	Thu, 19 Nov 2026 16:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795105447;
	bh=odcg3p3L88lG9gCK3IAVBvbz/Hl37jfw4+T+d2IH0/s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hPXLV/Ymhknnr1TC7THKSqp3McWXOOo/qQTtfkertJ8eIcnURYDPElWxrxFRsCHQv
	 VKAD2si8hxOHsz4CRAbUluwBBa3tTp4qGvswqDr/znt5Ci9Ruj47fNRmik0t48gQ4U
	 NJXlA+Nesgswxp+BvbR/HVrPHaB3/gGtq6XAfxIQugNlsV+7vklvN2qnNpAZrMU2yK
	 og3FJAuNOHYnUNLBDXIo7wc0ok4Yd+8yL/BPTSI56RxZhVHf418yxjac95cGD+0iKw
	 2F5UCaJGlG7cZTK0O4U0Qk/KzPBI9Di3h2WOmWV3rVOTxrvoCzck7IGcjW1MK09Ds6
	 /hNMLPg/HITAA==
From: Vinod Koul <vkoul@kernel.org>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
 neil.armstrong@linaro.org, mani@kernel.org, matthias.bgg@gmail.com, 
 angelogioacchino.delregno@collabora.com, 
 Sreeraj S Kurup <sreekuttan2156239@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261102072139.3588-1-sreekuttan2156239@gmail.com>
References: <20261102072139.3588-1-sreekuttan2156239@gmail.com>
Subject: Re: [PATCH] phy: mediatek: mt8195: Check PLL driver setting return
 value
Message-Id: <179510544374.1370333.8388939289479267591.b4-ty@kernel.org>
Date: Thu, 19 Nov 2026 21:54:03 +0530
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


On Mon, 02 Nov 2026 07:21:39 +0000, Sreeraj S Kurup wrote:
> The mtk_hdmi_pll_drv_setting() function can return -EINVAL when
> the requested pixel clock is outside its supported range.
> 
> Currently, mtk_hdmi_pll_prepare() ignores this return value and
> continues with PLL initialization even when the driver settings
> fail.
> 
> [...]

Applied, thanks!

[1/1] phy: mediatek: mt8195: Check PLL driver setting return value
      commit: 5597a97e4842f3c67689093e9bf1215902babf08

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
