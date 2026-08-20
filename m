Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC7B4C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zT5WJSE4fSecZy3+5oRQBtMAEiTplWW7I5et2aL8Hs=; b=o2CFyHA11nO/nN
	F2zPJuBTyHZm/HeLdOSgOaC0kVtCIyaVka+WatZPqLCT423atv5ZBZNT2Ts2QWvz1dhBfZj5WsyWw
	vMAK2ydyQIAtEeDFnbySCDWoXcLuSrvVMPUOQv9pcX/Xw3HElO/QHoel0cFZFp/iuvvqtThhdLGSu
	pJRyd5lmmwttLsB9uwO014FbJC7FKFigo4jL8uasUMX8mxt5dGKsH7NQd5bPQ1ckIln+c/Vr/qeF2
	pR63ARKWD08PBUJQTs1wBGjhOoFgFw5Z7lZiArnEJyAGUjgwdx7fl6QeZV7fMeOnPi77nkx+tvIPp
	uUiq/watRAlTUyF9JpmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3sd-0000000Binf-28zr;
	Thu, 20 Aug 2026 14:36:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3sb-0000000BinP-3zWw
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:36:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 23CDA60A5D;
	Thu, 20 Aug 2026 14:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60E581F000E9;
	Thu, 20 Aug 2026 14:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787236588;
	bh=0uREgUYOEaKxR+A1apaQIZBJ2VMULLDQW24odLs+5NA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TqD2mQMeyemxs1lqTQzJ4CdoQ3zKKtfyvj3zciqMbvAFlLJmCsakzLyGApfOe55pV
	 J7o1X4CvrD5QJRN7AD/c/B5MJs8UwdphG+oo+GATb0pxa7XeyHZfaUxjn6MXY37uOY
	 JgxHl/jJ6lm2w/4uMEKIKjThKGypoRoLVpkb/1Smqbb1ZpaFPpClcDMG9e4yqmw9jS
	 w+CobCNilXLt2tcHN0r+IfPrgpoTAwh8MVKwmLQDL92GknowLzYTyhHwak+uNQziem
	 aLn7tJGfddz/HHba/NNlTzsi0j52w8rhP2rL5Ms0fHumu7kQQgK0zXzZHcD6Vg4ntI
	 FJvXRy3Lj544g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260820-topic-usb4phy-v4-1-aec9d2cb31f6@oss.qualcomm.com>
References: <20260820-topic-usb4phy-v4-0-aec9d2cb31f6@oss.qualcomm.com>
 <20260820-topic-usb4phy-v4-1-aec9d2cb31f6@oss.qualcomm.com>
Date: Thu, 20 Aug 2026 14:36:27 +0000
Message-Id: <20260820143628.60E581F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBhbGxPZmAg
Y29uZGl0aW9uYWxzIGZvciBgeDFlODAxMDBgIGFuZCBgc2M3MTgwYC9gc2RtODQ1YCB1bmludGVu
dGlvbmFsbHkgbWFrZSB0aGUgNXRoIGNsb2NrIG1hbmRhdG9yeSwgYnJlYWtpbmcgc2NoZW1hIGJh
Y2t3YXJkIGNvbXBhdGliaWxpdHkgZm9yIGRldmljZSB0cmVlcyB0aGF0IG9ubHkgcHJvdmlkZSA0
IGNsb2Nrcy4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCB2NCAxLzVdIGR0LWJpbmRpbmdzOiBw
aHk6IHFjb20scW1wLXVzYjMtZHA6IEV4dGVuZCBYMUUgZGVzY3JpcHRpb24gZm9yIFVTQjQgLS0t
CmNvbW1pdCAxNmI0NjRiMmYxNmNkZmU5OTA2Mjk1YThjYTA0M2M2YzkyZjhiOTcwCkF1dGhvcjog
S29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGlu
Z3M6IHBoeTogcWNvbSxxbXAtdXNiMy1kcDogRXh0ZW5kIFgxRSBkZXNjcmlwdGlvbiBmb3IgVVNC
NAoKVGhpcyBjb21taXQgYWRkcyBhIG5ldyBVU0I0IGNsb2NrIHRvIHRoZSBYMUUgUU1QIGNvbWJv
IFBIWSBiaW5kaW5nCnRvIGVuYWJsZSBVU0I0IG1vZGUuIEl0IHJlc3RydWN0dXJlcyB0aGUgc2No
ZW1hJ3MgYWxsT2YgY29uZGl0aW9uYWxzIHRvCmFwcGx5IHNwZWNpZmljIGNsb2NrIGxpc3RzIGJh
c2VkIG9uIHRoZSBjb21wYXRpYmxlIHN0cmluZy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHku
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4
cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+IGluZGV4IDhhZGZjNzgxMDhmZWYuLjk0YTRmYmZmNDI4
ZjQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1s
CgpbIC4uLiBdCgo+IEBAIC0xODksMjEgKzE4NCw1OSBAQCBhbGxPZjoKPiAgICAtIGlmOgo+ICAg
ICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAgIGNvbXBhdGlibGU6Cj4gLSAgICAgICAgICBlbnVt
Ogo+IC0gICAgICAgICAgICAtIHFjb20sc2M3MTgwLXFtcC11c2IzLWRwLXBoeQo+IC0gICAgICAg
ICAgICAtIHFjb20sc2RtODQ1LXFtcC11c2IzLWRwLXBoeQo+ICsgICAgICAgICAgY29udGFpbnM6
Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFt
cC11c2IzLWRwLXBoeQo+ICAgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoKPiAgICAgICAg
ICBjbG9ja3M6Cj4gICAgICAgICAgICBtYXhJdGVtczogNQo+ICAgICAgICAgIGNsb2NrLW5hbWVz
Ogo+ICsgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF1eAo+ICsgICAg
ICAgICAgICAtIGNvbnN0OiByZWYKPiArICAgICAgICAgICAgLSBjb25zdDogY29tX2F1eAo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiB1c2IzX3BpcGUKPiArICAgICAgICAgICAgLSBjb25zdDogcDJy
cjJwX3BpcGUKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgaW5hZHZlcnRlbnRseSBtYWtl
IHRoZSA1dGggY2xvY2sgbWFuZGF0b3J5IGZvciB4MWU4MDEwMD8KCkxvb2tpbmcgYXQgdGhlIGFs
bE9mIGNvbmRpdGlvbmFsIGZvciBxY29tLHgxZTgwMTAwLXFtcC11c2IzLWRwLXBoeSBpbgpEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQz
ZHAtcGh5LnlhbWwsCnNpbmNlIHRoaXMgaXRlbXMgYXJyYXkgZGVmaW5lcyA1IGVsZW1lbnRzLCBk
dC1zY2hlbWEgYXV0b21hdGljYWxseSBpbmplY3RzCmEgbWluaW11bSBpdGVtIGNvdW50IG9mIDUg
bG9jYWxseSBmb3IgdGhpcyBjb25kaXRpb25hbCBibG9jay4KClRoaXMgb3ZlcnJpZGVzIHRoZSBn
bG9iYWwgbWluaW11bSBpdGVtIGNvdW50IG9mIDQsIHdoaWNoIHdvdWxkIGNhdXNlIHNjaGVtYQp2
YWxpZGF0aW9uIHRvIGZhaWwgZm9yIGV4aXN0aW5nIG9sZGVyIGRldmljZSB0cmVlcyB0aGF0IG9u
bHkgcHJvdmlkZSA0IGNsb2Nrcy4KClNob3VsZCBhbiBleHBsaWNpdCBtaW5pbXVtIGl0ZW0gY291
bnQgb2YgNCBiZSBhZGRlZCBoZXJlIHRvIG1haW50YWluIGJhY2t3YXJkCmNvbXBhdGliaWxpdHk/
Cgo+ICsKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGNvbXBhdGli
bGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiArICAgICAgICAgICAgZW51bToKPiArICAgICAg
ICAgICAgICAtIHFjb20sc2M3MTgwLXFtcC11c2IzLWRwLXBoeQo+ICsgICAgICAgICAgICAgIC0g
cWNvbSxzZG04NDUtcW1wLXVzYjMtZHAtcGh5Cj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9wZXJ0
aWVzOgo+ICsgICAgICAgIGNsb2NrczoKPiAgICAgICAgICAgIG1heEl0ZW1zOiA1Cj4gLSAgICBl
bHNlOgo+ICsgICAgICAgIGNsb2NrLW5hbWVzOgo+ICsgICAgICAgICAgaXRlbXM6Cj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IGF1eAo+ICsgICAgICAgICAgICAtIGNvbnN0OiByZWYKPiArICAgICAg
ICAgICAgLSBjb25zdDogY29tX2F1eAo+ICsgICAgICAgICAgICAtIGNvbnN0OiB1c2IzX3BpcGUK
PiArICAgICAgICAgICAgLSBjb25zdDogY2ZnX2FoYgoKW1NldmVyaXR5OiBNZWRpdW1dClNpbWls
YXJseSwgZG9lcyB0aGlzIGJyZWFrIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgZm9yIHNjNzE4MCBh
bmQgc2RtODQ1PwoKTG9va2luZyBhdCB0aGUgYWxsT2YgY29uZGl0aW9uYWwgZm9yIHFjb20sc2M3
MTgwLXFtcC11c2IzLWRwLXBoeSwgd2l0aG91dAphbiBleHBsaWNpdCBtaW5pbXVtIGl0ZW0gY291
bnQgb2YgNCBpbiB0aGlzIGJsb2NrLCBvbGRlciBkZXZpY2UgdHJlZXMgdGhhdApvbWl0IGNmZ19h
aGIgd2lsbCBmYWlsIHZhbGlkYXRpb24uIFRoZSBkdC1zY2hlbWEgdG9vbCB3aWxsIGVuZm9yY2Ug
ZXhhY3RseQo1IGl0ZW1zIGJhc2VkIG9uIHRoZSBhcnJheSBsZW5ndGguCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODIwLXRvcGlj
LXVzYjRwaHktdjQtMC1hZWM5ZDJjYjMxZjZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
