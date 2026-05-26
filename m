Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E87D0CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 19:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgyeqyqMZIahep4lXMjnM895gAxBHgK2rxQ3fTPzQsg=; b=cVQFre81J7qJtw
	k1L8kfHoNefMuNio7tCS0y49XGPWo5NINayDBu67KirwMFesBhZ/Z2A2he91QoKNShbuJnoP24/E1
	oToaMZnjc5LPvmwi3ywgY0IsKvbO/8fDMEUVeCWxS9Fl56tlkGx4ff9JWwCIbHXgaoSQIA2RsVzbn
	0EYCDMBaxiaY05SuMW0PDLG2KcTzoEl2p5ymNtTBrugsW7J7/ivVLWBy3F60tKyXPUiSwCqwQ58jr
	X3TtPsWKwGKCDgAlr6ZrfWQzCx711O5OkknaxVd8WWxRZwjVx0zTaGXwWbwG55ItMpVzR4E4Rjc+N
	qvhTcps2thk3Mn3sPrvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRxDu-00000002tae-0Sk0;
	Tue, 26 May 2026 19:13:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRxDs-00000002taY-0rTG
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 19:13:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 22488600AB;
	Tue, 26 May 2026 19:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 709FB1F00A3A;
	Tue, 26 May 2026 19:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779822830;
	bh=psuZW7mOZXB94hHb3PYUph3EZuHUiZ4GMJ9FsR1t+Qg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jPh/4jRb5Rr0QH8sMnIXI59hBUiGTVYaokvlAOe8Kggsj5TTtjIkVtPhNMjtKItU6
	 fczzxsZAuRb96nqpY7dLzbuJVeRE2IwEZPghBpU7j9PNzGjeizTyu21DgfNw11JBf3
	 hPQfpKj8CAKT6dKPdBeJaZZ4nd/kt4FRv/zcveISfLSLorgcQrbEGl/Pz97uWTfkem
	 VAzwyxwabqU8P2DhX5M230+zxVyCqdJnmE7hgg0f3qaX1WTzfEDnq961EObiKcqMJA
	 s0J8gnyc0VK096o1bWIlxvuBecfe/xXzvEfd2Gajj6vyqicc+vZhzTKCzd4zZr+SQg
	 Ci2LK5TivBkzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qcs615-qmp-usb3-dp-phy:
 Add support for Shikra
To: "Pratham Pratap" <pratham.pratap@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
Date: Tue, 26 May 2026 19:13:49 +0000
Message-Id: <20260526191350.709FB1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFFDUzYxNSBpcyBhbiBp
bnZhbGlkIGZhbGxiYWNrIGZvciBTaGlrcmEgZHVlIHRvIGRpZmZlcmluZyBoYXJkd2FyZSByZXNl
dCByZXF1aXJlbWVudHMgYW5kIHJlbW92ZWQgRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eS4KLSBb
TWVkaXVtXSBNaXNzaW5nIGBhbGxPZmAgY29uZGl0aW9uYWwgYmxvY2tzIHRvIGVuZm9yY2UgY29y
cmVjdCByZXNldCBjb3VudHMgZm9yIGVhY2ggU29DIHZhcmlhbnQuCi0tCgpjb21taXQgZmIwNjY0
ZGU2ZTAwYWE4MTc5M2I3YzkyOTA4YTczMjA2OTc3MWU2OApBdXRob3I6IEtyaXNobmEgS3VyYXBh
dGkgPGtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxjb21tLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6
IHFjb20scWNzNjE1LXFtcC11c2IzLWRwLXBoeTogQWRkIHN1cHBvcnQgZm9yIFNoaWtyYQoKVGhp
cyBjb21taXQgZXh0ZW5kcyB0aGUgUUNTNjE1IFFNUCBVU0IzL0RQIFBIWSBiaW5kaW5ncyB0byBh
ZGQgc3VwcG9ydCBmb3IKdGhlIFNoaWtyYSBTb0MuIEl0IGludHJvZHVjZXMgYSBuZXcgY29tcGF0
aWJsZSBzdHJpbmcgd2l0aCBRQ1M2MTUgYXMgYQpmYWxsYmFjaywgYW5kIGluY3JlYXNlcyB0aGUg
bWF4aW11bSBudW1iZXIgb2YgcmVzZXRzIHRvIGFjY29tbW9kYXRlIFNoaWtyYS4KCj4gRGVjbGFy
ZSB0aGUgVVNCIFFNUCBQaHkgcHJlc2VudCBvbiBTaGlrcmEgU29DLiBPbiB0aGlzIFNvQywgYWx0
aG91Z2gKPiB0aGVyZSBhcmUgRFAgcmVnaXN0ZXJzLCB0aGUgcmVxdWlyZWQgaW50ZXJuYWwgcGlu
cyBoYXZlIGJlZW4gcmVtb3ZlZAo+IGFuZCBoZW5jZSBEUCB3b3VsZG4ndCBiZSBvcGVyYXRpb25h
bC4KPiAKPiBTaGlrcmEgbmVlZHMgMyByZXNldHMgKGRwLyBwaHkvIHBoeV9waHkpIHRvIGJlIGFz
c2VydGVkIGFuZCBkZS1hc3NlcnRlZAo+IGFzIHBlciBoYXJkd2FyZSByZWNvbW1lbmRhdGlvbi4g
RXh0ZW5kIHRoZSBiaW5kaW5ncyB0byBhY2NvbW1vZGF0ZSB0aGUKPiBhZGRpdGlvbmFsIHJlc2V0
Lgo+IAo+IFVzZSBRQ1M2MTUgYXMgYSBmYWxsYmFjayBzaW5jZSB0aGUgc29mdHdhcmUgaW50ZXJm
YWNlIGlzIGNvbXBhdGlibGUgd2l0aAo+IFNoaWtyYS4KCltTZXZlcml0eTogSGlnaF0KSXMgUUNT
NjE1IGEgdmFsaWQgZmFsbGJhY2sgZm9yIHRoZSBTaGlrcmEgU29DIGhlcmU/CgpUaGUgY29tbWl0
IG1lc3NhZ2Ugbm90ZXMgdGhhdCBTaGlrcmEgcmVxdWlyZXMgYW4gYWRkaXRpb25hbCB0aGlyZCBy
ZXNldAoocGh5KSBwZXIgaGFyZHdhcmUgcmVjb21tZW5kYXRpb25zLCBhbmQgdGhhdCBEaXNwbGF5
UG9ydCBmdW5jdGlvbmFsaXR5IGlzCm5vbi1vcGVyYXRpb25hbC4gSWYgYW4gb2xkZXIga2VybmVs
IG1hdGNoZXMgdGhlIFNoaWtyYSBkZXZpY2UgdXNpbmcgdGhlClFDUzYxNSBmYWxsYmFjayBkcml2
ZXIsIGl0IHdpbGwgZmFpbCB0byBhc3NlcnQgdGhlIHJlcXVpcmVkIHRoaXJkIHJlc2V0IGFuZAp3
aWxsIGVycm9uZW91c2x5IGF0dGVtcHQgdG8gaW5pdGlhbGl6ZSB0aGUgcGh5c2ljYWxseSBkaXNj
b25uZWN0ZWQgRFAKZnVuY3Rpb25hbGl0eS4KCkNvdWxkIHRoaXMgbGVhZCB0byBpbmNvbXBsZXRl
IGhhcmR3YXJlIGluaXRpYWxpemF0aW9uIGFuZCBwb3RlbnRpYWwKc3Vic3lzdGVtIHRpbWVvdXRz
PwoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNiM2RwLXBoeS55YW1sCj4gaW5kZXggZWZi
NDY1YzcxYzFiNS4uNjVhZTRjNmUwOWRiMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwKPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFt
cC11c2IzZHAtcGh5LnlhbWwKWyAuLi4gXQo+IEBAIC0zMywxMiArMzcsMTUgQEAgcHJvcGVydGll
czoKPiAgICAgICAgLSBjb25zdDogcGlwZQo+ICAKPiAgICByZXNldHM6Cj4gLSAgICBtYXhJdGVt
czogMgo+ICsgICAgbWluSXRlbXM6IDIKPiArICAgIG1heEl0ZW1zOiAzCj4gIAo+ICAgIHJlc2V0
LW5hbWVzOgo+ICsgICAgbWluSXRlbXM6IDIKPiAgICAgIGl0ZW1zOgo+ICAgICAgICAtIGNvbnN0
OiBwaHlfcGh5Cj4gICAgICAgIC0gY29uc3Q6IGRwX3BoeQo+ICsgICAgICAtIGNvbnN0OiBwaHkK
CltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgYWxsb3cgaW52YWxpZCBkZXZpY2UgdHJlZSBj
b25maWd1cmF0aW9ucyB0byBzaWxlbnRseSBwYXNzIHNjaGVtYQp2YWxpZGF0aW9uPwoKQnkgcmVs
YXhpbmcgdGhlIGdsb2JhbCBjb25zdHJhaW50cyB0byBhbGxvdyB1cCB0byAzIHJlc2V0cywgYSBR
Q1M2MTUgbm9kZQpjb3VsZCBpbmNvcnJlY3RseSBzcGVjaWZ5IDMgcmVzZXRzLCBvciBhIFNoaWty
YSBub2RlIGNvdWxkIGluY29ycmVjdGx5CnNwZWNpZnkgb25seSAyLgoKU2hvdWxkIHdlIGFkZCBh
biBhbGxPZiBzZWN0aW9uIHdpdGggaWYtdGhlbiBjb25kaXRpb25hbCBibG9ja3MgdG8gZW5mb3Jj
ZQp0aGUgZXhhY3QgcmVxdWlyZWQgY291bnRzIGZvciBlYWNoIFNvQyB2YXJpYW50IChleGFjdGx5
IDIgZm9yIFFDUzYxNSwgYW5kCmV4YWN0bHkgMyBmb3IgU2hpa3JhKT8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjYxODQ0MDEu
Mzk1OTcxNy0xLXByYXRoYW0ucHJhdGFwQG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
