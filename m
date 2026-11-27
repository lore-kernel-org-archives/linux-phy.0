Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D21606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2e9gM2rJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XIY4tUO1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FjINXeT2wX2C+ETb3h2QVmPW2sI6es2FBKfX0z7ffB8=; b=2e9gM2rJlJQob/TDeE7kBPWHT4
	24pw+qxeqJJQwFicseuHVNsr3T+If1L2//t0lICmkfEhH0UTQi3EyDp7D+TELJEOWZr75EYXUAaUi
	nC07kpX+s1wD4zWAT7WAqaJA6dd/1qOwsoNHRVmfHeL8Db1beCGJGcRLZj5Skn2yH3HnKR/LZt1MS
	Eu4hErZGUL1McMIaUeA4r1wJrYD57FGJLJ3I2nK5ApAneY0xj2sBT1UR62Jii9FvDsErvcv+tLUtk
	clkawqddNvFNXSAR81+MSyjSA3XCrezVgKn6j7+YTzayEMa6/exbw5LH4NInsHO2tJ1ti3qw6r025
	NkSmNBlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtwf-0000000Flam-0XDq;
	Fri, 27 Nov 2026 11:16:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtwd-0000000FlaR-254X
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:16:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4480A42346;
	Fri, 27 Nov 2026 11:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E65A1F000C1;
	Fri, 27 Nov 2026 11:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795778207;
	bh=fB7AjFVZA6hbz5yhYMWpLKE+61Bh8LA6GXONV0oBnoQ=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=XIY4tUO1iO0N32nF41SaFX0FIU6y7qPj6l70Tt6nM/g7+oLvmYkrb91Uevtu+WCmj
	 yIfW8C25SimZgk8ajwJ2Muc9vHFBHhy2r735IZ2nPpMRe7r/VRs8J42H27+iZ6j6hU
	 A+kLRZtftiX71CqtOKRFCTiZuPGcCJ94zpnI1F9TMFeOsTo6jHqyzVAi69xshb5//T
	 3RD/49TUr2Vcnqw/kotrkkbhi9b//upK1Zapysi4jY64uPmMVRjo2E8f0KczQcub87
	 x5AijSqlA0CZYbM3gw4AZg12HVmV6W6l2zTmVwpVulO2aOehvTeHNjSaVmHskUWmQX
	 W07k/yVFr6Wgw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 11/11] phy: qcom: edp: Add Nord eDP/DP PHY support
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Nabige Aala <nabige.aala@oss.qualcomm.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, 
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <sashiko-outbox-217102@kernel.org>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-11-e3d3bf0e2c49@oss.qualcomm.com>
 <sashiko-outbox-217102@kernel.org>
Date: Fri, 27 Nov 2026 16:46:39 +0530
Message-Id: <179577819984.3421.10994547159567052994.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=366; i=mani@kernel.org;
 h=from:subject:message-id; bh=jQnuYXuOAGsc/lzQqiz8LyDUtWXDdDYLB1ApE7FX+sg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWaaP9QzsWS7L+SR9mqpkFBIMdiU8H5U6S7u8
 Ayi8Ul/dVOJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlmmgAKCRBVnxHm/pHO
 9UTGB/958CXL27cfYFEPvCQkV4ejUdgILBa76IhDFzPccjEAma9Kve65f1WKJDlT4Jdnn+cI+xJ
 I3TUCAZPwb97pM+BrQqDC4p0LGWWwYOQP1tO63gTTemNWOKGFlgAIgNzy1PqsMtQN36O4C5hpzB
 2ILrqAPXofSxGXZaJzAEvUFQK3NGBuqbjSATVGeRUkAw1wvr4kJRihbwAdxCYxR9mtLlRaZkBiM
 5JiVUh2ks8oDd8RMNvny0zVOsDfgiZDTwzyfcOrbGWxHX+s/weaFxju9DqPS4rFjEpycv6Ry104
 3WBiNo0WjFEsWu7N7ANc0xjECW9aKve074OCPFxGXJpKUHBa
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

On 2026-11-16 13:44 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential
> issues to consider:
> - [Low] phy: qcom: edp: duplicated v6/v8 definitions and misplaced Nord
>   code
> - [Low] phy: qcom: edp: asymmetric DRV_LVL writes in
>   qcom_edp_tx_res_config_nord()

Both are fair concerns.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
