Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685F6C5516D
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 08:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75e16xEWKJuYnVyfGOJywXUMz5KGybMZk1wZpeKSeaU=; b=NaSJ33mFjb/Qso
	ZzDsANR5KrTKNVkXdHEkPga+O5aWz5WWe3F/LscTdhMMj2JLWPgWZj4CCWbZENpVnFDEu6Na4HA4o
	LzSzULfD0p4uyyIPZ52r9yGdvbIML7diDpKq0S1haipHbW7gt5qOgjPw/X5KRoii2zShgUoqkvDlu
	iCaKZANS7yP4nXdr/An54su2rgpbq8NiCSwaYiB033HKJwqlZYuJ+JUAknRQGdNI+5wd4a1vPdpS+
	HNOgCiNXHepguKsg9JCu5bELTOfxLm5efY9G9p1ZUNAfRRkRZQm0cjsmKPCCU/MZYe0abVC4bIUU0
	Qd6v6uFo20su7wwPX0lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiUe-0000000C3D8-0SZ6;
	Fri, 31 Jul 2026 08:21:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiUc-0000000C3D2-2x2K
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 08:21:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B872D40E33;
	Fri, 31 Jul 2026 08:21:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3892A1F000E9;
	Fri, 31 Jul 2026 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785486081;
	bh=qHC477qArOlNm/AcMHN7rx8NH6hAu2Xu9sljZQvxWog=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fg4VVrE39ljF+A+PKTJ1JY4PER3iY5qvsYglZ9FpCiW831AwUNUDM+iiCEE5AfL3M
	 ub0wE8BhvYtT1SjQnSiOqT/rDRD5GAClUhV17eCIoihqINr5RilDVy0yv23Pq17Gxb
	 TJxKY6mocIECAqM/uWo3o//1koYXdHqMXCKENObQm0ez8uc/Rgixjk4SzL/xkkut6U
	 fi963OeYCfdKAOZajFsPCPiSlztA+RbCezz/00c4XbA+CQulczEDbj7Ry3NV8sB1do
	 LGKFv3KfqGh8qbIkdNQFbqqa9iH+P0PHU51kQWJJVAg+ZKL3SXXJG0wTXyyCFQE9P9
	 JGaBkPsogMQlQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/6] phy: fsl-imx8mq-usb: add runtime PM support
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, imx@lists.linux.dev, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, Frank.Li@kernel.org
In-Reply-To: <20260731-imx8mp-usb-phy-improvement-v8-3-2ec8d6b3854d@nxp.com>
References: <20260731-imx8mp-usb-phy-improvement-v8-0-2ec8d6b3854d@nxp.com>
 <20260731-imx8mp-usb-phy-improvement-v8-3-2ec8d6b3854d@nxp.com>
Date: Fri, 31 Jul 2026 08:21:20 +0000
Message-Id: <20260731082121.3892A1F000E9@smtp.kernel.org>
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
IFtNZWRpdW1dIFRPQ1RPVSByYWNlIGluIHRjYV9ibGtfdHlwZWNfc3dpdGNoX3NldCgpIGFuZCB0
Y2FfYmxrX2luaXQoKSBjYXVzZXMgaGFyZHdhcmUgb3JpZW50YXRpb24gZGVzeW5jaHJvbml6YXRp
b24uCi0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjggMy82XSBwaHk6IGZzbC1pbXg4bXEtdXNi
OiBhZGQgcnVudGltZSBQTSBzdXBwb3J0IC0tLQpjb21taXQgMjkzMmIwODhhZDFjNmZkYTYzMDJm
OWVkM2Y1Nzc4Y2NiMGRhNzNiOQpBdXRob3I6IFh1IFlhbmcgPHh1LnlhbmdfMkBueHAuY29tPgoK
cGh5OiBmc2wtaW14OG1xLXVzYjogYWRkIHJ1bnRpbWUgUE0gc3VwcG9ydAoKVGhpcyBjb21taXQg
YWRkcyBydW50aW1lIFBNIHN1cHBvcnQgdG8gZW5zdXJlIHRoZSBQSFkgY2xvY2tzIGFyZSBwcm9w
ZXJseSAKZ2F0ZWQgd2hlbiB0aGUgUEhZIGlzIG5vdCBpbiB1c2UsIHJlZHVjaW5nIHBvd2VyIGNv
bnN1bXB0aW9uLiBDbG9jawptYW5hZ2VtZW50IGlzIHNoaWZ0ZWQgZnJvbSB0aGUgcG93ZXJfb24g
YW5kIHBvd2VyX29mZiBjYWxsYmFja3MgaW50byB0aGUKbmV3IHJ1bnRpbWUgUE0gY2FsbGJhY2tz
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVz
Yi5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gaW5kZXgg
M2E1Nzg4YzYwOWUxYi4uNDJkZTJjZmY0ZDVmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKWyAuLi4gXQo+IEBAIC0xMzYsMTcgKzEzNywxNSBAQCBz
dGF0aWMgaW50IHRjYV9ibGtfdHlwZWNfc3dpdGNoX3NldChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2Rl
diAqc3csCj4gIHsKPiAgCXN0cnVjdCBpbXg4bXFfdXNiX3BoeSAqaW14X3BoeSA9IHR5cGVjX3N3
aXRjaF9nZXRfZHJ2ZGF0YShzdyk7Cj4gIAlzdHJ1Y3QgdGNhX2JsayAqdGNhID0gaW14X3BoeS0+
dGNhOwo+IC0JaW50IHJldDsKPiAgCj4gIAlpZiAodGNhLT5vcmllbnRhdGlvbiA9PSBvcmllbnRh
dGlvbikKPiAgCQlyZXR1cm4gMDsKCltTZXZlcml0eTogTWVkaXVtXQpUaGlzIGlzIGEgcHJlLWV4
aXN0aW5nIGlzc3VlLCBidXQgSSBub3RpY2VkIGEgcG90ZW50aWFsIHJhY2UgY29uZGl0aW9uIGhl
cmUuCgpEb2VzIHRoaXMgbG9ja2xlc3MgZXF1YWxpdHkgY2hlY2sgcmlzayBzaG9ydC1jaXJjdWl0
aW5nIHRoZSBvcmllbnRhdGlvbgpzd2l0Y2ggdXBkYXRlIGlmIGl0IHJhY2VzIHdpdGggYSBjb25j
dXJyZW50IGluaXRpYWxpemF0aW9uPwoKRm9yIGluc3RhbmNlLCBpZiB0Y2FfYmxrX2luaXQoKSBp
cyBjYWxsZWQgY29uY3VycmVudGx5IGR1cmluZyBkcml2ZXIgcHJvYmUKb3IgcmVzdW1lLCBpdCBl
dmFsdWF0ZXMgdGNhLT5vcmllbnRhdGlvbiBsb2NrbGVzc2x5IGFuZCBwYXNzZXMgaXQgYnkgdmFs
dWU6Cgp0Y2FfYmxrX2luaXQoKQogICAgLi4uCiAgICB0Y2FfYmxrX29yaWVudGF0aW9uX3NldCh0
Y2EsIHRjYS0+b3JpZW50YXRpb24pOwoKQ291bGQgdGNhX2Jsa190eXBlY19zd2l0Y2hfc2V0KCkg
cmV0dXJuIDAgaGVyZSwgcmV0dXJuaW5nIHN1Y2Nlc3MgdG8gdGhlClR5cGUtQyBjb3JlLCB3aGls
ZSB0aGUgaGFyZHdhcmUgaXMgc2ltdWx0YW5lb3VzbHkgb3ZlcndyaXR0ZW4gd2l0aCBhIHN0YWxl
CnN0YXRlIGJ5IHRjYV9ibGtfaW5pdCgpPyBUaGlzIG1pZ2h0IGNhdXNlIHRoZSBoYXJkd2FyZSBv
cmllbnRhdGlvbiB0byBiZWNvbWUKZGVzeW5jaHJvbml6ZWQgZnJvbSB0aGUgVHlwZS1DIHN1YnN5
c3RlbSdzIGV4cGVjdGVkIHN0YXRlLCBwb3RlbnRpYWxseQptaXNyb3V0aW5nIFVTQiAzLjAgZGF0
YSBsaW5lcy4KClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MzEtaW14OG1wLXVzYi1waHktaW1wcm92ZW1lbnQtdjgt
MC0yZWM4ZDZiMzg1NGRAbnhwLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
