Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2DFC4452F
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yMxiJH9eJD1BZTKnwfLBQECK1BfjoQhNEyEvsHTbuA=; b=2qBUSw97vVf8KI
	ln7jd2DsoSlVNlAaFkgpab3iK8KqvJi67BI28yyCgHSkvreVbbs+MF09qyK/qgNlzddNp4DvXM8xa
	3+QMWmlzzUoXJ2seEAE8bgQutBakEwvL14DeDtg+zWpk8fEhkWiWDh0Sb2xA3DMn+ngCnT9iIYt1b
	ZM8Des1jOcu+mB47MixYzHJINiVyzS2qOWjSSWE35qj6/0hUd9FBRBdsvkd8jcXKAsIRQsp9KwCt+
	nFf8fLqvgvCX4+Vtksh0fKtS4sTVHNR04Ydou+eM2Kuw+LN+74KOsfn7hlZVFZgbj+hz7pAI+jVdp
	uVeZWOQEUa9fcbFHxHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAKQ-00000009V12-0aRV;
	Tue, 21 Jul 2026 13:16:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAKP-00000009V0s-2WEr
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:16:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2419B43AF1;
	Tue, 21 Jul 2026 13:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B08491F000E9;
	Tue, 21 Jul 2026 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784639769;
	bh=lVNbfpyg3G1UA0dLiAugKFBps4mTFjHZBX42qNRP7sc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XXB+h4gbRrPKdnG8Vgnj7UQ1zWZzL2VjnigNyzEJG19E3cd/f90VPy3/REbwu/bT3
	 gKqUc2L7USb7bFbE3WPc5EgYDgIQ0ltpciEggOX3Lf0xOpMTeMGe5ZcJdc7qiqMlDq
	 tLAq2smtpRgPElNPIZ6eH5wPcsaoixa6qPrdtb+3pQwYQsamef4L+D2b8yU5Ka2Al0
	 B8PzERZ4qtRg5EPKQ2rncc9iRW7rryotLneBoDkQgiFxYsonF6/WJv7VzeKA1iJw4a
	 wjZvbiSXMj8586bpzNQGHRZZiWpv2wtuCRasAgbFOGoVWqBmhTc7n0DlRV5O5OqRb0
	 7Rd8QdSb4EyFQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/5] phy: qcom: qmp-usb-legacy: Fix possible
 NULL-deref on early runtime suspend
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-3-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
 <20260721-qcom-usb-phy-fix-null-v5-3-a181e2adbd2d@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 13:16:08 +0000
Message-Id: <20260721131608.B08491F000E9@smtp.kernel.org>
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
IFtIaWdoXSBJbmNvbXBsZXRlIEZpeCAvIFVucGF0Y2hlZCBWdWxuZXJhYmlsaXR5OiBUaGUgaWRl
bnRpY2FsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBmaXhlZCBieSB0aGlzIHBhdGNoIGluIGBw
aHktcWNvbS1xbXAtdXNiLWxlZ2FjeS5jYCByZW1haW5zIHVucGF0Y2hlZCBpbiBgcGh5LXFjb20t
cW1wLXVzYi5jYC4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2NSAzLzVdIHBoeTogcWNvbTog
cW1wLXVzYi1sZWdhY3k6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUg
c3VzcGVuZCAtLS0KY29tbWl0IDEwOTA4Njk5YmI5OTI1OGRiNThiMjYwYzBkMTZhYjkzZmQyOWY5
ZDIKQXV0aG9yOiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgoK
cGh5OiBxY29tOiBxbXAtdXNiLWxlZ2FjeTogRml4IHBvc3NpYmxlIE5VTEwtZGVyZWYgb24gZWFy
bHkgcnVudGltZSBzdXNwZW5kCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgcGh5X2luaXRpYWxp
emVkIGZsYWcgdG8gcHJldmVudCBhIE5VTEwgcG9pbnRlcgpkZXJlZmVyZW5jZSBpbiB0aGUgcnVu
dGltZSBzdXNwZW5kIGFuZCByZXN1bWUgY2FsbGJhY2tzLiBUaGlzIG9jY3VycyBiZWNhdXNlCnBt
X3J1bnRpbWVfZW5hYmxlKCkgaXMgY2FsbGVkIGJlZm9yZSB0aGUgcGh5IHBvaW50ZXIgaXMgZnVs
bHkgaW5pdGlhbGl6ZWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtdXNiLWxlZ2FjeS5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVzYi1sZWdhY3kuYwo+IGluZGV4IDhiZjk1MWIwNDkwY2YuLmZjNDkwNTg5YzhlNDggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi1sZWdhY3kuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2ItbGVnYWN5LmMKWyAu
Li4gXQo+IEBAIC05ODgsNyArOTk2LDcgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCBxbXBf
dXNiX2xlZ2FjeV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAKPiAgCWRl
dl92ZGJnKGRldiwgIlN1c3BlbmRpbmcgUU1QIHBoeSwgbW9kZTolZFxuIiwgcW1wLT5tb2RlKTsK
PiAgCj4gLQlpZiAoIXFtcC0+cGh5LT5pbml0X2NvdW50KSB7Cj4gKwlpZiAoIXFtcC0+cGh5X2lu
aXRpYWxpemVkKSB7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNz
dWUsIGJ1dCBkb2VzIHRoZSBzYW1lIHZ1bG5lcmFiaWxpdHkgc3RpbGwgZXhpc3QKaW4gdGhlIHNp
YmxpbmcgZHJpdmVyIHBoeS1xY29tLXFtcC11c2IuYz8KCkxvb2tpbmcgYXQgcW1wX3VzYl9wcm9i
ZSgpIGluIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2IuYywKZGV2bV9wbV9y
dW50aW1lX2VuYWJsZShkZXYpIGlzIGNhbGxlZCBiZWZvcmUgcW1wLT5waHkgaXMgYWxsb2NhdGVk
IHZpYQpkZXZtX3BoeV9jcmVhdGUoKS4gU2ltaWxhciB0byB0aGUgbGVnYWN5IGRyaXZlciwgdGhl
cmUgYXBwZWFycyB0byBiZSBhCndpbmRvdyB3aGVyZSBlYXJseSBydW50aW1lIFBNIHN1c3BlbmQg
KG9yIHVucHJpdmlsZWdlZCBzeXNmcyBhY2Nlc3MpIGNhbgp0cmlnZ2VyIHFtcF91c2JfcnVudGlt
ZV9zdXNwZW5kKCkgYW5kIGNyYXNoOgoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXVzYi5jOnFtcF91c2JfcnVudGltZV9zdXNwZW5kKCkgewogICAgICAgIC4uLgogICAgICAgIGlm
ICghcW1wLT5waHktPmluaXRfY291bnQpIHsKICAgICAgICAgICAgICAgIGRldl92ZGJnKGRldiwg
IlBIWSBub3QgaW5pdGlhbGl6ZWQsIGJhaWxpbmcgb3V0XG4iKTsKICAgICAgICAgICAgICAgIHJl
dHVybiAwOwogICAgICAgIH0KICAgICAgICAuLi4KfQoKU2hvdWxkIHRoaXMgZml4IGJlIGV4dGVu
ZGVkLCBvciBhIHNlY29uZCBwYXRjaCBhZGRlZCwgdG8gaW50cm9kdWNlIGEgc2ltaWxhcgpwaHlf
aW5pdGlhbGl6ZWQgZmxhZyBmb3IgcW1wX3VzYl9ydW50aW1lX3N1c3BlbmQoKSBhbmQKcW1wX3Vz
Yl9ydW50aW1lX3Jlc3VtZSgpIGluIHBoeS1xY29tLXFtcC11c2IuYz8KClsgLi4uIF0KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3
MjEtcWNvbS11c2ItcGh5LWZpeC1udWxsLXY1LTAtYTE4MWUyYWRiZDJkQG9zcy5xdWFsY29tbS5j
b20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
