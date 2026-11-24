Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51C2606A33A
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 12:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vJA1DfZI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nf+81qer
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ONN9x96lWbe3dLGEk/SsSICIAtwqnSCUOMKFhwXc69Q=; b=vJA1DfZIf9BiSKF1tV84WZrEPb
	IrbIt8Ok9MSfRskoh3tk+BI0hgAb5u0OP3evbzBoKItAJ6YBxG3r4c+ZybSUDjUPAvVZWuFh5ALNQ
	gMYq4PAHax4JFCQP6PATN0fUl35FXbnsIPWT4N1xHQFQA0jVVYsVgMHO3IehQT4+pTy2MazW3SuGu
	0V2Q2T07OrYbc39GmklwMpEavZD4L4ht0p8vbcb0j96CLqpA7JAWSTpjE+HZ7DnvlyXaLOewl9yCN
	0+P/CXck9gTgl99wx9KV/fTyzZTSNWwwW2M/wfjWEeAZMLf3OrBbFSGH0GauFrVm9kxajnlb+/WRY
	Wh1J9u9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpY4-00000006VVI-2tTq;
	Tue, 24 Nov 2026 12:23:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpY2-00000006VUX-2gmz
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 12:22:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 55D3944F41;
	Tue, 24 Nov 2026 12:22:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A12251F000D2;
	Tue, 24 Nov 2026 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795522978;
	bh=CZmnlRLrVn7TKC0eRYBcOv8qoLYbJZDm6R825+quuX8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nf+81qerX3QWP87nKis5VHpOeiytntaO6Tt+zsS0VfhUnVtc9Gp0Qlui0Xe6bmWdL
	 AxoPZH0zXdx6MLO22CllsbfDe562pk8cDEsyNR2PBrzLVnktmQs/P+1Cq2auZqJn2R
	 08j2WPQyFIW83F9Z0eN8HuWYLKhX0/zIsybUYqOAzh+5La7EMu97AtP+upTpuSbEWk
	 1jSG1ZPHsmXzlWskT4A0+JtuJex0bQUuYt7uMrY314j706j0XlZmWGGJ7GXRRkMHbg
	 9DPOuUl9RmMpyhZc6AxeAblS0Vhw9HrfHPUOxebQs/yVjM2fIfDkslUTm5PXvSIEgg
	 O2t6TUE3fs4VA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
References: <20261106-phy-subsys-v1-0-9a443422e563@redhat.com>
Subject: Re: [PATCH 0/2] phy: convert to subsys_platform_driver()
Message-Id: <179552297628.405998.9109278185683497000.b4-ty@kernel.org>
Date: Tue, 24 Nov 2026 17:52:56 +0530
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


On Fri, 06 Nov 2026 19:25:19 -0500, Brian Masney wrote:
> Reduce boilerplate code in these drivers and convert them over to use
> the macro subsys_platform_driver().
> 
> 

Applied, thanks!

[1/2] phy: ti: omap-control: convert to subsys_platform_driver()
      commit: 849bb62d5c2c30950ec5b8d497de6fb3f4060acd
[2/2] phy: ti: phy-twl4030-usb: convert to subsys_platform_driver()
      commit: 495f98f8dc61da7c5d9ad11ac7d07ee2cd2154cc

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
