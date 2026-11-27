Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574D8606A33D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BZx3JfQV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ksVHr6FO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7SjZh06cPShAWqP5uQoVKVosKqq1YcbOWo32/ys9b+A=; b=BZx3JfQVXCr8/OmtddpA4a5AVB
	gLXOVOe26r6xBgCU5fiiqz1XH+yoJiqwrQdm/mmszLp58IhK1i4bL2ewnl5tihfJQM5AkOhbYT2pL
	EQ7lfzkvEc6FlmpPDgiRQukNkz1Lpm/dcp5Zu+0P+LAMPNrZyaJZiI5xDzmwo+mIaqtD8BNQyoOju
	qfTIBiJJ0EWHPC/XtWCty6M30t3wkMex5++HTL1mw4PqhbLXAdedFmVlGXgTYcUI8b9vGxm0p4iA1
	GJMI9ScQj68BgKsjBA1zZBvaqMW9B6Qg4DuoT0zAh7Ig/PuUuLafgnUfKyL6FWvMNYXcXCO3Nc+LK
	sKSVQjsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuHE-0000000FrFp-0MrF;
	Fri, 27 Nov 2026 11:38:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuHD-0000000FrFg-0oCl
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:38:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 64260613A9;
	Fri, 27 Nov 2026 11:38:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F06691F00893;
	Fri, 27 Nov 2026 11:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795779482;
	bh=SKvLV9gGAFbmLUUfmaY/EwUbblYGlJIfsU7Qw4vYhH0=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=ksVHr6FOrjnzTw99X6BvVj0kvkAnLZtb/k30MIzf2UV5DXw3rvGcfhxMrrs8yinZZ
	 24mImNv0ISXZXlPLZG6Yitoxn3SXe3XAuie8089wVylTmvJxP4pp4QgYgMNkoF/3PE
	 CxM0IyW3QB9u+yaGh3AZX3ybpxu/wsbOLOgzF1e7zr5YHz8QnyM4slyvfdMTcKcKJO
	 06vQsHb1P4YespcEYc1yGohArWj9HaT7QTfgGGOs7WScwElrfekINtvVlf+BE6ls4m
	 Rj7tacZyPy5YAyHMnitu0SKZJB9LG7O2bCLqgBilCxRJQCD34LQlSIkXH3wum5LT/7
	 xzUR9LpNlU9jQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: realtek: usb: fix the USB 2.0 PHY's port range
 check
From: Manivannan Sadhasivam <mani@kernel.org>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Stanley Chang <stanley_chang@realtek.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20261103221441.1550058-1-joshua.scott@alliedtelesis.co.nz>
References: <20261103221441.1550058-1-joshua.scott@alliedtelesis.co.nz>
Date: Fri, 27 Nov 2026 17:07:55 +0530
Message-Id: <179577947506.3421.11993830398629700569.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=638; i=mani@kernel.org;
 h=from:subject:message-id; bh=9vNm3HiCCMKNQqyehmMLyhBFKEwiLfnCLd7GeztsIEM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWuVmXbTvvWQmfQnxDa60Zr7MxL7+figYjcy7
 oENWz4JEXGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlrlQAKCRBVnxHm/pHO
 9X62CACokLNvKoChF5S8oU8W12pOBBYIdXu3Lydn4eWkpsrN2j7yi/Ymv+jENIaIUTBgSazWVZa
 +L1JKpFbFN4undeQv3hNkZC7zWoGsqTgW6YCBBCnedEYb50F+zlF6mvI6e1lUOzdHpT6SiJIHo2
 WIXpchCFbi+nN3NbGQMHwJGdy2L7/lJpDP9R8nBqZm294NBNqCchxZDrG8AcvKfPTAY30y2NCP5
 qHTJzCkPo1FwgTB+F5TUEU5GNi8Nv6a+e9ZO/jyYuljsdmZFIv68Q0/pgC4PigfBFiHWO/+nTlf
 GGVf8GSg00eRGS/M3q0OlIAGV+bkgFIOKg/8Xo/sKJ4hYMh1
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

On 2026-11-04 11:14 +1300, Joshua Scott wrote:
> rtk_phy_toggle() checks the port number before using it to index the
> phy_parameter array, which has num_phy entries. Ports are numbered from
> zero, so the check should reject port == num_phy, but it only rejects
> ports greater than num_phy. Fix the off-by-one.
> 
> Found by code inspection.
> 
> Fixes: eeda494542e5 ("phy: realtek: usb: add new driver for the Realtek RTD SoC USB 2.0 PHY")
> Cc: stable@vger.kernel.org
> Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
