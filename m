Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB83AC98302
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 02:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zExomxf+Oqwwgz5hQrzUpWy9D+ERhzNgJueo8l/Uiho=; b=S9wUxoIyw0uVKo
	/NljJw8DIRX9dKOAuHx96YHjxQRsIV0gEfW0g65PK6VvLqmopSrvhWkVOAcfQ/vDNUVzaMPIArCFY
	EA16TAJNscE0/gG8OB7jdv9CUIWVmMPw6UuQ7X37m5gLITftj9q69UOk9eOoBAqOJygMJYXB7WzmW
	NawBZkKFPLfJQWMFSa3nv24iEhf+sy8KXuMEErzP1HF2cCUl6Fxc2n9Jm1uQWsQuM4j0NO1fuOxKr
	xziHiuJojZmC+5lSKa02P9uRi97qj0a584I5m4/0tQ1i8hMxyjfLpZ7PtudKC9GnWF0rmYyAFs6AW
	+0t63bwxlP/dNvIbdNjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D0S-00000006yxm-1w0F;
	Wed, 23 Sep 2026 02:46:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D0R-00000006yxc-0yQx
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 02:46:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A4CAE431CD;
	Wed, 23 Sep 2026 02:46:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45ADA1F000FF;
	Wed, 23 Sep 2026 02:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790131606;
	bh=1qrPG4aGkkq3BzjKoraFQ01zAj8AQ5K9WcvEPYacmFw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gQdJEMdGRZ7/cwKpWyroqxh9nnFyVbbdnLsqzykwp1PdfI+gN8qgND3WjjgY60qZI
	 fKbbcEmO7uQLsYCJJqy5xfIoWyzAIDo6uUk6AU0DG1i1eONqwRoIaNeSjRlruWscPy
	 y5Ye1jQQ3S6zspB7horVOx/6Q168TPkRFHt3rLFDFwpITZM1oOYfd8UaULFySJOGQ4
	 WS8RGvbniQiDJszl+5+uPyzRLApRGrWaKFGG9XlEnEz9tKDbYqxy78mMJhwYDFB6zI
	 1zuULvLg6GaVQARhe67LHUgjYmHDf1PJjHyKNwuiXWIcZdnUSWFmZTqpd3OpT9zevt
	 ZGF7K6k+gTrGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/5] doc: phy: Document some bulk helper functions
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260923023304.78428-6-inochiama@gmail.com>
References: <20260923023304.78428-1-inochiama@gmail.com>
 <20260923023304.78428-6-inochiama@gmail.com>
Date: Wed, 23 Sep 2026 02:46:45 +0000
Message-Id: <20260923024646.45ADA1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZG9jczogcGh5OiBsaW5r
aW5nIHRvIHVubWVyZ2VkIHBhdGNoZXMgaW4gb2ZmaWNpYWwgZG9jdW1lbnRhdGlvbgotLQoKY29t
bWl0IDQwOWE4NjY0YTQ4ZTczODBjMTU3NTUxNGQ5MmRlMzkwNmFmOWFkNGYKQXV0aG9yOiBJbm9j
aGkgQW1hb3RvIDxpbm9jaGlhbWFAZ21haWwuY29tPgoKZG9jOiBwaHk6IERvY3VtZW50IHNvbWUg
YnVsayBoZWxwZXIgZnVuY3Rpb25zCgpEb2N1bWVudCBhbGwgbmV3bHkgYWRkZWQgYnVsayBoZWxw
ZXIgZnVuY3Rpb24sIGl0IGNhbiBiZSB1c2VkIHRvIG1hbmFnZQphIHNldCBvZiBQSFlzIGF1dG9t
YXRpY2FsbHkuIFRoaXMgaXMgdXNlZnVsIHdoZW4gdGhlIGRyaXZlciB3YW50IHRvCnNpbXBsaWZ5
IHRoZSBtYW5hZ2VtZW50IG9mIG11bHRpcGxlIFBIWXMuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RyaXZlci1hcGkvcGh5L3BoeS5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
cGh5L3BoeS5yc3QKPiBpbmRleCAwODY1YzJlOTRlZWNlLi5jNWQzZDdjYzFhNzRiIDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9waHkvcGh5LnJzdAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZHJpdmVyLWFwaS9waHkvcGh5LnJzdAoKWyAuLi4gXQoKPiBAQCAtMjIxLDMgKzI0
NSw4IEBAIERldmljZVRyZWUgQmluZGluZwo+ICAKPiAgVGhlIGRvY3VtZW50YXRpb24gZm9yIFBI
WSBkdCBiaW5kaW5nIGNhbiBiZSBmb3VuZCBACj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcGh5LWJpbmRpbmdzLnR4dAo+ICsKPiArTWlzc2luZyBCdWxrIEhlbHBlcnMK
PiArPT09PT09PT09PT09PT09PT09PT0KPiArQ3VycmVudGx5LCBPbmx5IGEgZmV3IGJ1bGsgaGVs
cGVyIGZ1bmN0aW9ucyBhcmUgYWRkZWQgYXMgdGhleSBoYXZlIHVzZXJzLgo+ICtGdW5jdGlvbiBu
b3QgdXBzdHJlYW1lZCBjYW4gYmUgZm91bmQgYXQgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcGh5LzIwMjYwOTA0MDgzNzA5LjQyNTg5My0xLWlub2NoaWFtYUBnbWFpbC5jb20vCgpbU2V2
ZXJpdHk6IExvd10KSXMgaXQgYXBwcm9wcmlhdGUgdG8gaW5jbHVkZSBsaW5rcyB0byBvdXQtb2Yt
dHJlZSwgdW5tZXJnZWQgcGF0Y2hlcyBpbiB0aGUKb2ZmaWNpYWwga2VybmVsIEFQSSBkb2N1bWVu
dGF0aW9uPwoKU2hvdWxkIHRoaXMgcmVmZXJlbmNlIGJlIG1vdmVkIHRvIHRoZSBjb21taXQgbWVz
c2FnZSBvciBjb3ZlciBsZXR0ZXIgaW5zdGVhZCwKYW5kIG9ubHkgYWRkZWQgdG8gdGhlIGRvY3Vt
ZW50YXRpb24gb25jZSB0aGUgYWRkaXRpb25hbCBoZWxwZXJzIGFyZSB1cHN0cmVhbWVkCmFsb25n
c2lkZSB0aGVpciB1c2Vycz8KCkFkZGl0aW9uYWxseSwgdGhlcmUgYXJlIG1pbm9yIGdyYW1tYXRp
Y2FsIGlzc3VlcyBpbiB0aGlzIHNlY3Rpb24gKCJDdXJyZW50bHksCk9ubHkgYSBmZXciLCAiRnVu
Y3Rpb24gbm90IHVwc3RyZWFtZWQiKS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MjMwMjMzMDQuNzg0MjgtMS1pbm9jaGlhbWFA
Z21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
