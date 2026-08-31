Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82928C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iL8s6gRE37ZkH+kNLZ25TJFX6XlObFcw6C8rhot5RI=; b=jCKPbJXZt99mQO
	8d36sa1/2ljioLyc9dMg3pkSqk65O3SgVtz/jDiai0sUqZO2CGcLzcp7jpDzZx3Plv9ej3fv5Lcth
	BEveC8ZXDh8mGZd9LffLzCk22C9jXhxa9byeSBvcegxJWBenYyhLTgjYPqEDjSuxy2OS1124hxgjI
	O5idqpv/C/NxJV8u7w0SDh5nxppEdW8tMgOFuKK0LxoAa8GqKIJz4e+iTZxUYv585ZKQbzZoBNCwN
	XDu89IpwBNo6u1EmD83BcxdQXRUKxhHs7RgCEBpiMwOrahDWrErAPKl3kFLaD23qZIsdeKgg+DZhU
	wC0dVUFA3Qvj9jLjyYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12LX-00000009W3K-0pSI;
	Mon, 31 Aug 2026 13:46:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12LU-00000009W0f-3TwL
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:46:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2CCDA60120;
	Mon, 31 Aug 2026 13:46:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF5531F000E9;
	Mon, 31 Aug 2026 13:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184003;
	bh=WuuL/Qia19Bav98lglkQeSacGNdudIifkXA5RTiAvGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gBoz5sCvkTv+IpxgCjINmfQLI/+nsk3JGndSv/TnO017Aow/q0iVSC4mAbHpfGpx/
	 bPpsW51y9o7HUjUpNrswwauwEqUuOJx4UAfz+5LiGD/LgbuMBHFp7UG8d2mG5ARuZq
	 V+WMI4E2L78Skuz+5Lt4UsXQtxM60qEtvU1jchU35LFuicOTCT0C20hNDhMIutv4F1
	 NcjNhrwXVaZ2U/ZZVfXHZ4wSXZw1q+xrPGlPuRJrY/T/rZLCXegOBcHhgXSJF+R4k0
	 oyziJoxgDW8+BPV3Lx4X0WJecnCVhB8En8KzMh4gU64E+eUDN4ipQXmXPexxgTxSfn
	 x2z76c9gTa4MQ==
Date: Mon, 31 Aug 2026 08:46:43 -0500
From: Rob Herring <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Frank Li <Frank.Li@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrzej Siewior <bigeasy@linutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
	goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com,
	simona.toaca@nxp.com
Subject: Re: [PATCH v2 3/7] ARM: dts: ti: am335x: Fix redundant interrupts
 property in USB nodes
Message-ID: <20260831134643.GA733140-robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-3-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-3-66fd44d66824@gmail.com>
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

On Tue, Aug 18, 2026 at 07:58:45PM +0530, Bhargav Joshi wrote:
> The am33xx.dtsi defines a single interrupts property for the MUSB nodes.
> Several board-level files override the usb0 node to use
> interrupts-extended instead to include vbus interrupt.
> 
> Since both interrupts and interrupts-extended cannot be used
> simultaneously, Add /delete-property/ interrupts to the overriding
> nodes to resolve the schema warnings.

Actually, both should be allowed. In theory, an OS version not support 
'interrupts-extended' and 'interrupts' is also needed for compatibility. 
Though in reality, we've now had 'interrupts-extended' defined for a 
long time. I'll look into what's causing this warning.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
