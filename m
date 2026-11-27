Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5AD606A334
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tJ00tbxg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UxR2vhDR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0QYT7mAW/j99LMN3rbN6fBIlPrmMkP2/NMy7l/l/hL8=; b=tJ00tbxgtafgFPEdq1M5xmw6/s
	D2+jLVlyfoZJowJZGV804hykUov9ONYer/r5ZYlVdjI7qBcxJMWhYMXiaefjcHoQ0hTcqYA2If6jE
	ag6lKF7u/itfFuNQuwmeiB3fvwshcUG4Jc6zeSYyuvupSk9cfBbJlUUDlPxm+hY8nniESaxvA43oh
	FU7TYshTZ3Rp8OcIrx46xMJprOQuYdP/bzB/VsNhXhOPggoc17nS0CwtDuTQvE8bM195UrmqHFFBs
	qnqzk2NXct9srTqgeHNjWRlzNiftic9YgaW7h03pSTBhc3sLaxraLLxZqSjBftnuZi/22Lhk2ktCS
	qznUUhcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuSm-0000000FtkO-2eS1;
	Fri, 27 Nov 2026 11:50:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuSY-0000000Ftdo-0mDj
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:49:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 868D6629AD;
	Fri, 27 Nov 2026 11:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 815F41F00924;
	Fri, 27 Nov 2026 11:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795780184;
	bh=rbv+ZRY1hTgFi9Mxq720ChCJPJCjxkl+y9N2215YurY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=UxR2vhDRywY79DDAA2y0cedu5zYYZnFBdG3Ba60dbX0Kcqw5c9PTLZ8f/ncyWRaYN
	 +akFjXqC933cJSwv7ellA+Prq0zERTZFtE8WfDzetzpPXgd3fNanuSndGq9yeNcSQE
	 qrwpoAgEJ3snK9AkDKOQW1NaQHjTiCqRmlO859e4sUJsOO2rh+tf35R6cgCxgDRSTh
	 iQM42Fv7ej6+XwcgQ1Fm9lUCNHCKtokGJ1xJmU7DS8RCPwvCftXM0oqK2AHompRvQu
	 QHBb27sUvllo0f4HpPIhadlrkZPa5e1ZZjEymKcGfLL7/SXSlvZgcjVeWmbbmqmL5X
	 VA4LdRlY5HsPA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] phy: ath79-usb: support the AR934x+ analog
 reset
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: Alban Bedel <albeu@free.fr>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
In-Reply-To: <20261109040451.114135-1-rosenp@gmail.com>
References: <20261109040451.114135-1-rosenp@gmail.com>
Date: Fri, 27 Nov 2026 17:19:35 +0530
Message-Id: <179578017595.13164.12126141982607510391.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=852; i=mani@kernel.org;
 h=from:subject:message-id; bh=YoghiWzFJcixHIuszTbMYEyp9OVk+H3Z0m1P5peQhCg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW5TdC9l9EDr+zJSIg8Q0ZCrgt3WrPfh+JgRS
 J3BxjuTs5aJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawluUwAKCRBVnxHm/pHO
 9WqDB/9JUiSmwgBQ94I2WV0UeoOrbHmW8u44q3Njrr7PENGP90okGCmNIpn/fHdHZPxaZkfBgyd
 csqLE2r5pvEt/teRhQUFchF2rcqXcEm8o91e0gClhw6iY9soTpw/cl4gXxhsMVoYuFiiI5B083g
 xhnxPkSff3CYfU7DeBkXi+iitmuCmDPCyD1MQS/k5f7ZLqZeYjmSpvv2rGH+7vR+aLaUkuPHY3r
 fm5P9ucZHbjV0qwle5wrQk1aMoL+cchK8sid5oEQ3UtJimPRXQ2OtxiSiyA897Zxtc6uSrUNH4t
 bzH5xdf8pMS4BdRM+L2HQKQrVwSfMa29pwOMypR+IaUfDFC+
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

On 2026-11-08 20:04 -0800, Rosen Penev wrote:
> From AR934x on, the analog part of the ath79 USB PHY has its own reset,
> which the old platform code handled outside the PHY driver. Patch 1
> adds the optional third "phy-analog" reset to the binding, along with
> AR9340 and QCA9550 compatibles that require it. Patch 2 makes the
> driver take and sequence that reset.
> 
> Changes in v2:
> - Send the binding and driver changes together as one series. v1 sent
>   the driver patch alone, so it used a "phy-analog" reset name that the
>   binding on the list did not yet document.
> - No code changes.
> 
> Claude Code (Claude Opus 5.5) was used while preparing this series.
> I reviewed and tested every change and take responsibility for it.
> 

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
