Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77533C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvRFxJSjEvS/wJkDN63NW/Ygs+rXsmn+AnT1p05oLdY=; b=sa5uR99ihKGiVu
	QijS1AqGkCn7Bm8hpO+tuPfnInVFDLJlYA8+M2HDgUwRDPihepKcfVIYG4cdPz/zq3gEkF5+b+I4r
	kqnxpqhPHbPFRkCaI1mtuVi0Vao4nj8iPiL0ZE6Adz5OT86KPWCDjS5A3jfdn4dpf5LslftX09hNX
	Vq10XcXW3zulY4degQAPFj42dkF6AEdpcK8muHMr/1PKg6mgz8zgHjzY6fgo/gxHwsQ8za35nX4pV
	+6Q7PKXopmJEe+xP5jygs0EV4tLQAnZAoY3yt+q7/8XsPEwQslF21dcXHtEBa2cKb7WUb7u6RrYly
	htLi6fImxpcp3SD55/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3ZQ-0000000Eohc-0GKn;
	Tue, 07 Jul 2026 11:02:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3ZO-0000000EohW-3Ssl
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:02:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 94E3A43617;
	Tue,  7 Jul 2026 11:02:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48D1B1F000E9;
	Tue,  7 Jul 2026 11:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783422150;
	bh=p8cJxyHSbtUUvBqwCRwpSG+BK4ZWeKmT4zXyU0NnKd8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z4dgo/ilDOF+4J7iEuGGRyJkcEu6xZPFq2i1yjr4bRQfGp4vOaYP7xrR7Ggd2Qkdz
	 3usZ4FQV86oWp58ri8tE8WAYg1sKA6FIaEUyveAHmk11WIiuwawtKdQlYeTRzohnW9
	 j0pbnzM3skNJOiIUEO8q0SEwzsOibUxrK4ANABghZdTQIO5mI2cZsuAbU8J8aAcxq1
	 5WKqN2btW7njaLlClHfiS1++8nm6GqN3rLWkwi+wBn4jZzUj5KIhUZlKYDUD2rtvJO
	 +oGyA6w0NF856yB3c6vmVnqd/KB/3QJ4JbleZ5CwJX+L4P2PLtSx4ZA2eGO8vrLVZy
	 61HdpR87rJ0lQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 08/12] power: reset: qcom-pon: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260707101821.173319-9-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-9-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:02:29 +0000
Message-Id: <20260707110230.48D1B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgdW5j
b25kaXRpb25hbGx5IGZhaWxzIHRvIHByb2JlIHdpdGggYC1FTk9ERVZgIGR1ZSB0byBhbiBpbmNv
cnJlY3QgYXJndW1lbnQgcGFzc2VkIHRvIGBzcG1pX2dldF9wYXJlbnRfc3BtaV9kZXZpY2UoKWAu
Ci0tCgotLS0gUGF0Y2ggWzhdOiBbUEFUQ0ggdjExIDA4LzEyXSBwb3dlcjogcmVzZXQ6IHFjb20t
cG9uOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIC0tLQpj
b21taXQgYjY3YjU3MmZiZjc5YTJkNjYyN2Y2YWZjMjQyYjQ1ODAzMDNiNDVmZgpBdXRob3I6IEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20+Cgpwb3dlcjogcmVzZXQ6IHFjb20tcG9uOiBNaWdyYXRlIHRvIGRldm1fc3BtaV9z
dWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpCgpUaGlzIGNvbW1pdCByZWdpc3RlcnMgYSBuZXcgU1BN
SSBzdWItZGV2aWNlIGZvciB0aGUgUG93ZXIgT24gZGV2aWNlIHRvIGFsbG93CmhhbmRsaW5nIG9m
IHJlZ2lzdGVyIGJhc2UgYWRkcmVzc2VzIHVzaW5nIHRoZSByZWdtYXAgQVBJLCByYXRoZXIgdGhh
bgptYW51YWxseSBhZGRpbmcgdGhlIGJhc2UgYWRkcmVzcyBvbiBldmVyeSByZWFkL3dyaXRlIGNh
bGwuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bvd2VyL3Jlc2V0L3Fjb20tcG9uLmMgYi9kcml2
ZXJzL3Bvd2VyL3Jlc2V0L3Fjb20tcG9uLmMKPiBpbmRleCA3ZTEwODk4MmE1ODJlLi4zMTQ5NDJk
NmNjODgyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG93ZXIvcmVzZXQvcWNvbS1wb24uYwo+ICsr
KyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvcWNvbS1wb24uYwoKWyAuLi4gXQoKPiBAQCAtNTYsMTcg
KzY1LDIyIEBAIHN0YXRpYyBpbnQgcWNvbV9wb25fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAgCj4gIAlwb24tPmRldiA9ICZwZGV2LT5kZXY7Cj4gIAo+IC0JcG9uLT5yZWdt
YXAgPSBkZXZfZ2V0X3JlZ21hcChwZGV2LT5kZXYucGFyZW50LCBOVUxMKTsKPiAtCWlmICghcG9u
LT5yZWdtYXApIHsKPiAtCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gbG9jYXRlIHJl
Z21hcFxuIik7Cj4gKwlzcGFyZW50ID0gc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKGRldi0+
cGFyZW50KTsKPiArCWlmICghc3BhcmVudCkKPiAgCQlyZXR1cm4gLUVOT0RFVjsKCltTZXZlcml0
eTogSGlnaF0KV2lsbCB0aGlzIGNhdXNlIHRoZSBwcm9iZSB0byB1bmNvbmRpdGlvbmFsbHkgZmFp
bD8KClRoZSBoZWxwZXIgc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKCkgZXhwZWN0cyB0byBi
ZSBwYXNzZWQgdGhlIGNoaWxkCmRldmljZSBzbyBpdCBjYW4gY2hlY2sgaXRzIHBhcmVudC4gQnkg
cGFzc2luZyBkZXYtPnBhcmVudCwgaXQgYXBwZWFycyB0aGUKaGVscGVyIHdpbGwgaW5zcGVjdCB0
aGUgZ3JhbmRwYXJlbnQgKHRoZSBTUE1JIGJ1cyBjb250cm9sbGVyKSBpbnN0ZWFkLgoKU2luY2Ug
dGhlIFNQTUkgY29udHJvbGxlciBpcyBvZiBzcG1pX2N0cmxfdHlwZSByYXRoZXIgdGhhbiBzcG1p
X2Rldl90eXBlLApkb2VzIHRoaXMgbWVhbiBzcGFyZW50IHdpbGwgYWx3YXlzIGV2YWx1YXRlIHRv
IE5VTEwsIGNhdXNpbmcgdGhlIGRyaXZlcgp0byBpbW1lZGlhdGVseSBhYm9ydCB3aXRoIC1FTk9E
RVYgZHVyaW5nIGluaXRpYWxpemF0aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzEwMTgyMS4xNzMzMTktMS1hbmdlbG9n
aW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD04CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
