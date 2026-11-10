Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9FD606A735
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J38EbY5w;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hRrphewM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X1bWcsssE3PgpHBanXZS+5bxnEe1VA5zaHnRtw4B0+w=; b=J38EbY5wBK+9oGEMeWVMiSSpSG
	cE5oD2KS/RHXnbCR5QfPpmd4Ad00W//Zxi4q5YdgP+RaKdLbclzKvvHUrNaTXU04D/noUbTWqI00r
	3DvCaWUOaCL3c9YNDTDkIqVEtS2qGZZ/cdf8twr0yIpB3ahfAk//9ornAEZ5yPmi2lSoJgweOna9l
	BUbcym1yWRIMCCAvis8PhYX8kF1wka5Ph9ZcpbjJy/yYszHmB63OF5UUxdHNdZyy0FiImSPOIHZaA
	0yhbmzuVg2ITEAWgpAJeTuRthTqXHwyA/Ilt2ihsn9evGJZtzAhgIIGa9yPwCCOc7Oh/FERkI4S/o
	X9qQlRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgn4-000000032fb-1YTk;
	Tue, 10 Nov 2026 08:01:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgn2-000000032ey-3iMp
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:01:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 50B15403C8;
	Tue, 10 Nov 2026 08:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B32201F0089F;
	Tue, 10 Nov 2026 08:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794297672;
	bh=yddDVzwr2bKs1Uh96wp294uqm9xQ9ZvBG0Pxzm8Ku8c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hRrphewMQwfhuSq8Q7VejqyYpCQrIKrihU/ONP6ZLW9f65tAp9e+uGJoZh/6y7NOR
	 QWLYSkdXT5aXOKoSbwWeTAIjOOZO1+kB3AbJs34Oohp0U25r++8R4LOViAK3mvjk3+
	 wCPcXGzYw2zn4yGLejo1efe2SqH6pRHsJFg6GuOdv8UYUSag3XdlCkAFwYl8Lv1kAW
	 TD6bjwq26Hj0drL0for2/BawEoKrcxrm+0avrkadm01ZXaDS5061+SNN0tYCsYO6MU
	 M8J6qK1JdfoMqO6ZXT9swXlyBDyIwWBJ6O31qVED7/W+RqZru70MsNmujjYoK5GTu1
	 s44Ram9emNkAg==
Message-ID: <sashiko-outbox-206554@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: Add rockchip,rk3568-edp-phy
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261110074533.4052196-2-damon.ding@rock-chips.com>
References: <20261110074533.4052196-1-damon.ding@rock-chips.com>
 <20261110074533.4052196-2-damon.ding@rock-chips.com>
Date: Tue, 10 Nov 2026 08:01:11 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IHNv
Yzogcm9ja2NoaXA6IGxlZnRvdmVyIGNsb2NrcyBpbgogIHJrMzU2OC1lZHAtcGh5LWdyZiBzY2hl
bWEKLS0KCmNvbW1pdCA5YjkxMDEyOTQ0MTQwZmYxNGVjMmUyNTYzZjcxMmUyMTJkMWRhNjMwCkF1
dGhvcjogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KCmR0LWJpbmRpbmdz
OiBwaHk6IEFkZCByb2NrY2hpcCxyazM1NjgtZWRwLXBoeQoKVGhpcyBjb21taXQgYWRkcyBEZXZp
Y2UgVHJlZSBiaW5kaW5nIHNjaGVtYXMgZm9yIHRoZSBSSzM1NjggZURQCnRyYW5zbWl0dGVyIFBI
WSBhbmQgaXRzIHBhcmVudCBlRFAgUEhZIEdSRiBzeXNjb24gbm9kZS4KCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvcm9ja2NoaXAs
cmszNTY4LWVkcC1waHktZ3JmLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvc29jL3JvY2tjaGlwL3JvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdyZi55YW1sCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi44NTI0MjA3OThmMDZhCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mv
cm9ja2NoaXAvcm9ja2NoaXAscmszNTY4LWVkcC1waHktZ3JmLnlhbWwKPiBAQCAtMCwwICsxLDgw
IEBACgpbIC4uLiBdCgo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBpdGVt
czoKPiArICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY4LWVkcC1waHktZ3JmCj4gKyAgICAg
IC0gY29uc3Q6IHN5c2Nvbgo+ICsgICAgICAtIGNvbnN0OiBzaW1wbGUtbWZkCj4gKwo+ICsgIHJl
ZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAx
Cj4gKwo+ICsgICIjYWRkcmVzcy1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiArICAiI3Np
emUtY2VsbHMiOgo+ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgcmFuZ2VzOiB0cnVlCj4gKwo+ICtw
YXR0ZXJuUHJvcGVydGllczoKPiArICAiXnBoeUBbMC05YS1mXSskIjoKPiArICAgIHR5cGU6IG9i
amVjdAo+ICsgICAgJHJlZjogL3NjaGVtYXMvcGh5L3JvY2tjaGlwLHJrMzU2OC1lZHAtcGh5Lnlh
bWwjCj4gKyAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtyZXF1aXJlZDoK
PiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gY2xvY2tzCj4gKyAgLSAiI2FkZHJl
c3MtY2VsbHMiCj4gKyAgLSAiI3NpemUtY2VsbHMiCj4gKyAgLSByYW5nZXMKPiArCj4gK2FkZGl0
aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcmszNTY4LWNydS5oPgo+ICsKPiArICAgIHNvYyB7
Cj4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsgICAgICAjc2l6ZS1jZWxscyA9IDwy
PjsKPiArCj4gKyAgICAgIGVkcF9waHlfZ3JmOiBzeXNjb25AZmRjYjAwMDAgewo+ICsgICAgICAg
IGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWVkcC1waHktZ3JmIiwgInN5c2NvbiIsICJz
aW1wbGUtbWZkIjsKPiArICAgICAgICByZWcgPSA8MHgwIDB4ZmRjYjAwMDAgMHgwIDB4ODAwMD47
Cj4gKyAgICAgICAgY2xvY2tzID0gPCZjcnUgUENMS19FRFBQSFlfR1JGPjsKPiArICAgICAgICBy
YW5nZXMgPSA8MHgwIDB4MCAweGZkY2IwMDAwIDB4MTAwPjsKPiArICAgICAgICAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPiArCj4gKyAgICAgICAg
ZWRwX3BoeTogcGh5QDAgewo+ICsgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
NjgtZWRwLXBoeSI7Cj4gKyAgICAgICAgICByZWcgPSA8MHgwIDB4MTAwPjsKPiArICAgICAgICAg
IGNsb2NrcyA9IDwmcG11Y3J1IFhJTl9PU0MwX0VEUFBIWV9HPiwgPCZjcnUgUENMS19FRFBQSFlf
R1JGPjsKPiArICAgICAgICAgIGNsb2NrLW5hbWVzID0gInJlZiIsICJhcGIiOwo+ICsgICAgICAg
ICAgI3BoeS1jZWxscyA9IDwwPjsKPiArICAgICAgICB9Owo+ICsgICAgICB9Owo+ICsgICAgfTsK
CltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgY2xvY2tzIGJlIGRyb3BwZWQgZnJvbSBwcm9wZXJ0
aWVzLCByZXF1aXJlZCwgYW5kIHRoZSBwYXJlbnQKc3lzY29uQGZkY2IwMDAwIGV4YW1wbGUgbm9k
ZSBpbiByb2NrY2hpcCxyazM1NjgtZWRwLXBoeS1ncmYueWFtbD8KClRoZSBjaGlsZCByb2NrY2hp
cCxyazM1NjgtZWRwLXBoeSBzY2hlbWEgbm93IG93bnMgYW5kIHJlcXVpcmVzIHRoZSBhcGIKY2xv
Y2sgKFBDTEtfRURQUEhZX0dSRikuICBSZXF1aXJpbmcgY2xvY2tzIG9uIHRoZSBwYXJlbnQgc3lz
Y29uIG5vZGUgYXMKd2VsbCBjYXVzZXMgZHRic19jaGVjayBmYWlsdXJlcyB1bmxlc3MgZGV2aWNl
IHRyZWVzIGR1cGxpY2F0ZQpQQ0xLX0VEUFBIWV9HUkYgb24gYm90aCB0aGUgcGFyZW50IHN5c2Nv
biBhbmQgdGhlIGNoaWxkIFBIWSBub2RlLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExMDA3NDUzMy40MDUyMTk2LTEtZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
