Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0057606A89B
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jrtXb9/X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JZ0GgMow
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XPdXrxwlesWDajqAkSfw+SOsjivOilUrGB3lij+zEDY=; b=jrtXb9/X3/sKj94KQV7wTmxfeF
	O9HB47A1rqCz3QiV/JhJbYU3KgCezqNnrUOhczfLxgOd5BAdWiFU6jRu2qDexzeP4HIOLNX6KLM2j
	zQFpA62JFNmuCVRMBc/Bah6Vkt308I24NRJd+TfY6Alus14e/y0bhCoy/2iJxuz9wR2KgWEXUQ8O7
	b7aRmW2h1HOByvvgPQbyAUvhVe0Hv6dTE1eZV0HUM/F1XPTwwLNQ/f18dK/bA7f4Wr/Biiiy4icmw
	3Iz4RZ8EPgDrANo99BfLrlDZOMNb4dcS0CbVZH4vC/ukGvK6WLfkXEguR1RfAzIC2+ol4FxthV26k
	V5DTSnog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj1-00000009HOY-301K;
	Thu, 12 Nov 2026 09:04:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj0-00000009HO7-1XYR
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:04:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A9AA840904;
	Thu, 12 Nov 2026 09:04:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A931F00A05;
	Thu, 12 Nov 2026 09:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474245;
	bh=5fCCCXEOfM/ae3w8SM+2GzfEV3C2pd0/CFQFdIizuLk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=JZ0GgMowVVv7gOw9QlHwThCBEBbt3JKeRmM2MgNzEBiiSTB5cL7g2TYhJm+ks+UGu
	 b/juZDJBmThfJUGHjty10H9GkhqRnDeFx8MARIlIYbZG7YpEqUvbKN4ZMmm9KHl4ye
	 s0ZwehVI3m7Gdp3+C6qOrTrNO7ileHDk91EQt7bH8UGEt/5291lWMnBMSmTUK84eyK
	 aBJ6m5ZE3jcNRXZsvijkZaN8Xqn3zO4oLHf9uXm3tMWEBcJ7qya8wtJXlKP5Ht7IR8
	 BU7rqOFrhbiY7BMVzb2X1GEwNL+1J4UHIEoViThRgPu31DTuf9+7TbmwYuwSoxmhcc
	 K/q60NXSCUKZw==
From: Vinod Koul <vkoul@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
References: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
Subject: Re: (subset) [PATCH] phy: qcom: m31: propagate reset errors
Message-Id: <179447424330.428303.14422230960411700772.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:34:03 +0530
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


On Sun, 30 Aug 2026 21:14:42 +0800, Pengpeng Hou wrote:
> m31usb_phy_init() enables the regulator and clock, then performs an
> unchecked
> reset pulse before reporting that the PHY powered on.
> 
> Return reset-controller errors and release the clock and regulator that
> were
> enabled for the failed power-on attempt.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: m31: propagate reset errors
      commit: ad2bf54fe7267f9e7cba90afdc8d91dfd17957f3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
