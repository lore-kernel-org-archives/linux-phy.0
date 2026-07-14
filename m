Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38768C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZDOPupTX57MMz8Xht9zU0FSBiAQUJIkyxxLYGLSo2I=; b=vV/nLe1DgOiy/b
	1xTgpxo2TvhTWWHmntU27AkGKVGWIfbt9lFMZeLK9XqLTfZodFGWecRqh2Ryc7ryDEC5Bu0LU4R39
	rIj3ZtaWpTgZRJbxdJ6s85t0SLk6quurlEc6m/ypvgHky0TQyxALGK0FN9yZhQccXb89pvjY75qfK
	faesurGvY5NTETTDC6xxBJCBke384oAPF80bbTgxe8XvjyjQttIeyojg6pc7iFThnXOu4oFYeaL9K
	8W4+1FfkQwJ9B/IUImIGkIJOvwMnHoO6lSNdveDLNUBQlmWWgNORwFvj9rzyTdjk68fumAeuRcexJ
	hAhwnHS/5oxMzjBykUyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWvW-0000000B5VI-49lT;
	Tue, 14 Jul 2026 06:47:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWvV-0000000B5V0-2vnm
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:47:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4457B43CF7;
	Tue, 14 Jul 2026 06:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B15A51F00A3E;
	Tue, 14 Jul 2026 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011653;
	bh=vqSVe486xy3axacXEVxCjyRQLCq5PLAFx+/5LdK6weM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZzB9BE2uuTJcxQSkEMRHZ2TpHWwUaVBBeSNXam6asJst+/qpEbdeboh0jvWECe1vH
	 mBbMIEoUI1ScNi66g32AYjnDpNM3FjiVG9rsv7RFGIDxmwmqJ5oFqfED1NCy86CvYt
	 BMwfQYnY9rwf884KPWjzBKYvMjVwsjqHi7rRAhkap+531r2kUfpOLcwQb+I5VV3HVD
	 K8jFev1GpRq7dDCXshralefuFzrNjd4QBi7orTgdTV6b6yDFErSM6SK1cZRqqZZLjq
	 +8BnL8WFcD07oMzUaBHG9woJXmblRWvHvgxP0oWMncJoFlROihqzhrEgE9IrQefOa+
	 fKqEoSlSYPsXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8475 QMP PHY
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260714-sm8475-bup-v1-4-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-4-b2871be2b4ec@proton.me>
Date: Tue, 14 Jul 2026 06:47:32 +0000
Message-Id: <20260714064732.B15A51F00A3E@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGNsYWltcyB0byBhZGQgdGhlIHByb3BlciBpbml0IHNlcXVlbmNlIGZvciB0aGUgU004
NDc1IFFNUCBQSFksIGJ1dCB0aGUgY29ycmVzcG9uZGluZyBDIGRyaXZlciBjaGFuZ2VzIGFyZSBj
b21wbGV0ZWx5IG1pc3NpbmcgZnJvbSB0aGUgcGF0Y2guCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFU
Q0ggNC82XSBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeTog
QWRkIFNNODQ3NSBRTVAgUEhZIC0tLQpjb21taXQgYzc1M2ZjZTZjNTU1ZDlhYzVkNmJkNDhhNWVm
MGRiOGFhNDAyODZhZgpBdXRob3I6IEVzdGViYW4gVXJydXRpYSA8ZXN0ZXV3dUBwcm90b24ubWU+
CgpkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeTogQWRkIFNN
ODQ3NSBRTVAgUEhZCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBxY29tLHNtODQ3NS1xbXAtdXNiMy1k
cC1waHkgY29tcGF0aWJsZSBzdHJpbmcgdG8gdGhlClNDODI4MFhQIFFNUCBVU0I0M0RQIFBIWSBi
aW5kaW5nLiBUaGUgY29tbWl0IG1lc3NhZ2Ugbm90ZXMgdGhhdCB0aGUgaGFyZHdhcmUKcmVxdWly
ZXMgYSBzcGVjaWZpYyBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZS4KCj4gICAgIFNNODQ1MCBpbml0
IHNlcXVlbmNlIGZvciB0aGlzIFBIWSB2YXJpZXMgc2lnbmlmaWNhbnRseSBhbmQgY2FuJ3QgYmUg
dXNlZCBpbgo+ICAgICBTTTg0NzUuCj4gICAgIEFkZCBwcm9wZXIgaW5pdCBzZXF1ZW5jZSBhbmQg
YmluZGluZ3MgZm9yIHRoZSBQSFkgZm91bmQgaW4gdGhpcyBTb0MuCj4KPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11
c2I0M2RwLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1sCj4gaW5kZXggNGVmZjkyMzQzY2U0Zi4u
YjlkMGRlMjVmNDNjMSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQz
ZHAtcGh5LnlhbWwKPiBAQCAtMzcsNiArMzcsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAg
LSBxY29tLHNtODI1MC1xbXAtdXNiMy1kcC1waHkKPiAgICAgICAgICAgIC0gcWNvbSxzbTgzNTAt
cW1wLXVzYjMtZHAtcGh5Cj4gICAgICAgICAgICAtIHFjb20sc204NDUwLXFtcC11c2IzLWRwLXBo
eQo+ICsgICAgICAgICAgLSBxY29tLHNtODQ3NS1xbXAtdXNiMy1kcC1waHkKCltTZXZlcml0eTog
TWVkaXVtXQpJcyB0aGUgZHJpdmVyIHBvcnRpb24gb2YgdGhpcyBwYXRjaCBtaXNzaW5nPyBUaGUg
Y29tbWl0IG1lc3NhZ2UgZXhwbGljaXRseQpzdGF0ZXMgdGhhdCBhIHByb3BlciBpbml0IHNlcXVl
bmNlIGlzIGJlaW5nIGFkZGVkIGJlY2F1c2UgaXQgdmFyaWVzCnNpZ25pZmljYW50bHkgZnJvbSBT
TTg0NTAuIAoKU2luY2Ugb25seSB0aGUgWUFNTCBiaW5kaW5nIGZpbGUgaXMgbW9kaWZpZWQgaGVy
ZSwgdGhlIGNvcnJlc3BvbmRpbmcgQwpkcml2ZXIgY2hhbmdlcyBmb3IgdGhlIGluaXRpYWxpemF0
aW9uIGFycmF5cyBhcHBlYXIgdG8gYmUgY29tcGxldGVseQphYnNlbnQgZnJvbSB0aGUgcGF0Y2gu
Cgo+ICAgICAgICAgICAgLSBxY29tLHNtODU1MC1xbXAtdXNiMy1kcC1waHkKPiAgICAgICAgICAg
IC0gcWNvbSxzbTg2NTAtcW1wLXVzYjMtZHAtcGh5Cj4gICAgICAgICAgICAtIHFjb20sc204NzUw
LXFtcC11c2IzLWRwLXBoeQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1zbTg0NzUtYnVwLXYxLTAtYjI4NzFiZTJiNGVjQHBy
b3Rvbi5tZT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
