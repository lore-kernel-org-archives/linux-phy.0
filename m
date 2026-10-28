Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84E7606A31F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 11:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bk5RlKWH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=S0uvPGjZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fsVqmUu76Jdhu1f9JYszIc5VkvjGYKHbgqZOIYIix1A=; b=bk5RlKWHCP7k23IDknPvFlyoap
	iu9rI2u7XIn5r3Sxg/94WFiPuLYFkKNKKfxSM7xD3HD2fgOEdJEAWttG0hjz000/yrZaXobLYm/SO
	ZR+WBQn1ZNSEcqzIQHPzEh+pq1qT0IOICChOfjCpSylrH2MTkRTtMwUggU5KJ3UASfa6a9urInkka
	YDKBS7+5mafeWXt37Egd4U2Nw59+eFPNZiOol+v97yef3JfnLqMGMbVM+Q3SBDodQMZEfEwrbfrRl
	NpHM7gCQ9Ctdi13LzGNzN5925vBb9JY3Qe1FNKk+VkmLT9Jc+v+wxCjSMaZAEVeu0nEIpD8hsNGiV
	pItrlaPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1ge-00000006qPt-2gdp;
	Wed, 28 Oct 2026 11:19:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1gd-00000006qPd-14rc
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 11:19:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 603886022A;
	Wed, 28 Oct 2026 11:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0249C1F01345;
	Wed, 28 Oct 2026 11:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793186358;
	bh=acx3ERfn6sywUlgPAMqQsMVKffZoJLkimvPtRFxAyY0=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=S0uvPGjZBd1qbjEyLNDQhv2g9X69ElTHwmdO9lsDdUslyaE92X9tgNltg8Vg9K5HU
	 LlQBZ3NmzDMkkQWlm33wn5+1tk27tCXJ+jvtXelWZ1kHC46mrqluBz+U4gtTdIHWUZ
	 8JfQYCDJfVDoHtBk+/wroVq5WGSs40UcUyh5yqGiZ3wbT3V1sYYjekF8wB52wExyr9
	 oGxpRph1mEe0Ge4Hc5ic3Hp2QAbW/VXO3MwO7E1qNHGh5YCNOZQwHiOXEbJrKMz8jA
	 wHMWLSfEJjzbJwXRFyz6T+I+CYlLalbpLD8JIdL5XnDH3j8SuJpxS3me/sMg3C2i0C
	 UKGIkEgve+y/g==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v6] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, 
 neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260928114013.B44CC1F00899@smtp.kernel.org>
References: <20260928-topic-usb4phy-v6-1-815a73b063ef@oss.qualcomm.com>
 <20260928114013.B44CC1F00899@smtp.kernel.org>
Date: Wed, 28 Oct 2026 16:49:11 +0530
Message-Id: <179318635124.5872.6065890957918101932.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=361; i=mani@kernel.org;
 h=from:subject:message-id; bh=acx3ERfn6sywUlgPAMqQsMVKffZoJLkimvPtRFxAyY0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4doyBxSvvpreSwuZ4fkmgC5LGi+wMraug+92R
 1zlDSl8ppSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauHaMgAKCRBVnxHm/pHO
 9ZC+B/wMIfSERj3XbNehdfoYIqak3PSd5Dyc68G0UNfaltsJQvwPxLu7B5rUlsNpgN8f/kKZrtZ
 qxM8448qNoojyMWkUcs0CZbQbUfmn/wqNNoYVPYI/Meu5JMWSITpP2aC3JvoO4RG7vuyCmNdgv7
 0kfbrFMVDfQcW9XIZFSvJAxC44qSx+zOPwksomzMvlMVzdezHwzl8X4qEL/9wKEtTMOylvwVlv+
 ggQdJauBySgxAxjUrn0EGy9pCFIqoCobHWGB6IYBpeLYR+bQr4XWFunI3+Bnpz4ZVEG+sEuWTOu
 kQFGRbpNSR+hZI4IIaAshNmeVC39Gfuuex9E2lrUCfjLReHR
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-09-28 11:40 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Low] phy: qualcomm: incorrectly named TX macro for RX UCDR FASTLOCK registers
> - [Low] phy: qualcomm: typo LPFS instead of LFPS in PCS USB4 macro

Can you please take a look at these nits?

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
