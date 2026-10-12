Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F29F4CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aU8P79Dkk/Q7TGYhqAWL5PUtgNKJhImMGTYuvjoC9Q=; b=dkGrs25nHR4Hxf
	CsVCQBJoTCkcrFqW9ePKy0IG4QZSjBvha2vYdlhiNgoxI9gOWKb2kIcT7GHB6jcw1SCmPsUC/OZiT
	R6ee/Ri8HPZMrm750dJTMnFyGRarmtLN/wduEvAgjVG2a6FEOh0FgLt8HFMCgmn0HtRtxvrWkLj+o
	ZKae+cqJ+eNTovvW/DvGK2qW1ijwK2kq7gto3gfUQTUIjO3BgbihUVk1Q+1nylGZQzDeW8Qg5c0Ge
	A8rukko/aw7UsVueuW0YvxRzZtvaDRCgvscJDR8ZrCw4bIpLSeWeh7Q6KSyQl2YS1PcqQJbLqSw7W
	OLzCuGNUtFz7pMhpoudw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGL8-0000000Abv2-2q9z;
	Mon, 12 Oct 2026 13:45:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGL7-0000000Abuh-0zWE
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:45:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 03BC14073B;
	Mon, 12 Oct 2026 13:45:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 820A21F0089B;
	Mon, 12 Oct 2026 13:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791812716;
	bh=zFahgcdTQO6vKQ8Rz11lc8v3voIpYK0X5AAFMfjO7d8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=V4STVeJImHOmnwSI7XYm8VV2IyJnc+WjbRZ+RDN/xR5rrEG52837wiqjN/jmKtbAj
	 Q7lTOOkhm6PdF9z/UVAw44LbAc6MoM/0Esp0RxiKDCl9nh7BnWtLEmdmIz3g1DUJ2F
	 1Wf8K0TjhCMMsyH0b+ZqxGV1F/ttz7Q+eUVkdgR1TZPjpBrWsiLzqFPtJBpOR2cQPD
	 tj/yP0TlfWyOAdiicW6nDXG1+MaY+cVI0mtjxpnbEV5PsjQ0VDhUYLGie22s7ihuPD
	 n5mXZMPUkB79OYjsJ4Q3fqyugetEbf7sUHZq96Gd4ZcISt7/1trmRjcyQ/uMpKusuY
	 aYGuB1yRvgmtw==
Message-ID: <sashiko-outbox-168208@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/13] dt-bindings: display/msm: Document Nord MDSS
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20261012-nord-drv-dt-v2-3-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-3-a2ab9af954d2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 13:45:16 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1pc3NpbmcgI2ludGVycnVwdC1jZWxscyBpbiBxY29tLG5vcmQtbWRzcyByZXF1aXJlZCBsaXN0
Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IGRpc3BsYXkvbXNtOiBtaXNzaW5nIHNjaGVtYSBmb3Ig
cWNvbSxub3JkLWRwdSBieXBhc3NlcyB2YWxpZGF0aW9uCi0tCgpjb21taXQgYThlZGU2MDFlZjUz
MmI3MWQxZGQzZGI1ZTI2ZGRlZjMxNzQwNDU3MApBdXRob3I6IE1haGFkZXZhbiBQIDxtYWhhZGV2
YW4ucEBvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IGRpc3BsYXkvbXNtOiBEb2N1bWVu
dCBOb3JkIE1EU1MKCk5vcmQgaGFzIGEgbmV3IE1EU1MgMTIuMSByZXZpc2lvbiB3aXRoIERQVSAx
NDk5QSBhbmQgdHdvIGluZGVwZW5kZW50LApEUC1vbmx5IGRpc3BsYXkgaW50ZXJmYWNlIGNvbnRy
b2xsZXJzIChubyBEU0kpLCB3aGljaCBubyBleGlzdGluZwpzY2hlbWEgZGVzY3JpYmVzLiBBZGQg
YSBkZWRpY2F0ZWQgcWNvbSxub3JkLW1kc3MgYmluZGluZyB0byBkb2N1bWVudC4KCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9xY29t
LG5vcmQtbWRzcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbXNtL3Fjb20sbm9yZC1tZHNzLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMDAuLmFiZDgwZGFlNGU3ZjUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL3Fjb20sbm9yZC1tZHNz
LnlhbWwKClsgLi4uIF0KCj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICJeZGlzcGxheS1jb250
cm9sbGVyQFswLTlhLWZdKyQiOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICBhZGRpdGlvbmFs
UHJvcGVydGllczogdHJ1ZQo+ICsgICAgcHJvcGVydGllczoKPiArICAgICAgY29tcGF0aWJsZToK
PiArICAgICAgICBjb25zdDogcWNvbSxub3JkLWRwdQoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNl
IGFkZGl0aW9uYWxQcm9wZXJ0aWVzIGlzIHNldCB0byB0cnVlIGFuZCB0aGVyZSBpcyBubyAkcmVm
IHRvIGEgY29tbW9uCkRQVSBzY2hlbWEsIHdvbid0IHRoaXMgYWxsb3cgYW55IGFyYml0cmFyeSBw
cm9wZXJ0aWVzLCB0eXBvcywgb3IgaW52YWxpZApkYXRhIHR5cGVzIGluIHRoZSBxY29tLG5vcmQt
ZHB1IGNoaWxkIG5vZGUgdG8gc2lsZW50bHkgcGFzcyB2YWxpZGF0aW9uPwoKSXMgdGhlcmUgYW4g
ZXh0ZXJuYWwgc2NoZW1hIGZvciBxY29tLG5vcmQtZHB1LCBvciBzaG91bGQgdGhpcyBub2RlCnJl
ZmVyZW5jZSBhbiBleGlzdGluZyBEUFUgc2NoZW1hIHRvIGVuc3VyZSBwcm9wZXIgZHRfYmluZGlu
Z19jaGVjawplbmZvcmNlbWVudD8KClsgLi4uIF0KCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0
aWJsZQoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIHRoZSBoYXJkd2FyZSBhY3RzIGFzIGFuIGlu
dGVycnVwdCBjb250cm9sbGVyIChhcyBkZW1vbnN0cmF0ZWQgaW4gdGhlCmV4YW1wbGUgYmxvY2sg
d2l0aCBpbnRlcnJ1cHQtY29udHJvbGxlciBhbmQgI2ludGVycnVwdC1jZWxscyA9IDwxPiksIGRv
ZXMKI2ludGVycnVwdC1jZWxscyBuZWVkIHRvIGJlIGFkZGVkIHRvIHRoaXMgcmVxdWlyZWQgbGlz
dD8KCkFjY29yZGluZyB0byB0aGUgc3Vic3lzdGVtIGd1aWRlbGluZXMsIHdoZW4gYSB2YXJpYW50
IGFkZHMgcHJvdmlkZXIKY2FwYWJpbGl0aWVzIGxpa2UgYW4gaW50ZXJydXB0IGNvbnRyb2xsZXIs
IHRoZSBjb3JyZXNwb25kaW5nIHByb3BlcnRpZXMKbXVzdCBhcHBlYXIgaW4gdGhlIHJlcXVpcmVk
IGxpc3Qgd2l0aCBhcHByb3ByaWF0ZSBjb25zdHJhaW50cyB0byBwcmV2ZW50CmluY29tcGxldGUg
ZGV2aWNlIHRyZWUgbm9kZXMgZnJvbSBieXBhc3Npbmcgc2NoZW1hIHZhbGlkYXRpb24uCgo+ICsK
PiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxMi1ub3JkLWRydi1kdC12Mi0w
LWEyYWI5YWY5NTRkMkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
