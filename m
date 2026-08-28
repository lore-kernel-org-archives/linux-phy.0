Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7D7C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8tWrQtnLYrMjRZkTaQ5GUPgVb+qHlujCHTIWIi8oVo=; b=fgZkYQjeL5HDXd
	Ly+TGkYDwqJP1mt5WHkQYda46F0lWsNvCVjlmYOyUohrCOKBrTWMpJle/xklI/93U8r0O3khx4kyu
	6GjuxF7a8AAe0QJn2QaVcC2DJ5mNIi46/QvYoVk+bnMsTcWgsPbPIy2BVXOeYuaOFw0VYsmfZWY+Y
	ufyi3DQux8D1N1U5qWLxnU6ykufWh9Fp0lFiJTVlyov9SxNGAzoTgiFoWLp6g5IVGoVJpDXxBMinI
	ioS6gAtj7nHKqhg45S3Lslaq/xqO7VmIoMhWlKqmc2+Ux4jEElFqGwHOiPhZaBBs7/qO3o8YS8tq4
	nnvWMNoAZXYfKgBuZ1yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztSG-00000005XVl-0kYO;
	Fri, 28 Aug 2026 10:05:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztSE-00000005XVK-2SVx
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:04:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EED25601F5;
	Fri, 28 Aug 2026 10:04:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A201F000E9;
	Fri, 28 Aug 2026 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787911497;
	bh=VdjsVUhbkv+LFC3Ze98frl8sFLdHJ5hN/CLAOj65QuA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bMvkfttXVsDZOZK9MYxW6PfaZTMCB2OpQhCZdg4BNiwczeIdTTkdS0607SfZXDZZ1
	 Dz51fVaRDQAs+dRNIL5t+MmxiTV00OZbyRME0FKZDASl2DxOofSCNiYhFhTzLp+HNI
	 ShY4+8k2iUl2UD3SuY6eFIgU0w8hvVwxPbsyFEKVUwMyHg+toYCbAN0H87ykDRXhPU
	 BBDw8JZFisjjTo5U4dEY1NwAfUUdI1bV0gy62SlPbDvlrn8FT68kJODwjfmc/79FI/
	 ucpqU/xG6vo7ei2TNCV/+Y5FbNZebYbZywNLAN9aGwlsEI257uBgIyGEq8Ay8PS1MH
	 urbPupSLGb/CA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/4] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 10:04:56 +0000
Message-Id: <20260828100457.57A201F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIElu
Y29tcGxldGUgSW1wbGVtZW50YXRpb246IFRoZSBwYXRjaCBpbnRyb2R1Y2VzIERQIFY4IENPTSBz
cGVjaWZpYyBtYWNyb3MgYnV0IGZhaWxzIHRvIHVzZSB0aGVtIGZvciBhbGwgYXBwbGljYWJsZSBD
T00gcmVnaXN0ZXJzIGluIGBxbXBfdjhfbjNfdXNiNDNkcHBoeV9yZWdzX2xheW91dGAuCgpQcmUt
ZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBJbmNvbXBsZXRlIFJlZ2lzdGVyIExheW91dCBGaXg6
IGBxbXBfdjhfdXNiM3BoeV9yZWdzX2xheW91dGAgaW5jb3JyZWN0bHkgdXNlcyBVU0IgQ09NIG9m
ZnNldHMgZm9yIERQIHBvbGxpbmcgcmVnaXN0ZXJzLgotLQoKY29tbWl0IGRjMThiMjM1ZWFjNWM0
YmU3YWRmY2VhZGQ5ZjVjYjNhMTQ2YTYyYzAKQXV0aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5r
dW1hckBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxdWFsY29tbTogcW1wLWNvbWJvOiBBZGQgRFAg
Q09NIHY4IGhlYWRlciBhbmQgZml4IHJlZ2lzdGVyIGxheW91dAoKQWRkIHRoZSBuZXcgRFAtc3Bl
Y2lmaWMgUVNFUkRFUyBDT00gdjggaGVhZGVyIGZpbGUgYW5kIHVwZGF0ZSB0aGUKcmVnaXN0ZXIg
bGF5b3V0IHRvIHVzZSBEUC1zcGVjaWZpYyBzdGF0dXMgcmVnaXN0ZXIgb2Zmc2V0cyBmb3IKQ19S
RUFEWV9TVEFUVVMgYW5kIENNTl9TVEFUVVMgcmVnaXN0ZXJzLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+IGluZGV4IGMzOWNlZDE2OGQwMzUuLjRkMzE2Mzdm
MWRjZTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwoK
WyAuLi4gXQoKPiBAQCAtMzE4LDggKzMxOSw4IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQg
cW1wX3Y4X24zX3VzYjQzZHBwaHlfcmVnc19sYXlvdXRbUVBIWV9MQVlPVVRfU0laRV0gPSB7Cj4g
IAlbUVBIWV9EUF9BT05fVE9HR0xFX0VOQUJMRV0JCT0gUVBIWV9WOF9QQ1NfQU9OX0RQX0FPTl9U
T0dHTEVfRU5BQkxFLAo+ICAKPiAgCVtRUEhZX0NPTV9SRVNFVFNNX0NOVFJMXQkJPSBRU0VSREVT
X1Y4X0NPTV9SRVNFVFNNX0NOVFJMLAo+IC0JW1FQSFlfQ09NX0NfUkVBRFlfU1RBVFVTXQkJPSBR
U0VSREVTX1Y4X0NPTV9DX1JFQURZX1NUQVRVUywKPiAtCVtRUEhZX0NPTV9DTU5fU1RBVFVTXQkJ
CT0gUVNFUkRFU19WOF9DT01fQ01OX1NUQVRVUywKPiArCVtRUEhZX0NPTV9DX1JFQURZX1NUQVRV
U10JCT0gRFBfUVNFUkRFU19WOF9DT01fQ19SRUFEWV9TVEFUVVMsCj4gKwlbUVBIWV9DT01fQ01O
X1NUQVRVU10JCQk9IERQX1FTRVJERVNfVjhfQ09NX0NNTl9TVEFUVVMsCj4gIAlbUVBIWV9DT01f
QklBU19FTl9DTEtCVUZMUl9FTl0JPSBRU0VSREVTX1Y4X0NPTV9CSUFTX0VOX0NMS0JVRkxSX0VO
LAoKW1NldmVyaXR5OiBMb3ddClNob3VsZCBRUEhZX0NPTV9SRVNFVFNNX0NOVFJMIGFuZCBRUEhZ
X0NPTV9CSUFTX0VOX0NMS0JVRkxSX0VOIGFsc28gYmUKdXBkYXRlZCB0byB1c2UgdGhlIG5ldyBE
UF9RU0VSREVTX1Y4X0NPTV8qIG1hY3Jvcz8KClNpbmNlIHRoZSBwYXRjaCBhaW1zIHRvIGRlY291
cGxlIERQIFY4IENPTSBtYWNyb3MgZnJvbSBVU0IgVjggQ09NIG1hY3JvcywKbGVhdmluZyB0aGVz
ZSBrZXlzIG1hcHBlZCB0byBRU0VSREVTX1Y4X0NPTV8qIGluc3RlYWQgb2YgdGhlIG5ldwpEUF9R
U0VSREVTX1Y4X0NPTV8qIHZhcmlhbnRzIHNlZW1zIHRvIHNraXAgcGFydCBvZiB0aGUgc2VtYW50
aWMgc2VwYXJhdGlvbi4KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBp
c3N1ZSwgYnV0IEkgbm90aWNlZCBhbm90aGVyIGxheW91dCB0aGF0IG1pZ2h0IGhhdmUKYSBzaW1p
bGFyIHByb2JsZW0gd2l0aCBEUCBwb2xsaW5nIHJlZ2lzdGVycy4KCkxvb2tpbmcgYXQgcW1wX3Y4
X3VzYjNwaHlfcmVnc19sYXlvdXRbXSBlYXJsaWVyIGluIHRoaXMgZmlsZToKCmRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jOnFtcF92OF91c2IzcGh5X3JlZ3NfbGF5b3V0
W10gewogICAgLi4uCiAgICBbUVBIWV9DT01fQ19SRUFEWV9TVEFUVVNdICAgICAgID0gUVNFUkRF
U19WOF9DT01fQ19SRUFEWV9TVEFUVVMsCiAgICBbUVBIWV9DT01fQ01OX1NUQVRVU10gICAgICAg
ICAgID0gUVNFUkRFU19WOF9DT01fQ01OX1NUQVRVUywKICAgIC4uLgp9CgpUaGlzIGxheW91dCBp
cyB1c2VkIGJ5IHRoZSBzbTg3NTBfdXNiM2RwcGh5X2NmZyBjb21ibyBQSFkgY29uZmlndXJhdGlv
bi4KCkR1cmluZyBEUCBpbml0aWFsaXphdGlvbiwgcW1wX2NvbWJvX2NvbmZpZ3VyZV9kcF9waHlf
Y29tbW9uKCkgcG9sbHMKUVBIWV9DT01fQ19SRUFEWV9TVEFUVVMgYW5kIFFQSFlfQ09NX0NNTl9T
VEFUVVMgb24gdGhlIGRwX3NlcmRlcyBibG9jazoKCiAgICByZWFkbF9wb2xsX3RpbWVvdXQocW1w
LT5kcF9zZXJkZXMgKyBjZmctPnJlZ3NbUVBIWV9DT01fQ19SRUFEWV9TVEFUVVNdLCAuLi4pOwoK
U2luY2UgdGhpcyBsYXlvdXQgbWFwcyB0aGVzZSB0byB0aGUgVVNCIFY4IG9mZnNldHMgKDB4MmYw
IGFuZCAweDJjOCkgcmF0aGVyCnRoYW4gdGhlIERQIFY4IG9mZnNldHMgKDB4MzNjIGFuZCAweDMx
NCkgb3IgRFAgVjYgb2Zmc2V0cyAoMHgxZjggYW5kIDB4MWQwKSwKd2lsbCB0aGlzIGNhdXNlIERQ
IGluaXRpYWxpemF0aW9uIHRvIHJlYWQgaW5jb3JyZWN0IG1lbW9yeSBhbmQgdGltZSBvdXQgb24K
c204NzUwIGRldmljZXM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwODI4LWdseW11ci1waHktdjMtdjMtMC04ZTczY2U3YzQ2MzZA
b3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
