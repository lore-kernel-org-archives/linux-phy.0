Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7F6AC88E70
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 13:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQNWgnb5NTI0I3FjPQzu+wnrhCnU+oq45+2PjGpgbiE=; b=ou4GELH88vvR6Y
	2gLJe+zPuaJA55AUhGIPxMsbou55ZLF/fg63dtoiGWF81eSEXUP2UHwSiA6fJsVqeleB6gw4dTRyD
	9fkguF9pWn5vJ/EdlRBp8fdDbcB3T5shkxG2oM2vcu4hSnSpwTYdrQnfDM1sfi+hoAg4FWTCR3nce
	Cro8vi2MzlbNzkgP2h4KT6Uxvnc6vDcYC9nn6DsQMq1dOnB3n5Jbbj8GEdcLy5PpPOjj9swZ+dE/v
	KRhjkbqSHWWRKyhLNbNjPy8W7cO40YZ8CQElqCohl+y+kk4UAt6oCgX66MZhl9MFv9BqqTjCPLLua
	yUhdjaOR3LxG6QNwVHIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66wP-00000003ooD-1xVc;
	Mon, 14 Sep 2026 13:41:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x66wJ-00000003ong-4Bzp
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 13:41:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3C78F60120;
	Mon, 14 Sep 2026 13:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DBEF1F000FF;
	Mon, 14 Sep 2026 13:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789393303;
	bh=3DI1L5QUmQZVnnmb7U8lWFf2/S2Fs3Arcy571Q/MDVc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j9CpBjdVHcZz7NOq4IlD3WQ0sGdcWlCU8khkSzYlItKl+tFdoIUcT35RG2e55Oqwb
	 CxroUgxhNEH+aTw18Ctg7v5GLjz9pxGQIrt5z2t/iq6RZYveDmALrNfPCmC4TsGSkk
	 AknNAphTCTokbR4JfacGL2eK+RMinq8RmfxprAlWcfqkO/CKHc4ziFGTOkSE3vBS3f
	 IDmdLBT/nuBMOHjqQb8uYu5D19SiQ597I1aeKDzdQ2w12qi7zHmU7EiQZ3sh1k64Ja
	 yKG89bttaFnMk6bJW2wJ4Qg2J6a3F+g9ZUfDAW6WYesHxtEQhSeNIaItRFauBGkb0m
	 cTad5CQLvhg7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 24/24] scsi: ufs: mediatek: Add MT8196 compatible,
 update copyright
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260914-mt8196-ufs-v12-24-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-24-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 13:41:42 +0000
Message-Id: <20260914134142.6DBEF1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEtlcm5lbCBwYW5pYyBp
biB1ZnNfbXRrXzA5dl9vbigpIGFuZCB1ZnNfbXRrXzA5dl9vZmYoKSBlcnJvciBwYXRocyBkdWUg
dG8gbWlzc2luZyBOVUxMIGNoZWNrcyBvbiBob3N0LT5yZWdfYXZkZDA5LgotLQoKY29tbWl0IDNl
MWFiOTEyYjY4YmI3YWRhZDU5MTkwYTBkMjEzMDk2YmI0MTk5MWMKQXV0aG9yOiBOaWNvbGFzIEZy
YXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKc2NzaTogdWZzOiBt
ZWRpYXRlazogQWRkIE1UODE5NiBjb21wYXRpYmxlLCB1cGRhdGUgY29weXJpZ2h0CgpUaGUgTVQ4
MTk2J3MgVUZTIGNvbnRyb2xsZXIgaGFzIGEgbmV3IGNvbXBhdGlibGUuIEFkZCB0aGUgbmVjZXNz
YXJ5CnN0cnVjdCBkZWZpbml0aW9ucyB0byBzdXBwb3J0IGl0LgoKPiBUSGUgTVQ4MTk2J3MgVUZT
IGNvbnRyb2xsZXIgaGFzIGEgbmV3IGNvbXBhdGlibGUuIEFkZCB0aGUgbmVjZXNzYXJ5CiAgXl5e
CltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlcmUncyBhIHR5cG8gKFRI
ZSkgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9z
dC91ZnMtbWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRl
eCBlZjg5MjQ3MDRjOTAyLi5jZWI1MmM0MGQyNjZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZz
L2hvc3QvdWZzLW1lZGlhdGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jCgpbIC4uLiBdCgo+IEBAIC0yMjY0LDEwICsyMjcwLDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgdWZzX210a19zb2NfZGF0YSBtdDgxOTJfODE5NV9kYXRhID0gewo+ICAJLm51bV9yZWdfbmFt
ZXMgPSBBUlJBWV9TSVpFKHVmc19tdGtfcmVnc19hdmRkMTJfY2tidWZfYXZkZDE4KSwKPiAgfTsK
PiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdWZzX210a19zb2NfZGF0YSBtdDgxOTZfZGF0YSA9
IHsKPiArCS5oYXNfYXZkZDA5ID0gdHJ1ZSwKPiArCS5oYXNfYXZkZDA5XzEgPSB0cnVlLAoKW1Nl
dmVyaXR5OiBIaWdoXQpEb2VzIGVuYWJsaW5nIGhhc19hdmRkMDlfMSBpbnRyb2R1Y2UgYSBOVUxM
IHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gdGhlIGVycm9yCmhhbmRsaW5nIHBhdGhzIGZvciB1ZnNf
bXRrXzA5dl9vbigpIGFuZCB1ZnNfbXRrXzA5dl9vZmYoKT8KCklmIGEgZGV2aWNlIHRyZWUgb21p
dHMgYXZkZDA5IGJ1dCBwcm92aWRlcyBhdmRkMDktMSwgaG9zdC0+cmVnX2F2ZGQwOSB3aWxsCmJl
IE5VTEwuIEluIHVmc19tdGtfMDl2X29uKCksIHRoZSBjb2RlIHByb3Blcmx5IGNoZWNrcyBpZiBo
b3N0LT5yZWdfYXZkZDA5CmlzIHZhbGlkIGJlZm9yZSBlbmFibGluZyBpdC4gSG93ZXZlciwgaWYg
ZW5hYmxpbmcgaG9zdC0+cmVnX2F2ZGQwOV8xCnN1YnNlcXVlbnRseSBmYWlscywgdGhlIGVycm9y
IGhhbmRsZXIgYmxpbmRseSBleGVjdXRlczoKCiAgICByZWd1bGF0b3JfZGlzYWJsZShob3N0LT5y
ZWdfYXZkZDA5KTsKCndpdGhvdXQgY2hlY2tpbmcgaWYgaG9zdC0+cmVnX2F2ZGQwOSBpcyBOVUxM
LgoKVGhlIGNvcmUgcmVndWxhdG9yIHN1YnN5c3RlbSB1bmNvbmRpdGlvbmFsbHkgZGVyZWZlcmVu
Y2VzIHRoZSBzdHJ1Y3QgcmVndWxhdG9yCnBvaW50ZXIgd2hlbiBDT05GSUdfUkVHVUxBVE9SIGlz
IGVuYWJsZWQsIHdoaWNoIHdvdWxkIGNhdXNlIGEgcGFuaWMuCgpUaGUgZXhhY3Qgc2FtZSBpc3N1
ZSBhcHBlYXJzIHRvIGV4aXN0IGluIHVmc19tdGtfMDl2X29mZigpLCB3aGVyZSBpdCBjYWxsczoK
CiAgICByZWd1bGF0b3JfZW5hYmxlKGhvc3QtPnJlZ19hdmRkMDkpOwoKdW5jb25kaXRpb25hbGx5
IGlmIGRpc2FibGluZyBhdmRkMDktMSBmYWlscy4KClNpbmNlIHRoZSBNVDgxOTYgY29tcGF0aWJs
ZSBpcyB0aGUgZmlyc3QgdG8gc2V0IGhhc19hdmRkMDlfMSA9IHRydWUsIGRvZXMKdGhpcyBtYWtl
IHRoZXNlIGVycm9yIHBhdGhzIHJlYWNoYWJsZT8KCj4gKwkucmVnX25hbWVzID0gdWZzX210a19y
ZWdzX2F2ZGQxMl9ja2J1ZiwKPiArCS5udW1fcmVnX25hbWVzID0gQVJSQVlfU0laRSh1ZnNfbXRr
X3JlZ3NfYXZkZDEyX2NrYnVmKSwKPiArfTsKPiArCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE0LW10ODE5Ni11ZnMtdjEyLTAt
OTI3OWQ3ZWY4MTRkQGNvbGxhYm9yYS5jb20/cGFydD0yNAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
