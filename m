Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4178ECDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 01:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhBJ+h2uHZ/erenEiBDjQDF+iaFk++SM5j7GZ/zKzdQ=; b=FTDi3vDBgN0M2T
	fr3oXfqYVzk9GlJEJbPqpuJxxNt2WxlLQBQ0+tqV3RXh7NdBWcwvbWrQJ12g9fXBJGuHY2vOASiJM
	uCPy2aCFoBZ8mHayQqH9SOo60dj9M4u2Rh1XX9schWba1TkhqW+WeocjLeOH+0hRMOf/qGSHi9ppt
	Rq4ZmppsVQqk8JqEiFo5z86lMDcst0MrbUnk4KY+V56VzZ+6JmNXCCcvIQH35v7+FBRp7BvU9wJPy
	Lq7+VNziCxtCJgzyS6ojnGTfsOLQidHbPmJaR1nHWqR4ZddYLVcGAjmYUHGcs44eDvmC8q9iY2/Jw
	bJSk3LjS7Y4gAzZkjLhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpbe-00000005Wkd-3cxE;
	Tue, 23 Jun 2026 01:07:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpbd-00000005WkP-27Rf
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 01:07:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 97468601F9;
	Tue, 23 Jun 2026 01:07:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC8D11F000E9;
	Tue, 23 Jun 2026 01:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782176832;
	bh=PoFU25/WsYPg3E9ZVNWMJTwiMtZyLQjhQBzWIHmBejc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q4aQVrVhWvVMPpsqcCU9NWSR6K45h3yJoj1VYHXZjsQmAurXKqi8rDQN0Ix+AjGZU
	 t3xHWK5pP3bBW0amQ7UxMVDC5tqYeWqqjLdJ7rsn6FQ+WVK/BtIrLpGXuRBEeCuFCB
	 W4dFoHkSroX5cjzili6mht3Iu52uk77LTPH5im0Xqo26I7HRa82dPHmiO9jWszlNUG
	 3Do0oJP0y4rOELeCvriZYJGv3aqncKjfc0aRdvXs3C8irtMQb2gzTkm8z8yMWN8oxb
	 n5b6yO00SsJe7JBqgE9svT2EeVWlI4jHt4C/AS37hpxUIjet5Cp/ewXayrzFMfBfYU
	 LES3d1jEmvjeg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] iommu/arm-smmu-qcom: Add SM8450 MDSS compatible
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
Date: Tue, 23 Jun 2026 01:07:11 +0000
Message-Id: <20260623010711.EC8D11F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgU01NVSBjbGllbnQgbWF0Y2ggdGFibGUgaXMgbWlzc2luZyBzZXZlcmFsIG90
aGVyIG1vZGVybiBRdWFsY29tbSBNRFNTIGNvbXBhdGlibGVzIChlLmcuLCBTTTgzNTAsIFNNODU1
MCwgU004NjUwLCBTTTg3NTAsIFNNNjEyNSksIGNhdXNpbmcgdGhlbSB0byBzdWZmZXIgZnJvbSB1
bmhhbmRsZWQgY29udGV4dCBmYXVsdHMgYW5kIGJyb2tlbiBkaXNwbGF5IGZ1bmN0aW9uYWxpdHku
Ci0tCgpjb21taXQgZDY2YTY3OTE4YzBhYzc3OTBmMzA2M2JkNTIwMTAyY2Q4OTNhYWZiNwpBdXRo
b3I6IEVzdGViYW4gVXJydXRpYSA8ZXN0ZXV3dUBwcm90b24ubWU+Cgppb21tdS9hcm0tc21tdS1x
Y29tOiBBZGQgU004NDUwIE1EU1MgY29tcGF0aWJsZQoKVGhpcyBjb21taXQgYWRkcyB0aGUgU004
NDUwIE1EU1MgY29tcGF0aWJsZSB0byB0aGUgUXVhbGNvbW0gU01NVSBjbGllbnQgCm1hdGNoIHRh
YmxlLiBUaGlzIGVuc3VyZXMgdGhlIGRldmljZSBpcyBwcm9wZXJseSBjb25maWd1cmVkIGJ5IHRo
ZSBJT01NVSAKZHJpdmVyIHRvIHByZXZlbnQgdW5oYW5kbGVkIGNvbnRleHQgZmF1bHRzIG9uIHRo
ZSBTbmFwZHJhZ29uIDggR2VuIDEuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS9h
cm0tc21tdS9hcm0tc21tdS1xY29tLmMgYi9kcml2ZXJzL2lvbW11L2FybS9hcm0tc21tdS9hcm0t
c21tdS1xY29tLmMKPiBpbmRleCBlMmM5MTRmY2NkNmZjLi43OTVlOGVjN2U4ZmFmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvaW9tbXUvYXJtL2FybS1zbW11L2FybS1zbW11LXFjb20uYwo+ICsrKyBi
L2RyaXZlcnMvaW9tbXUvYXJtL2FybS1zbW11L2FybS1zbW11LXFjb20uYwo+IEBAIC00MjUsNiAr
NDI1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcWNvbV9zbW11X2NsaWVu
dF9vZl9tYXRjaFtdIF9fbWF5YmVfdW51c2VkID0gewo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29t
LHNtNjM3NS1tZHNzIiB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHNtODE1MC1tZHNzIiB9
LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHNtODI1MC1tZHNzIiB9LAo+ICsJeyAuY29tcGF0
aWJsZSA9ICJxY29tLHNtODQ1MC1tZHNzIiB9LAoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEg
cHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgd2hpbGUgd2UgYXJlIGFkZGluZyB0aGUgc204NDUwLW1k
c3MgCmNvbXBhdGlibGUsIHNob3VsZCB3ZSBhbHNvIGFkZCBvdGhlciBtb2Rlcm4gUXVhbGNvbW0g
TURTUyBjb21wYXRpYmxlcyBsaWtlIApzbTgzNTAsIHNtODU1MCwgc204NjUwLCBzbTg3NTAsIGFu
ZCBzbTYxMjU/CgpJdCBsb29rcyBsaWtlIHRob3NlIFNvQ3MgbWlnaHQgYWxzbyBsYWNrIGEgZmFs
bGJhY2sgcWNvbSxtZHNzIGNvbXBhdGlibGUgCmFuZCBhcmUgY3VycmVudGx5IG1pc3NpbmcgZnJv
bSBxY29tX3NtbXVfY2xpZW50X29mX21hdGNoLgoKSWYgdGhleSBhcmUgYXNzaWduZWQgYSBkZWZh
dWx0IERNQSB0cmFuc2xhdGlvbiBkb21haW4gaW5zdGVhZCBvZiB0aGUgCnJlcXVpcmVkIGJ5cGFz
cyBpZGVudGl0eSBkb21haW4sIHdvdWxkbid0IHRoZSBNRFNTIHdyYXBwZXIgZ2VuZXJhdGUgbmF0
aXZlIAp0cmFuc2FjdGlvbnMgdGhhdCBmYWlsIGFnYWluc3QgdGhlIGVtcHR5IERNQSBkb21haW4s
IHJlc3VsdGluZyBpbiBzaW1pbGFyIAp1bmhhbmRsZWQgY29udGV4dCBmYXVsdHM/Cgo+ICAJeyAu
Y29tcGF0aWJsZSA9ICJxY29tLHgxZTgwMTAwLW1kc3MiIH0sCj4gIAl7IH0KPiAgfTsKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2
MjItc204NDUwLXFvbC12MS0wLTM3ZTJlZThkZjlkYUBwcm90b24ubWU/cGFydD01CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
