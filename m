Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 883C0C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceokHMs9q9afC1MuL740j1lWEcaPRIpXXLrFwm/gofY=; b=kgNdusQqtyyp1Y
	fegw+LeIXMP3DsuTus4dpg71ssPtbiu/aEEO7v440NsxfAgcKhSXRkrSU5wm4ips8DBrhkJKOXi25
	09tZKqAa1W7R6dyqOpKtByn/Yn41tCztKMgDBz7kRUN9zuf9FeYNkUhjQ/pkaOr5qt/HLuunfXJLc
	SD9VPVDVA85UKdAu1e3dVJzKtKwdd+V8NNx8VNpLw3CPBQAg7AEq8Z8iDsuq9jMjGmALYSSR9CGU/
	AdhzpjbTrrQOjrkc0Sgxdcva8dqV039ayCjBjv9J6wJXGdvBJEHHzUCFp92Zfd+wLLn4mRH68NFJ2
	UzsRwE6UI87dKxTRPFqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdE2F-0000000Btvm-4AkJ;
	Fri, 26 Jun 2026 21:24:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdE2D-0000000Btvc-4Bep
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:24:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 707CA401FC;
	Fri, 26 Jun 2026 21:24:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C215E1F000E9;
	Fri, 26 Jun 2026 21:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782509065;
	bh=meyCxyyq6wQlMw5UNwqs2YmBFT9UPIYc/BxRbXbjDOU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EObZh9zmorohAFFsTgCq4pCuBVadLBbS5O5/h9EE0tEcI2bxJSSCAuz5pDoQht5U/
	 ZIYSZesGn3GMM5+T1/fiG+bP7mqgFgJCayvYHTVdNVRVr3+nkDMnPT94v5KjAx6GcC
	 5ZaIUvuZic7WIyxsDtsQgjyy+kJbJboQGI8RaIAiiVJ6y1xGDtzluckW9tm4vUwZVI
	 K02J0KrwHuRsCyHYSYKOSZY38gw2s8n1wKYZKUDUY8dD2a4VKHWQgQECQZREy9DwEX
	 qxRInXmg0Dn0SsKMdcMpqDs/oxl5/ul1c7FoGoHVUwifudf/Y1wtEvHgbASTjQ42f/
	 g9jD3UzU0K8tA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 28/29] phy: rockchip: usbdp: Avoid xHCI SErrors
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-28-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-28-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:24:24 +0000
Message-Id: <20260626212424.C215E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVbmNvbmRpdGlvbmFsbHkgcmUtZW5hYmxpbmcgdGhlIFVTQjMgcG9ydCBkdXJpbmcg
UEhZIHJlLWluaXRpYWxpemF0aW9uIG92ZXJyaWRlcyB0aGUgSGlnaC1TcGVlZCBvbmx5IChocykg
Y29uZmlndXJhdGlvbiwgcG90ZW50aWFsbHkgbGVhZGluZyB0byBhbiBTRXJyb3Igb24gc3Vic2Vx
dWVudCBQSFkgcG93ZXIgb2ZmLgotLQoKY29tbWl0IDlkMWIwOGMzMTFjYWJkZTE3OTJlOWY4ZWY2
N2FiNmI3YTVmNzYwMDUKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBBdm9pZCB4SENJIFNFcnJv
cnMKClRoaXMgcGF0Y2ggYXZvaWRzIHhIQ0kgU0Vycm9ycyBieSBkaXNhYmxpbmcgdGhlIFVTQjMg
cG9ydCBiZWZvcmUKcmUtaW5pdGlhbGl6aW5nIGl0IHdoZW4gc3dpdGNoaW5nIGJldHdlZW4gVVNC
My1vbmx5LCBVU0IzICsgRFAgYW5kIERQLW9ubHkKbW9kZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggZGMxNjYzOTJiYTE5OS4uN2M4YjllYWFm
MzUyNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4g
QEAgLTEwMzMsOCArMTAzMyw4IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0
IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxl
KHVkcGh5LCBmYWxzZSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3Rpbmcg
aXNzdWUsIGJ1dCBkb2VzIHRoaXMgdW5jb25kaXRpb25hbGx5IHJlLWVuYWJsZSB0aGUKVVNCMyBw
b3J0IGFuZCBvdmVycmlkZSB0aGUgSGlnaC1TcGVlZCBvbmx5IChocykgY29uZmlndXJhdGlvbj8K
CklmIHRoZSBzeXN0ZW0gaXMgY29uZmlndXJlZCB3aXRoIGEgaGlnaC1zcGVlZCBvbmx5IFVTQiBk
ZXZpY2UsIHRoZSBQSFkKaW5pdGlhbGl6YXRpb24gdmlhIHJrX3VkcGh5X3VzYjNfcGh5X2luaXQo
KSBjb3JyZWN0bHkgZGlzYWJsZXMgdGhlIFVTQjMgcG9ydAp0byBzYWZlbHkgcm91dGUgdGhlIHhI
Q0kgUElQRSBjbG9jayB0byB0aGUgVVRNSSBmYWxsYmFjay4KCldoZW4gYSBEaXNwbGF5UG9ydCBj
YWJsZSBpcyBwbHVnZ2VkIGluLCBya191ZHBoeV9wb3dlcl9vbigpIGlzIGNhbGxlZC4gU2luY2UK
dWRwaHktPm1vZGUgc3RpbGwgY29udGFpbnMgVURQSFlfTU9ERV9VU0IgZm9yIGNvbWJvIG1vZGVz
LCB0aGlzIGNvZGUKc3dpdGNoZXMgdGhlIGNsb2NrIHNvdXJjZSBiYWNrIHRvIHRoZSBQSFksIG92
ZXJyaWRpbmcgdGhlIGRpc2FibGVtZW50LgoKV2hlbiB0aGUgRFAgY2FibGUgaXMgZGlzY29ubmVj
dGVkLCBya191ZHBoeV9kcF9waHlfcG93ZXJfb2ZmKCkgZHJvcHMgdGhlCnN0YXR1cyB0byBVRFBI
WV9NT0RFX05PTkUgYW5kIHBvd2VycyBvZmYgdGhlIFBIWS4gQXQgdGhpcyBwb2ludCwgdGhlIGFj
dGl2ZQp4SENJIGNvbnRyb2xsZXIgcnVucyB3aXRob3V0IGEgY2xvY2ssIGNhdXNpbmcgYW4gaW1t
ZWRpYXRlIFNFcnJvciBvbiBpdHMKbmV4dCByZWdpc3RlciBhY2Nlc3MuCgpTaG91bGQgdGhlIHJl
LWVuYWJsZSBjb25kaXRpb25zIGhlcmUsIGFuZCBzaW1pbGFybHkgYWZ0ZXIgdGhlIFBIWQpyZS1p
bml0aWFsaXphdGlvbiBmdXJ0aGVyIGRvd24gaW4gdGhpcyBmdW5jdGlvbiwgY2hlY2sgaWYgaGln
aC1zcGVlZCBvbmx5CmlzIGRpc2FibGVkPwoKRm9yIGV4YW1wbGU6CmlmICgodWRwaHktPm1vZGUg
JiBVRFBIWV9NT0RFX1VTQikgJiYgIXVkcGh5LT5ocykKCj4gIAkJdWRwaHktPnBoeV9uZWVkc19y
ZWluaXQgPSBmYWxzZTsKPiAgCX0gZWxzZSBpZiAodWRwaHktPnBoeV9uZWVkc19yZWluaXQpIHsK
PiAtCQlpZiAodWRwaHktPm1vZGUgPT0gVURQSFlfTU9ERV9EUCkKPiAtCQkJcmtfdWRwaHlfdTNf
cG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVlKTsKPiArCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUo
dWRwaHksIHRydWUpOwo+ICsJCXVkZWxheSgxMCk7Cj4gIAo+ICAJCXJldCA9IHJrX3VkcGh5X2lu
aXQodWRwaHkpOwo+ICAJCWlmIChyZXQpCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjI2LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAt
djgtMC00N2Y2ODI5ODc4OTVAY29sbGFib3JhLmNvbT9wYXJ0PTI4CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
