Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FF606A68B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sormwB7b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WerBzao2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LEqsK7C0Ych63vwTIlgOEhv+B7h6ldg/n2+B42X79Nc=; b=sormwB7b/9Qd1Ysm7PvCie3HV3
	Zf6TWFIZL2uhFEbfdYzea9m++2K02gsJEMoRFAQB1SlIfdGStDSQuZcNnlL661/Ix/NgSwYQOgiSN
	5RCgBizMGMbL77iqv8Yh4d04yPOt2RFLll2R6mpbjx2vmh/of4X0pe4gfO6YlECgdog5aXDTK/qII
	yAWwR8nPKYGkCvDZ6GBz5i+mFAn8ucY7zL4G/oOWnnUoOmRCvnXk6SPHb65V6iFF0prZQOzIQthpv
	y5HyNGokeo8nOzH/JvzP1ydlM0yvAt0zeTG97qKK/kfE46D8UDBiZB6nV+QS7R4KtoJe7L3hWCyU/
	xBLlUhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuTq-0000000Fu5R-0YRy;
	Fri, 27 Nov 2026 11:51:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuTp-0000000Fu4w-0FWX
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:51:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BF17241438;
	Fri, 27 Nov 2026 11:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7C7B1F00893;
	Fri, 27 Nov 2026 11:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795780263;
	bh=HF9YKM3qySdp71vvMXfdu+eMeA4N9PDI494ydnXnj58=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=WerBzao2beC7vVxh5Dea+hptJQFKGg6jULeV/lGSTFEthqkuNr2CP8/l9yYpMmDdT
	 zHWHgc5Eyr0WXMsnccRPP+0BYOHZxLJatn+eJLyXUsvUGHfgEs0FrcxtTc9VpTnLXA
	 +Wc8h1FlID+z8zihcni0macobeKnWasQAcWJcNMw0oDvcgPCqWsXfy/VbaGOtrbbeS
	 QAdRRBC5U5co54u3H/Ggah1HzXxFkJxJhtEO+5U4JGapyM2fFTMi9v2Vr1i7KnSveI
	 M2Kd/XojoG7iLXL+g+UOIhhABd7KLkSFUboJjj9s1jBjrOvSSapooTy/0uGdhzWHid
	 EXC0gaI63jK8Q==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: ti: omap-usb2: fix OF node leak at probe
From: Manivannan Sadhasivam <mani@kernel.org>
To: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Johan Hovold <johan@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Miaoqian Lin <linmq006@gmail.com>, Guangshuo Li <lgs201920130244@gmail.com>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261109072450.1005-1-zhaofeng2@cmss.chinamobile.com>
References: <20261109072450.1005-1-zhaofeng2@cmss.chinamobile.com>
Date: Fri, 27 Nov 2026 17:20:56 +0530
Message-Id: <179578025671.13164.10837931399215798521.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=693; i=mani@kernel.org;
 h=from:subject:message-id; bh=asCYCABtuQZZaJied0t9+9hFbnGEIInAKC7eOFlUOJw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW6jMSa89peYrFPB4acHymYne9v2noHNOSrdB
 hsmyQww/j2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawluowAKCRBVnxHm/pHO
 9SrDCACNPXxflh0JQTed6hyqX1HvQWJUY66vGkdc/ZZYFQ8uElUdsUEkTR6CRAuXn8xkxf5hI06
 zYFgi9hPfaMpk2jSv46V98xHIau1W66sd8Wo3ymm5t4XCsmh7J+MYy8RTYjsJHQg4i/T2kuGH0s
 VlWewkMUdlQ314D2X8ASimJZj2QGNdbnq9R4IpeQHSyll3ogXMMgVaKQbRzpYANJcqGZLr+Cz8a
 u+aocHPD4feT4NYZgdLabh176wP9ZDhzWSmf7DXf5fdjkjEHo1nOIdIcPudxMawt6FLikTYG46M
 Og2G/CEKlGqZ2MsfDF/c7K6axusSYcot7yo5syhji3LcADoQ
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

On 2026-11-09 15:24 +0800, Zhao Feng wrote:
> omap_usb2_probe() obtains a reference to the ctrl-module device node
> with of_parse_phandle() and never drops it, on either the successful
> path or the !control_pdev error path.
> 
> Drop the node reference right after of_find_device_by_node(); the
> device reference taken by of_find_device_by_node() keeps the platform
> device alive and is released at unbind by the devm action registered
> below.
> 
> Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
> Signed-off-by: Zhao Feng <zhaofeng2@cmss.chinamobile.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
