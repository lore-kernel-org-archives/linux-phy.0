Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F1B1C624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 11:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/3LPanIQJ2n5SxkPppHHkhkh937JffUHnFMZO5TOUQ=; b=t83C8yI8QzAfET
	CoZ29Da4F4bXfvIPm9UP2XbdcnXC5NY9XYuZIrky9mgGDTfFIZN2omL0HE3M+l5I0evoTbWQMkzwf
	LY8cORxn69PusRzTB5H0dFYpBKMNrDa30xpgHSjdF/T7vogiMSUgSOlDMc+TTpbaxcF8C2jaJ5Ois
	hXycl3jpoeCjX2JwD2QGeRt1oywWacoJvXFEQfaUqqDOfSArTk7BI4IZp8+Rx/EhqMM9a3TLyIx29
	UJlDegZeMjjsWltcA+W+LvxPF+rN/o3JPuq0F1cSX5W6BhUR3thxR8SsuSC7pzfVSafzEs0FJvJo+
	dvWTHpG/xNjIFzFmBPcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25tb-0000000HEhg-2n6K;
	Thu, 03 Sep 2026 11:46:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25tZ-0000000HEhU-35gI
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 11:46:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CCC986022C;
	Thu,  3 Sep 2026 11:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578CC1F000E9;
	Thu,  3 Sep 2026 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788435976;
	bh=hMqxdzKrWow7jpM0HakJLDnYHFNMOJBE2QIgHGSmMT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nvU3ngATjz6jRDjc1JUWES6jaVshC5LwTusZaLg8us52Cv9XxjMgcspOcme5x0yQ8
	 k/GDanFLKF4KOzgg3GZ3p24+zS7F2SeVu31Bh6AptlWJP7qDWW0PKOTVMXrYkHT4va
	 KFfhWplD0KuS9K+jtULivEQX6BM4eX0nKCx3OIbO+WBW/Y/Wp2recyxpOYiTHtwWkt
	 RYY5x75zt9P/fq8kWHamfKRtDVnt68omeHh0aXvbhSCv2ttMpCAeIwl7uqcoMt7pWj
	 +tGc92zy8MV8r8BnW29xdmDDZDs770qfItBSZrvL/p1xBGUv/L/94tfapcLT+qSVM2
	 ZOs6Jk0cER1sw==
Date: Thu, 3 Sep 2026 13:45:53 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrzej Siewior <bigeasy@linutronix.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Ravi B <ravibabu@ti.com>, 
	Kumar Gupta <ajay.gupta@ti.com>, Bin Liu <b-liu@ti.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, goledhruva@gmail.com, 
	m-chawdhry@ti.com, daniel.baluta@gmail.com, simona.toaca@nxp.com
Subject: Re: [PATCH v3 2/6] dt-bindings: phy: ti,am335x-usb-phy: Convert to
 DT schema
Message-ID: <yawsbme42sxvel5ftn6urvxnqczx6hd2crdnh22abeegfigdnz@tpmzmpc2wbny>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
 <20260901-ti-am33-usb-v3-2-5e15c617d2e9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901-ti-am33-usb-v3-2-5e15c617d2e9@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDEsIDIwMjYgYXQgMDQ6NTM6MDZBTSArMDUzMCwgQmhhcmdhdiBKb3NoaSB3
cm90ZToKPiBDb252ZXJ0IHRoZSBUSSBBTTMzNXggVVNCIFBIWSB0ZXh0IGJpbmRpbmdzIHRvIERU
IHNjaGVtYS4KPiBBZGQgdW5kb2N1bWVudGVkIHZjYy1zdXBwbHkgcHJvcGVydHkgdG8gbWF0Y2gg
ZXhpc3RpbmcgRFRTIHVzYWdlLgo+IAo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8
cm9iaEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEJoYXJnYXYgSm9zaGkgPGouYmhhcmdh
di51QGdtYWlsLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
