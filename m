Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06ADEC982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLeaN0nXqSR+9IYa7wyl4bnYoN7T7TFUeVK5fUWt9o0=; b=TxCHw9hnYZGt33
	BaX1nl8euyefh6AB1mZ/dcJqiWpaE5Ax/8WMNdUlW/TdscQZV/yYQl4hg+5mQ/6t/TqBPHRmvI2rK
	npULuFeWI65PdUBPYbcJd0xW43mWqPYV4FRO6PvNJUPCATSvumw/cNyE/7ymkhhEbvcjCGP1giDWx
	j7TQu56aqLEXKJ2CA5Azzvc+YTCTAOGllndt+GPQ38KOYrfTaqH2GTiTMcicxv2S0Y6hM47502TnZ
	UfsNpaLl8KVbYI6ZaAOn2jOs9NklDL4psQmrZLPwudoW1DJWl0xo7v026WCf0/iFBlnbN7fXKLilM
	jQZtGAW8IiRxFCvOsCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DrM-0000000Bem0-31ii;
	Thu, 17 Sep 2026 15:17:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7DrK-0000000BelS-3ifq
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:17:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3F69760211
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:17:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE00D1F0089D
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789658230;
	bh=yokcjFoYaQjb2AXJXwiS2CgA9icNw4hd0m3OmDjYLh0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=baYHiQhLKHIXv5JcbsYM8h8jWAIdy60s6NhCh0ZGU54W95BOiAuC94Ol2AcpHo47g
	 xOJkjhXStRdOshTWhG385se+mN0mwxSalEgzP9JG2PQIOLJ/oHEIVw0zHQeJ6cCyxv
	 qfvHypAZ4Aa+PBTDs1xGLwk8gxllOPs9TBclUTaLcaptPXVE/nH6o6dNw9fmKr/Ga+
	 euX0r0XKcn50B8jtWh1/A5rkcHzzpSCbjKD97mWUlLgkoyhoofyCpgqfsFLMmV7xqx
	 ARc5Jnmu7agtqFNmn3zlh9R+1V4XybdteMzm34GCd9fCbp5oeKdHFvfY4O6Spsy5NH
	 56pQ+Rtftr60g==
Received: by mail-ed2-f27.google.com with SMTP id 4fb4d7f45d1cf-6aa135d6e97so1567954a12.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:17:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwdU/Y3iaE6bFwwg4pRAJ9VxwUuN6lUXwEMacf/JSZFbRglzEmGurjE+9eZznP4wzUiIwmE0YlxtLw=@lists.infradead.org
X-Gm-Message-State: AFuF++kKTEn80tqzd1yRpV/HGVHXa362S3BdHbySplSE1LNWjt4lEV3z
	xnp7rLJ98i3vRaR4M89e4jZkpX0CThc2M5qH+hXerlC6G46A8EZBswBBlk4CAhFC7dC5KGQPSpr
	h6cXHN8TAUaSefSZc6WoYkfJPBqsL0A==
X-Received: by 2002:a05:6402:460c:b0:6a6:8dd:c76b with SMTP id
 4fb4d7f45d1cf-6aa22247992mr11552271a12.1.1789658228391; Thu, 17 Sep 2026
 08:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260917144134.459819-1-matyasdaniel006@gmail.com>
In-Reply-To: <20260917144134.459819-1-matyasdaniel006@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 17 Sep 2026 10:16:56 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLyPK2rJVAyzCtGtrBSTwOKRZ_EAmE1Xd++9DFaxrrmDw@mail.gmail.com>
X-Gm-Features: AcwNN1WrkKsI-hJClnXnbb72poP7rLqVHTc23ccK3T-HSnvYyjsVzuH4L2tWH2Y
Message-ID: <CAL_JsqLyPK2rJVAyzCtGtrBSTwOKRZ_EAmE1Xd++9DFaxrrmDw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Expand flow lists to block lists
To: Daniel Matyas <matyasdaniel006@gmail.com>
Cc: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
	Sen Wang <sen@ti.com>, Peter Huewe <peterhuewe@gmx.de>, Jarkko Sakkinen <jarkko@kernel.org>, 
	Jason Gunthorpe <jgg@ziepe.ca>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Dharma Balasubiramani <dharma.b@microchip.com>, 
	Jeff LaBundy <jeff@labundy.com>, Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Atish Patra <atishp@rivosinc.com>, 
	Shawn Guo <shawn.guo@linaro.org>, Dmitry Osipenko <digetx@gmail.com>, 
	Ibrahim Tilki <Ibrahim.Tilki@analog.com>, Okan Sahin <Okan.Sahin@analog.com>, 
	devicetree@vger.kernel.org, linux-rtc@vger.kernel.org, 
	Ricard Wanderlof <ricardw@axis.com>, patches@opensource.cirrus.com, 
	Lukas Wunner <lukas@wunner.de>, Eugen Hristev <ehristev@kernel.org>, mfd@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-mtd@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-perf-users@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-integrity@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-watchdog@vger.kernel.org
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgOTo0MeKAr0FNIERhbmllbCBNYXR5YXMgPG1hdHlhc2Rh
bmllbDAwNkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gUnVubmluZyBkdF9iaW5kaW5nc19jaGVjayBy
ZXR1cm5lZDoKPiBbZXJyb3JdIHN0cmluZyB2YWx1ZSBpcyByZWR1bmRhbnRseSBxdW90ZWQgd2l0
aCBhbnkgcXVvdGVzIChxdW90ZWQtc3RyaW5ncykKPgoKVGhhdCBmYWxzZSBwb3NpdGl2ZSBpcyBm
aXhlZCBpbiBuZXdlciB2ZXJzaW9ucyBvZiB5YW1sbGludCBzaW5jZSBhdApsZWFzdCBhIHllYXIg
YW5kIGEgaGFsZiBhZ28uIFRoZXJlJ3MgYWxzbyBzb21lIG90aGVyIHF1b3RpbmcgY2hlY2tzCkkn
ZCBsaWtlIHRvIHR1cm4gb24sIGJ1dCB0aGF0IGJ1bXBzIHRoZSBtaW5pbXVtIHZlcnNpb24gc2lu
Y2UgdW5rbm93bgpjaGVja3MgYXJlIGFuIGVycm9yIGluIHlhbWxsaW50LgoKPiBUaGUgZmlsZXMg
dXNlZCBxdW90YXRpb24gbWFya3MgaW4gZmxvdyBsaXN0cyBiZWNhdXNlIHRoZSBzdHJpbmdzIGhh
ZAo+IGNvbW1hcyBhbmQgdGhlc2UgY29tbWFzIHdlcmUgaW50ZXJwcmV0ZWQgYXMgc2VwYXJhdG9y
cy4gQ29udmVydCBmbG93Cj4gc3R5bGUgbGlzdHMgdG8gYmxvY2sgc3R5bGUgbGlzdHMsIHNvIHRo
YXQgdGhlcmUgaXMgbm8gcHJvYmxlbXMgd2l0aCB0aGUKPiBjb21tYXMuCgpJZiB3ZSB3YW50ZWQg
dG8gZml4IGxpa2UgdGhpcywgd2Ugc2hvdWxkIHByb2JhYmx5IGp1c3QgcmVxdWlyZSBibG9jawpz
dHlsZSBldmVyeXdoZXJlLCBidXQgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgZG8gdGhhdC4KClJv
YgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
