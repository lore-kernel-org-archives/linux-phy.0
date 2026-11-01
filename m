Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868F9606A334
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GSdR6Jns;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=e+qDYpEv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3jmQ4Myle8WXlFjAAxnGdQaqFOxOfKEIsQWW4C1BeqY=; b=GSdR6JnsBXdDz+DaBkprr5WC1s
	oFfk9nEgS1FmbOKUC7/JYqZQLxi1ZaaE9Q/EnpRhvl7+Zx1OB4r2pAYrNDpjPI77kC+UyxSTmVfms
	pyP7WTK34MR/eLNyRlE/U/A7ftizZ3tMtXC+JkIqeqOtyhpo5aafL//0Jw4oWTa65kocQVNQcivJX
	VQEk+cCTyBaRPHjK56QiKnLGYls0yxH0Wb2hvJ2+B/Nm95ldBnGoXMseg8hrtAY8I9CmTR3C+Pd5G
	9pTm7be1FD3TNtvNnUhwkfDaLMdv6UTptzHP/wvAkXU/D2jYTgctUKT1Bavohq8lLLO5d6N18yGZ1
	p991w2Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTPH-0000000E7q9-1CbD;
	Sun, 01 Nov 2026 11:07:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTPF-0000000E7q3-2l9M
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 11:07:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5879C406B5;
	Sun,  1 Nov 2026 11:07:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 017741F000C1;
	Sun,  1 Nov 2026 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793531241;
	bh=hlNY/PV8DGVOaVDQ87qnWmiDTqBZhpUgMHIAxp3ZzvA=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=e+qDYpEvupV2f4QI+ABCnWxY7QIYk/8tszNFxOaWNecB5AM34b8uv2iIq4abolxIM
	 BpL8WabsJF7IFYUW+iD14mWdApn1fy4w6+sn7437wyjCjZEFMCzJDolzQuEnxy7ZLr
	 N7Dbgr6ny5HsgGN8285AkM0x58KVd8NVhmiH4YuQr4aEyhStF520jaBogDpUX6kCUR
	 mjiykSaF1mWYN43WOol+ROXLJyflx9TgHUOd4tVJDrS+7Rlg99KaygWyn51UHPFdq+
	 xJ7/fqqcsjA3pIAV3Bp5WshWmbdslIV4l2ll6XqxdO4l2NmYbVSwtNFrIa5e/xa3a4
	 w5OX2w8X+l7DQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: ingenic: Don't disable the supply in exit
From: Manivannan Sadhasivam <mani@kernel.org>
To: Olivier Louvignes <olivier@mgcrea.io>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Paul Cercueil <paul@crapouillou.net>, linux-phy@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261024051756.79342-1-olivier@mgcrea.io>
References: <20261024051756.79342-1-olivier@mgcrea.io>
Date: Sun, 01 Nov 2026 16:37:16 +0530
Message-Id: <179353123621.2955.1763925677067862965.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=640; i=mani@kernel.org;
 h=from:subject:message-id; bh=/AyMrrTg8Y397zc3NTnyqQqqDGUCh56bFnIUP/Ey9GQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5x1mQ+/vqLmjlLlj7D/J+HKB89tHLr4pP2XBo
 tc2ISXp6MKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucdZgAKCRBVnxHm/pHO
 9Xw1B/9ieynVZm2Z2sQAMUegzCNku6ctqgBumbhH6y9X0wsbZVMD/qiu3Jywa/jY/iPnJTl5dA9
 wWX0vuIRwDwJhQnYmnht7GMj29L/944OvD1zCrIJkQOjp66r0TyA9ZFI8PiZMN33sRIHmvlo5Pi
 bgEB7RpUJpCpDBD3wvvMU+U6JR8EIeEvpJaWmlWUOlQ9l/CZeOgVYW9VDfWt9M+MXaGVbvGT6Hn
 0xDqpj8+iH1rSV48wjE96QCh4Xt+T21veUGZuAqazHMjhvTPvPyVgzXt47B3A/upAqCD8tzi7x5
 A7V8QT5SgegqoUHECrrqt7Y9yKfS7ET2dI0cbymQyt3Kfpts
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

On 2026-10-24 07:17 +0200, Olivier Louvignes wrote:
> The supply is enabled in power_on() and disabled in power_off(); exit()
> disabling it again unbalances it. dwc2 powers its PHY off before exiting
> it, which warns at every probe on an Ingenic X1600:
> 
>   WARNING: ... _regulator_disable
>   ...
>   ingenic_usb_phy_exit
>   phy_exit
>   dwc2_lowlevel_hw_disable
>   dwc2_driver_probe
> 
> Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
> Signed-off-by: Olivier Louvignes <olivier@mgcrea.io>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
