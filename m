Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86260606A324
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Q1QSsqHP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=avZnggnq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=neNgQw9Actae+lCkIsGd3uca91ZM6ihEkVR5C5JJAFs=; b=Q1QSsqHP0Ts2MWcyOfirF2LcBf
	zMHP37txem17VG87suxr7Zue+zlAeSkeo5MlMkjWFQMKxV51M5dtvKgQ4zjwHnACmcn/mS2PJB1g9
	1gNZhph5BRKDsvtLjxieqqLO6ApJntZr/QVyb4zwCNgP+8LfbEsBUAgRGatcTltbYZpz2litneM0j
	PSGVu9mwiH6hAxF2Cua0NBl7hy9ukmLXUy0WD7paMe6OdedOh/NIWgUTztlLxhu01UY6rwkT+Uldt
	GyW+YO4b32FXb1nuvzx61t7A5JcbP8c3SCkcYpu0YN7QKrzt7rRWI4MG31Z5apdpvSHujbrF5JZiB
	dLwzjc1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy6K-0000000GtIU-0u53;
	Fri, 27 Nov 2026 15:43:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy6I-0000000GtHf-1Ykp
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:43:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BC1D5408C5;
	Fri, 27 Nov 2026 15:43:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547B71F0092F;
	Fri, 27 Nov 2026 15:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795794181;
	bh=HW535fhRt0ZSG8UC6+5xRrpecism4VkxXodiHmQIxHE=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=avZnggnqZYxukLttE7d/L0JVz9raUnLYIQuelpyfhI3KnrSODFSOKi9o5bZ9IGuxw
	 ChK+9c1SlFffoIaeEanJfQQLvmsCgQ2IMMU0R8WAXPovHtd9G0mgcA4gDyWwuvZKxK
	 QH+Lh9RFSoto9MzjESC3EunwXnUeWkQFSy9VSJaviw7mQIrRCC8+haednZtiLJrqlN
	 84Er/MauykQSuloU4nXcrVeOYnv4ySIIBtU+FetrWZvS0tM+Xt9Rv80tAAZzUucw2A
	 Gnz2mEgwGPQ/UmIlNLh0yowzBOi90Tjn7ZKZjKOn7G29r0gmxN8UnOci8DhVWDqj0O
	 o1puKCA1NQ3Ow==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: berlin-sata: count available child nodes
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wang Haoran <wanghr2026@mail.zgclab.edu.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <1795076106646-11-85fca065@mail.zgclab.edu.cn>
References: <1795076106646-11-85fca065@mail.zgclab.edu.cn>
Date: Fri, 27 Nov 2026 21:12:55 +0530
Message-Id: <179579417560.13164.5559872381370143082.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=776; i=mani@kernel.org;
 h=from:subject:message-id; bh=DSi0CZ/DNG22RGWJDTjGLf4CthblbWJRJ9F0d+CXzyg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaUCpt7E2VuzxaKn4u/Zas4DQs/2stPQ9mEOT
 lYY4Bq0Ta6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmlAgAKCRBVnxHm/pHO
 9YAbB/9J8LJ0jl/MFw2jgiSgGnGFr//6phVS5u5Dpl2zGaoW5NJlpSWjO+MzYEz+14b97EiX4Eh
 bubo7Y60qEZX3CG0lFcBMfJxkqdduiYVtIXDy8xZzHjUv8aiN1g4CYWm8QvroHXNUcA7ftd4qrW
 va4KohhRM2HeD4U9yY6MwdEjPt/T9nUQ1N7BHr8oRxwtgQz3WTQ717btKwAgeQTElC96wcAQTXa
 c8IYROH4Y39W0ZWIaAtitTWVErItEhfryFO438ggLYDJyCo054hCQYigb0yslfrMXRrzAl0KH9D
 p6PtYTH1W+wJLOkKIOOOK1yFKwLveoDMNPUCtK/iUhgnGyjv
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

On 2026-11-19 16:15 +0800, Wang Haoran wrote:
> phy_berlin_sata_probe() sizes priv->nphys with of_get_child_count(), which
> counts every child, but fills priv->phys[] only from available children. A
> disabled child therefore leaves trailing NULL entries, and
> phy_berlin_sata_phy_xlate() dereferences priv->phys[i]->index for them. A
> device tree that disables a PHY but still points a consumer at it crashes
> with a NULL dereference in the generic ahci_platform path during probe.
> 
> Count available children instead.
> 
> Signed-off-by: Wang Haoran <wanghr2026@mail.zgclab.edu.cn>
> Fixes: 942a31b52191 ("phy: add a driver for the Berlin SATA PHY")

This isn't how a patch should be formated. Please read:
Documentation/process/5.Posting.rst

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
