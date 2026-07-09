Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1684C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5ccvfad1N8kup+GiAipoesInDa3d1ed0Nw9CmsAd4Q=; b=AWkiGiRtGvZr74
	Qn6SXPb0GDJUuad73rqXQiJe5+3iOpN2I/dDD1lwRTBKvwZEmt8BULhKUYERFmG6FmCZ65IjV/chs
	7RXzdGejbvRpYcjtksu+S9BBkIhZgAwRem/DoXR2i5STe+QwrMo2e5dJ5a1g3vSo5a61NnleI0mUl
	VY7CYdO9gF1SkT2Ey/MqRn3RBA81zkrVyP10mXCb89lTz9nxYTfP9QT3wHzQGP9mEdD0dBzIMvEdD
	RgMTEUgx11Mg0hFtQVjjQgpZEkIAhejt880GhdW7rHD7+UmSt9G8Lq/7SLVqG8PjmD3KscKtBum0I
	UMYcRiS/QTdYqX6ffqHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuVY-00000003ThE-1mdW;
	Thu, 09 Jul 2026 19:34:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuVX-00000003Tgd-1Kyl
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:34:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6F28361385;
	Thu,  9 Jul 2026 19:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71A41F00A3D;
	Thu,  9 Jul 2026 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783625642;
	bh=ti3VrnCGXH3K7rpjzLtxQlr1+Qfs5Ju50/PqS3nSw7c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f/qT1cSnDNQLpnfAY9+sitGRMlzrazY/1A7Q71s/IpcEzsq+pipfOW4JQh/Wp8xWN
	 PmOHuVoxFpGzc+4Jm+1YROa+ydVcq+ZNphElYi7fSVw2CkLiTdsK8kVJmYv9hajPEj
	 QalFOhWD5xza4hTttxCSvXQw7mtXZ1HNvzJcQWwFjppijYcyoD+bln6o8PAT2+MlOx
	 hBrR+6cbXtyBsNmWxo2e5fc4rlJD1X1V+U+dZv5w7OszZ4z6NHzfuw6r3uE171XZSP
	 u/KCzMnCDmt8J3g/hL8fwJFoxQ7dtMAbIEN1NWNr/wFXJ//Hy5JqC4h8n1KhuN9wGm
	 Ck+mjW8VhAhGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-32-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-32-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:34:01 +0000
Message-Id: <20260709193401.B71A41F00A3D@smtp.kernel.org>
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgUEhZX05P
VElGWV9QT1NUX1JFU0VUIG5vdGlmaWNhdGlvbiBvbiB0aGUgcmtfdWRwaHlfc2V0dXAoKSBlcnJv
ciBwYXRoIHBlcm1hbmVudGx5IGxlYWtzIHRoZSBQTSBydW50aW1lIHVzYWdlIGNvdW50ZXIgYW5k
IGxlYXZlcyB0aGUgVVNCIGNvbnRyb2xsZXIgaW4gc29mdCByZXNldC4KLS0KCi0tLSBQYXRjaCBb
MzJdOiBbUEFUQ0ggdjExIDMyLzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCAtRVBST0JF
X0RFRkVSIGhhY2sgLS0tCk5vdGU6IFRoZSBmb3JtYXQgb2YgdGhpcyByZXZpZXcgaGFzIGJlZW4g
YWx0ZXJlZCB0byBhIGZyZWUtZm9ybSBzdW1tYXJ5IGR1ZQp0byBzeXN0ZW0gcmVjaXRhdGlvbiBy
ZXN0cmljdGlvbnMuIFN0YW5kYXJkIGlubGluZSBkaWZmIHF1b3RpbmcgaGFzIGJlZW4Kb21pdHRl
ZC4KCmNvbW1pdCA3MzRiMTU3MTQ5ODMxODVmNzkxYmI0MzA5MWM5MzYyZDY5YWJmOGQ4CkF1dGhv
cjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBEcm9wIC1FUFJPQkVfREVGRVIgaGFjawoKVGhpcyBjb21taXQg
cmVtb3ZlcyB0aGUgLUVQUk9CRV9ERUZFUiByZXR1cm4gZnJvbSBya191ZHBoeV9zdGF0dXNfY2hl
Y2soKQp3aGVuIHRoZSBMQ1BMTCBsb2NrIHRpbWVzIG91dC4gSXQgbm90ZXMgdGhhdCB0aGUgZHJp
dmVyIG5vdyBwZXJmb3JtcyBhIHJlc2V0CmR1cmluZyBwcm9iZSBhbmQgaGFuZGxlcyByZS1pbml0
aWFsaXphdGlvbiBsYXRlciwgbWFraW5nIHRoZSBkZWZlcnJhbAp1bm5lY2Vzc2FyeS4KCltTZXZl
cml0eTogSGlnaF0KSW4gZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMs
IHNwZWNpZmljYWxseSB3aXRoaW4KcmtfdWRwaHlfcG93ZXJfb24oKToKCldoZW4gdHJhbnNpdGlv
bmluZyBmcm9tIFVEUEhZX01PREVfTk9ORSwgdGhlIGRyaXZlciBzZW5kcyBhClBIWV9OT1RJRllf
UFJFX1JFU0VUIG5vdGlmaWNhdGlvbi4gSW1tZWRpYXRlbHkgZm9sbG93aW5nIHRoaXMsIGl0IGNh
bGxzCnJrX3VkcGh5X3NldHVwKCkuIElmIHJrX3VkcGh5X3NldHVwKCkgZmFpbHMgKGZvciBleGFt
cGxlLCBkdWUgdG8gdGhlIExDUExMCmxvY2sgdGltZW91dCBwcm9wYWdhdGluZyB1cCBmcm9tIHJr
X3VkcGh5X3N0YXR1c19jaGVjayBvciBhIGNsb2NrIGVuYWJsZQpmYWlsdXJlKSwgdGhlIGZ1bmN0
aW9uIHJldHVybnMgdGhlIGVycm9yIGRpcmVjdGx5LgoKRG9lcyB0aGlzIGVycm9yIHBhdGggcGVy
bWFuZW50bHkgbGVhayB0aGUgUE0gcnVudGltZSB1c2FnZSBjb3VudGVyIGFuZCBsZWF2ZQp0aGUg
VVNCIGNvbnRyb2xsZXIgaW4gYSBzb2Z0IHJlc2V0IHN0YXRlPwoKU2luY2UgUEhZX05PVElGWV9Q
T1NUX1JFU0VUIGlzIG5ldmVyIHNlbnQgb24gdGhpcyBlYXJseSByZXR1cm4gZXJyb3IgcGF0aCwK
Y29uc3VtZXIgZHJpdmVycyBsaWtlIERXQzMgdGhhdCBhc3NlcnRlZCBhIHNvZnQgcmVzZXQgYW5k
IGluY3JlbWVudGVkIHRoZWlyClBNIHJ1bnRpbWUgdXNhZ2UgY291bnRlciBvbiBQUkVfUkVTRVQg
d2lsbCBuZXZlciByZWNlaXZlIHRoZSBtYXRjaGluZwpQT1NUX1JFU0VUIHRvIHJlY292ZXIuCgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzA5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjExLTAtYTE0OWFjNjBmNzZjQGNvbGxhYm9y
YS5jb20/cGFydD0zMgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
