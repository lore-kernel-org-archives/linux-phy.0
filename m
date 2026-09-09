Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1339AC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAXkvS6TxQ6W+k44s3UWEpYV5O+8ZPshCw4msvW1tn8=; b=0eQoLxSS62gIo3
	PK63p8p2LGWIsowIsz4JMctJybrbqwz0wY099RQ85E9v02OVGbVE20k5k6ilnjprMTnBv7vF+ihE8
	3hcYC/Q2UL4WUPf4XJZIBPVZKhxnhKvFOoFT3NKlkTBlXAMyEG5r1mE4YkIzZaEZjvZNgObnRJb1O
	EYaJa1Kji1O4RO1B6CNr4JoD1jws/bovZNVNGs7jlWJu9VkUoSFtoHA9q3Zydv0+RvyR7C+d1JzTW
	b2CMiz81sPX1I51ecn3gdaddLQY+43/i9JIKNivE3cB/Xpk08vxFosSLks4oXPRiILluzF9wOnw3b
	N5881lJ3y8b9J8WJgtLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lvm-0000000CSRf-2rb0;
	Wed, 09 Sep 2026 17:17:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lvm-0000000CSR5-0St3;
	Wed, 09 Sep 2026 17:17:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C68F34177F;
	Wed,  9 Sep 2026 17:17:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2712D1F00893;
	Wed,  9 Sep 2026 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974273;
	bh=8VPY0deMqZZdrYnmVNpJtaQIzzwrsHUnmWiCqzQ+mTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h/Tl62vDVbX7K7x9KxWl4Y1ioFq2FtWmlA0h7fNRPi1yoUVPKOfJQv4aj0vSn/zG0
	 o4H+TRVi07XNDX4qm6y8JxgfeANszC3KWbSxV5dP4gZ8Ir9Pj/sSjkArLr06pjCU2C
	 VZ8vPxIezLpot7J1zyVd5AjcWlSsvGj8T2Xqlus9nQ1jj9QUYkOQ0+CM8nxcWViVgC
	 lABKCMhDvA07ki3Ckc1S3CR0fWaGkRBV2dO9mhIIcm5GD3E/XHMl4PlazfcNHp2sg4
	 CTTJKi94WMWXwyEXJ1OlEjxa0u+H6PWGstz3+SyzoHQjmxRPx0/VKRE6zNB1wnqGg3
	 YHPzGEhrL4DqQ==
Date: Wed, 9 Sep 2026 19:17:43 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 07/12] phy: phy-mtk-dp: Support setting volt swing and
 preemphasis values
Message-ID: <voe2zlbmri2mesde2b5ypyj5xtfcaso4i4vsjlkrjfkq2mxxue@5hbymqqlb2da>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-8-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-8-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6NDBQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIGhvbm9yaW5nIHRoZSBzZXRfdm9s
dGFnZXMgcmVxdWVzdCB0byBzZXQgdGhlCj4gdm9sdGFnZSBzd2luZyBhbmQgcHJlZW1waGFzaXMg
dmFsdWVzIGluIHRoZSAuY29uZmlndXJlKCkgY2FsbGJhY2suCj4gCj4gRm9yIHByb3BlciBoYXJk
d2FyZSBjbGVhbnVwLCByZXNldCBib3RoIGluIHRoZSAucmVzZXQoKSBjYWxsYmFjay4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGlu
by5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFz
aXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
