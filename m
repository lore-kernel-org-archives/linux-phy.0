Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7578DCD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMk/wpP+MMvMEdYbHEBskcLgyEYqvmMxsMxf0fx30w0=; b=chpUqut8AO8bfI
	zkBVuH2vkTbGM7Yp0RmaaE3USE+5A4kjO1EZEgqHgZGx5yvBr1q5G1BSJR5YJYVIEOvBJNQvvns0x
	BShSGT7Ib/AJQnEMUzRpE1So+NNphilQBJgYAw59FWX76jf4RE08vRvXdTOKwKeymKk9+Dk6qTrKk
	6J7dGzOT6J+sfxRYr5svwfr+bo7dvRMUNh29VeuilzAXGWfT6m8z6YNtmEdrfQ/hDJfmf6oQFVjSv
	7o8qv2FAqeM94kHYaExilTRWTaAy1qbiciSOpuIqLlfhzFZWN3owxEmiEjruf1sekWy13H3/YshaA
	g3vY1KwfztmshH1ELLBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiRc-00000004UhI-31wc;
	Mon, 08 Jun 2026 22:27:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiRb-00000004UhA-3Dne
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:27:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3634240B32;
	Mon,  8 Jun 2026 22:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C65531F00893;
	Mon,  8 Jun 2026 22:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780957663;
	bh=6VzMoaa2wCAqyH2sfjeP25TaHQWfy4ICNCOMXBsAN7s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fLp8vXzJ9Te7gOqUKKX27lNWV2yv925JLpOc1TbrJT7ru6mDqW+c9jyhuPbldTMxy
	 0P7AA1SWXMnvptFU3RyRWDx7lgjWFC2JFh6TrpPA/hmz9DBPzH54oWeMW3s96oSsZ+
	 Dk0l9jeZDN++9AKCHIMtJOj12btr9nnr3rjbjd/4W4ZjOM4XcsURtY3gKFO5yoZK9H
	 fqr7lT9PHvWg87RevMYiW9/nv4Bb+mtA2FKgIG33LgqOsv9XYvb4u0VMER/y/4nlPc
	 b9vVyrREryDFlNnmiLSTTPQua4f1WgElAwx7G5LVwu0tIFMLIyo03HrP+cdw/S2EP7
	 jcxmzRFy9GR+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608221710.1572971-15-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-15-vladimir.oltean@nxp.com>
Date: Mon, 08 Jun 2026 22:27:42 +0000
Message-Id: <20260608222742.C65531F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gU2NoZW1hIHZhbGlkYXRp
b24gZXJyb3IgZHVlIHRvIGNvbmRpdGlvbmFsbHkgcmVxdWlyZWQgYGJpZy1lbmRpYW5gIHByb3Bl
cnR5IG5vdCBkZWNsYXJlZCBhdCB0aGUgdG9wLWxldmVsCi0tCgpjb21taXQgMmM1YzRkNmI2YzFl
ZmRhODcxOGIwZTI5MTAxNTQ5OTkxMmE4MWU2ZQpBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxh
ZGltaXIub2x0ZWFuQG54cC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBseW54LTEwZzogaW5pdGlh
bCBkb2N1bWVudAoKVGhpcyBjb21taXQgYWRkcyB0aGUgWUFNTCBkZXZpY2UgdHJlZSBiaW5kaW5n
IHNjaGVtYSBmb3IgdGhlIDEwRyBMeW54ClNlckRlcywgc3VwcG9ydGluZyB2YXJpb3VzIFFvcklR
IGFuZCBMYXllcnNjYXBlIFNvQ3MuIEl0IGRlZmluZXMgYSBjb21tb24KcmVnaXN0ZXIgbWFwIHdp
dGggU29DLXNwZWNpZmljIGNvbmZpZ3VyYXRpb25zIGhhbmRsZWQgdmlhIGNvbmRpdGlvbmFsIGJs
b2Nrcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvZnNsLGx5bngtMTBnLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2ZzbCxseW54LTEwZy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwMDAwLi5lYWVmNTg1MzM4MjU4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvZnNsLGx5bngtMTBnLnlhbWwKClsgLi4uIF0K
Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+
ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAg
ICAgLSBmc2wsbHMxMDQ2YS1zZXJkZXMxCj4gKyAgICAgICAgICAgICAgLSBmc2wsbHMxMDQ2YS1z
ZXJkZXMyCj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIGJpZy1l
bmRpYW46IHRydWUKPiArICAgICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgLSBiaWctZW5kaWFuCgpb
U2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIGNhdXNlIGEgc2NoZW1hIHZhbGlkYXRpb24gZXJyb3Ig
d2hlbiBkdGJzX2NoZWNrIGlzIHJ1bj8KCkJlY2F1c2UgYmlnLWVuZGlhbiBpcyBvbWl0dGVkIGZy
b20gdGhlIHRvcC1sZXZlbCBwcm9wZXJ0aWVzIGJsb2NrLCBpdAphcHBlYXJzIHRoZSBhZGRpdGlv
bmFsUHJvcGVydGllcyBjb25zdHJhaW50IGJlbG93IHdpbGwgcmVqZWN0IGl0IGV2ZW4Kd2hlbiB0
aGUgY29tcGF0aWJsZSBzdHJpbmcgbWF0Y2hlcy4KCkNvdWxkIGJpZy1lbmRpYW46IHR5cGU6IGJv
b2xlYW4gYmUgYWRkZWQgdG8gdGhlIHRvcC1sZXZlbCBwcm9wZXJ0aWVzCmRpY3Rpb25hcnksIG9y
IHNob3VsZCBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UgYmUgY2hhbmdlZCB0bwp1bmV2YWx1
YXRlZFByb3BlcnRpZXM6IGZhbHNlPwoKPiArCj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxz
ZQo+ICsKPiArZXhhbXBsZXM6CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4MjIxNzEwLjE1NzI5NzEtMS12bGFk
aW1pci5vbHRlYW5AbnhwLmNvbT9wYXJ0PTE0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
