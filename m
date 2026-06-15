Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C6CDCD98CE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7aOCX4FvEFlPIkVvkgqDY0OZs1VsCZO4HGUl8YI6dI=; b=Nhf1LyDhuBztpq
	TUCRWhqLEMDLlPtiQ6LxRw+vUBqhUIhoFNSRzjJlVmqi6zw2NDCD5vSocuQkUwYHijZ6vejNfAgGr
	7f46hs5Ii0PunItyuj3/KlIrgcwkIsuCGOJ0mVtz7uv774dOSpDqx6BBPZkpsCDrX0+Tpnufe901P
	umkFBk2nuFzuOsk05ONrCjEutFTARj4A5HaUVVuHT0itXQfUZI0rVLh6NceT4WfOgi8rcsVuLGN65
	977mhdNSEZQ8GBflCT3HS3tqGaRRDcA/EtQiffdIkG9MDZskJ/SzVWq+6ToYXmGPrh8c6jCOaDq6L
	BlimULM3YzwwZcXCbhyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0La-0000000DezE-1JMe;
	Mon, 15 Jun 2026 05:58:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0LZ-0000000Deyj-2qaY
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:58:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1C07143E11;
	Mon, 15 Jun 2026 05:58:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C39D1F000E9;
	Mon, 15 Jun 2026 05:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503137;
	bh=vSoFisx1yYAN5MrYKXbZPonPev23XeGsWoy2Yd+cYcw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U1Ib6nLJxfKxtrR+d0vjMge8pkriDFz4BTgjTB5iVxlvd1W6Ov6HmZAxNqufjBaK+
	 1OMNxBSo2zfR+RcW8CYKbcTrDhvsk1qcXfqn/guXoCewcgTY4v64gtRCE5FZkeFxgi
	 BVm4xgP0Tao4cwf/a1oNKdZo0lBNtoHiZumKCc9+nry2EhV/35DwY98HMKFyv6O5TE
	 iSJmixVNWQEncHCyK66xA9mvh92vpOOwQAgc4WvxiDsPuQwrjY2p6uRtsES2G43vqm
	 Ikf7hAUSnpDOlAFYFNwEKp2oRi6aeyA+7PuGcSrNk45pipeL5enkeLMhkUY1n5Eocb
	 Fpu9IK8k9wGjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend
 for dual-port OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260615054911.48821-2-a0987203069@gmail.com>
References: <20260615054911.48821-2-a0987203069@gmail.com>
Date: Mon, 15 Jun 2026 05:58:56 +0000
Message-Id: <20260615055856.8C39D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRldmljZSB0cmVl
IGV4YW1wbGUgZmFpbHMgYGR0X2JpbmRpbmdfY2hlY2tgIHZhbGlkYXRpb24gZHVlIHRvIGEgdW5p
dCBhZGRyZXNzIG1pc21hdGNoIGFuZCB2aW9sYXRpb25zIG9mIHRoZSBwYXJlbnQgcmVzZXQgY29u
dHJvbGxlciBzY2hlbWEuCi0tCgpjb21taXQgYWJhZjIzNDE2YTEyMDViZGMyMmI0ODkxZWY0NmE0
OWUwODgwMzFhNApBdXRob3I6IEpvZXkgTHUgPGEwOTg3MjAzMDY5QGdtYWlsLmNvbT4KCmR0LWJp
bmRpbmdzOiBwaHk6IG51dm90b24sbWEzNWQxLXVzYjItcGh5OiBleHRlbmQgZm9yIGR1YWwtcG9y
dCBPVEcgc3VwcG9ydAoKVGhpcyBleHRlbmRzIHRoZSBOdXZvdG9uIE1BMzVEMSBVU0IyIFBIWSBi
aW5kaW5nIHRvIHN1cHBvcnQgdHdvIHBvcnRzIChPVEcKYW5kIGhvc3Qtb25seSkuIFRoZSBQSFkg
bm9kZSBiZWNvbWVzIGEgY2hpbGQgb2YgdGhlIHN5c2NvbiBub2RlLCBhbmQKcHJvcGVydGllcyBh
cmUgdXBkYXRlZCB0byByZWZsZWN0IHRoZSBuZXcgYXJjaGl0ZWN0dXJlLgoKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzVkMS11
c2IyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZv
dG9uLG1hMzVkMS11c2IyLXBoeS55YW1sCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzVkMS11c2IyLXBoeS55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1hMzVkMS11c2IyLXBoeS55
YW1sCj4gQEAgLTgsMzggKzgsNzIgQEAgdGl0bGU6IE51dm90b24gTUEzNUQxIFVTQjIgcGh5Cgpb
IC4uLiBdCgo+ICBleGFtcGxlczoKPiAgICAtIHwKPiAtICAgICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9jbG9jay9udXZvdG9uLG1hMzVkMS1jbGsuaD4KPiArICAgIHN5c3RlbS1tYW5hZ2VtZW50QDQw
NDYwMDAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gIm51dm90b24sbWEzNWQxLXJlc2V0Iiwg
InN5c2NvbiIsICJzaW1wbGUtbWZkIjsKPiArICAgICAgICByZWcgPSA8MHgwIDB4NDA0NjAwMDAg
MHgwIDB4MjAwPjsKPiArICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47Cj4gIAo+IC0g
ICAgdXNiX3BoeTogdXNiLXBoeSB7Cj4gLSAgICAgICAgY29tcGF0aWJsZSA9ICJudXZvdG9uLG1h
MzVkMS11c2IyLXBoeSI7Cj4gLSAgICAgICAgY2xvY2tzID0gPCZjbGsgVVNCRF9HQVRFPjsKPiAt
ICAgICAgICBudXZvdG9uLHN5cyA9IDwmc3lzPjsKPiAtICAgICAgICAjcGh5LWNlbGxzID0gPDA+
Owo+ICsgICAgICAgIHVzYi1waHlANjAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gIm51
dm90b24sbWEzNWQxLXVzYjItcGh5IjsKPiArICAgICAgICAgICAgcmVnID0gPDB4NjAgMHgxND47
Cj4gKyAgICAgICAgICAgICNwaHktY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgfTsKPiAgICAgIH07
CgpbU2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIGV4YW1wbGUgcGFzcyBkdF9iaW5kaW5nX2NoZWNr
IHZhbGlkYXRpb24/CgpUaGUgc2NoZW1hIGZvciB0aGUgcGFyZW50IG5vZGUgKG51dm90b24sbWEz
NWQxLXJlc2V0LnlhbWwpIGVuZm9yY2VzCmFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZSBhbmQg
cmVxdWlyZXMgZXhhY3RseSB0d28gY29tcGF0aWJsZSBpdGVtcwooIm51dm90b24sbWEzNWQxLXJl
c2V0IiBhbmQgInN5c2NvbiIpLiBJdCBkb2VzIG5vdCBwZXJtaXQgY2hpbGQgbm9kZXMsCnRoZSAi
c2ltcGxlLW1mZCIgY29tcGF0aWJsZSwgb3IgdGhlICNhZGRyZXNzLWNlbGxzIGFuZCAjc2l6ZS1j
ZWxscwpwcm9wZXJ0aWVzLgoKQWRkaXRpb25hbGx5LCBkb2VzIHRoZSA0LWNlbGwgcmVnIGFycmF5
IDwweDAgMHg0MDQ2MDAwMCAweDAgMHgyMDA+IG1pc21hdGNoCnRoZSB1bml0IGFkZHJlc3MgQDQw
NDYwMDAwPyBXaXRob3V0IGEgcmFuZ2VzIHByb3BlcnR5LCB0aGUgZHQtc2NoZW1hIHdyYXBwZXIK
ZGVmYXVsdHMgdG8gMSBjZWxsIGZvciBhZGRyZXNzIGFuZCBzaXplLCB3aGljaCBwYXJzZXMgdGhp
cyBhcyB0d28gZGlzdGluY3QKcmFuZ2VzIGFuZCB0cmlnZ2VycyBhIGR0YyB1bml0X2FkZHJlc3Nf
dnNfcmVnIHdhcm5pbmcuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNjE1MDU0OTExLjQ4ODIxLTEtYTA5ODcyMDMwNjlAZ21haWwu
Y29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
