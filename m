Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F82606A337
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 16:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3Cv1rtxS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=casper.20170209 header.b=NbPXtQFG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=wHJw8qKU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oPhJkAABp1EJy7WpDmutZzNIwpMi5SrVDHWzEC/7IjM=; b=3Cv1rtxSMsDxllCU/yv4WdXCUD
	ImWvBidxPm+fTUppP71pcWuJbtSMnTkKQpwg8hWbp8aFEAVhXr2rrw8oFkjtNjcInxmpJkHQBrfFC
	9EPiFV8b/yAqulZ+3Af5vRHfqiQuTncPtNkZ6dRY2f7tMx7I2sNiANFTzotXJPrGDbUarA+l6rCLF
	32vzX10KOOhprQ48vvq9d5TZXBqekILCBkkKS0rkAr3i9R794nNOvrLUJcDtN+jJnnakD/ylWZtJ+
	lEqTtHQpn3GC6tr1sHVroMy7U19/KhcZyN6qDm+ZK9zEO35+YCydqdE6i7bth55ZXRDlbcVTY+uYo
	GxfBLLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiaD-00000009WvS-3cVa;
	Wed, 18 Nov 2026 16:32:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiZt-00000009WcN-0RwG
	for linux-phy@bombadil.infradead.org;
	Wed, 18 Nov 2026 16:32:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=r+SLzODzG8HHw9cfKRrHw03Y8/zONqIuf6pHGVgPbko=; b=NbPXtQFGyL/XZ+ZVhpdQnb40yD
	GAg8+W0sYX1eaCXVlI7dP4tJEGv8K3Hz8hCa1OYDEWBmysyPJSbiFOeqMpSbvkwJ3xxnTiyvO1+Xd
	rmnpj80l0yBANT6l9241XwtaTXzEW7+Pu7R0hSM6nY28/sSsM+0eVKzGZYK9J43XwrPpA1zo5uT+8
	ocirF8yHCyqDZHSZhw4StLtpJK+tyaF/CgJJVFa9mieZvJuSKStXVANkQ1gIFJVdVJDqZdSoZ55tk
	zF1SazXl/2Fj3I7OCyLjrxtph5/SiJ/KFXHc4zElg60IyoJwKmTNCXR58tsTSPAVop50UkOjIptVg
	5BH8IhnQ==;
Received: from smtpout-04.galae.net ([185.171.202.116])
	by casper.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiZj-0000000FA7W-2M36
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 16:32:07 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 38BA7C4F77B;
	Wed, 18 Nov 2026 16:31:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4822E5FE9B;
	Wed, 18 Nov 2026 16:31:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1090311BC280A;
	Wed, 18 Nov 2026 17:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795019508; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=r+SLzODzG8HHw9cfKRrHw03Y8/zONqIuf6pHGVgPbko=;
	b=wHJw8qKUoASaCYaUuh6NJ5+MzfzWnvTluXzTcHEQnISrE+l+Gv5JfD83qXKV+5Ho6tmgZe
	Q2dCQLiti0FDkqKPaqSffZtOU01D4iq3QbeRKVPkINy1dDVewKnmtE1YKtO+ZxoYGDAP3/
	mDLU9RbpIWniI5UL8aYszXMoNQMmGDeQ3Nv6ZdcAyBo/6sXZED84TAEOciBPlUW0BnPHu6
	2k17UHPvtn/Jsf+ZOFRtv72BVLqJhTjaMKDXV/u4kL4eB2NMjxzJnwqNmKfesJ55b8Akyx
	8PmePUoMLA27e2mitgRDXYCoh8USLiLvaIlWCKdQbo8+AY22Ehru7jB+USUJPQ==
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Wed, 18 Nov 2026 17:31:43 +0100
Message-Id: <DMYHB3VFX8GQ.2DELCXHWSP8X1@bootlin.com>
Cc: "Francesco Dolcini" <francesco.dolcini@toradex.com>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Alexander
 Stein" <alexander.stein@ew.tq-group.com>, "linux-phy"
 <linux-phy-bounces@lists.infradead.org>
To: "Francesco Dolcini" <francesco@dolcini.it>, "Vinod Koul"
 <vkoul@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v1] Revert "phy: freescale: fsl-samsung-hdmi: initialize
 default rate"
X-Mailer: aerc 0.22.0
References: <20261116162409.218059-1-francesco@dolcini.it>
In-Reply-To: <20261116162409.218059-1-francesco@dolcini.it>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_163200_138011_CBF966AD 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Francesco,

On Mon Nov 16, 2026 at 5:24 PM CET, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
>
> This reverts commit c01ccf91b257741e9edc374a465126bae9ae4711.
>
> Programming the 74.25 MHz configuration at probe fails on i.MX8MP boards,
> the PHY probe aborts and HDMI is no longer available:
>
>   fsl-samsung-hdmi-phy 32fdff00.phy: PLL failed to lock
>   fsl-samsung-hdmi-phy 32fdff00.phy: error -ETIMEDOUT: failed to configure default rate
>   fsl-samsung-hdmi-phy 32fdff00.phy: probe with driver fsl-samsung-hdmi-phy failed with error -110
>
> Reported-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Closes: https://lore.kernel.org/all/13219248.O9o76ZdvQC@steina-w/
> Fixes: c01ccf91b257 ("phy: freescale: fsl-samsung-hdmi: initialize default rate")
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Got the same issue on i.MX8MP after rebasing on drm-misc-next, which is
based on v7.4-rc2.

Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
