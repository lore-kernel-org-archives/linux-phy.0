Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72ABAC5B572
	for <linux-phy@archiver.kernel.org>; Sun, 16 Aug 2026 21:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLjQIzmTdZRJDf+Rd182rFNDNhK8Haszd2JV6H1dIQo=; b=01+0ZqoGu+TFpC
	qvOOgR92Oi7jNlhP98rlECaZXszM8uwePvqdvr+6uvj4KOHo9UNGGdo7ragKvShIxD9YiN2f7JEID
	9Vow7YnQyM2y8SQIEbmETZ2eAA98qTMqt1IlY0Vy7zUdxYS+uKAvJhodlm7lNNYu1JAeEESzRBNUP
	HHup/U7knr8fb2YQrw2HDjcuYYD/UbptpAL1eBQml0MxicvN9cI0sc5J6+qrjN9Yn/rpnb6CqjU7o
	3+t9rDxTkctggvrdCZweSIBK+A7oK1xdAlYjSEfxM2xD/riDIJML1UcFWTNCL7LtsTNTSZMRpEfYH
	W1S3FrVMitHJqDmlhNyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvii1-000000058FL-49Wp;
	Sun, 16 Aug 2026 21:48:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvii1-000000058F8-0QBM
	for linux-phy@lists.infradead.org;
	Sun, 16 Aug 2026 21:48:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D78D342E7D;
	Sun, 16 Aug 2026 21:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 569FB1F000E9;
	Sun, 16 Aug 2026 21:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786916880;
	bh=w+FZ5qD6PqFaJI2a+RpyXgNEYR+Brd6qjaqgEZw7kNE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mUDortpiVqH7+M61pNh85IlLSkG7bPivf6lMqDTa6vFfnP1DUIT6kTW7Wpx3U8Dm7
	 cp8vRlvh8jyah9L43SGEMOR3E4EnxQFaPzfI6NgE8p3D1TyRVwJHfcnTNY8JEZa/6w
	 yhbxJi0afGnGFhvO7EAS3qDQReMsOD9aPb0dxQzwANU2VYXsbgTuZp3flwzeVm0WZO
	 QZb6yu/jmk2HbALLhMKQ/8rd7zKctWhpUaUrUc9r6ReRg4yga+horqMnR42sVXjYoB
	 Xx4EGmJuJgiW6FXfBZuYv2GSPyxWLfqRZXgjF/cADp+uw6jg96MwlyfVB3BPHKU0NH
	 DnOVevJo2PU+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/9] dt-bindings: usb: dwc3: Document ST STM32MP2
 DWC3 xHCI USB controller
To: "Marek Vasut" <marex@nabladev.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260816213849.1044073-6-marex@nabladev.com>
References: <20260816213849.1044073-1-marex@nabladev.com>
 <20260816213849.1044073-6-marex@nabladev.com>
Date: Sun, 16 Aug 2026 21:47:59 +0000
Message-Id: <20260816214800.569FB1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHN0LHN0bTMy
bXAyNS1kd2MzLnlhbWwgc2NoZW1hIGRlZmluZXMgYSBmbGF0dGVuZWQgRFdDMyBjb250cm9sbGVy
IG5vZGUgYW5kIHNldHMgYHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2VgLCBidXQgb21pdHMg
dGhlIHJlcXVpcmVkIGAkcmVmYCB0byB0aGUgc3RhbmRhcmQgRFdDMyBjb21tb24gc2NoZW1hIChg
c25wcyxkd2MzLWNvbW1vbi55YW1sI2ApLiBUaGlzIGNhdXNlcyBhbGwgc3RhbmRhcmQgZ2VuZXJp
YyBVU0IgcHJvcGVydGllcyAoZS5nLiwgYHVzYi1yb2xlLXN3aXRjaGAsIGBtYXhpbXVtLXNwZWVk
YCkgYW5kIERXQzMgcXVpcmtzIChgc25wcywqYCkgdG8gYmUgaW1wcm9wZXJseSByZWplY3RlZCBk
dXJpbmcgZGV2aWNlIHRyZWUgdmFsaWRhdGlvbi4KLS0KCi0tLSBQYXRjaCBbNV06IFtQQVRDSCB2
MiA1LzldIGR0LWJpbmRpbmdzOiB1c2I6IGR3YzM6IERvY3VtZW50IFNUIFNUTTMyTVAyIERXQzMg
eEhDSSBVU0IgY29udHJvbGxlciAtLS0KY29tbWl0IDFlMWY1ZWMwNzcwYzk0YWU0ZThkOWQ5NTQ1
ZDU2MWEwNWE4OTg2MjIKQXV0aG9yOiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgoK
ZHQtYmluZGluZ3M6IHVzYjogZHdjMzogRG9jdW1lbnQgU1QgU1RNMzJNUDIgRFdDMyB4SENJIFVT
QiBjb250cm9sbGVyCgpUaGUgU1QgU1RNMzJNUDIgU29DIGNvbnRhaW5zIGEgc2luZ2xlIGluc3Rh
bmNlIG9mIGEgRFdDMyBVU0IgY29udHJvbGxlcgp3aXRoIGEgZ2x1ZSBsb2dpYyB3cmFwcGVyLiBU
aGlzIGNvbW1pdCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIHNjaGVtYQp0byBkb2N1bWVu
dCB0aGUgY29udHJvbGxlciBhbmQgaXRzIHN5c2Nvbi1jb250cm9sbGVkIHdyYXBwZXIuCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3N0LHN0bTMy
bXAyNS1kd2MzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3N0
LHN0bTMybXAyNS1kd2MzLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMDAwMDAuLmUzNzdlZmVmNDM1MDMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9zdCxzdG0zMm1wMjUtZHdjMy55YW1sCgpbIC4u
LiBdCgo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gY2xv
Y2tzCj4gKyAgLSBjbG9jay1uYW1lcwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gcGh5cwo+ICsg
IC0gcGh5LW5hbWVzCj4gKyAgLSByZXNldHMKPiArICAtIHN0LHN5c2NmZwo+ICsKPiArdW5ldmFs
dWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgc2V0dGluZyB1
bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlIHdpdGhvdXQgYSAkcmVmIHRvCnNucHMsZHdjMy1j
b21tb24ueWFtbCMgcHJldmVudCB0aGUgdXNlIG9mIHN0YW5kYXJkIGdlbmVyaWMgVVNCIHByb3Bl
cnRpZXM/CgpCZWNhdXNlIHRoaXMgYmxvY2sgc3RyaWN0bHkgcmVzdHJpY3RzIGFsbG93ZWQgcHJv
cGVydGllcyB0byB0aG9zZSBkZWZpbmVkCmxvY2FsbHksIGl0IGFwcGVhcnMgc3RhbmRhcmQgRFdD
MyBxdWlya3MgYW5kIGdlbmVyaWMgVVNCIHByb3BlcnRpZXMgbGlrZQp1c2Itcm9sZS1zd2l0Y2gg
b3IgbWF4aW11bS1zcGVlZCBtaWdodCBiZSBpbXByb3Blcmx5IHJlamVjdGVkIGR1cmluZwpkZXZp
Y2UgdHJlZSB2YWxpZGF0aW9uLgoKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3N0LHN0bTMybXAyNS1yY2MuaD4KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTYyMTM4
NDkuMTA0NDA3My0xLW1hcmV4QG5hYmxhZGV2LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
