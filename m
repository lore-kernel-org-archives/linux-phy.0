Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A52D7CD4F50
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 18:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg7b92j8NqluoYkRr7LQ70meH0cV+MDJS4KzDGw3EtI=; b=wN3qTz1xZ+d8Di
	R3dLjYA9h/FnBxlQW8JItZhWbxxlpmjxY5DJvNLL6FipwBEKBCVVSNBCuCUWYibAPoF3jWzTwNrwd
	zORntOfW/QTNHDCX447Ovl5ynhu/ADXY3Y+sESng9j8fZ7rodUXrGiPcFe7KBQRokm3/9fZo6r1z7
	uYw10V0cpS3bS2yEelyRXgDsWYaVWhzVXGKzhLe23lIjuhqJ9teDChfO9QqbGSd0EXkJkrOulPotl
	wBSnzwpVBHseUN89gwK00lEbH9KYKyzWh2v+cxBINGm7tVO51VUaAwocLF7yzXlCjnpCLD18b5M44
	k3kpWLVVNFej/XF8ISNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2uK-0000000Gb0W-1oFk;
	Mon, 18 May 2026 18:41:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2uJ-0000000Gb0F-0qPM
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 18:41:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5BACD6001A;
	Mon, 18 May 2026 18:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C955DC2BCB7;
	Mon, 18 May 2026 18:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779129698;
	bh=HQSdmay13KEn0q3Q+ggCgyKYKu+ObvlXVuYBEirwLNE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=RF96iBbTaaiGFHoSklG1/cPseFT8Uop7RNuEuE01RluSeg7bJlU935s8FIZEoOKUo
	 z5gHSavwQatGIRom4nJhic1YnA1g8sUtlRkI9ZkWEACtdcYpJDVkjzjgut9wuqmxpV
	 DrqcDwdeWRRPm4oSy8kSLu0nfx9ccpBq8ELue7RahKlepyPkgVLNPRewBX/PjlZr6A
	 XLoE9ii3TwjEh1IPMOdeBF2KOdNGwzUN0FkC2hRDmsFM2/ZlUvQ19JdGG/8WLDi+a0
	 qbMq/nknaAQv3J8JiMUZ4RQb3h/sVOo703+uWvrSZ2XrSGRZhoCxfy/aqFU1la2LUo
	 +IF1Ya+cWbRqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] phy: rockchip: inno-hdmi: Add configure() and
 validate() ops
To: "Jonas Karlman" <jonas@kwiboo.se>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260518180722.2480799-2-jonas@kwiboo.se>
References: <20260518180722.2480799-2-jonas@kwiboo.se>
Date: Mon, 18 May 2026 18:41:37 +0000
Message-Id: <20260518184137.C955DC2BCB7@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGlubm9faGRtaV9waHlf
dmFsaWRhdGUoKSBwZXJmb3JtcyBhbiBpbmNvbXBsZXRlIHZhbGlkYXRpb24gdGhhdCBhbGxvd3Mg
dW5zdXBwb3J0ZWQgKHBpeGNsb2NrLCB0bWRzY2xvY2spIGNvbWJpbmF0aW9ucyB0byBwYXNzIERS
TSdzIGF0b21pY19jaGVjaywgY2F1c2luZyBmYXRhbCBmYWlsdXJlcyBkdXJpbmcgYXRvbWljX2Vu
YWJsZS4KLS0KCmNvbW1pdCAwOWExYzJkNjZkYzg2YThmZjNhYjJhMjAyNzQxNjY1NzZmMDBmODEz
CkF1dGhvcjogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKcGh5OiByb2NrY2hpcDog
aW5uby1oZG1pOiBBZGQgY29uZmlndXJlKCkgYW5kIHZhbGlkYXRlKCkgb3BzCgpUaGlzIGNvbW1p
dCBpbnRyb2R1Y2VzIHBoeV9jb25maWd1cmUoKSBhbmQgcGh5X3ZhbGlkYXRlKCkgb3BlcmF0aW9u
cyBmb3IKdGhlIElubm8gSERNSSBQSFkgZHJpdmVyLiBJdCB1c2VzIHRoZSBUTURTIGNoYXJhY3Rl
ciByYXRlIHRvIHZhbGlkYXRlIGFuZApjb25maWd1cmUgdGhlIFBIWSwgZmFsbGluZyBiYWNrIHRv
IGJ1cyB3aWR0aCBpZiBuZWVkZWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtaW5uby1oZG1pLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby1oZG1pLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby1oZG1pLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
aW5uby1oZG1pLmMKClsgLi4uIF0KCj4gQEAgLTYwOCw2ICs2MDgsNTcgQEAgc3RhdGljIGlycXJl
dHVybl90IGlubm9faGRtaV9waHlfcmszMzI4X2lycShpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4g
IAlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gIH0KPiAgCj4gKy8qCj4gKyAqIHBoeV92YWxpZGF0ZSgp
IGlzIGV4cGVjdGVkIHRvIGJlIGNhbGxlZCBmcm9tIGVuY29kZXIgYXRvbWljX2NoZWNrKCksIGJl
Zm9yZQo+ICsgKiB0aGUgaGRtaXBoeSBwaXhlbCBjbG9jayBpcyBrbm93bi4gV2l0aG91dCBrbm93
aW5nIHRoZSBhY3R1YWwgcGl4ZWwgY2xvY2ssIHdlCj4gKyAqIGNhbm5vdCBkbyBmdWxsIHZhbGlk
YXRpb24gb2YgdGhlIGNvbmZpZ3VyYXRpb24uIEluc3RlYWQsIHdlIGRvIGEgc2ltcGxlIGNoZWNr
Cj4gKyAqIHRoYXQgdGhlIHByZS1wbGwgdGFibGUgY29udGFpbnMgYW4gZW50cnkgZm9yIHRoZSBy
ZXF1ZXN0ZWQgVE1EUyBjaGFyIHJhdGUuCj4gKyAqLwo+ICtzdGF0aWMgaW50IGlubm9faGRtaV9w
aHlfdmFsaWRhdGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsCj4gKwkJCQkg
IGludCBzdWJtb2RlLCB1bmlvbiBwaHlfY29uZmlndXJlX29wdHMgKm9wdHMpCj4gK3sKPiArCWNv
bnN0IHN0cnVjdCBwcmVfcGxsX2NvbmZpZyAqY2ZnID0gcHJlX3BsbF9jZmdfdGFibGU7Cj4gKwl1
bnNpZ25lZCBsb25nIHRtZHNjbG9jazsKPiArCj4gKwlpZiAoIShtb2RlID09IFBIWV9NT0RFX0hE
TUkgJiYgc3VibW9kZSA9PSBQSFlfSERNSV9NT0RFX1RNRFMpKQo+ICsJCXJldHVybiAtRUlOVkFM
Owo+ICsKPiArCWlmICghb3B0cykKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlpZiAoIW9w
dHMtPmhkbWkudG1kc19jaGFyX3JhdGUgfHwgb3B0cy0+aGRtaS50bWRzX2NoYXJfcmF0ZSA+IDU5
NDAwMDAwMCkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwl0bWRzY2xvY2sgPSBvcHRzLT5o
ZG1pLnRtZHNfY2hhcl9yYXRlOwo+ICsJZm9yICg7IGNmZy0+cGl4Y2xvY2sgIT0gMDsgY2ZnKysp
Cj4gKwkJaWYgKGNmZy0+dG1kc2Nsb2NrID09IHRtZHNjbG9jaykKPiArCQkJcmV0dXJuIDA7Cj4g
Kwo+ICsJcmV0dXJuIC1FSU5WQUw7Cj4gK30KCkNvdWxkIHRoaXMgaW5jb21wbGV0ZSB2YWxpZGF0
aW9uIGFsbG93IHVuc3VwcG9ydGVkIHBpeGNsb2NrIGFuZCB0bWRzY2xvY2sKY29tYmluYXRpb25z
IHRvIHBhc3MgRFJNJ3MgYXRvbWljX2NoZWNrLCBsZWFkaW5nIHRvIGZhdGFsIGZhaWx1cmVzIGxh
dGVyCmR1cmluZyBhdG9taWNfZW5hYmxlPwoKVGhlIERSTSBhdG9taWMgQVBJIHJlcXVpcmVzIGhh
cmR3YXJlIGNvbnN0cmFpbnRzIHRvIGJlIHZlcmlmaWVkIGR1cmluZwphdG9taWNfY2hlY2suIElm
IHBpeGNsb2NrIGlzIHZhbGlkYXRlZCBpbmRlcGVuZGVudGx5IGVsc2V3aGVyZSAoc3VjaCBhcyB2
aWEKY2xrX3JvdW5kX3JhdGUpLCBhIG1pc21hdGNoZWQgcGFpciBtaWdodCBwYXNzIGJvdGggY2hl
Y2tzLgoKRm9yIGV4YW1wbGUsIGlmIGEgbW9kZSByZXF1ZXN0cyBhIHBpeGNsb2NrIG9mIDU0TUh6
IHdpdGggYSAxNi1iaXQgY29sb3IgZGVwdGgKKHdoaWNoIHlpZWxkcyBhIHRtZHNjbG9jayBvZiAx
MDhNSHopLCBhdG9taWNfY2hlY2sgd291bGQgcGFzcyBiZWNhdXNlIDU0TUh6CmV4aXN0cyBpbiB0
aGUgcGl4Y2xvY2sgY29sdW1uIGFuZCAxMDhNSHogZXhpc3RzIGluIHRoZSB0bWRzY2xvY2sgY29s
dW1uLgoKSG93ZXZlciwgbGF0ZXIgZHVyaW5nIGF0b21pY19lbmFibGUsIGNsa19zZXRfcmF0ZSgp
IGNhbGxzCmlubm9faGRtaV9waHlfZ2V0X3ByZV9wbGxfY2ZnKCkgd2hpY2ggc2VhcmNoZXMgZm9y
IHRoZSBleGFjdCBwYWlyOgoKaW5ub19oZG1pX3BoeV9nZXRfcHJlX3BsbF9jZmcoKSB7Ci4uLgoJ
Zm9yICg7IGNmZy0+cGl4Y2xvY2sgIT0gMDsgY2ZnKyspCgkJaWYgKGNmZy0+cGl4Y2xvY2sgPT0g
cmF0ZSAmJiBjZmctPnRtZHNjbG9jayA9PSB0bWRzY2xvY2spCgkJCWJyZWFrOwoKCWlmIChjZmct
PnBpeGNsb2NrID09IDApCgkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Ci4uLgp9CgpTaW5jZSB0
aGUgc3BlY2lmaWMgcGFpciA1NE1IeiBhbmQgMTA4TUh6IGRvZXMgbm90IGV4aXN0IGluIHRoZSB0
YWJsZSB0b2dldGhlciwKaXQgcmV0dXJucyAtRUlOVkFMLCBjYXVzaW5nIHRoZSBtb2Rlc2V0IHRv
IGFib3J0IG1pZHdheSBhbmQgbGVhdmluZyB0aGUKZGlzcGxheSBwaXBlbGluZSBicm9rZW4uCgpD
YW4gdGhlIGV4YWN0IHBpeGNsb2NrIGFuZCB0bWRzY2xvY2sgY29tYmluYXRpb24gYmUgdmVyaWZp
ZWQgaGVyZSBpbnN0ZWFkLApwZXJoYXBzIGJ5IGRlcml2aW5nIHBpeGNsb2NrIGZyb20gb3B0cy0+
aGRtaS50bWRzX2NoYXJfcmF0ZSBhbmQgdGhlIGNvbG9yCmRlcHRoPwoKWyAuLi4gXQoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUx
ODE4MDcyMi4yNDgwNzk5LTEtam9uYXNAa3dpYm9vLnNlP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
