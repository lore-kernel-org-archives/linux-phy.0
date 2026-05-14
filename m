Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1BB1CD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 12:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8nN1nA7gxukpIygNCaShVxZwybSQyw6FQJVLOMuzzA=; b=cjpdhETiYnHU30
	WfC7PFsKasrkrlQtaZT9f3jB8CKQ3COHT3Pvig/7Xb2eR+fXi7cCXpAhHYxm037vuDqmmwa8jgNtf
	mLFzGBTmhVVoGDRZSnohnRsIItbLSz/XqMrA+MSzYa1My0DaHoca2ubIvZEgY1NxhP4GGP1vHuzXN
	eGgFEbNx0Ldha+3NpTgLRLcIBtHJ8DunsKi+1nPoEvJEe9S1IxNYMiezRv7DBDG0hvuiiWnIKklFQ
	zUWqmniY/t2JJqfowHJ2sOF29QtnaxLNKBkSY8dbc7+DDPflivgUGZYjwgsQbYWEYUiqaMWsyyild
	GONPWuPpYkqLaWQE7ehQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNUog-00000005PYy-2XTm;
	Thu, 14 May 2026 12:05:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNUod-00000005PYQ-49OL
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 12:05:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4813B40570;
	Thu, 14 May 2026 12:05:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75CC1C2BCB3;
	Thu, 14 May 2026 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760323;
	bh=zva+dUkpWGETYJ7mF6AsnBpM4TcXI9zS6K+u4RO42P8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=PYFkKhdxpl1OL7MQ89PfDL6LmSVRAin7hcp9FXXAfukHpXreWr/1IlWJKn2Agid1P
	 FcsaFQelwP01RXuz3v3WE+hY8sIPCH3HJhe7b4oD9mm9Gs9L7cB57X1BrWn0uNmatM
	 0Jz7tVk1cRvHxHrBDDXgttimci3LqEC/VWA2lgUX0ge1xP4FKiL5Qdl3B8OiitOfHY
	 +7ylBw+XVvYWARCzE9p3qydKYRfe9+l0MgajdrRATyGgAG+2Nqwk9qIq91lWTKA6V5
	 jpz1xUB3ZWYJ7xQBxS9kgzsZxbVGXrDy7nKMyb18AyjmDsdUhxe3NGbZKWhjoQlCxj
	 EWsldW1SjytOw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
References: <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
Date: Thu, 14 May 2026 12:05:21 +0000
Message-Id: <20260514120522.75CC1C2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_050524_049867_8722D7B8 
X-CRM114-Status: GOOD (  10.70  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbXBhdGli
bGUgc3RyaW5nIGBxY29tLGlwcTUyMTAtcW1wLWdlbjN4MS1wY2llLXBoeWAgaXMgYWRkZWQgdG8g
Ym90aCB0aGUgc3RhbmRhbG9uZSBlbnVtIGFuZCB0aGUgZmFsbGJhY2sgaXRlbXMgbGlzdCwgYWxs
b3dpbmcgaXQgdG8gYnlwYXNzIHRoZSBpbnRlbmRlZCBmYWxsYmFjayByZXF1aXJlbWVudC4KLS0K
CmNvbW1pdCA1NWIyMDFmOWMwY2VmNTllOTRkZDA1ZDUyNGVkNzFkMjlmNGU4NmM5CkF1dGhvcjog
VmFyYWRhcmFqYW4gTmFyYXlhbmFuIDx2YXJhZGFyYWphbi5uYXJheWFuYW5Ab3NzLnF1YWxjb21t
LmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IHFjb20saXBxODA3NC1xbXAtcGNpZTogRG9jdW1lbnQg
dGhlIGlwcTUyMTAgUU1QIFBDSWUgUEhZCgpUaGlzIGNvbW1pdCBkb2N1bWVudHMgdGhlIGlwcTUy
MTAgUU1QIFBDSWUgUEhZLiBJdCBhaW1zIHRvIHVzZSB0aGUgaXBxOTU3NApiaW5kaW5ncyBhcyBh
IGZhbGxiYWNrLCBhcyB0aGUgaGFyZHdhcmUgaXMgc2ltaWxhci4KCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE4MDc0LXFtcC1wY2ll
LXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGlw
cTgwNzQtcW1wLXBjaWUtcGh5LnlhbWwKPiBpbmRleCBmNjA4MDQ2ODc0MTJhLi4xYWMzMTQzOWMy
MGEwIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxpcHE4MDc0LXFtcC1wY2llLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGlwcTgwNzQtcW1wLXBjaWUtcGh5LnlhbWwKPiBAQCAt
MTcsNiArMTcsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBvbmVPZjoK
PiAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgLSBxY29tLGlwcTUyMTAtcW1wLWdlbjN4MS1w
Y2llLXBoeQoKVGhlIGNvbW1pdCBtZXNzYWdlIHN0YXRlcyB0aGUgaW50ZW50IHRvIGRvY3VtZW50
IHRoZSBJUFE1MjEwIFBIWSAidXNpbmcgdGhlCmlwcTk1NzQgYmluZGluZ3MgYXMgYSBmYWxsYmFj
ayIuIERvZXMgYWRkaW5nIHRoZSBjb21wYXRpYmxlIHN0cmluZyB0byB0aGlzCnN0YW5kYWxvbmUg
ZW51bSBhbGxvdyBkZXZpY2UgdHJlZXMgdG8gb21pdCB0aGUgZmFsbGJhY2sgYW5kIHN0aWxsIHBh
c3MKdmFsaWRhdGlvbj8KClNpbmNlIHRoaXMgaXMgaW5zaWRlIGEgb25lT2YgYmxvY2ssIGEgZGV2
aWNlIHRyZWUgY291bGQgc3BlY2lmeSBqdXN0IHRoaXMKc3RyaW5nIHdpdGhvdXQgdGhlIGlwcTk1
NzQgZmFsbGJhY2ssIGRlZmVhdGluZyB0aGUgaW50ZW5kZWQgcmVxdWlyZW1lbnQuCgo+ICAgICAg
ICAgICAgLSBxY29tLGlwcTYwMTgtcW1wLXBjaWUtcGh5Cj4gICAgICAgICAgICAtIHFjb20saXBx
ODA3NC1xbXAtZ2VuMy1wY2llLXBoeQoKWyAuLi4gXQoKPiBAQCAtMjQsMTAgKzI1LDEyIEBAIHBy
b3BlcnRpZXM6Cj4gICAgICAgICAgICAtIHFjb20saXBxOTU3NC1xbXAtZ2VuM3gyLXBjaWUtcGh5
Cj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAg
LSBxY29tLGlwcTUyMTAtcW1wLWdlbjN4MS1wY2llLXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNv
bSxpcHE1NDI0LXFtcC1nZW4zeDEtcGNpZS1waHkKPiAgICAgICAgICAgIC0gY29uc3Q6IHFjb20s
aXBxOTU3NC1xbXAtZ2VuM3gxLXBjaWUtcGh5Cj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAg
ICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSBxY29tLGlwcTUyMTAtcW1wLWdlbjN4Mi1wY2ll
LXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNvbSxpcHE1NDI0LXFtcC1nZW4zeDItcGNpZS1waHkK
PiAgICAgICAgICAgIC0gY29uc3Q6IHFjb20saXBxOTU3NC1xbXAtZ2VuM3gyLXBjaWUtcGh5CgpU
aGUgZ2VuM3gyIHZhcmlhbnQgYWRkZWQgaGVyZSBjb3JyZWN0bHkgZW5mb3JjZXMgdGhlIGZhbGxi
YWNrIGJlY2F1c2UgaXQKd2FzIG5vdCBhZGRlZCB0byB0aGUgc3RhbmRhbG9uZSBlbnVtIGFib3Zl
LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDUxNC1wY2ktcGh5LXYxLTAtNDgyNDI5MTkyNzQ2QG9zcy5xdWFsY29tbS5jb20/cGFy
dD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
