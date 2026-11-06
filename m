Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC37606A32E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 09:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ArbYSV1F;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KwC/LQpb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3r0Lf0/CcDZt8XvL7aKSlnv7b2xN1686qGmh1Cx5mnY=; b=ArbYSV1FQ4yVrvoUDR8nt+Lx4c
	YiTWxDdxNXY7o6JNanWVqj+7OEiXxYyBtbBWmOeeG8ATAwjjyfrcW4rAoL6oG18mup+LPs9Nq7bwM
	K488Ww31faxIv976vvOAP6Z9mLMjSjtk7HTpXepnBPHjSoitvDRzw5DVJk7OBBjvJA52xYjirLUDG
	dXDrL6/uE7tZE1c74XvSeO6EwmpPGUiexREaEvfm5ASNnl47ooLZ9IGAWRp44UtzfV2h9h8uylmNI
	FrLdtT/4vuK72vczCr4GhqSPMsSyv2F8mrxtMC2ukZl6bfYmS1u37MaHge5cxs1X8Wx0sgd6L708y
	U5e4+jbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGUd-0000000BnOZ-1HG4;
	Fri, 06 Nov 2026 09:44:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGUb-0000000BnO1-3nr2
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 09:44:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 86E7D42E37;
	Fri,  6 Nov 2026 09:44:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8A641F0089F;
	Fri,  6 Nov 2026 09:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793958257;
	bh=k/B0v4ZKFTMYn7uuqyANnYN0nteQ0y0bMIFLQuE39Ck=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KwC/LQpb8grt7sA2bfP5+IvDHwxcSlZgHMNYngV5PKxoqnzPfYbq6uMFbZR1tHiIu
	 XDJXR13och6Ape8ytrjFOpP5288cS6pL3AFMBAcKhfAlCFWUsgrvAhziht5898WEF4
	 2r5uWDSrofDee9ZHk1FmA3mSgwoj2Esln+umFWktOSj2HRhy8PZ9wLQJBsMGUn/nfN
	 hbNClzjJeAlycL788xKw5PT8fpYvi4Ed/oR/aYwGwVl8LZ3Ozmv9CzinxD6sXa+Xat
	 jtxOzvAJqoRgPmLJ47g8YJGxU9AK3b1LzaWhkXhHvSqXrXShnQpy2M6zhATJKNZu+b
	 UMMmYlX5Z1NyA==
Message-ID: <sashiko-outbox-201147@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/25] dt-bindings: power: reset: add Metanoia MT2824
 reboot
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-mt2824-v1-4-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
 <20261106-mt2824-v1-4-86087eaf5af4@bootlin.com>
Date: Fri, 06 Nov 2026 09:44:15 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtMb3ddIGR0LWJpbmRpbmdzOiBwb3dl
cjogcmVzZXQ6IHN0cmljdCBzdHlsZSBlcnJvcnMgaW4KICBtZXRhbm9pYSxyZWJvb3QueWFtbAot
IFtMb3ddIGR0LWJpbmRpbmdzOiBwb3dlcjogcmVzZXQ6IG1ldGFub2lhLHJlYm9vdCBzcGxpdHMg
c2luZ2xlCiAgcmVnaXN0ZXIgaW50byBub2RlCi0tCgpjb21taXQgMDdmODAxOGI1MWNiNzk0YmFm
NGM1NzJhZDc5NTE1OTdkODkxZjQxMApBdXRob3I6IEJlbm/DrnQgTW9uaW4gPGJlbm9pdC5tb25p
bkBib290bGluLmNvbT4KCmR0LWJpbmRpbmdzOiBwb3dlcjogcmVzZXQ6IGFkZCBNZXRhbm9pYSBN
VDI4MjQgcmVib290CgpUaGlzIGNvbW1pdCBhZGRzIGEgRGV2aWNldHJlZSBiaW5kaW5nIHNjaGVt
YSBmb3IgdGhlIE1ldGFub2lhIE1UMjgyNCB3YXJtCnJlYm9vdCBjb250cm9sbGVyIHJlZ2lzdGVy
IHVzZWQgYnkgbWFjaGluZS1tb2RlIGZpcm13YXJlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L21ldGFub2lhLHJlYm9vdC55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L21ldGFub2lh
LHJlYm9vdC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li4yNjcwZmU3YWI5M2Y5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yZXNldC9tZXRhbm9pYSxyZWJvb3QueWFtbAo+IEBAIC0w
LDAgKzEsMzQgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
UiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9wb3dlci9yZXNldC9tZXRhbm9pYSxyZWJvb3QueWFtbCMKPiArJHNj
aGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gKwo+
ICt0aXRsZTogTWV0YW5vaWEgTVQyODI0IFJlYm9vdCBDb250cm9sbGVyCj4gKwo+ICttYWludGFp
bmVyczoKPiArICAtIEp1biBDaGFuZyA8anVuLmNoYW5nQG1ldGFub2lhLWNvbW0uY29tPgo+ICsK
PiArZGVzY3JpcHRpb246Cj4gKyAgVGhlIE1ldGFub2lhIE1UMjgyNCByZWJvb3QgY29udHJvbGxl
ciBwcm92aWRlcyBhIHN5c3RlbSB3YXJtIHJlYm9vdCB0aHJvdWdoCj4gKyAgYSBtZW1vcnktbWFw
cGVkIHJlZ2lzdGVyLiBJdCBpcyB1c2VkIGJ5IHRoZSBmaXJtd2FyZSBpbiBtYWNoaW5lIG1vZGUu
Cj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBjb25zdDogbWV0YW5v
aWEsbXQyODI0LXJlYm9vdAo+ICsKPiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMQoKW1NldmVy
aXR5OiBMb3ddClNob3VsZCB0aGlzIHdhcm0tcmVib290IHJlZ2lzdGVyIGFuZCB0aGUgYWRqYWNl
bnQgcmVzZXQgY29udHJvbGxlcgpyZWdpc3RlciBiZSBkZXNjcmliZWQgYXMgYSBzaW5nbGUgaGFy
ZHdhcmUgYmxvY2sgaW5zdGVhZCBvZiBzZXBhcmF0ZQpEZXZpY2V0cmVlIG5vZGVzPwoKVGhpcyBi
aW5kaW5nIG1vZGVscyBhbiA4LWJ5dGUgcmVnaXN0ZXIgcmFuZ2UgYXQgMHgxMDAwMDAwNCBmb3IK
bWFjaGluZS1tb2RlIGZpcm13YXJlLCB3aGlsZQpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmVzZXQvbWV0YW5vaWEscmVzZXQueWFtbCBtb2RlbHMgdGhlCmltbWVkaWF0ZWx5IGFk
amFjZW50IDQtYnl0ZSByZWdpc3RlciBhdCAweDEwMDAwMDBjIGZvciB0aGUgT1MgcmVzZXQKZHJp
dmVyOgoKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L21ldGFub2lhLHJl
c2V0LnlhbWw6CiAgICByc3Q6IHJzdC1jb250cm9sbGVyQDEwMDAwMDBjIHsKICAgICAgICBjb21w
YXRpYmxlID0gIm1ldGFub2lhLG10MjgyNC1yZXNldCI7CiAgICAgICAgcmVnID0gPDB4MTAwMDAw
MGMgMHg0PjsKICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47CiAgICB9OwoKQ2FydmluZyBpbmRp
dmlkdWFsIHJlZ2lzdGVycyBvZiB0aGUgc2FtZSBJUCBibG9jayBpbnRvIHNlcGFyYXRlIG5vZGVz
CmVuY29kZXMgc29mdHdhcmUgZHJpdmVyIGJvdW5kYXJpZXMgaW50byB0aGUgRGV2aWNldHJlZSBB
QkkuCgpbIC4uLiBdCgo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHJlYm9vdDogcmVib290
QDEwMDAwMDA0IHsKPiArICAgICAgY29tcGF0aWJsZSA9ICJtZXRhbm9pYSxtdDI4MjQtcmVib290
IjsKPiArICAgICAgcmVnID0gPDB4MTAwMDAwMDQgMHg4PjsKPiArICAgIH07CgpbU2V2ZXJpdHk6
IExvd10KRG9lcyB0aGlzIGV4YW1wbGUgcGFzcyBzY3JpcHRzL2R0Yy9kdC1jaGVjay1zdHlsZSAt
LW1vZGU9c3RyaWN0PwoKVGhlIGV4YW1wbGUgZGVmaW5lcyBhbiB1bnJlZmVyZW5jZWQgbGFiZWwg
KHJlYm9vdDopIGFuZCBpbmRlbnRzIHRoZSBub2RlCnByb3BlcnRpZXMgYnkgMiBzcGFjZXMgaW5z
dGVhZCBvZiA0LCB3aGljaCB0cmlnZ2VycyB1bnVzZWQtbGFiZWxzIGFuZAppbmRlbnQtdW5pdC1z
dHJpY3Qgd2FybmluZ3MuICBBbHNvLCBzaG91bGQgdGhlIHNjaGVtYSBmaWxlbmFtZSBhbmQgJGlk
IGJlCm1ldGFub2lhLG10MjgyNC1yZWJvb3QueWFtbCB0byBtYXRjaCB0aGUgc29sZSBjb21wYXRp
YmxlIHN0cmluZz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjExMDYtbXQyODI0LXYxLTAtODYwODdlYWY1YWY0QGJvb3RsaW4uY29t
P3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
