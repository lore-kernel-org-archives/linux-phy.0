Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CEC5C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avCqz1vTPTdMgRLfKDTaUvofrqzbJmbERzrDuhQKBqI=; b=Zs6hAJbsj90Y9o
	+CfMCM7/ygCADqovhLVfojB+9JW331va5Dx+mVVllqE0BKmkzKedQN+6HKQnvNubyHUF7NuhWW5ET
	6AjU1hu78Nt7k+Ug5eJw367PlFAUCXGLwpHvQOwHb/QlSF/jOjbkFJZYf8CIJrCfp4VVeYmD1G9Ti
	klyRXHUB86lE8uUyGJvvJnrb4QJ6eoI9iftCxMcEP9Jcq4RDWIIs/UVyRRtIO5ZekjoYRFlGjHkoH
	R0TE+myfpHM1lbjffRfQTIVmn/dk8SpViRb33T6iZe+Vc8XokpTKwl32/a+XNaWYszrEpfQdwMjjd
	u0uWIwfciuwrr2B/fB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mzV-00000008zET-1UzU;
	Wed, 16 Sep 2026 10:35:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mzT-00000008zED-31IA
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:35:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 194C44364B;
	Wed, 16 Sep 2026 10:35:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 899091F0089C;
	Wed, 16 Sep 2026 10:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789554947;
	bh=91BCzjqGVJnPpwUhAtCe5GvXB0bZN20yFqXlfeTUMUE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rb28TyB3fkDJgQcRGuzt+owNvhx3sdsZOQLXOsb47V5k1XXw3t2Gr7ZCXNnPL0P2o
	 aV8uQBCYHOtLMBsQlIMemiMVuAjrrZhDTI5CNmpVEg8OheRqH9Yb4QJ3+VMXol0oQD
	 NRqUAuUltme6kF28wwx2tH8sKA+kJOs+Nl6u1lt0QKmb0SucUJEOeLlDPdegN7i0SJ
	 afVeUa0sXNgTu/jaMTv4A70dE3/NouMakTlteSs7ophwSW2NyE8GlRczB0mL30ZLJS
	 M2WSQNDZqBqG2nloGtEbsMLrDVNQ8Vkis/rthXAGnPYDqhvpVWSAI/a4dXpKK6x0xF
	 PE3RR65xXcgHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-pcie: Add qref and refgen
 regulator vote for QCS8300 and SA8775p PHY
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 10:35:46 +0000
Message-Id: <20260916103546.899091F0089C@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbS1xbXAt
cGNpZTogcHJvYmUgZmFpbHVyZSBvbiBTQTg3NzVQIGR1ZSB0byBtaXNzaW5nIHJlZmdlbiBzdXBw
bHkKLS0KCmNvbW1pdCA2ZWJkZjM1MDhlODg4NjQyNDQzZTVmZDA4ZjQzOWMxMmU1MWRjYzlkCkF1
dGhvcjogWml5dWUgWmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFj
b206IHFtcC1wY2llOiBBZGQgcXJlZiBhbmQgcmVmZ2VuIHJlZ3VsYXRvciB2b3RlIGZvciBRQ1M4
MzAwIGFuZCBTQTg3NzVwIFBIWQoKQWRkcyBhIG5ldyBzYTg3NzVwX3FtcF9waHlfdnJlZ19sIGFy
cmF5IHRoYXQgaW5jbHVkZXMgdGhlIHJlZmdlbiBzdXBwbHksCnVzaW5nIGl0IGZvciBRQ1M4MzAw
IGFuZCBTQTg3NzVwIFBDSWUgUEhZIGNvbmZpZ3VyYXRpb25zIHRvIGZpeAppbml0aWFsaXphdGlv
biB0aW1lb3V0cy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4g
aW5kZXggZGE4MzM1OGM5N2VhZC4uYWI4MWM2ZTU4NGE4NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+IEBAIC00MDk0LDYgKzQwOTQsMTAgQEAgc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCBzbTg1NTBfcW1wX3BoeV92cmVnX2xbXSA9IHsKPiAgCSJ2ZGRh
LXBoeSIsICJ2ZGRhLXBsbCIsICJ2ZGRhLXFyZWYiLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0
IGNoYXIgKiBjb25zdCBzYTg3NzVwX3FtcF9waHlfdnJlZ19sW10gPSB7Cj4gKwkidmRkYS1waHki
LCAidmRkYS1wbGwiLCAidmRkYS1xcmVmIiwgInZkZGEtcmVmZ2VuIiwgInJlZmdlbiIsCj4gK307
Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpXaWxsIHRoaXMgY2F1c2UgYSBwcm9iZSBmYWlsdXJlIG9u
IFNBODc3NXAgcGxhdGZvcm1zIGR1ZSB0byBhIG1pc3NpbmcKcmVmZ2VuIHN1cHBseT8KClRoZSBu
ZXcgc2E4Nzc1cF9xbXBfcGh5X3ZyZWdfbCBhcnJheSB1bmNvbmRpdGlvbmFsbHkgaW5jbHVkZXMg
dGhlICJyZWZnZW4iCnN1cHBseSwgYnV0IGlzIGFwcGxpZWQgdG8gYm90aCBRQ1M4MzAwIGFuZCBT
QTg3NzVwIFBIWSBjb25maWd1cmF0aW9ucy4KU2luY2UgdGhlICJyZWZnZW4iIHN1cHBseSByZXF1
aXJlbWVudCBpcyBhIGhhcmR3YXJlIHdvcmthcm91bmQgc3BlY2lmaWMKb25seSB0byBRQ1M4MzAw
LCB0aGUgU0E4Nzc1cCBkZXZpY2UgdHJlZXMgb21pdCB0aGUgInJlZmdlbi1zdXBwbHkiCnByb3Bl
cnR5LgoKV2hlbiBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldCgpIGlzIGNhbGxlZCBmb3IgdGhlIFNB
ODc3NXAgY29uZmlndXJhdGlvbiwKaXQgcmVxdWlyZXMgYWxsIGxpc3RlZCBzdXBwbGllcyB0byBi
ZSBwcmVzZW50IGluIHRoZSBkZXZpY2UgdHJlZS4gSWYKInJlZmdlbi1zdXBwbHkiIGlzIG9taXR0
ZWQgb24gU0E4Nzc1cCwgd29uJ3QgdGhlIHJlZ3VsYXRvciBsb29rdXAgcmV0dXJuCi1FTk9ERVYg
YW5kIHVuY29uZGl0aW9uYWxseSBhYm9ydCB0aGUgcHJvYmU/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE2MTAyMDIzLjIwNTQ3
NjEtMS16aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
