Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B779E606A32D
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 08:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A13yByRE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IHonj8FT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WWnMYWi3NLJIcBAyaI7Somht6oLEO6/SM9YX/edaHW4=; b=A13yByREsCm+HnNNm39V4strhZ
	3wB6zJJ0dXzGp2FX3r/S5A8ZsLfLGRe/hu0a0dC30ajy+gdkINDut2VKd5ZsW0q4PvuLTE/syfLG/
	MNErL3QLnL0wf6a8F2wXTBrvV/Fmo+/Jj4XWHT1woRQQiFEjBCYR6UP8vak0Y9Mcq+Um8uW8gN5Ii
	h0IfCbIdVygElmypNvB3wBtUVyn43o8pNJ8dyze2PyhRyeMUTb9P7p5TLi7/6/b3UrI/xr4+lCK4M
	SOVU+gi0rkRxBQRaxJRdcvrv0Z9kDVciwDRApMYlLUzcmxswAhq74PJFh6zlA8CGPy2wleGc+Mfqt
	N2sWPWFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9Nl-0000000FcBv-1LJD;
	Sat, 14 Nov 2026 08:45:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS9Nj-0000000FcBo-2FiF
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 08:45:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BC3254570B;
	Sat, 14 Nov 2026 08:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31CBD1F000C4;
	Sat, 14 Nov 2026 08:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794645906;
	bh=8B9my0OFzT6Ncn5bL3LLFhB3IzbJhUeIMAh6jWwaGL0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IHonj8FTjOMiU8sDaXXktfmVdbh4bxibri9GucYCIleBS9hiPwCxJCpnmWPQak2Iv
	 Qq49632v9SQVEr+wMO95ftoTXZvwuCtTgYC3auvC2CBGP9ClbJP5TIqxAbMbYMRtXH
	 m3OAscOPpRhLAUwnxa5FSa6uol5R55B39eEotWJsEswKiKlnETVgaw+lqRuPDQ7ak8
	 U46UBELUt/jcHOgXqVtbjHvrk5tszoqc4z6/7svm09K+Ej1RJ91E+1ElOtd6EatSWa
	 +LMWGO4e7HGWwXPkDx+0262uCKtck6xgMXK4Sf9xKcZQ0D7RBDDGjBUk8W6FS0QGTq
	 nTjQPSVOcJY0Q==
Message-ID: <sashiko-outbox-214291@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/4] dt-bindings: phy: Add rockchip,rk3568-edp-phy
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114083339.600986-2-damon.ding@rock-chips.com>
References: <20261114083339.600986-1-damon.ding@rock-chips.com>
 <20261114083339.600986-2-damon.ding@rock-chips.com>
Date: Sat, 14 Nov 2026 08:45:05 +0000
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
bWEKLS0KCmNvbW1pdCAxOTE3Y2JkOGY5Njg3MWQ2NGM5MjNkM2VmNGY5N2MzZWU3OWIxNGRjCkF1
dGhvcjogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KCmR0LWJpbmRpbmdz
OiBwaHk6IEFkZCByb2NrY2hpcCxyazM1NjgtZWRwLXBoeQoKVGhpcyBjb21taXQgYWRkcyBEZXZp
Y2UgVHJlZSBiaW5kaW5nIHNjaGVtYXMgZm9yIHRoZSBSSzM1NjggZURQCnRyYW5zbWl0dGVyIFBI
WSBhbmQgaXRzIHBhcmVudCBlRFAgUEhZIEdSRiBzeXNjb24uCgo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL3JvY2tjaGlwLHJrMzU2
OC1lZHAtcGh5LWdyZi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nv
Yy9yb2NrY2hpcC9yb2NrY2hpcCxyazM1NjgtZWRwLXBoeS1ncmYueWFtbAo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uODUyNDIwNzk4ZjA2YQo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tj
aGlwL3JvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdyZi55YW1sCgpbIC4uLiBdCgo+ICsgIHJlZzoK
PiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4g
Kwo+ICsgICIjYWRkcmVzcy1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiArICAiI3NpemUt
Y2VsbHMiOgo+ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgcmFuZ2VzOiB0cnVlCj4gKwo+ICtwYXR0
ZXJuUHJvcGVydGllczoKPiArICAiXnBoeUBbMC05YS1mXSskIjoKPiArICAgIHR5cGU6IG9iamVj
dAo+ICsgICAgJHJlZjogL3NjaGVtYXMvcGh5L3JvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LnlhbWwj
Cj4gKyAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtyZXF1aXJlZDoKPiAr
ICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gY2xvY2tzCj4gKyAgLSAiI2FkZHJlc3Mt
Y2VsbHMiCj4gKyAgLSAiI3NpemUtY2VsbHMiCj4gKyAgLSByYW5nZXMKPiArCj4gK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcmszNTY4LWNydS5oPgo+ICsKPiArICAgIHNvYyB7Cj4g
KyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsK
PiArCj4gKyAgICAgIGVkcF9waHlfZ3JmOiBzeXNjb25AZmRjYjAwMDAgewo+ICsgICAgICAgIGNv
bXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWVkcC1waHktZ3JmIiwgInN5c2NvbiIsICJzaW1w
bGUtbWZkIjsKPiArICAgICAgICByZWcgPSA8MHgwIDB4ZmRjYjAwMDAgMHgwIDB4ODAwMD47Cj4g
KyAgICAgICAgY2xvY2tzID0gPCZjcnUgUENMS19FRFBQSFlfR1JGPjsKPiArICAgICAgICByYW5n
ZXMgPSA8MHgwIDB4MCAweGZkY2IwMDAwIDB4MTAwPjsKPiArICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPiArCj4gKyAgICAgICAgZWRw
X3BoeTogcGh5QDAgewo+ICsgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1Njgt
ZWRwLXBoeSI7Cj4gKyAgICAgICAgICByZWcgPSA8MHgwIDB4MTAwPjsKPiArICAgICAgICAgIGNs
b2NrcyA9IDwmcG11Y3J1IFhJTl9PU0MwX0VEUFBIWV9HPiwgPCZjcnUgUENMS19FRFBQSFlfR1JG
PjsKPiArICAgICAgICAgIGNsb2NrLW5hbWVzID0gInJlZiIsICJhcGIiOwo+ICsgICAgICAgICAg
I3BoeS1jZWxscyA9IDwwPjsKPiArICAgICAgICB9Owo+ICsgICAgICB9Owo+ICsgICAgfTsKCltT
ZXZlcml0eTogTWVkaXVtXQpTaG91bGQgY2xvY2tzIGJlIGRyb3BwZWQgZnJvbSB0aGUgcGFyZW50
IHJvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdyZgpzY2hlbWEgYW5kIGV4YW1wbGU/CgpUaGUgUENM
S19FRFBQSFlfR1JGIEFQQiBjbG9jayBpcyBub3cgY2xhaW1lZCBieSB0aGUgY2hpbGQKcm9ja2No
aXAscmszNTY4LWVkcC1waHkgbm9kZSwgc28ga2VlcGluZyBjbG9ja3MgcmVxdWlyZWQgb24gdGhl
IHBhcmVudApzeXNjb24gbm9kZSBlaXRoZXIgZmFpbHMgZHRic19jaGVjayB3aGVuIFBDTEtfRURQ
UEhZX0dSRiBpcyBwbGFjZWQgb25seQpvbiB0aGUgY2hpbGQgUEhZIG5vZGUgb3IgZm9yY2VzIGRl
dmljZSB0cmVlcyB0byBkdXBsaWNhdGUgdGhlIGNsb2NrIG9uCmJvdGggbm9kZXMuCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTE0
MDgzMzM5LjYwMDk4Ni0xLWRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20/cGFydD0xCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
