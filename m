Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068DBCD4F4A
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 17:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWXKiTLSW15rKDaJ1CnlWSTrTQkI12MP6ZPpstNI5fc=; b=rTobdeR84enwq8
	fqmuhWf6YX3QI+ejWUDadEiyWR8wUFEyUBv0pYwzFnilQXW9/onntbh5POpHdsW59ou59o8vPf3D0
	Sp5/+Y1nc6hndFZlNb5y6GrU83blZXLuPcKPvSn/q+8U5zS3qprcmgZPjsGU+xmFH91AXVL+ieDS2
	LcAUJ+gHHEOXExNdUxpq0WIK8WbLNUZuyU+VqMQe5wz2qnRdKQedN/NLpIbSZ6bAS6aSKXKRMujKz
	xzDETVwlGHLOKEDo/qUmOp0bEUGaTBJAVhIZ99TugCPaKpCc0VK9i593tssaOy9FieK1kB+uKUaAk
	9Z76Spkebv0t/z7+bmPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1TG-0000000GNgD-2su1;
	Mon, 18 May 2026 17:09:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1TD-0000000GNfQ-3m9K
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 17:09:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D82A432E3;
	Mon, 18 May 2026 17:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBBA4C2BCB7;
	Mon, 18 May 2026 17:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779124175;
	bh=MU9oD6ZknNtzEgnVFt5sDL5QMgVi9OeLrG2xY1aLweg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=THIZaXV+E8uvpH6zULbV8QvYgbS+kWfx/wi8m3y1yudQT1AADQa9WjcsKnu1a7Nxr
	 Ld5gQw0x8tvHyXMcUhajAmjZZfM3TYUcR54+Bu2N11QFAo7eYpmwEa2HUgLK9qTPXC
	 AjwvjJRimR+L6meDj45w7glvnIiRmWO5n7ju1ULOkec25/POLgdUjOqSPgoZ95qQ2J
	 ors07fRtFV7jvMKx96CcWdasRXrZ1nmuS0ZkoIDblnMRKLQ9OBc5KL3dSz3U9BGdqW
	 9/37XuWsDwbnuSDFed4r6ooOBDccf1cSwiRac/rTa10ME59OzMuzuaBaqiEgmKHCwn
	 R3v7XjYnT6q9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V1 2/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document the Hawi UFS controller
To: palash.kambar@oss.qualcomm.com
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260518165346.1732548-3-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-3-palash.kambar@oss.qualcomm.com>
Date: Mon, 18 May 2026 17:09:34 +0000
Message-Id: <20260518170934.BBBA4C2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_100935_956877_2F39E633 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCB0
aXRsZSBzcGVjaWZpZXMgdGhlIHdyb25nIHN1YnN5c3RlbSBhbmQgZmlsZW5hbWUgcmVsYXRpdmUg
dG8gdGhlIGFjdHVhbCBkaWZmLgotIFtNZWRpdW1dIFRoZSBuZXcgY29tcGF0aWJsZSBzdHJpbmcg
J3Fjb20saGF3aS11ZnNoYycgaXMgb21pdHRlZCBmcm9tIHRoZSBgaWYtdGhlbmAgY29uZGl0aW9u
YWwgYmxvY2sgdGhhdCBlbmZvcmNlcyB0aGUgTUNRIHJlZ2lzdGVyIHJhbmdlIGNvbnN0cmFpbnRz
LgotLQoKY29tbWl0IDE3NDJjZTA1ODBiMTY4ZWIxOWYxZGM2MGEwOTdlMTNjY2JmODA5OGQKQXV0
aG9yOiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gua2FtYmFyQG9zcy5xdWFsY29tbS5jb20+CgpkdC1i
aW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5OiBEb2N1bWVudCB0aGUgSGF3
aSBVRlMgY29udHJvbGxlcgogICAgCkRvY3VtZW50IHRoZSBVRlMgQ29udHJvbGxlciBvbiB0aGUg
SGF3aSBQbGF0Zm9ybS4KCj4gZHQtYmluZGluZ3M6IHBoeTogcWNvbSxzYzgyODB4cC1xbXAtdWZz
LXBoeTogRG9jdW1lbnQgdGhlIEhhd2kgVUZTIGNvbnRyb2xsZXIKClRoaXMgaXNuJ3QgYSBidWcs
IGJ1dCB0aGUgY29tbWl0IHRpdGxlIHNwZWNpZmllcyB0aGUgd3Jvbmcgc3Vic3lzdGVtIGFuZApm
aWxlbmFtZS4gSXQgY2xhaW1zIHRvIG1vZGlmeSB0aGUgUEhZIGJpbmRpbmcgcWNvbSxzYzgyODB4
cC1xbXAtdWZzLXBoeSwKYnV0IHRoZSBwYXRjaCBhY3R1YWxseSBtb2RpZmllcyB0aGUgVUZTIGhv
c3QgY29udHJvbGxlciBiaW5kaW5nCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
ZnMvcWNvbSxzbTg2NTAtdWZzaGMueWFtbC4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAtdWZzaGMueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAtdWZzaGMueWFtbAo+IGlu
ZGV4IGYyODY0MWM2ZTY4ZmUuLjNkZTAwYWZmYTRjNjQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNo
Yy55YW1sClsgLi4uIF0KPiBAQCAtMjcsNiArMjgsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgaXRl
bXM6Cj4gICAgICAgIC0gZW51bToKPiAgICAgICAgICAgIC0gcWNvbSxlbGl6YS11ZnNoYwo+ICsg
ICAgICAgICAgLSBxY29tLGhhd2ktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxrYWFuYXBhbGkt
dWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxzbTg2NTAtdWZzaGMKPiAgICAgICAgICAgIC0gcWNv
bSxzbTg3NTAtdWZzaGMKCkRvZXMgdGhpcyBjb2RlIG9taXQgcWNvbSxoYXdpLXVmc2hjIGZyb20g
dGhlIGNvbmRpdGlvbmFsIGJsb2NrIGZ1cnRoZXIgZG93biBpbgp0aGUgZmlsZSB0aGF0IGVuZm9y
Y2VzIHRoZSBNQ1EgcmVnaXN0ZXIgcmFuZ2UgY29uc3RyYWludHM/CgpMb29raW5nIGF0IHRoZSBh
bGxPZiBibG9jayBpbiB0aGlzIGZpbGU6CgphbGxPZjoKICAtICRyZWY6IHFjb20sdWZzLWNvbW1v
bi55YW1sCiAgLSBpZjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjb21wYXRpYmxlOgogICAg
ICAgICAgY29udGFpbnM6CiAgICAgICAgICAgIGVudW06CiAgICAgICAgICAgICAgLSBxY29tLGVs
aXphLXVmc2hjCiAgICB0aGVuOgogICAgICBwcm9wZXJ0aWVzOgogICAgICAgIHJlZzoKICAgICAg
ICAgIG1pbkl0ZW1zOiAyCiAgICAgICAgcmVnLW5hbWVzOgogICAgICAgICAgbWluSXRlbXM6IDIK
CklmIHRoZSBIYXdpIHBsYXRmb3JtIHNoYXJlcyB0aGUgc2FtZSBoYXJkd2FyZSBjb25zdHJhaW50
cyBhbmQgcmVxdWlyZXMgdGhlIE1DUQpyZWdpc3RlcnMsIGNvdWxkIHRoaXMgcmVncmVzc2lvbiBh
bGxvdyBpbmNvbXBsZXRlIGRldmljZSB0cmVlcyBtaXNzaW5nIHRoZSBNQ1EKcmVnaXN0ZXJzIHRv
IHNpbGVudGx5IHBhc3Mgc2NoZW1hIHZhbGlkYXRpb24gYnkgYmVpbmcgb21pdHRlZCBmcm9tIHRo
aXMgYmxvY2s/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNTE4MTY1MzQ2LjE3MzI1NDgtMS1wYWxhc2gua2FtYmFyQG9zcy5xdWFs
Y29tbS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
