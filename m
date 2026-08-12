Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959ACC5CFC1
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 01:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+9xtiJDdh7rXp0BmF+/oxHy24dX+pWWHgCzXz8jgwc=; b=YoV88G3qMq3RBu
	KqmmbulaPV/fuPOKJp1qr94hK6yi1b53DkFxqHD61tb3ycIFB859r/Ur1DrCCNV/MVFvvRbJTu4LD
	9s6ZDfbIGtzst5rqeyfkqz9z1iWDqjlu3ojaEMy5SNxCyeq3A0wONbjsfufUSDPz7CresxxW60ISK
	3kg1/+aNzVKEof6RBcUGTgld+x8bCIEf3Ko/iMfB+vhCrMitBEu25t+EDlDYZqZWLZ60izkkbniT+
	6hMhm7ID3V/DjfmAVqDr+ZCmkJbCWy8LwUMFxNQ0VP8Imk30MN5pM9ELj3YPUsfvrAJvWaBnSopdk
	0XOgHutpj11mhuPb+ULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxUd-0000000FBkA-1IQd;
	Wed, 12 Aug 2026 01:10:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxUc-0000000FBk3-0bLp
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 01:10:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D6EC44396D;
	Wed, 12 Aug 2026 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7259F1F000E9;
	Wed, 12 Aug 2026 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786497053;
	bh=ra0t7egHfjaRM3h7bxPvs/uNuD6LIUc6DQWFIVlgVto=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KUM3dLH6kFO/HmVNpOXM3bZchQtpiKp/R4G1VTqNS4rAoehKVumpLA22SkfudTcg+
	 mvytZiV3Fcb+GEHj7hDf2xwvezhHLrcn+kh3KUF4vr+yQafospqrla+31j3V1SqIDO
	 tCTuRdqTkH/Q9ondPMoGaMwbPvl1M7M081tRWTrP/KeMHPjHE+eYzAzsjW6H1YB8c4
	 /8w5A9Yh0pR/5ufsUp8A65byscD6WtO1kn03ke9DLIgKcSJ/uGK1eQ3+vNJqUzhdV0
	 Imb+GOrhq6Kj/3DA+kAlKJBCVKQTsY+DRdznt1GvbgrDWzdTCw54cWVa9oottZ4aK+
	 6/QMfe5wHuMWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/8] dt-bindings: usb: generic-ehci: Document
 access-controllers property
To: "Marek Vasut" <marex@nabladev.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260812010157.1772849-4-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-4-marex@nabladev.com>
Date: Wed, 12 Aug 2026 01:10:53 +0000
Message-Id: <20260812011053.7259F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb21wbGV0ZSBzY2hl
bWEgdXBkYXRlOiBgYWNjZXNzLWNvbnRyb2xsZXJzYCBpcyBhZGRlZCB0byBFSENJIGJ1dCBvbWl0
dGVkIGZyb20gdGhlIGNvbXBhbmlvbiBPSENJIGJpbmRpbmcuCi0tCgotLS0gUGF0Y2ggWzNdOiBb
UEFUQ0ggMy84XSBkdC1iaW5kaW5nczogdXNiOiBnZW5lcmljLWVoY2k6IERvY3VtZW50IGFjY2Vz
cy1jb250cm9sbGVycyBwcm9wZXJ0eSAtLS0KY29tbWl0IDVhNGE2M2FkOTZmMDVhYjgyOTY2Zjcy
M2JiYjE2OThiY2ZiNDM1NmEKQXV0aG9yOiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29t
PgoKZHQtYmluZGluZ3M6IHVzYjogZ2VuZXJpYy1laGNpOiBEb2N1bWVudCBhY2Nlc3MtY29udHJv
bGxlcnMgcHJvcGVydHkKClRoaXMgY29tbWl0IGFkZHMgdGhlIGFjY2Vzcy1jb250cm9sbGVycyBw
cm9wZXJ0eSB0byB0aGUgZ2VuZXJpYyBFSENJIFVTQgpjb250cm9sbGVyIGRldmljZSB0cmVlIGJp
bmRpbmcgc2NoZW1hLiBUaGlzIGFsbG93cyBhY2Nlc3MgY2hlY2tzIHRvIGJlCmRvY3VtZW50ZWQg
Zm9yIHRoZXNlIGNvbnRyb2xsZXJzLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiBpbmRleCA1NWE1YWE3ZDdh
NTRlLi42MDIyNDE4ODdkOTk1IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdXNiL2dlbmVyaWMtZWhjaS55YW1sCj4gQEAgLTgwLDYgKzgwLDkg
QEAgcHJvcGVydGllczoKPiAgICAgIG1pbkl0ZW1zOiAxCj4gICAgICBtYXhJdGVtczogMgo+ICAK
PiArICBhY2Nlc3MtY29udHJvbGxlcnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKCltTZXZlcml0
eTogTG93XQpEb2VzIHRoaXMgcHJvcGVydHkgYWxzbyBuZWVkIHRvIGJlIGFkZGVkIHRvIHRoZSBn
ZW5lcmljIE9IQ0kgYmluZGluZwooZ2VuZXJpYy1vaGNpLnlhbWwpIG9yIGEgY29tbW9uIHNjaGVt
YSBsaWtlIHVzYi1oY2QueWFtbD8KCklmIGEgZGV2aWNlIHRyZWUgY29uZmlndXJlcyBib3RoIGFu
IEVIQ0kgY29udHJvbGxlciBhbmQgaXRzIGNvbXBhbmlvbiBPSENJCmNvbnRyb2xsZXIgYmVoaW5k
IGFuIGFjY2VzcyBjb250cm9sbGVyLCB0aGUgT0hDSSBub2RlIG1pZ2h0IGZhaWwKZHRfYmluZGlu
Z19jaGVjayB2YWxpZGF0aW9uIGJlY2F1c2UgZ2VuZXJpYy1vaGNpLnlhbWwgZW5mb3JjZXMKdW5l
dmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZS4KCj4gICAgZG1hLWNvaGVyZW50OiB0cnVlCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
ODEyMDEwMTU3LjE3NzI4NDktMS1tYXJleEBuYWJsYWRldi5jb20/cGFydD0zCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
