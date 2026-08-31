Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3DC8C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KbjC5QldkduiuAUGz81hoaqUojOFITrsOS8dQzSCo4=; b=gp52aZoFLHAT/C
	X4euRUhlpHYhBfaPViodqppgQpdrq4YS8pQ6ezjfDLW+4R3AjdiVxK72I98RTMO1Y7QFZ/fXTMzFw
	vAVct7jNO9lYtVvm5tdhmQ26og0gUfgfEQZdcK1Ka5FWVelhWcfOal0OjdnFaFYFiIWQzF3TPzmAl
	Kh7/UHPcr3L15oimLGr7TA6EITGN1jQPn8H69tU3GVsGgNGbIa8kzCF8fIC4oK30p/Qhmk+DGem8e
	BKYzMUZc+i8oI+jXLTVMbZTaGp9jh8BdmiH/U/Y6UZ5ad+DbR26p96Ly+chHu13TGEgCvN0FfMSdF
	qHX0ANGLmV3+NbbkAtLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0w88-00000008gY3-2iBS;
	Mon, 31 Aug 2026 07:08:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0w87-00000008gXj-0Gph
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:08:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 049506013A;
	Mon, 31 Aug 2026 07:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2CD1F000E9;
	Mon, 31 Aug 2026 07:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788160109;
	bh=n2iZoUZZVaoAdf0YG57XRxMIMRkkjub9h3HnUrjlaXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=B4Cux9DkAr3/1la7VT47UiW13CpmgMKSChBGOcmWaeCHbElfVETzcZReBJ2Vhyr+y
	 rRgODm174DbtR3lT+Y/5Ru+95noQepBGxUKo0wBzxjCwiW4suZSvigLGHWIWYOB7hD
	 zTiBpMAmr86N3XzhT9EopbrzSz1AgUXaO3e/X3ZXJrIqeRLpodjIx+BRCRFQWT5+oL
	 Y24xBS4c0R9v8vFUjiDftPe6MrIElkiagqBWDrr/PNNd7ObHoqjw8re1Caq2G5RXJE
	 4ils5LXzre7ALbcCDN46XvcUPYo+e7oxOotYMg307JrBtIVVqspKTMelUIDtiMp1BN
	 9QLXRq5LdcYZg==
Date: Mon, 31 Aug 2026 09:08:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: airoha: Document support for
 AN7583 USB PHY
Message-ID: <20260831-romantic-goldfish-of-tranquility-1b6dbe@quoll>
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
 <20260827131551.26725-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260827131551.26725-2-ansuelsmth@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Aug 27, 2026 at 03:15:45PM +0200, Christian Marangi wrote:
> Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
> for the USB controller.
> 
> Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> always supported. The USB 3.0 mode is optional and depends on the Serdes
> mode currently configured on the system for the relevant USB port.
> 
> To correctly calibrate, the USB 2.0 port require correct value in
> "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> selecting one of the 4 monitor clock for calibration (internal clock not
> exposed to the system) but each port have only one of the 4 actually
> connected in HW hence the correct value needs to be specified in DT
> based on board and the physical port. Normally it's monitor clock 1 for
> USB1 and monitor clock 2 for USB2.
> 
> To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
> property is required with the phandle pointing to the correct Serdes port
> provided by the SCU node. Providing the phys property is optional if USB
> 3.0 is not used.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Sashiko comments look valid, also same discussion as in PCI phy.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
