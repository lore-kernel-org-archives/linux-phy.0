Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EAD606A327
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 13:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ImPLvUSK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=i8gHTW3q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1vKSXa+M3ERmSLBTf9LkTQsxg0OzjxnxDtLOedKr2Y8=; b=ImPLvUSKO3FDNXHBHWeYI5jIum
	aLNPnNYoKXLuLnfl4xh7OdwqC6UaODhoiGN1t7rYtHx44ha0xeguRUyvgTV+R4PWgK4dqyQVFLTJY
	cOEZ/wMqTe3cqCEBkHOk2FB/GWY8Ykwm91zGXbYLKE0XKucMnoOawGoZYCklGRQzYiSlz1CcAAz8l
	9tcg5TaQH0xyF8zHw0meEenqWzFb2X+vtxe94t5YwatBy7U8ZeevsXmdlgIe2o2NuxRK6r0+e4d7w
	S7Sk26drBZCms6QAnDkpDlS2bqYaEVj6nxTRMll+8CbwkH0MfZBRTQ/GusdOzuC8iKLYY6YbK70bv
	ild/qnhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrWD-0000000CzKG-0ebq;
	Fri, 13 Nov 2026 13:40:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrWC-0000000CzK4-2ZuT
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 13:40:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB2D2612D8;
	Fri, 13 Nov 2026 13:40:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B70E1F000C4;
	Fri, 13 Nov 2026 13:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794577239;
	bh=beZHGSkmPVhqezkVJzzwT5A5ST/itYTHmBhwgZp14Hc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=i8gHTW3qe36S0QAB/lTQZVGWTCKSOOVwU48+cA80mOPXEoTi9U6UkYvUNlZWAK1+3
	 kRNlth4Xw3U/3rhcb0ciwk9Sx5ScGaBT2vbt4IvKY5JW4VelCe6pZUjCbNaIVCB+yG
	 8mBHsTG3xEUOYqTIuwBoELTSaMeS7OdDc26XFmpfVVYdaO4kWSC6QEOcb0cRjyWBke
	 5PIF/FbSmKk9vykuk3fQRHI3TJVH+4euE/ZB/SIoJq81C+rGj9Wn1E1OifnJCo4X6v
	 fqBGIrwx6NSa5Ci1X03xanvORWPJPrCllBXQ50TU3tBOUNi5G6Q2rJhVFC0tdG2CYI
	 wkR0JX8GyrW8A==
From: Vinod Koul <vkoul@kernel.org>
To: hyunjungg <hj351016@gmail.com>
Cc: Ray Jui <ray.jui@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Raviteja Garimella <raviteja.garimella@broadcom.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20261109170223.1829473-1-hj351016@gmail.com>
References: <20261109170223.1829473-1-hj351016@gmail.com>
Subject: Re: [PATCH v2] phy: phy-bcm-ns2-usbdrd: cancel extcon work on
 unbind to avoid use-after-free
Message-Id: <179457723606.636098.6675726002332403998.b4-ty@kernel.org>
Date: Fri, 13 Nov 2026 19:10:36 +0530
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


On Tue, 10 Nov 2026 02:02:23 +0900, hyunjungg wrote:
> ns2_drd_phy_probe() schedules driver->wq_extcon (extcon_work), which is
> also queued from the ID/VBUS GPIO interrupt handler gpio_irq_handler().
> The work handler dereferences the driver data via container_of().
> 
> struct ns2_phy_driver is allocated with devm_kzalloc() and the driver has
> no remove callback, so on unbind devres frees it after probe's resources
> are released. The GPIO interrupts are requested with devm_request_irq(),
> and so released by devres; free_irq() only stops further interrupts, it
> does not cancel a delayed work that is already queued. probe() queues
> wq_extcon with a debounce delay before returning, and the GPIO interrupt
> can queue it too, so on unbind the pending work can run after
> ns2_phy_driver has been freed, dereferencing freed memory (use-after-free).
> 
> [...]

Applied, thanks!

[1/1] phy: phy-bcm-ns2-usbdrd: cancel extcon work on unbind to avoid use-after-free
      commit: 7a14efb16083531e442de4c7897bce74ac8635e8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
