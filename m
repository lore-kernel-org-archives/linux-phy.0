Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF90C982CC
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VL1n37jX53ZpZmPrVVm8MSmX501IP0klKYuDsdNY5Zs=; b=PtNA4mXodkz1m4
	D8+0HgjdMQdhXNRILrgwgW9xUR8XESZSDlqWwL1qYAcpeTxGOe4pw0NheS48CnppF8LOS6beP/xuM
	Fi6y3xKWYmHUFCzi32PcUcBL7WRSU17lT76zaE81Ge7jWGheWhf8eX29poqIc348htlA/iAt/UqUA
	PT3sAB90ICp3+qrcw2OZIY2ECLKR0tCaSAe5voMOBJOitzfGPZZmaRaXk9sBMqWSaXmOenjnwGzUw
	gHpRKVgwNYpbQY1E88Fex+qcnseuy8O6BQgzborfSxXuQISbbY4FeVuLhImZTKFRztQH0RsRxtob9
	W27huKZIrp0+vrcpklQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRv-0000000H0Qm-22gl;
	Sun, 20 Sep 2026 06:54:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRu-0000000H0QJ-0KeT
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:54:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E666260136;
	Sun, 20 Sep 2026 06:54:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E191F000FF;
	Sun, 20 Sep 2026 06:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887292;
	bh=KEuH2EAzfUqyNX9a68w9H4vTMXeVGfHbJWfU3V+VveE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ba7ntHvN+gDZfWbdyyP7ukRrMIOv3vx6EaM1bdQ9fOrQjfuu5F0RPXWeXDlJYb7Tj
	 4wtOfOa3R0jk3LytOSOHvCkQtd5sX2iEEloklggpDknm0SsOy407b0ZIA28Kr5QG0t
	 3GgZKZCLPDNtTzlikiSktzTybF+OsDx/i/ZJZF0NDxKVZ//keDyKPFCN+yWJKDL5Ej
	 noBrE1ap5/P6s7tvvI5uX7VHrI7owqXbuyqot6uJu5nbqz/lfMF14NmosLni0vbxi9
	 9iO6mjLUwvhMxwjSNyBTJHQAFtQRtMCg8GeE45c+GWXzqPj48B6GVO36KJrU95qHun
	 iaC52C8SX/T0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 07/12] net: stmmac: dwmac-s32: Add SGMII support
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260919-s32g_serdes-v3-7-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-7-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:51 +0000
Message-Id: <20260920065452.02E191F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBGcm9tOiAiSmFuIFBldHJvdXMgKE9TUykiIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KPiAK
PiBXaXJlIHRoZSBOWFAgUzMyRyBTZXJEZXMgWFBDUyBQQ1MgaW50byB0aGUgZHdtYWMtczMyIGds
dWUgbGF5ZXIgc28gdGhlCj4gTUFDIGNhbiBydW4gU0dNSUkgb3ZlciBhIFNlckRlcyBsYW5lLgo+
IAo+IENoYW5nZXM6Cj4gLSBzMzJfZ21hY193cml0ZV9waHlfaW50Zl9zZWxlY3Q6IHJlcGxhY2Ug
dGhlIGhhcmQtY29kZWQgUkdNSUkgc2VsZWN0b3IKPiAgIHdpdGggYSBzd2l0Y2ggb24gcGh5X2lu
dGVyZmFjZSBzbyBTR01JSSAoMHgwMSksIFJHTUlJLCBSTUlJIGFuZCBNSUkKPiAgIGFsbCBwcm9n
cmFtbWUgdGhlIFNvQyBjb250cm9sIHJlZ2lzdGVyIGNvcnJlY3RseS4KPiAtIEFkZCBzMzJfZ21h
Y19wY3NfaW5pdDogb2J0YWluIHRoZSBwaHlsaW5rX3BjcyBoYW5kbGUgZnJvbSB0aGUgU2VyRGVz
Cj4gICBzdWJzeXN0ZW0gdmlhIHMzMmdfc2VyZGVzX3Bjc19jcmVhdGUoKSwga2V5ZWQgYnkgdGhl
IHN0YW5kYXJkCj4gICBwY3MtaGFuZGxlIHByb3BlcnR5IG9uIHRoZSBHTUFDIG5vZGUgcG9pbnRp
bmcgYXQgdGhlIFNlckRlcyBYUENTIGxhbmUKPiAgIGNoaWxkLiBQcm9wYWdhdGVzIC1FUFJPQkVf
REVGRVIgaWYgdGhlIFNlckRlcyBkcml2ZXIgaGFzIG5vdCBwcm9iZWQKPiAgIHlldC4gVGhlcmUg
aXMgbm8gbWF0Y2hpbmcgZXhpdCBob29rOiB0aGUgZGV2aWNlIGxpbmsgY3JlYXRlZCBieQo+ICAg
czMyZ19zZXJkZXNfcGNzX2NyZWF0ZSgpIGNvdmVycyB0aGUgbGlmZXRpbWUuCj4gWyAuLi4gXQo+
IFRlc3RlZCBvbiBhbiBTMzJHMy1WTlAtUkRCMyBib2FyZDogR01BQzAgbGlua3MgYXQgMUcgb3Zl
ciBTR01JSSBhbmQKPiBwYXNzZXMgdHJhZmZpYywgYm90aCBpbiBTZXJEZXMgbW9kZSAxIChhbG9u
Z3NpZGUgdHdvIGFjdGl2ZSBQQ0llIHJvb3QKPiBjb21wbGV4ZXMpIGFuZCBpbiBtb2RlIDMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSmFuIFBldHJvdXMgKE9TUykgPGphbi5wZXRyb3VzQG9zcy5ueHAu
Y29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVz
LiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTktczMyZ19zZXJkZXMtdjMtMC05ZDY4ODY4YzFlODlA
b3NzLm54cC5jb20/cGFydD03CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
