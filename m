Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0E2606A32E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MB5WjzFb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=m5JTWdx4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=49io/AlQzW3M0PkjJtNBeSgsJWEGzrHtbC5YuvMzi7E=; b=MB5WjzFb6EQ5ImUSiBm2UrV/d9
	tuJ+OEMjduUlwU5ayWCzFAWsXr2Q3e01CXVZfwfOP6F+jYCoGoDHyhpe2dMI+G4nxUptiLYzuh5El
	y2OuBALst/TIxTzgq8WeSBe3zilHjLJj1e9q+i+uP1f1kToekHcfsqUZSuaEDSyoQSUX6gcftHt1Q
	Ej1GgTF4aDV1eBltomRwXTjaVA7RVooKwSH/eNpqxTUgr1fUnQcYCIf+1EexVID6rZzyfwfz751Wl
	RanIzobC/NqzOJmM4ccZ23EUEi1WYf1rLBl0TjUrHEHIiycU4vJ2sSHkTa2uWg44WiaInENcxqUwC
	3R12bDNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuUv-0000000FuKO-1Rp9;
	Fri, 27 Nov 2026 11:52:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuUu-0000000FuKC-2RPR
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:52:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A15F4362B;
	Fri, 27 Nov 2026 11:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B29441F000C1;
	Fri, 27 Nov 2026 11:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795780332;
	bh=hi5qJ65lroEbJctduqeaaU8tikCP3YYY/M/NeJrI+/E=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=m5JTWdx4qsiAu96OHymoYaIML+ZcUr1Gybqs4jUGiY742mpTqvYW4MY1kobdMePqL
	 8ANNDxOi9zhd1vdpRZy4HTOiiR7hQkt++15a9UsEIc3Wum1iUUuglrozSjOByOBwFW
	 268oVPX7kRYZ9ijdO7utkxoPohh4bN5Vcvvq1Md6vV/KWCa273W3pLDngfaYxNVIsK
	 Ix+4C1jSutkLmZEs2cQajXeFl34NlWQto6FR8dTi25DZqOYdcHwqvthdhOr++Rp0OE
	 Cus7GGmcqvmyuv64+EQq/ljPxtQPD4NChhTib031vW5WhkpE/F5F9QDVDi28sMpHNd
	 Y2qy7/yi4pT2Q==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: tegra: xusb: fix OF node leak on lane probe
 failure
From: Manivannan Sadhasivam <mani@kernel.org>
To: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20261109074711.1751-1-zhaofeng2@cmss.chinamobile.com>
References: <20261109074711.1751-1-zhaofeng2@cmss.chinamobile.com>
Date: Fri, 27 Nov 2026 17:22:05 +0530
Message-Id: <179578032581.13164.17986311510079310417.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=958; i=mani@kernel.org;
 h=from:subject:message-id; bh=TijvSIXr2L21MTkuYOVikZl0F1o8JosKj9YQshKhm9g=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW7o+bgsB01pCH3JjHuIX9X/Kz1cQCjR7j7wa
 rX+uTVx5zeJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlu6AAKCRBVnxHm/pHO
 9eQpB/0W8yqkr12ZPnf2VE9JVsV79m18yW2Z5/fMcYYwbWGa7V14g/Fu9fDRWRnmNgeWoOUoyi8
 Xl9JFIbSJAXWPK+X2axHZk4TQKQbLEXGgCl4ltb4ScTon7MsQPEFC6DQzeWrSvNGz804kb3eyhk
 WQuLZ5BUetnHCpDaseBVCH845+geTJooAJr1/M0DxEneVs69XQzWm+BJSWhVYR1QOBIkgy44tFD
 6hprBbUkSG3Y9PR7O3QCt4pPdwZZ7hlkn1ZsUgpmHuSpMbRTCOr6qP/VFpzmeiCymovOpUQV4vG
 yntqzmepAGsttjipRli3sMkjMN5TJ2yePQE0Kb6PWpeWGoMC
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-09 15:47 +0800, Zhao Feng wrote:
> tegra_xusb_pad_register() obtains a reference to each lane node via
> tegra_xusb_pad_find_phy_node().  On success the reference is
> transferred into the lane (lane->np), and the disabled-lane and
> phy_create() failure paths drop it, but the pad->ops->probe()
> failure path (e.g. tegra_xusb_lane_parse_dt() rejecting the
> "nvidia,function" property) jumps to remove without dropping it,
> leaking one node reference per failed lane.
> 
> Drop the reference on that path, mirroring the phy_create() failure
> path right above.
> 
> Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
> Cc: stable@vger.kernel.org

Stable tag should be dropped. This is not a critical fix to backport.

> Signed-off-by: Zhao Feng <zhaofeng2@cmss.chinamobile.com>

With the tag dropped,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

Please respin.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
