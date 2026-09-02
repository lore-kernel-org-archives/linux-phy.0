Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 782F0C624D3
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 15:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiztkomG3ionQuCQV5943tcOAi3OqWzBXoGXhHdSOAk=; b=aBg84K2ZNMyHRk
	Y4eMpl6GsqjgZezku8N41r72SbT03OPhenVQky0hYLvZuSnK4ZlJqeXEqmvPWJ/cS22Yr06i4Gndb
	czBlqhm9rPQNh3Dmq9x6yX0BozJWPGALlcLnvNC7EO0ZkSwhuC99RJttEVz2eHNDnFI1Z0yH/ie1o
	f/07FJaF9FUgVeVEOodMI+rh04oa++bMYKhClKrxFVzBrwHZ5IBQ7ctOM9bI1drjuZ+N1Qdb108RU
	5DhqS/TS9Yi+zTSPjVx+J6sJHUAC1nRUif5qnvEOulNFmNyQasTH22mhTURalaVm2xNzi2GrJGOZq
	sg15zwhWmgDnGphi5EQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mW3-0000000F2ja-0ToJ;
	Wed, 02 Sep 2026 15:04:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mW0-0000000F2iX-1If9
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 15:04:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 17C3943729;
	Wed,  2 Sep 2026 15:04:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 756D31F00A3A;
	Wed,  2 Sep 2026 15:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788361480;
	bh=sxkfdOvfqSEQoJS5M8xkBhpL+OFUJ/t27w2005+PkvE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Upn52aG1qJND3BPQtX6lxMWcGryY+KLNFdMGBZcYT7a414u9ztpGy2k3VbtGhpoTQ
	 f9fpSxHMjs8SqdcMF4f2mLQo9oHPpt5AoWEjH27ld87POCGJC7KYCTW2nMzmYCKujD
	 rRhbEUdAWN4UJM6HUkFqG1QkqpFro45tSScxsTv4iiPJ4aOFlUFR0F0nVDDB0JNqIs
	 pgks7NNrVGS5Xx2E2biDFnItKiPZj6xztWmPkkNIq1omACC2jqReyWXflJUPCaoOBM
	 50zpEu4oBflMFGJM+SwtGkqXzql19uvrJ/RubKxvCwL1gd6zX95RfXkQHb9DkKvd45
	 qQAfJ4E1wvLNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 05/10] arm64: dts: rockchip: rk3568: add
 XPCS and fixed-clock nodes
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, wsa+renesas@sang-engineering.com
In-Reply-To: <20260901150111.141037-6-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-6-coiaprant@gmail.com>
Date: Wed, 02 Sep 2026 15:04:39 +0000
Message-Id: <20260902150439.756D31F00A3A@smtp.kernel.org>
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
NCBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRFQgU2NoZW1hIFZhbGlk
YXRpb24gRmFpbHVyZTogRGlzYWJsZWQgJ3hwY3MnIG5vZGUgbGFja3MgcmVxdWlyZWQgcHJvcGVy
dGllcwotIFtMb3ddIERUIFNjaGVtYSBWYWxpZGF0aW9uIEZhaWx1cmU6ICdzdGF0dXMnIHByb3Bl
cnR5IGluICdwY3MtbWlpJyBzdWJub2RlcwotIFtMb3ddIE1pc3NpbmcgSGFyZHdhcmUgUmVzZXQg
UHJvcGVydHkgaW4gWFBDUyBub2RlCi0gW0xvd10gSW5jb3JyZWN0IENsb2NrIE1vZGVsaW5nOiBG
YWtlIGZpeGVkLWNsb2NrIG5vZGVzIGZvciBoYXJkd2FyZSBjbG9ja3MKLS0KCmNvbW1pdCBlZmYy
NjY5YmZmMjA4MWJiNzJiMjViYTU3MTJiNjZkZjJmNzBiOWJmCkF1dGhvcjogQ29pYSBQcmFudCA8
Y29pYXByYW50QGdtYWlsLmNvbT4KYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2ODogYWRkIFhQ
Q1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBYUENTIGRldmlj
ZSBub2RlIGFuZCBpdHMgYXNzb2NpYXRlZCBwY3MtbWlpIHN1Yi1ub2Rlcwp0byB0aGUgUkszNTY4
IGRldmljZSB0cmVlLiBJdCBhbHNvIGludHJvZHVjZXMgdHdvIGZpeGVkLWNsb2NrIG5vZGVzIHRv
IHNlcnZlCmFzIHJlZmVyZW5jZSBjbG9ja3MgZm9yIHRoZSBHTUFDcy4KCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gaW5kZXggM2JjNjUzZjAyN2YxZi4uOTg5ZTE2
NGMwZWIzOSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQpb
IC4uLiBdCj4gKwl4cGNzOiBwY3NAZmRhMDAwMDAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTY4LXhwY3MiOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNl
bGxzID0gPDA+Owo+ICsJCXJlZyA9IDwweDAgMHhmZGEwMDAwMCAweDAgMHgyMDAwMDA+Owo+ICsJ
CWNsb2NrcyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gKwkJY2xv
Y2stbmFtZXMgPSAiY3NyIiwgImVlZSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUksz
NTY4X1BEX1BJUEU+Owo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpbU2V2ZXJpdHk6IExvd10K
V2lsbCB0aGlzIGNhdXNlIG1ha2UgZHRic19jaGVjayB0byBlbWl0IHZhbGlkYXRpb24gd2Fybmlu
Z3MgZm9yIGJvYXJkcyB0aGF0CmluY2x1ZGUgcmszNTY4LmR0c2kgd2l0aG91dCBvdmVycmlkaW5n
IHRoZSB4cGNzIG5vZGU/IFRoZQpyb2NrY2hpcCxyazM1NjgteHBjcyBiaW5kaW5nIHNjaGVtYSB1
bmNvbmRpdGlvbmFsbHkgcmVxdWlyZXMgcGh5cyBhbmQKcGh5LW5hbWVzIGF0IHRoZSByb290IGxl
dmVsLCBldmVuIHdoZW4gdGhlIG5vZGUgaXMgZGlzYWJsZWQuCgpbU2V2ZXJpdHk6IExvd10KRG9l
cyB0aGUgeHBjcyBub2RlIGFjY3VyYXRlbHkgcmVwcmVzZW50IHRoZSBoYXJkd2FyZSB3aXRob3V0
IGEgcmVzZXRzCnByb3BlcnR5PyBUaGUgUkszNTY4IGhhcmR3YXJlIHByb3ZpZGVzIGRlZGljYXRl
ZCByZXNldHMgKGxpa2UgU1JTVF9YUENTKQpmb3IgdGhpcyBibG9jay4gT21pdHRpbmcgdGhlIHJl
c2V0cyBwcm9wZXJ0eSBtaWdodCBsZWF2ZSB0aGUgaGFyZHdhcmUKZGVzY3JpcHRpb24gaW5jb21w
bGV0ZSwgZXZlbiBpZiB0aGUgY3VycmVudCBMaW51eCBkcml2ZXIgZG9lcyBub3QgYWN0aXZlbHkK
dXNlIGl0LgoKPiArCj4gKwkJeHBjc19taWkwOiBwY3MtbWlpQDAgewo+ICsJCQlyZWcgPSA8MD47
Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpbU2V2ZXJpdHk6IExvd10KSXMgdGhlIHN0YXR1
cyBwcm9wZXJ0eSBwZXJtaXR0ZWQgaW4gdGhlc2UgcGNzLW1paSBzdWJub2Rlcz8gVGhlCnJvY2tj
aGlwLWR3eHBjcy55YW1sIHNjaGVtYSB1c2VzIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZSBm
b3IgdGhlCl5wY3MtbWlpQFswLTNdJCBwYXR0ZXJuIGFuZCBkb2VzIG5vdCBleHBsaWNpdGx5IGFs
bG93IHRoZSBzdGF0dXMgcHJvcGVydHkuClRoaXMgbWlnaHQgdHJpZ2dlciBhbm90aGVyIHZhbGlk
YXRpb24gd2FybmluZyBkdXJpbmcgbWFrZSBkdGJzX2NoZWNrLgoKPiArCQl9OwpbIC4uLiBdCj4g
Kwo+ICsJeHBjc19nbWFjMF9jbGs6IHhwY3MtZ21hYzAtY2xvY2sgewo+ICsJCWNvbXBhdGlibGUg
PSAiZml4ZWQtY2xvY2siOwo+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMjUwMDAwMDA+OwoKW1Nl
dmVyaXR5OiBMb3ddCkRvZXMgbW9kZWxpbmcgdGhlc2UgMTI1IE1IeiByZWZlcmVuY2UgY2xvY2tz
IGFzIHN0YW5kYWxvbmUgZml4ZWQtY2xvY2sgbm9kZXMKbWFzayB0aGUgdHJ1ZSBoYXJkd2FyZSBk
ZXBlbmRlbmN5PyBTaW5jZSB0aGVzZSBjbG9ja3MgYXJlIGFjdHVhbGx5IGdlbmVyYXRlZApieSB0
aGUgWFBDUy9Db21ibyBQSFkgYmxvY2ssIHVzaW5nIGR1bW15IGJvYXJkLWxldmVsIGNsb2NrcyBj
b3VsZCBoaWRlIHRoZQpyZWFsIHRvcG9sb2d5IGZyb20gdGhlIGRldmljZSB0cmVlLCBldmVuIGlm
IGEgcG93ZXIgbWFuYWdlbWVudCByYWNlIGlzCmN1cnJlbnRseSBhdm9pZGVkIGJ5IGEgZGV2aWNl
IGxpbmsgaW4gdGhlIE1BQyBkcml2ZXIuCgo+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtf
Z21hYzBfeHBjc19taWkiOwo+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCX07CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAx
MTUwMTExLjE0MTAzNy0xLWNvaWFwcmFudEBnbWFpbC5jb20/cGFydD01CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
