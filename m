Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9499C54FDF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5FFINT+d9KU9QaIubRGzg0nxmITTNMRR4Z6dfd1XHE=; b=rNJOvtOae5CYWQ
	cLiR92e8hDeTVSnN51sSOmmOi2vIzPvweguuhXfeNRKHr/X3C82K02Njgq6nOQUug0YJOOkINxiP6
	92mpXG6Dd4qHa4qOROtMOE5M7gMtEzgFEKxdP7b3dnkkMINbtp3lNYxrP1OHlop60fC8IEYYiyN15
	44w2caBMXwpZ0vQ62hQcDp0P5h3/1UiY5SVMTVXFL8YlgVa8XEdPRpCGSsYR35GHO8OLKKFJ2DwHm
	3+aa/eqsFKZzxB1y0psbbgKcmrj4Povg9QXi3nQ+E0wtZc23tAmwmGb2Dn/4WXErdHnnezf+hWX6o
	NZkRTUm1iDgxg2WgsYmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOKb-0000000AGsF-1dUa;
	Thu, 30 Jul 2026 10:49:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOKZ-0000000AGs3-3men
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:49:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B4F343500;
	Thu, 30 Jul 2026 10:49:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 833311F00A3A;
	Thu, 30 Jul 2026 10:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785408579;
	bh=U3Q+DnhuLI1jTEOruSjoQN91JDslxyvdVfft9YuKBh8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SJr1AKm2ecnyFZ0Y6S/D1At5UmjtmdexkPES9ujhUAOR+5rew49LJUIdnddrJ3+pD
	 kr39G1qxUbu8HclrZlRUJvMgt0K2CO/b5wNVtBrWVueJ9PwwyKIWodkqxQYc4K5q6L
	 n2aJZT5lqrm6kWNsIZNN8yBEaI2ICtscngKGyBX6L0Cwzyq9XDqKiWCHMDkDvBBog0
	 th9LH/jzMDe4d4WPFaoNK9tIHGT6hA+69WTwJBSdLW0csySLIgVkcCmgSi/F00WKb+
	 4zW4vivwIPt+PYzGffc+U7UGGa7JFHshy/w+FzRMnMdqJ9TFtB6wnx4VTISOfCq4Q/
	 CmP23LyBK8iFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 22/26] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260730-mt8196-ufs-v10-22-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-22-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:49:38 +0000
Message-Id: <20260730104938.833311F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb21wbGV0ZSBmZWF0
dXJlIHJlbW92YWwgbGVhdmVzIGJlaGluZCB1bnVzZWQgc3RydWN0IGZpZWxkIGFuZCBkZWFkIGNv
ZGUgZm9yIFVGUyBjbG9jayB2Y29yZSBzY2FsaW5nLgotLQoKLS0tIFBhdGNoIFsyMl06IFtQQVRD
SCB2MTAgMjIvMjZdIHNjc2k6IHVmczogbWVkaWF0ZWs6IFJlbW92ZSB1bmRvY3VtZW50ZWQgImNs
ay1zY2FsZS11cC12Y29yZS1taW4iIC0tLQpjb21taXQgMzVjOTE3YmRmMzZhODkzYjRkZDU2M2Nj
YzEyMmQ4ZDI1ZWM2ZDllZApBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0
dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZW1vdmUgdW5kb2N1
bWVudGVkICJjbGstc2NhbGUtdXAtdmNvcmUtbWluIgoKVGhpcyBjb21taXQgcmVtb3ZlcyBzdXBw
b3J0IGZvciB0aGUgdW5kb2N1bWVudGVkICJjbGstc2NhbGUtdXAtdmNvcmUtbWluIiAKcHJvcGVy
dHkgZnJvbSB0aGUgTWVkaWFUZWsgVUZTIGRyaXZlci4gSXQgZGVsZXRlcyB0aGUgZGV2aWNlIHRy
ZWUgcGFyc2luZyAKbG9naWMgYW5kIHRoZSBpbml0aWFsIHZjb3JlIHJlZ3VsYXRvciBzZXR1cC4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gaW5kZXggOTBjODYwNmQ4NWE5ZC4uNWRkNzJiODI2
MTgxNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysr
IGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4gXQoKPiBAQCAtOTE4LDI0
ICs5MTYsNyBAQCBzdGF0aWMgdm9pZCB1ZnNfbXRrX2luaXRfY2xvY2tzKHN0cnVjdCB1ZnNfaGJh
ICpoYmEpCj4gIAlpZiAoIXVmc19tdGtfaXNfY2xrX3NjYWxlX3JlYWR5KGhiYSkpIHsKPiAgCQlo
YmEtPmNhcHMgJj0gflVGU0hDRF9DQVBfQ0xLX1NDQUxJTkc7Cj4gIAkJZGV2X2luZm8oaGJhLT5k
ZXYsICIlczogQ2xvY2sgc2NhbGluZyB1bmF2YWlsYWJsZSIsIF9fZnVuY19fKTsKPiAtCQlyZXR1
cm47Cj4gLQl9Cj4gLQo+IC0JaWYgKCFob3N0LT5yZWdfdmNvcmUpCj4gLQkJcmV0dXJuOwo+IC0K
PiAtCWlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJjbGstc2NhbGUtdXAt
dmNvcmUtbWluIiwKPiAtCQkJCSAmdm9sdCkpIHsKPiAtCQlkZXZfaW5mbyhkZXYsICJmYWlsZWQg
dG8gZ2V0IGNsay1zY2FsZS11cC12Y29yZS1taW4iKTsKPiAtCQlyZXR1cm47Cj4gIAl9Cj4gLQo+
IC0JaG9zdC0+bWNsay52Y29yZV92b2x0ID0gdm9sdDsKCltTZXZlcml0eTogTG93XQpTaW5jZSB0
aGlzIHBhdGNoIHJlbW92ZXMgdGhlIGNvZGUgdGhhdCBwb3B1bGF0ZXMgaG9zdC0+bWNsay52Y29y
ZV92b2x0LCBkb2VzIAppdCBsZWF2ZSBiZWhpbmQgYW4gdW51c2VkIGZpZWxkIGFuZCBkZWFkIGNv
ZGUgZWxzZXdoZXJlIGluIHRoZSBkcml2ZXI/CgpJbiBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRp
YXRlay5oOgpzdHJ1Y3QgdWZzX210a19jbGsgewogICAgICAgIC4uLgogICAgICAgIGludCB2Y29y
ZV92b2x0OwogICAgICAgIC4uLgp9OwoKQW5kIGluIGRyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmM6X3Vmc19tdGtfY2xrX3NjYWxlKCk6CgogICAgdm9sdCA9IGhvc3QtPm1jbGsudmNvcmVf
dm9sdDsKICAgIGlmIChob3N0LT5yZWdfdmNvcmUgJiYgdm9sdCkKICAgICAgICAgICAgY2xrX2Jp
bmRfdmNvcmUgPSB0cnVlOwoKQmVjYXVzZSB2Y29yZV92b2x0IGlzIHplcm8taW5pdGlhbGl6ZWQg
YW5kIG5vIGxvbmdlciB1cGRhdGVkLCBjbGtfYmluZF92Y29yZSAKYXBwZWFycyB0byBhbHdheXMg
YmUgZmFsc2UsIHdoaWNoIG1ha2VzIHRoZSBzdWJzZXF1ZW50IHJlZ3VsYXRvciBzY2FsaW5nIApi
cmFuY2hlcyBwZXJtYW5lbnRseSB1bnJlYWNoYWJsZS4gU2hvdWxkIHRoZXNlIGxlZnRvdmVycyBi
ZSBjbGVhbmVkIHVwIGFzIAp3ZWxsPwoKPiAtCj4gLQkvKiBJZiBkZWZhdWx0IGJvb3QgaXMgbWF4
IGdlYXIsIHJlcXVlc3QgdmNvcmUgKi8KPiAtCWlmICh2b2x0ICYmIGhvc3QtPmNsa19zY2FsZV91
cCkKPiAtCQlpZiAocmVndWxhdG9yX3NldF92b2x0YWdlKGhvc3QtPnJlZ192Y29yZSwgdm9sdCwg
SU5UX01BWCkpCj4gLQkJCWRldl9lcnIoaGJhLT5kZXYsICJGYWlsZWQgdG8gc2V0IHZjb3JlIHRv
ICVkXG4iLCB2b2x0KTsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC1tdDgxOTYtdWZzLXYxMC0wLWJjNWVjZWYyMDJk
Y0Bjb2xsYWJvcmEuY29tP3BhcnQ9MjIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
