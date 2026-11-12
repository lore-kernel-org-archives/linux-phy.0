Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5969C606A8B1
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wtulK399;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=SuNPzHjH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hiqPO8XRbYgfsGUwl8dz7+1/70joz91aryqIoCNsFh8=; b=wtulK399GP91af0Yl3whdWNzNP
	l0krkexUh1VfWf532yTO2dWL9WSLQ8cwaUUQCR/BO4Rbyux0QS+AZ3BNkwYJbAkp8hD0/t/lxVWGc
	jkqz0j6eUS3TmAcJwfN0SmD3ruZES02X6oNHEpJ6bmq0LvCia98mq2WzQQpW69RDm8kvlG+w2TL5S
	NVMqhxtCWYP2CNShOnj9NkB79NeKKkobrbDFE6SmQubuN1PBn8/8bbkQvfym2FPt0NbfxX1uiXUHU
	piDOZG4+QaanqdacmHiAsOJFWnJFJ0JSAkYTQMn6elZ3/UwwA0f/qHADtWUmyICW2OeqtJfxdt3J7
	p+iy1KKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQie-00000009HJW-0KLm;
	Thu, 12 Nov 2026 09:03:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQic-00000009HJN-39mO
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:03:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D87FB634EC;
	Thu, 12 Nov 2026 09:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E4421F00A05;
	Thu, 12 Nov 2026 09:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474221;
	bh=4TzZAoqysIzaqY5zMZCOlG6RH0kDdxH5O/qMNybhu/s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=SuNPzHjHvWtalDSiykqLa1Ab9VaWjm3jEK31H2lSO+1rJrZvmU9LsTdmRl6f+nBcd
	 yRp5WiZKdBYHzhvnxPyhQESL7Qh05hp7lNOUenCBJvlxp7/ufFOMLN2gpT0K5y0AMw
	 FY+DYhR9L4YORBRcM3TmwVS3ntNneP0E+1FgemGjtP5XjxUvnG3E0Hd9TxMxYUUcBB
	 n0K3b27+K5BKqZhhDpblaONO5vFXdD64zFyrvhoBa1oA2ghqX2+uM+SeQtbWwGzJp9
	 AOifOcJ8eTAeZet6PiG4+ToW2TKGjWavwUEQBCD/GRDGqyG/UxZR6AUWYMidgwalDX
	 dO5k4m7oFGzqA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0_=28Zhou_Yanjie=29?= <zhouyanjie@wanyeetech.com>, 
 Paul Cercueil <paul@crapouillou.net>, 
 =?utf-8?q?=E6=BC=86=E9=B9=8F=E6=8C=AF_=28Qi_Pengzhen=29?= <aric.pzqi@ingenic.com>, 
 Felix Gu <ustc.gu@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
References: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
Subject: Re: [PATCH] phy: ingenic: fix unbalanced regulator disable in exit
Message-Id: <179447421909.428158.1735484115225895590.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:33:39 +0530
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


On Sun, 06 Sep 2026 21:30:31 +0800, Felix Gu wrote:
> exit() and power_off() both disable vcc_supply, so the regulator
> gets disabled twice for every power cycle, causing an unbalanced
> disable WARN.
> 
> Drop the regulator_disable() call from the exit callback and leave
> the regulator to the power_on/power_off pair.
> 
> [...]

Applied, thanks!

[1/1] phy: ingenic: fix unbalanced regulator disable in exit
      commit: 71c1be5cc4e083852c8437bd6afcb99ee3050e8e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
