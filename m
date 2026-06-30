Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97F94C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTgyOPKHF8T/A461VpwUZZB+S/S+3+3n26ihyRe+/zA=; b=Yi2yxLUnDY36R+
	S/kSX0Ej2pnQ1xUZyHhgNCNFIYHHBoqUIryni68E2Sdu9yfzeKcYlQu9GOFdvWLfcroSuYIqYTAWz
	5V1A3on59X1Kh4OSoSDhUGlMC7RNXzsvQWs1eOmeshXxKI88PwIdFbuSuYelXkoCJcU8H4p9Q09C5
	ArahR0MeVhMurFVkfL66BXcTD16kLh7CZkRNxr9StnmoTLoV0OD9SR47XPZnzYp77iFb7tvoEnrl8
	Da6yv5Wvk+Ye+QckknCUczK8+noghe1irqdx21oCvFF57Z7vQJUEI+tRTvszHcCIaLstPZSQSRWcV
	HKeMNFJvueZ4e7A84WSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYuS-0000000HDX7-1dUy;
	Tue, 30 Jun 2026 13:53:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYuR-0000000HDWt-1CNE
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:53:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BB4BE4121B;
	Tue, 30 Jun 2026 13:53:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D7F01F000E9;
	Tue, 30 Jun 2026 13:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827634;
	bh=qw77gMUEuKKUp+Ik7BNUZvNOL0g9M8dreep+u2XUUmY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vs5eWDcC+XIOxMUsBorvgUG4xVcjksy4y8asJJVq9B5NCxbR0QrY0NTrhpT0xJuOq
	 se9KUtVtigVRZA21Df6TzB+pANwWO+wTWlHr8/pgAWktpPGYYo3/LADBQD3IukeN7e
	 a9hBmGklAWF9hdFpFd7rMyydYhBlQ9XIN8DLDvbe6qsfudqMqVDXvjWen2hgVKnYkE
	 7xHcv0c6oAA3psmmeoz0oZy5eyvUXqHz484to4+ReONAFKGDq26p7YSAwYT2ijZiVF
	 qRxJR2QdpYSsepi2FiQ4TcuHbulcxXtPVSq9VByrXtOQoJVs4Rq4C1l2koowCsIa7Q
	 p2NN8lou6Im+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 net-next 1/2] arm64: dts: ti: Add PLL1 refclk to
 J784S4 SoC SERDES node
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260630134324.61085-2-g-praveen@ti.com>
References: <20260630134324.61085-1-g-praveen@ti.com>
 <20260630134324.61085-2-g-praveen@ti.com>
Date: Tue, 30 Jun 2026 13:53:53 +0000
Message-Id: <20260630135354.4D7F01F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIEFk
ZGluZyBhIHRoaXJkIGNsb2NrIHRvIHRoZSAnc2VyZGVzMicgbm9kZSB2aW9sYXRlcyB0aGUgJ3Bo
eS1jYWRlbmNlLXRvcnJlbnQueWFtbCcgRFQgYmluZGluZy4gVGhlIHN1YnNlcXVlbnQgYmluZGlu
ZyB1cGRhdGUgaW4gdGhlIHNlcmllcyBpcyBsb2dpY2FsbHkgaW5jb21wbGV0ZSBhbmQgZmFpbHMg
dG8gcmVzb2x2ZSB0aGUgdmFsaWRhdGlvbiBlcnJvci4KLSBbTG93XSBNaXNzaW5nIHdoaXRlc3Bh
Y2UgYWZ0ZXIgdGhlIGNvbW1hIGluIHRoZSAnY2xvY2stbmFtZXMnIGxpc3QuCgpQcmUtZXhpc3Rp
bmcgaXNzdWVzOgotIFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhp
cyBwYXRjaCwgYnV0IHRoZSBjb21taXQgZmFpbHMgdG8gY29tcHJlaGVuc2l2ZWx5IGZpeCB0aGUg
aXNzdWUuIEl0IGFkZHMgJ3BsbDFfcmVmY2xrJyB0byBmaXggbXVsdGlsaW5rIGNvbmZpZ3VyYXRp
b24gZm9yICdzZXJkZXMyJywgYnV0IGlnbm9yZXMgaWRlbnRpY2FsIFNFUkRFUyBub2RlcyAoJ3Nl
cmRlczAnLCAnc2VyZGVzMScsICdzZXJkZXM0JykgdGhhdCBzaGFyZSB0aGUgZXhhY3Qgc2FtZSBi
dWcuCi0tCgpjb21taXQgYzM3ZDUyODg4N2Q0OTQzM2U5ZDMzOTcwZTc3YWQ2MjJjNTU3YWQ1ZQpB
dXRob3I6IEdva3VsIFByYXZlZW4gPGctcHJhdmVlbkB0aS5jb20+Cgphcm02NDogZHRzOiB0aTog
QWRkIFBMTDEgcmVmY2xrIHRvIEo3ODRTNCBTb0MgU0VSREVTIG5vZGUKClRoaXMgY29tbWl0IGFk
ZHMgdGhlIFBMTDEgcmVmY2xrIHRvIHRoZSBjbG9ja3MgYW5kIGNsb2NrLW5hbWVzIHBhcmFtZXRl
cnMKZm9yIHRoZSBTRVJERVMyIG5vZGUuIEl0IGFkZHJlc3NlcyBhIG11bHRpbGluayBjb25maWd1
cmF0aW9uIGZhaWx1cmUgdGhhdApvY2N1cnMgd2l0aG91dCBQTEwxIGJlaW5nIHByZXNlbnQgaW4g
dGhlIGNsb2NrcyBsaXN0LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9r
My1qNzg0czQtbWFpbi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1qNzg0czQtbWFp
bi5kdHNpCj4gaW5kZXggNzhmY2QwYzQwYWJjZi4uZGE4ZDU4MjU3NGQwMyAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3ODRzNC1tYWluLmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3ODRzNC1tYWluLmR0c2kKPiBAQCAtMTIyLDggKzEyMiw5
IEBAIHNlcmRlczI6IHNlcmRlc0A1MDIwMDAwIHsKPiAgCQkJcmVzZXRzID0gPCZzZXJkZXNfd2l6
MiAwPjsKPiAgCQkJcmVzZXQtbmFtZXMgPSAidG9ycmVudF9yZXNldCI7Cj4gIAkJCWNsb2NrcyA9
IDwmc2VyZGVzX3dpejIgVElfV0laX1BMTDBfUkVGQ0xLPiwKPiArCQkJCSA8JnNlcmRlc193aXoy
IFRJX1dJWl9QTEwxX1JFRkNMSz4sCj4gIAkJCQkgPCZzZXJkZXNfd2l6MiBUSV9XSVpfUEhZX0VO
X1JFRkNMSz47CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUs
IGJ1dCBkb2VzIHRoZSBzYW1lIGZpeCBuZWVkIHRvIGJlIGFwcGxpZWQgdG8KdGhlIG90aGVyIGlk
ZW50aWNhbCBzZXJkZXMgbm9kZXM/CgpPdGhlciBub2RlcyBsaWtlIHNlcmRlczAsIHNlcmRlczEs
IGFuZCBzZXJkZXM0IGluCmFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajc4NHM0LWo3NDJzMi1t
YWluLWNvbW1vbi5kdHNpIHNoYXJlIHRoZSBleGFjdCBzYW1lCmNvbmZpZ3VyYXRpb24gaXNzdWUg
d2hlcmUgVElfV0laX1BMTDFfUkVGQ0xLIGlzIGluIGFzc2lnbmVkLWNsb2NrcyBidXQgYWJzZW50
CmZyb20gY2xvY2tzOgoKCQkJY2xvY2tzID0gPCZzZXJkZXNfd2l6MCBUSV9XSVpfUExMMF9SRUZD
TEs+LAoJCQkJIDwmc2VyZGVzX3dpejAgVElfV0laX1BIWV9FTl9SRUZDTEs+OwoJCQljbG9jay1u
YW1lcyA9ICJyZWZjbGsiLCAicGh5X2VuX3JlZmNsayI7CgkJCWFzc2lnbmVkLWNsb2NrcyA9IDwm
c2VyZGVzX3dpejAgVElfV0laX1BMTDBfUkVGQ0xLPiwKCQkJCQkgIDwmc2VyZGVzX3dpejAgVElf
V0laX1BMTDFfUkVGQ0xLPiwKCQkJCQkgIDwmc2VyZGVzX3dpejAgVElfV0laX1JFRkNMS19ESUc+
OwoKU2luY2Ugc2VyZGVzMCBpcyBhbHNvIGNvbmZpZ3VyZWQgZm9yIG11bHRpbGluayAoUENJZSAr
IFVTQiksIHdpbGwgaXRzCmNvbmZpZ3VyYXRpb24gZmFpbCB3aXRob3V0IGEgc2ltaWxhciB1cGRh
dGU/Cgo+IC0JCQljbG9jay1uYW1lcyA9ICJyZWZjbGsiLCAicGh5X2VuX3JlZmNsayI7Cj4gKwkJ
CWNsb2NrLW5hbWVzID0gInJlZmNsayIsInBsbDFfcmVmY2xrIiwgInBoeV9lbl9yZWZjbGsiOwoK
W1NldmVyaXR5OiBMb3ddCldpbGwgdGhpcyBhZGRpdGlvbiBjYXVzZSBtYWtlIGR0YnNfY2hlY2sg
dG8gZmFpbD8KCkFkZGluZyBhIHRoaXJkIGl0ZW0gdG8gY2xvY2stbmFtZXMgZXhjZWVkcyB0aGUg
Y3VycmVudGx5IGRlZmluZWQgaXRlbXMgaW4gdGhlCnBoeS1jYWRlbmNlLXRvcnJlbnQueWFtbCBi
aW5kaW5nLgoKRXZlbiBpZiBhIHN1YnNlcXVlbnQgcGF0Y2ggaW4gdGhlIHNlcmllcyB1cGRhdGVz
IHRoZSBzY2hlbWEgYnkgbW9kaWZ5aW5nCm1heEl0ZW1zIGFuZCB0aGUgZW51bSBmb3IgdGhlIHNl
Y29uZCBpdGVtLCBkdC1zY2hlbWEgZW5mb3JjZXMKYWRkaXRpb25hbEl0ZW1zOiBmYWxzZSBmb3Ig
YXJyYXlzLgoKVW5sZXNzIGEgdGhpcmQgaXRlbSBkZWZpbml0aW9uIGlzIGV4cGxpY2l0bHkgYWRk
ZWQgdG8gdGhlIGl0ZW1zIGFycmF5IGluIHRoZQpzY2hlbWEsIHdvbid0IHZhbGlkYXRpb24gZmFp
bCBmb3IgdGhpcyBub2RlPwoKW1NldmVyaXR5OiBMb3ddCnRoaXMgaXNuJ3QgYSBidWcsIGJ1dCB0
aGVyZSBpcyBhIG1pc3Npbmcgc3BhY2UgYWZ0ZXIgdGhlIGZpcnN0IGNvbW1hLgoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYzMDEz
NDMyNC42MTA4NS0xLWctcHJhdmVlbkB0aS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
