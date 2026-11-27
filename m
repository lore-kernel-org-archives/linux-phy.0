Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D3E606A326
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 14:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FcRY0mjW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NC30D2PR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JXPc02Fd/HfAf4UfnMi5Ry3LIp4fTwbeaxwk87HTLbE=; b=FcRY0mjWjHYZFyS7iAnExHSHRD
	oqn3bJGb4o1G6W+UpX7GJUFspMUqh3W9eh2uFcUlQ3pnMaoTiZAU3YJ7a8lvl1nKpA7+iLwCmDG1/
	0knNko4oozoXSNdCL/zPVIH/QdStQxcCgbhUdKKI30nk1gED7hA3gbn3pBgLnq5OazoLSElFhWkq9
	GJxnW2bF/PtS4k78+ASpi+OSrwhEFSg2Xj9/ekC1Rx7GzzjA6fJMdvgFCxRyZ2vdZhXv7PPK68VGq
	DWU2JTODpc3ClxIum7Tn46SjW2qLgy+2oTp1LMKrTZKtzYaRQhoGzIX0uc00BUk/AShJUk7Vklf3+
	Ytgzs2Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwgu-0000000GM0F-1Ij6;
	Fri, 27 Nov 2026 14:12:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwgr-0000000GM00-3aIr
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 14:12:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D54460D47;
	Fri, 27 Nov 2026 14:12:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08ECA1F000C1;
	Fri, 27 Nov 2026 14:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795788760;
	bh=1DQ1nz3FbfQyhF7fIMEkTuu1coO+N7mSNr9rr0G9b4A=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=NC30D2PRrbHcohcdRx2B2/PU8ynMc6s66Qo78TEwSrrii16Po8O/urYQz9w61EV6q
	 VEJ4XzHxKdTYTjPn75evJpa28LqjzudsbtKqsdH0crHmMmsdlMZyAm/6wwrCkBBgAb
	 t338uoLc6pv4UtxkjqWVZAmnFwqqbOVNyJ20EbPK/7Z6ihaecD36zK5wklxWQeHkeP
	 qpkgfXdsbocVr4C2ml8RuTtg4BTquozwdj7AxYU7OP1HWsRjazDV4ACGa6bp7T8YBq
	 jAll54AKZbyML4pwVBfGn3lFn1IUHtY6wGvwjt+lYkxT/+yIBlMkGEUWXbsb9pQ+Py
	 2McCwdEMlscxA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] phy: sunplus: free the disc_vol buffer in
 update_disc_vol()
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andrew Gaylard <ag@ffroot.co.za>
Cc: Vinod Koul <vkoul@kernel.org>, Vincent Shih <vincent.sunplus@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261116074006.20357-2-ag@ffroot.co.za>
References: <20261116074006.20357-1-ag@ffroot.co.za>
 <20261116074006.20357-2-ag@ffroot.co.za>
Date: Fri, 27 Nov 2026 19:42:34 +0530
Message-Id: <179578875453.13164.15057967798026543763.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=607; i=mani@kernel.org;
 h=from:subject:message-id; bh=e/G7k6Ug5xqWaDsGPI4SQ10huVRNr22gaB2sqBJLzUA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCY/VRHZwP2uz0WvkFC1XzaEA+WVitAw+kxyX3
 EuQeVJPe8qJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmP1QAKCRBVnxHm/pHO
 9ajpB/4qnHoRxivII0iWGeaMyEW77fVthG4IWia9xwjsTQdQwKodbRNUdCd9o3ldyMg1oVgbmdu
 ezmAZTM2f3h/jzGWMPgp3Tfmoa4hR0PIPhKQ4kwg1dzgkyPEGLlIObKHKu97SKfYH/EZ4B9m6Ke
 x9mZjFndTslTmFc3G2Zs47z3pNXPWMSdbKq2raTokafAPt8SAgh+qSB4BwWSG6k+mLTSKUJOK+V
 LVfd7sxrOzUKI/+hAtnY4agFqWEq3hNVIbpXAWtm/cfJwLC76fomB60TEyfAo9xez0rLkn1PnR1
 IzwUDU7GZMmMzO5m0MX1n26/J27A2JPyMOwbHosx8DemUYg5
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

On 2026-11-16 09:40 +0200, Andrew Gaylard wrote:
> nvmem_cell_read() returns a buffer that the caller must free.
> update_disc_vol() never frees it, so every PHY initialisation leaks
> it: at boot, and again each time the EHCI or OHCI driver is unbound
> and bound.
> 
> Free the buffer after taking the disconnect-voltage level from it.
> 
> Tested on a Tibbo LTPP3G2 board.
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Andrew Gaylard <ag@ffroot.co.za>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
