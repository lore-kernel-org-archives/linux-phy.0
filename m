Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C8660A2607
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i1htJJB7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MheNxSAw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GmXTjo93FK2WG7TmG6a8V2oTPKvceCBFIGBarn0rQfM=; b=i1htJJB7OeFJrilWrLlbCfBzTs
	YdJH6IvIeYQ9D8+Fvsx7xg9RfB88+784VBHhHFMu76DNc5qfXeb5pcahtO8XEPPqXIHfzbPeer3qG
	RCTP/WoHpaI/tsASKaRZ110MCNIVcIQZxtVnCmNymwVXqYamUSCMof3AziXXmfGWnHBCHBaS17xwX
	SxErxBc2QzAVhYb5zNEuS/xZOkHqYPh4RAsH8b4o++hFMrftSZzu2cgm7UDu68nU5neDACfrDo94R
	ggy0et26lxwyUcCVuwwpBupQ0O0bxTiRcUk9UcOBTrcngjMw3a9APtSn9Km/UBY0U6rgWOtdOQMqZ
	BVuyQuBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQig-00000009HKI-0YOh;
	Thu, 12 Nov 2026 09:03:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQif-00000009HJh-14JT
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:03:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6DBB944D63;
	Thu, 12 Nov 2026 09:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30DB41F00A06;
	Thu, 12 Nov 2026 09:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474224;
	bh=0SqNMvBpkWCMg1sYf6ydGcAXlRxW8TbvM8AG+7xsJjo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=MheNxSAwXmt49Dnj1PXDxgAkV0lUuNDkpb5VPGEI71seXnh81299CSKxoiA7eaMgT
	 gZrfF3Mb4gx4K1OOwYvwil0SR/KrYnpwbS8DKnBDakAbEODfRsLMuQVDb47rWZ7oyX
	 oLcxuuEPrOPC1ZKabkn2TCx/ZH10m1CtK+xTFJDwi8FR6UdDvvBoxocLKdnuozwIlc
	 MfVGSbu4wt7dkdQXoxost+1kBuPbhJqGtmCx8t1lcCilwMNIyjrEwYX4Lzz0E69oYZ
	 t1ggkOHCP92FL4uU9rSuTatXPcMADyIKtMPnGRPiwv7R2TWxWHiHWKIbogKypqwT/O
	 GUQHIutwkRs3w==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, johan@kernel.org, kishon@kernel.org, 
 rogerq@ti.com, Hongling Zeng <zenghongling@kylinos.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 zhongling0719@126.com
In-Reply-To: <20260909122630.1313205-1-zenghongling@kylinos.cn>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
Subject: Re: [PATCH v8 0/4] phy: ti-pipe3: Fix clock resource handling
 issues
Message-Id: <179447422182.428158.17793904820702370114.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:33:41 +0530
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


On Wed, 09 Sep 2026 20:26:26 +0800, Hongling Zeng wrote:
> This patch series fixes multiple clock resource handling issues in the
> ti-pipe3 PHY driver.
> 
> Patch 1 fixes a critical issue where ti_pipe3_init() was ignoring the
> return value of ti_pipe3_enable_clocks(), which could lead to unclocked
> hardware access and unbalanced clock disables.
> 
> [...]

Applied, thanks!

[1/4] phy: ti-pipe3: Fix ignored clock enable return value in init
      commit: 64207b5bc6be7db5e75ba9b7eb271dbda30834e5
[2/4] phy: ti: pipe3: Fix clock resource leak on probe errors
      commit: 6dc01e3516d79cf4d690d892499a0bd08a14285b
[3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock resources
      commit: aeb637c73631851de0965514151f7ff7bc13f940
[4/4] phy: ti-pipe3: Fix clock leaks in init/exit error paths
      commit: 2be6a65608a5e32b2be6f5da843b1f29f1091098

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
