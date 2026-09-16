Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB7A4C982C9
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXY2HPVuqdHgNWbMqJxykLrIE1ReRKbHQKCWvecN7Yk=; b=R69fJlY3ucMmkc
	CKZZroKfkzWZTZPe6PLKstnJUt1PgkN/O2dIlRDN56C4JCAw5j/bsxUCWUqP1gQBiTDkHHyfsTI2o
	wKYpjxvp9Z3xkuzXU7n1FiTE0N2Th9CseFInL9jGdL/T1ynekgiJ9sHoa2fgNsyBOFXSWb50o5uDa
	3bNs5zS7eQ+Jey7PuPJcWshZoRanhQtc4guXKy1Fm/9YAd54yOjpLcCe0HiTJAhrtSaFL/QJp7cSZ
	hMlUKx+czzfjVHrgP5o8vTTgUQwznEP0864HGxcRiSktTb56ktaQ3CyT/BGj40PN9s67Q7uJFGRu/
	ld8obsmdaucERlwpSP9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uUa-00000009y1q-1cw6;
	Wed, 16 Sep 2026 18:36:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uUZ-00000009y1k-2Lg8
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:36:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 211B3431F5;
	Wed, 16 Sep 2026 18:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B4AA1F000FF;
	Wed, 16 Sep 2026 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789583783;
	bh=tZol8Hpy5KiTOodSCq7FLSPvYtue/9pyvo0ofcl0duA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Zfa4I/i7d609vjaNVsH1d4LSuaQ0el5yG3NB/iBdd0KdyTKHq9hihLUOTYvo0Ze+Q
	 WrSSMFJ/yJmawYoQj7bjjnQMhjw4fHCK9WhDY1EHICKM8ugc+QmTw1+IiHoB7BcAcK
	 NZEAn2ivV8niquc1So12IpGFZdri2Z1Vx+8ITN3c/m96C8zJeEooaGN1BDYQjVrfAt
	 5LwYrJ7RZBGtKi6c1iQVX+LCU/goosWIM46hRGKqOLjYtGBYw9I9kZnVTye0oscx38
	 mmf4LVIcA3vpj4quFIiv8LmCpVoi1krjvl+oh8iyeQpjUdjSeWusCyeGdX6LOCVGZ6
	 mgr9cdnURyRPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document
 the Nord eUSB2 PHY
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260916-nord-usb-phy-v2-1-2c8461bb30e6@oss.qualcomm.com>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
 <20260916-nord-usb-phy-v2-1-2c8461bb30e6@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 18:36:22 +0000
Message-Id: <20260916183622.8B4AA1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHNu
cHMtZXVzYjItcGh5IHdlYWtlbnMgdmFsaWRhdGlvbiBieSBkcm9wcGluZyByZXF1aXJlZCByZXNl
dHMKLS0KCmNvbW1pdCA0MGYzZTJmZDdhZmQyNDIyNTRhOGZiNjgyYTAzOTAzYTdhNWFjYzZkCkF1
dGhvcjogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBvc3MucXVhbGNv
bW0uY29tPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbSxzbnBzLWV1c2IyLXBoeTogRG9jdW1lbnQg
dGhlIE5vcmQgZVVTQjIgUEhZCgpBZGQgYSBjb21wYXRpYmxlIGZvciB0aGUgZVVTQjIgUEhZIGZv
dW5kIG9uIHRoZSBRdWFsY29tbSBOb3JkIFNvQy4gVGhpcyAKY29tbWl0IHJlbW92ZXMgdGhlIHJl
c2V0cyBwcm9wZXJ0eSBmcm9tIHRoZSBnbG9iYWxseSByZXF1aXJlZCBsaXN0LCBhcyB0aGUgCk5v
cmQgU29DIGRvZXMgbm90IGhhdmUgYSBkZWRpY2F0ZWQgUEhZIHJlc2V0IGZvciB0aGUgSFMtb25s
eSBVU0IyMCB0aWxlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9xY29tLHNucHMtZXVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi1waHkueWFtbAo+IGluZGV4IDA5NmY2
YjU0NjYzMmUuLjdmZThjODJkYjM4ZDggMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNucHMtZXVzYjItcGh5LnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc25wcy1ldXNiMi1waHkueWFt
bApbIC4uLiBdCj4gQEAgLTY0LDcgKzY1LDYgQEAgcmVxdWlyZWQ6Cj4gICAgLSBjbG9jay1uYW1l
cwo+ICAgIC0gdmRkLXN1cHBseQo+ICAgIC0gdmRkYTEyLXN1cHBseQo+IC0gIC0gcmVzZXRzCgpb
U2V2ZXJpdHk6IExvd10KRG9lcyByZW1vdmluZyByZXNldHMgZnJvbSB0aGUgZ2xvYmFsbHkgcmVx
dWlyZWQgbGlzdCB3ZWFrZW4gdmFsaWRhdGlvbiBmb3IKdGhlIGV4aXN0aW5nIFNvQ3M/CgpJZiBh
IGRldmljZSB0cmVlIGZvciBvbGRlciBTb0NzIGxpa2Ugc204NTUwIG9yIHNtODY1MCBlcnJvbmVv
dXNseSBvbWl0cyB0aGUKcmVzZXRzIHByb3BlcnR5LCBpdCBhcHBlYXJzIGl0IHdpbGwgbm93IHNp
bGVudGx5IHBhc3Mgc2NoZW1hIHZhbGlkYXRpb24uIApXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gYWRk
IGFuIGFsbE9mIGNvbmRpdGlvbmFsIGJsb2NrIHRoYXQga2VlcHMgcmVzZXRzIGluCnRoZSByZXF1
aXJlZCBsaXN0IGZvciB0aGUgb2xkZXIgY29tcGF0aWJsZSBzdHJpbmdzIHRoYXQgc3RpbGwgbWFu
ZGF0ZSBpdD8KCj4gIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNi1ub3JkLXVz
Yi1waHktdjItMC0yYzg0NjFiYjMwZTZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
