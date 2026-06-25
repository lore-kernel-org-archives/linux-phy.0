Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E974CDB47C
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 02:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0Yu4VYWad0YiDYaspf5Q6ByQ95o1lFEV5BJN6Wb1Kk=; b=KGRpMLkClafg8S
	IVBEgUwQ+Dla7MtF6PSJZULVCyzkBua/nGx7dIlUPfQowBah4j0FCcQAeGYnwVqEQKLzhMNLl7PEU
	rCXyzFTNTa/36UAMVDnHhBM6ZMhfnxyFE5DtUz+7gBqxd6KWEUAA6gpmRQpUOX6YckWxQ1fLw8gOv
	Ue+58AiDzu1RCuqWB+L8j3xhQjHACgmywJWKRbQ9HX6PR42wsZ4nZ6QK1gaQ4cbqk3C2MjZ37gWDO
	qp1dojbxGfJ8bfAU+iu5TSz9VzSnUzAZQ+webbfqhIq9kKI4CXdn+BFM/dAZqfNrS0mnq+/HBWql6
	+vKkIH3CfTrv7psjFAJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcaIR-00000008b73-16y2;
	Thu, 25 Jun 2026 02:58:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcaIQ-00000008b6w-3hMm
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 02:58:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9578840816;
	Thu, 25 Jun 2026 02:58:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA4631F000E9;
	Thu, 25 Jun 2026 02:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782356310;
	bh=lsMs+Tpw5HvAFCv5BOiOZPAr6CI4MVeFvDsRDWWGvIM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Uy8V+87Ob/WKLMkco4imStYDJH2FgSVqypoA/Ya/aK07d+WFX/Pd1264IoRhgtoRO
	 f83tFeanGFVU3hJJX6wcRVORTSv1Fn2vk+MGbH02dH7begpInD+8RWf50PvGtf4r0r
	 Kk4xScaMooRYfGCVawP/NRMfZhTWVfFKOjits6pkSeP6GkdkJi00YyDy06wWP8+G+0
	 qRPjh40JHXKZXoB3lHxYia7EXAcHBYQknfZcTy4EJzMtwd7ZcIIPUgXNsjqdG83UAQ
	 QidU5TESdZMjcZRfqkZ/Ibk+qPL1+yF0hhkApnDFXJNCki9nvwdpEpSx2RHf6QXt2s
	 xFpd2iYaY8mXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: nuvoton,ma35d1-usb2-phy:
 extend for dual-port OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260625023958.569299-3-a0987203069@gmail.com>
References: <20260625023958.569299-1-a0987203069@gmail.com>
 <20260625023958.569299-3-a0987203069@gmail.com>
Date: Thu, 25 Jun 2026 02:58:29 +0000
Message-Id: <20260625025829.EA4631F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBjb21taXQgbWVz
c2FnZSBjbGFpbXMgbXVsdGlwbGUgZHJpdmVyIGJlaGF2aW9yYWwgY2hhbmdlcyB0aGF0IGFyZSBt
aXNzaW5nIGZyb20gdGhlIHBhdGNoLCBsZWF2aW5nIHRoZSBkcml2ZXIgaW5jb21wYXRpYmxlIHdp
dGggdGhlIG5ldyBiaW5kaW5nLgotLQoKY29tbWl0IGY1NTdiODYyMjY1M2YzZGY2OWIwNDAwMjBh
YzYxYzUyZmQwNDk4ZDYKQXV0aG9yOiBKb2V5IEx1IDxhMDk4NzIwMzA2OUBnbWFpbC5jb20+Cgpk
dC1iaW5kaW5nczogcGh5OiBudXZvdG9uLG1hMzVkMS11c2IyLXBoeTogZXh0ZW5kIGZvciBkdWFs
LXBvcnQgT1RHIHN1cHBvcnQKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIGRldmljZSB0cmVlIGJp
bmRpbmcgZm9yIHRoZSBNQTM1RDEgVVNCMiBQSFkgdG8gc3VwcG9ydApkdWFsLXBvcnQgT1RHLiBJ
dCBjaGFuZ2VzIHRoZSBQSFkgbm9kZSB0byBiZSBhIGNoaWxkIG9mIGEgc3lzY29uIG5vZGUsIHJl
bW92ZXMKdGhlIG51dm90b24sc3lzIGFuZCBjbG9ja3MgcHJvcGVydGllcywgYW5kIHVwZGF0ZXMg
I3BoeS1jZWxscyB0byAxLgoKPiAgICAgICAtIFRoZSBQSFkgbm9kZSBpcyBub3cgYSBjaGlsZCBv
ZiB0aGUgc3lzdGVtLW1hbmFnZW1lbnQgc3lzY29uIG5vZGUKPiAgICAgICAgIHdpdGggYSByZWcg
cHJvcGVydHkuICBUaGUgbnV2b3RvbixzeXMgcGhhbmRsZSBhbmQgY2xvY2tzIHByb3BlcnRpZXMK
PiAgICAgICAgIGFyZSByZW1vdmVkOyB0aGUgZHJpdmVyIGRlcml2ZXMgdGhlIHJlZ21hcCBmcm9t
IGl0cyBwYXJlbnQsIGFuZAo+ICAgICAgICAgY2xvY2sgZ2F0aW5nIGlzIG93bmVkIGJ5IGVhY2gg
aW5kaXZpZHVhbCBVU0IgY29udHJvbGxlci4KPiAgICAgCj4gICAgICAgLSAjcGh5LWNlbGxzIGNo
YW5nZXMgZnJvbSAwIHRvIDE6IHRoZSBjZWxsIHNlbGVjdHMgdGhlIFBIWSBwb3J0LgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1h
MzVkMS11c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9udXZvdG9uLG1hMzVkMS11c2IyLXBoeS55YW1sCj4gaW5kZXggZmZmODU4YzkwOWEwNi4uYTIw
ZDAzYzgwOTMyYiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwKWyAu
Li4gXQo+IEBAIC04LDM4ICs4LDcyIEBAIHRpdGxlOiBOdXZvdG9uIE1BMzVEMSBVU0IyIHBoeQpb
IC4uLiBdCj4gICAgIiNwaHktY2VsbHMiOgo+IC0gICAgY29uc3Q6IDAKPiArICAgIGNvbnN0OiAx
Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgVGhlIHNpbmdsZSBjZWxsIHNlbGVjdHMgdGhl
IFBIWSBwb3J0LiAwIHNlbGVjdHMgdGhlIE9URyBwb3J0IChVU0IwLAo+ICsgICAgICBzaGFyZWQg
d2l0aCBEV0MyIGdhZGdldCBjb250cm9sbGVyKSBhbmQgMSBzZWxlY3RzIHRoZSBob3N0LW9ubHkg
cG9ydAo+ICsgICAgICAoVVNCMSkuCj4gIAo+IC0gIGNsb2NrczoKPiAtICAgIG1heEl0ZW1zOiAx
Cj4gIAo+IC0gIG51dm90b24sc3lzOgo+IC0gICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMv
ZGVmaW5pdGlvbnMvcGhhbmRsZQo+ICsgIG51dm90b24scmNhbGNvZGU6CgpbU2V2ZXJpdHk6IEhp
Z2hdCkRvZXMgdGhpcyBwYXRjaCBpbnRyb2R1Y2UgYSByZWdyZXNzaW9uIGJ5IHVwZGF0aW5nIHRo
ZSBiaW5kaW5nIHdpdGhvdXQgdGhlCmNvcnJlc3BvbmRpbmcgZHJpdmVyIHVwZGF0ZXM/CgpUaGUg
Y29tbWl0IG1lc3NhZ2UgaW5kaWNhdGVzIHRoZSBkcml2ZXIgZGVyaXZlcyB0aGUgcmVnbWFwIGZy
b20gaXRzIHBhcmVudCBhbmQKaGFuZGxlcyB0aGUgI3BoeS1jZWxscyBjaGFuZ2UsIGJ1dCB0aGlz
IHBhdGNoIGRvZXMgbm90IGNvbnRhaW4gZHJpdmVyCm1vZGlmaWNhdGlvbnMuCgpJZiBhIGRldmlj
ZSB0cmVlIGlzIHVwZGF0ZWQgdG8gY29tcGx5IHdpdGggdGhpcyBuZXcgYmluZGluZywgd2lsbCB0
aGUgZXhpc3RpbmcKZHJpdmVyIGZhaWwgdG8gcHJvYmU/IExvb2tpbmcgYXQgbWEzNV91c2JfcGh5
X3Byb2JlKCkgaW4KZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYywgaXQgdW5j
b25kaXRpb25hbGx5IHJlcXVpcmVzIHRoZQpudXZvdG9uLHN5cyBwcm9wZXJ0eToKCmRyaXZlcnMv
cGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmM6bWEzNV91c2JfcGh5X3Byb2JlKCkgewogICAg
Li4uCiAgICBwX3BoeS0+c3lzcmVnID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShw
ZGV2LT5kZXYub2Zfbm9kZSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJudXZvdG9uLHN5cyIpOwogICAgaWYgKElTX0VSUihwX3BoeS0+c3lzcmVn
KSkKICAgICAgICAuLi4KfQoKQWRkaXRpb25hbGx5LCB0aGUgdW5tb2RpZmllZCBkcml2ZXIgc3Rp
bGwgdXNlcyBvZl9waHlfc2ltcGxlX3hsYXRlIGFuZApyZWdpc3RlcnMgYSBzaW5nbGUgUEhZLCB3
aGljaCBpcyBzdHJ1Y3R1cmFsbHkgaW5jb21wYXRpYmxlIHdpdGggdGhlIGJpbmRpbmcKY2hhbmdl
IHRvICNwaHktY2VsbHMgPSA8MT46Cgpkcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNi
Mi5jOm1hMzVfdXNiX3BoeV9wcm9iZSgpIHsKICAgIC4uLgogICAgcHJvdmlkZXIgPSBkZXZtX29m
X3BoeV9wcm92aWRlcl9yZWdpc3RlcigmcGRldi0+ZGV2LCBvZl9waHlfc2ltcGxlX3hsYXRlKTsK
ICAgIC4uLgp9CgpTaG91bGQgdGhlIGRyaXZlciBjaGFuZ2VzIGJlIGluY2x1ZGVkIGluIHRoaXMg
cGF0Y2ggb3Igc3VibWl0dGVkIHRvZ2V0aGVyIGFzCmEgc2VyaWVzIHRvIGF2b2lkIGJyZWFraW5n
IFVTQiBpbml0aWFsaXphdGlvbiBhdCBib290IHRpbWUgZm9yIGNvbXBsaWFudCBkZXZpY2UKdHJl
ZXM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNjI1MDIzOTU4LjU2OTI5OS0xLWEwOTg3MjAzMDY5QGdtYWlsLmNvbT9wYXJ0PTIK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
