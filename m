Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03685C43602
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhKr7/G3tqrS2nkLf94OS4Trp26L0lI5NYzbtcLCpOM=; b=X1Vr55vgWFQdel
	f/YC7xLG2r8xlCGGjGHMYkjIhGUeTD+eVAZ7sk+FgIuz9fp/U7gaH6+7JkQ97ebL8ieEOS+Pq3cTN
	Bpq059PTr0OY+UI9Qt8x8iuY9uysqQvH4xa3vd6QEt64BVE831nNofiVq2rj38h2pesAjasTgJf04
	n1HG8oXUursJo+A4e2ZLENwEiAZoxLwFFcT/+fiaHP4G6bMS4BR2EiIRIbN1J4qKI898MsKGfgMkN
	0tkLc9P7+dPf7a5RbkSFb+YFD9MiCgjCV+w+K1nKHJ0MHbIdBypxk7wKyUI3AGJhmHaBhb8taWJIN
	R6WRcnTYgXXv9UuRnAhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuAF-000000020tK-3Grt;
	Wed, 01 Jul 2026 12:35:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuAD-000000020tC-3rp4
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 12:35:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 39F8E6001D;
	Wed,  1 Jul 2026 12:35:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5DA1F000E9;
	Wed,  1 Jul 2026 12:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909336;
	bh=CJQNdIVi/Q1P74CPDcCp+i08uA+8nWhJngkcnx8r1s0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZnbgQ2v3lT+qQ8RE3rnxpKNplm6LDhKyyS0bOdfJ+wSgvN5VUNh87jjG6K5p7xsdt
	 HPrwlv5Y8eitA7X/0pP0E4qmwzxVEDHIdfNPKqleIheBfLaZPDR4W6ly5CI1MkNh8o
	 Uo4BDxO6fj4Iaeo63Ih3bUBKCj8tBiCztQ0XbNFr1ow6Vg/jX+nRdU1pb9pQvZprPP
	 dUmbvuhhGU/LJPHxMgUUWf6TIjyynKljYeyA+z6u3GnXqlPae37KyD4ug8bRZXI2qo
	 t6I9K6ADE/fOwkCrTuy6yEJ4nZy7yBhafyMlMnsu6eNstwJ3Fcc1pSP9Y4XA0W4/6O
	 57C6/LrFWlwdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/12] phy: phy-mtk-dp: Support set_lanes in configure
 and properly cleanup
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260701122008.19509-7-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-7-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 12:35:35 +0000
Message-Id: <20260701123536.6C5DA1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwg
ZG8td2hpbGUgbG9vcCBpbiBgbXRrX2RwX3BoeV9kaXNhYmxlX2FsbF9sYW5lc2AgY2F1c2VzIGFu
IG91dC1vZi1ib3VuZHMgYml0d2lzZSBzaGlmdCBhbmQgdW5kZWZpbmVkIGJlaGF2aW9yIHdoZW4g
bm8gbGFuZXMgYXJlIGluaXRpYWxseSBlbmFibGVkLgotIFtIaWdoXSBgbXRrX2RwX3BoeV9kaXNh
YmxlX2FsbF9sYW5lc2AgcGFzc2VzIGEgYml0IGluZGV4IGluc3RlYWQgb2YgYSBiaXRtYXNrIHRv
IGBGSUVMRF9QUkVQYCwgZmFpbGluZyB0byBkaXNhYmxlIHRoZSBjb3JyZWN0IGxhbmVzLgotLQoK
Y29tbWl0IDI1Y2RkNTFiZDFhYzRkNjlhNDllNzdkOTNhNmIxMzc0YmE0NmRkM2MKQXV0aG9yOiBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xs
YWJvcmEuY29tPgoKcGh5OiBwaHktbXRrLWRwOiBTdXBwb3J0IHNldF9sYW5lcyBpbiBjb25maWd1
cmUgYW5kIHByb3Blcmx5IGNsZWFudXAKCkFkZCBzdXBwb3J0IGZvciBlbmFibGluZyBhIHNwZWNp
ZmljYWxseSByZXF1ZXN0ZWQgbnVtYmVyIG9mIGxhbmVzCmluIHRoZSAuY29uZmlndXJlKCkgY2Fs
bGJhY2sgYW5kIGRpc2FibGUgYWxsIGxhbmVzIGluIHBvd2VyIG9mZgphbmQgcmVzZXQgY2FsbGJh
Y2tzIGZvciBwcm9wZXIgaGFyZHdhcmUgY2xlYW51cC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGst
ZHAuYwo+IGluZGV4IDU4NmU3Mjc5NTYzMzIuLmEyY2QyMmI5ZGEwNjYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay1kcC5jClsgLi4uIF0KPiBAQCAtMjYxLDYgKzI2NywzNSBAQCBzdGF0aWMg
aW50IG10a19kcF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICAJcmV0dXJuIDA7Cj4g
IH0KPiAgCj4gK3N0YXRpYyBpbnQgbXRrX2RwX3BoeV9kaXNhYmxlX2FsbF9sYW5lcyhzdHJ1Y3Qg
bXRrX2RwX3BoeSAqZHBfcGh5KQo+ICt7Cj4gKwljb25zdCBzdHJ1Y3QgbXRrX2RwX3BoeV9wZGF0
YSAqcGRhdGEgPSBkcF9waHktPnBkYXRhOwo+ICsJY29uc3QgdTggKnJlZ3MgPSBwZGF0YS0+cmVn
c19kaWdfZ2xiOwo+ICsJaW50IHJldDsKPiArCXUzMiB2YWw7Cj4gKwo+ICsJcmV0ID0gcmVnbWFw
X3JlYWQoZHBfcGh5LT5yZWdtYXAsIHBkYXRhLT5vZmZfZGlnX2dsYiArIHJlZ3NbRFBfUEhZRF9U
WF9DVExfMF0sICZ2YWwpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCS8q
IEdldCBtYXNrIG9mIGN1cnJlbnRseSBlbmFibGVkIGxhbmUgKi8KPiArCXZhbCA9IEZJRUxEX0dF
VChQSFlEX1RYX0xOX0VOLCB2YWwpOwo+ICsKPiArCS8qIERpc2FibGUgYWxsIGxhbmVzIChuZWVk
cyB0byBiZSBkb25lIG9uZSBieSBvbmUsIGZyb20gbGFzdCB0byBmaXJzdCkgKi8KPiArCWRvIHsK
PiArCQl1MzIgbGFuZV9udW0gPSBmbHModmFsKSAtIDE7Cj4gKwkJdmFsICY9IH5CSVQobGFuZV9u
dW0pOwogICAgICAgICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eCgpbU2V2ZXJpdHk6IEhp
Z2hdCkRvZXMgdGhpcyBjYXVzZSB1bmRlZmluZWQgYmVoYXZpb3IgaWYgdmFsIGlzIGluaXRpYWxs
eSAwPwoKSWYgdGhlIFBIWSByZWdpc3RlciByZXBvcnRzIDAgZW5hYmxlZCBsYW5lcyAod2hpY2gg
Y2FuIGhhcHBlbiBhZnRlciBhCmhhcmR3YXJlIHJlc2V0IG9yIGR1cmluZyBpbml0aWFsIGJvb3Qp
LCB2YWwgd2lsbCBiZSAwLiBTaW5jZSB0aGlzIGlzIGFuCnVuY29uZGl0aW9uYWwgZG8td2hpbGUg
bG9vcCwgZmxzKDApIHdpbGwgcmV0dXJuIDAsIGxlYWRpbmcgdG8gbGFuZV9udW0KZXZhbHVhdGlu
ZyB0byBVSU5UX01BWC4KClRoZSBzdWJzZXF1ZW50IEJJVChsYW5lX251bSkgYXR0ZW1wdCB3b3Vs
ZCByZXN1bHQgaW4gYW4gb3V0LW9mLWJvdW5kcwpiaXR3aXNlIHNoaWZ0LiBDb3VsZCB0aGlzIGJl
IGNoYW5nZWQgdG8gYSB3aGlsZSBsb29wLCBvciBjaGVjayBpZiB2YWwgaXMgMApiZWZvcmUgZW50
ZXJpbmcgdGhlIGxvb3A/Cgo+ICsKPiArCQlyZXQgPSByZWdtYXBfY2xlYXJfYml0cyhkcF9waHkt
PnJlZ21hcCwKPiArCQkJCQlwZGF0YS0+b2ZmX2RpZ19nbGIgKyByZWdzW0RQX1BIWURfVFhfQ1RM
XzBdLAo+ICsJCQkJCUZJRUxEX1BSRVAoUEhZRF9UWF9MTl9FTiwgbGFuZV9udW0pKTsKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5e
Xl5eXl5eXl5eXl5eCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjbGVhciB0aGUgY29ycmVj
dCBsYW5lcyBpbiB0aGUgcmVnaXN0ZXI/CgpJdCBsb29rcyBsaWtlIHRoZSBiaXQgaW5kZXggbGFu
ZV9udW0gaXMgcGFzc2VkIGRpcmVjdGx5IHRvIEZJRUxEX1BSRVAgaGVyZQppbnN0ZWFkIG9mIHRo
ZSBiaXRtYXNrIEJJVChsYW5lX251bSksIHdoaWNoIHdhcyBjb3JyZWN0bHkgdXNlZCBpbgptdGtf
ZHBfcGh5X2NvbmZpZ3VyZSgpLgoKSWYgbGFuZV9udW0gaXMgMywgRklFTERfUFJFUChHRU5NQVNL
KDcsIDQpLCAzKSB3aWxsIGdlbmVyYXRlIDB4MzAsIHdoaWNoCmNsZWFycyBsYW5lcyAwIGFuZCAx
IGluc3RlYWQgb2YgMHg4MCAod2hpY2ggd291bGQgY2xlYXIgbGFuZSAzKS4gVGhpcyBzZWVtcwps
aWtlIGl0IG1pZ2h0IHJlcGVhdGVkbHkgYXR0ZW1wdCB0byBjbGVhciB0aGUgd3JvbmcgbGFuZXMg
YW5kIGxlYXZlIGhpZ2hlcgpsYW5lcyBlbmFibGVkLgoKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1
cm4gcmV0Owo+ICsJfSB3aGlsZSAodmFsKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcw
MTEyMjAwOC4xOTUwOS0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9w
YXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
