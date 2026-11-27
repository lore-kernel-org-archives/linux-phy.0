Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4F5606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 12:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r2KR/S/0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=STe9x2iW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=16YqdOVLaW0YjAkpEjydht8HOEpOt/YDwR/DL48j9Iw=; b=r2KR/S/0U6Q8Jp9iR5Z6kE+oUI
	6kpNJJJDSlcuyXqCPyYG6VXE7115tBZfPSltfrSN0dPsj8GJo/FHf6C4T81O+uIiIZz94damF2gi6
	oaUDXep6AG7kYEI/0J/DK9V3PXfRm8tmsoMnl2dxF6F06SHpH+Y8q3vgmoRUiO3a3D+TY9yBKyWkZ
	oWTX9j7acC4/vxBj6rRfyrpCBznpPnUwFniU3iTXudWdTtbvwJ8mk30ofBM4+Ew8pv99Hkw1uPKKd
	TEtN9m9mn/rxk9VQRx+DQZUleI5OMa2C8XrVpZUKzWPZ77l9Dn1q2jv9m0v1RX+2vDy4UJYXbPWwE
	wrJTNutg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv0S-0000000G6yh-24g5;
	Fri, 27 Nov 2026 12:24:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv0O-0000000G6x3-2rl2
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 12:24:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F3BEC61D96;
	Fri, 27 Nov 2026 12:24:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1B0F1F00897;
	Fri, 27 Nov 2026 12:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795782283;
	bh=rO7Sh9Nwb089btROzycFmyyXQeMnRKtY6cufHupqrJo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=STe9x2iWOACvB+dvu+Cu3B7IGRYtpvofxEWZMvZV2FF3GzQ5CHK2uwRGRfdZjv4OA
	 xs0PIG9Jp76jGf4KERgqY0uE+WKpOlMGeJPF+j7WYGX6dTw2Z/bcom5CgC0EvpLKeM
	 UPTwBkuK6lKtGj54oZgT10alF9JEWhHRXL7KvCLJ1wJuUI6yT710nm7atbcRPk4B4q
	 veWirquSo1O+1DRSONtsJtNLGvDMV0SQYTeiltACd1YY+yPP7pEj/NjnuBu/WDO4+d
	 ScsC6439ejO6sGx07FNmDNfq69I8uHYFCV1xwbOk6lkSIVxG+Ks3keF5S+yE70xVs9
	 1h7eXJU4oW2+w==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: hisilicon: fix UTMI reset leaks in INNO USB2 PHY
From: Manivannan Sadhasivam <mani@kernel.org>
To: Xia Yan <yanxia@cmss.chinamobile.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Pengcheng Li <lpc.li@hisilicon.com>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, yana06070@163.com
In-Reply-To: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
References: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
Date: Fri, 27 Nov 2026 17:54:34 +0530
Message-Id: <179578227492.13164.6236523920077624562.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=969; i=mani@kernel.org;
 h=from:subject:message-id; bh=+STIkYRXLCv5THBHdorJX8rgjNT3hXEWJxeBya+QsqU=;
 b=kA0DAAoBVZ8R5v6RzvUByyZiAGsJdoWhugC4bbe9SHBil0DqtCM4wqjomPLeYum8iu90MTeaq
 4kBMwQAAQoAHRYhBGelQyqBSMvYpFgnl1WfEeb+kc71BQJrCXaFAAoJEFWfEeb+kc71rYIH/11T
 yEn3uKdwP6sBo9+AHgmy75BcWCVtq++YOXhfJUSIRnBhpjRjUs+11OSp3p7CINmj9g6unsqrk2L
 PLEB7RssR35FYv/Ol3qlJ3eTGdsMUJCMdOCuqZe2QSJ+UZZaxtPmmjf/toDnR1t87Lira9O/i5t
 BfDWtmy1Lua14bS/vnK6MYJOuh9NIjXb85ET+3Z+o1YrO39vNXa99vWrZpqT8U97/ftmRQkcpHG
 R95BEjsLSqvsR0Hdj0Z/V9j7mgDHqRMOmZzsrBMYbLMbeQ0uQWjF4+yk7YxaQ0Qkxzv7Xmi87vr
 pQSC95PUHjBpDh00hRUQVumISKzGyR/AszAFUJE=
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

On 2026-11-11 16:59 +0800, Xia Yan wrote:
> hisi_inno_phy_probe() acquires an exclusive UTMI reset control for each
> child node but never releases it on probe failure or driver detach.
> The leaked controls remain acquired, so a later probe can fail with
> -EBUSY when requesting the same resets.
> 
> Register a devres action after each successful lookup to release the
> control on probe failure and detach.
> 
> Found during source review of reset-control lifetimes.
> 
> Build-tested the driver object on x86_64 with W=1 and reset support
> enabled. No hardware testing.
> 
> Fixes: ba8b0ee81fbb ("phy: add inno-usb2-phy driver for hi3798cv200 SoC")
> Cc: stable@vger.kernel.org # needs of_node_put(child) on <= 6.6

This is not a critical fix to backport. Please drop the tag.

> Signed-off-by: Xia Yan <yanxia@cmss.chinamobile.com>

With tag dropped,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
