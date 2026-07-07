Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDA0C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 10:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1bX7LerAgJSFzWCTQiwoiuvLAn5m3aD7EkRri9Op1I=; b=3iq+Z1vUwlyccZ
	g7n5s1LqA50dzXhORlq1vk/F//nbGF9kogNJdvKLyTHOcrfDDuv8bkjnkZMjdzJkY4NAae9UxniDe
	jXukC3eX3wnShxHJ4v5SD2L3ug0blhcCl9K5UD/hX20diPWAof/nDCYQzYIO3lLfsg+bhX/boE2NO
	VJvKCaPdY9HQvn5yp9oUq8/IcQy8MYplk9sxDX0kP+kMpvXQjYhjA9Y/zuHfjRDn7ZbfhnzAIEZcr
	PmaZnzemD2L+VI1WxmDvIBP2Agy9LpnnW/9bA+B5eO36OZh0N9gkU14k58YyWsLOPWbJ69x+q0WY/
	Nyzh0KympXBuNEFuxgaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh34r-0000000Ekbm-2caW;
	Tue, 07 Jul 2026 10:30:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh34q-0000000EkbC-3UaP
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 10:30:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9214743A9B;
	Tue,  7 Jul 2026 10:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD791F00A3A;
	Tue,  7 Jul 2026 10:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783420256;
	bh=dDWvYMwdvE1QiiTi+Ak+6uJT4r8S0aYWSSr3B8F4e1c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fqWXUGZrFo7SCFlZn43nzmRUpzn1dL11l8epGmdTztsvyFVQRCn0fEwEZBj5RbCC2
	 /ck513rX5aLlEm79ErSZKicTNJ4uW2EYF1H5GhcfjjjqxSXd+IxV7ckK7mgdm87H3w
	 NJkdZPjH6+qCOctV+3uuQXhFxIJIyzGo2WPK+QriR7bwdwT8wBcponm5N8Dm3fR3TZ
	 OrJxK3rxBBV29kO113qRD9n1pn6qFvaP/lIVTZRxVFUPR07wG1y1xO01evitNiM8tp
	 wSWDK6Sp2nzUElqz8x+3qmHQu/dHza3qzdp98pRqmCiLhDggpqgaKov06VvKvim4hz
	 MAfhgMvlOQJVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 02/12] spmi: Remove redundant dev_name() print in
 spmi_device_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707101821.173319-3-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-3-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 10:30:55 +0000
Message-Id: <20260707103056.2AD791F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuYmFsYW5jZWQgb2Zf
bm9kZV9wdXQoKSBpbiB0aGUgZXJyb3IgcGF0aCBvZiBvZl9zcG1pX3JlZ2lzdGVyX2RldmljZXMo
KSBsZWFkcyB0byBhIGRvdWJsZS1wdXQgYW5kIHVzZS1hZnRlci1mcmVlIG9mIHRoZSBkZXZpY2Ug
bm9kZS4KLS0KCi0tLSBQYXRjaCBbMl06IFtQQVRDSCB2MTEgMDIvMTJdIHNwbWk6IFJlbW92ZSBy
ZWR1bmRhbnQgZGV2X25hbWUoKSBwcmludCBpbiBzcG1pX2RldmljZV9hZGQoKSAtLS0KY29tbWl0
IGY4OTMwNmViNzE4Y2IxZWY0ZDMzMjk2MmUxMGI1ZDYwMTkyODI5M2MKQXV0aG9yOiBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEu
Y29tPgoKc3BtaTogUmVtb3ZlIHJlZHVuZGFudCBkZXZfbmFtZSgpIHByaW50IGluIHNwbWlfZGV2
aWNlX2FkZCgpCgpUaGlzIGNvbW1pdCByZW1vdmVzIHJlZHVuZGFudCBkZXZfbmFtZSgpIHByaW50
cyBmcm9tIHRoZSBkZWJ1ZyBhbmQgZXJyb3IKbWVzc2FnZXMgaW4gc3BtaV9kZXZpY2VfYWRkKCku
IFRoZSBkZXZfZGJnKCkgYW5kIGRldl9lcnIoKSBtYWNyb3MgYWxyZWFkeQppbmNsdWRlIHRoZSBk
ZXZpY2UgbmFtZSBpbiB0aGVpciBvdXRwdXQsIHNvIGV4cGxpY2l0bHkgcHJpbnRpbmcgaXQgcmVz
dWx0cwppbiBkdXBsaWNhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BtaS9zcG1pLmMg
Yi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gaW5kZXggMjkzZTFhZGRkY2Q3MS4uOWJlZTBjYjNkOWRj
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gKysrIGIvZHJpdmVycy9zcG1p
L3NwbWkuYwo+IEBAIC03MSwxMiArNzEsMTEgQEAgaW50IHNwbWlfZGV2aWNlX2FkZChzdHJ1Y3Qg
c3BtaV9kZXZpY2UgKnNkZXYpCj4gIAo+ICAJZXJyID0gZGV2aWNlX2FkZCgmc2Rldi0+ZGV2KTsK
PiAgCWlmIChlcnIgPCAwKSB7Cj4gLQkJZGV2X2Vycigmc2Rldi0+ZGV2LCAiQ2FuJ3QgYWRkICVz
LCBzdGF0dXMgJWRcbiIsCj4gLQkJCWRldl9uYW1lKCZzZGV2LT5kZXYpLCBlcnIpOwo+ICsJCWRl
dl9lcnIoJnNkZXYtPmRldiwgIkNhbid0IGFkZCBkZXZpY2UsIHN0YXR1cyAlZFxuIiwgZXJyKTsK
PiAgCQlnb3RvIGVycl9kZXZpY2VfYWRkOwo+ICAJfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgZXJyb3IgcGF0aCB0cmlnZ2VyIGEgZG91YmxlLXB1dCBvZiB0aGUgZGV2aWNlIG5vZGUgaW4K
b2Zfc3BtaV9yZWdpc3Rlcl9kZXZpY2VzKCk/CgpXaGVuIHNwbWlfZGV2aWNlX2FkZCgpIGZhaWxz
LCBpdCByZXR1cm5zIGFuIGVycm9yIHRvCm9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcygpLCB3aGlj
aCBoYW5kbGVzIHRoZSBmYWlsdXJlIGxpa2UgdGhpczoKCmRyaXZlcnMvc3BtaS9zcG1pLmM6b2Zf
c3BtaV9yZWdpc3Rlcl9kZXZpY2VzKCkgewogICAgLi4uCgkJZXJyID0gc3BtaV9kZXZpY2VfYWRk
KHNkZXYpOwoJCWlmIChlcnIpIHsKCQkJZGV2X2Vycigmc2Rldi0+ZGV2LAoJCQkJImZhaWx1cmUg
YWRkaW5nIGRldmljZS4gc3RhdHVzICVkXG4iLCBlcnIpOwoJCQlvZl9ub2RlX3B1dChub2RlKTsK
CQkJc3BtaV9kZXZpY2VfcHV0KHNkZXYpOwoJCX0KICAgIC4uLgp9CgpTaW5jZSBhIHByZXZpb3Vz
IHBhdGNoIGluIHRoaXMgc2VyaWVzIHVwZGF0ZWQgc3BtaV9kZXZfcmVsZWFzZSgpIHRvIGFsc28K
Y2FsbCBvZl9ub2RlX3B1dChkZXYtPm9mX25vZGUpLCB3b3VsZG4ndCBjYWxsaW5nIGJvdGggb2Zf
bm9kZV9wdXQobm9kZSkgYW5kCnNwbWlfZGV2aWNlX3B1dChzZGV2KSBkcm9wIHRoZSBub2RlIHJl
ZmVyZW5jZSB0d2ljZT8KClRoaXMgY291bGQgY29uc3VtZSB0aGUgcmVmZXJlbmNlIGhlbGQgYnkg
dGhlCmZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKCkgaXRlcmF0b3IsIGNhdXNpbmcg
YSB1c2UtYWZ0ZXItZnJlZSB3aGVuCnRoZSBpdGVyYXRvciBhY2Nlc3NlcyBub2RlLT5zaWJsaW5n
LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDcwNzEwMTgyMS4xNzMzMTktMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
