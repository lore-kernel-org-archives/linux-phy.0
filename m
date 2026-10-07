Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5116ECA6009
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 14:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6SZneBRqqH3GZIyqAb2xAJ3ydVW58Rde/Wf9vwLXVo=; b=zLSVlu5zHn2qXk
	vKYouSIBx8S6ch77BHF5ZbyUQLg0VLaY2E08tJmyMlvQwxLOwixLBcts9dJXNx5a95/Pg0TtLKAP+
	dU18vV1QIxMEdyrBpyKFXmhakUOkI3OEUgtcInQv2Wr6M5gRC3BnlB6QXZv4pQdoSY248dMY4sZzb
	1/eHOTVdpV4kkgPgPOkt8tGev/l4jJv7aXm90aq/3fCc5xBzfZC1LD+WbpSouMIs8173ThF5LhGL9
	NHsuY1rmGxF6NJ5xsS5WOzpCzzTUc5K0nLYzvagpihIECztp/Ait8lXTqh7MMd/TD7mGydQk51QLS
	tL0RgAlxW978bDQ8BY+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET0v-00000002eoI-034b;
	Wed, 07 Oct 2026 14:53:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET0t-00000002eo0-2Y9g
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 14:52:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0175540DC7;
	Wed,  7 Oct 2026 14:52:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A34F1F000FF;
	Wed,  7 Oct 2026 14:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791384778;
	bh=25LVs5sPzYyXyo7uI6ETl9DrGXMCuKluHnqZ342D9zc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eWf0ABBPN1hThGfZUMvMwrbyZQdAOtOOlLjaESZkl3ffSkymKr0QJ1a+x2eBcJxCv
	 3SpmO4oY4pKqzuRnEHArjbdZIYVS2DLwX2iC7YZAfJf2dQpgDspYij2A7p+79X8G0t
	 ccVb575vzicKtkFsLJeejakM9saECeRU4nPS6hgLrGidIT/l0fLzaoGM8bBstNvm6f
	 sq5ka9lhso5ZKKP0unBj9GffFAG1eXnw5+YGg1ZPW73NfEWDFdeSMTNoNbSTWv2t2y
	 1orMtsAd1sxhfdKwZQHxsUe/ejdzySx7Mh2BoFhFPj8zvGYJsaW6dNC0qEo+NaDOe3
	 yDuc8uhFCQWiw==
Message-ID: <sashiko-outbox-163126@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
To: "Jon Hunter" <jonathanh@nvidia.com>
Cc: robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
 <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
Date: Wed, 07 Oct 2026 14:52:57 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiB0ZWdyYTogbWlz
c2luZyBkZWNsYXJhdGlvbnMgZm9yIGV4cG9ydGVkIFNvQyBzdHJ1Y3RzIGluIHh1c2IuaAotLQoK
Y29tbWl0IDhhY2Y0ODcyZjE3NDY1ZjU5ZjMyNTU4YWVmYWNiN2JlOGUyYzY3OWYKQXV0aG9yOiBK
b24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KCnBoeTogdGVncmE6IEFkZCBzdXBwb3J0
IGZvciBUZWdyYTIzOCBYVVNCIHBhZCBjb250cm9sbGVyCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBv
cnQgZm9yIHRoZSBUZWdyYTIzOCBYVVNCIHBhZCBjb250cm9sbGVyLiBJdCBwb3B1bGF0ZXMKdGhl
IFRlZ3JhMjM4IHNwZWNpZmljIFNvQyBkYXRhLCByZXVzaW5nIHN0cnVjdHVyZXMgZnJvbSBUZWdy
YTE4NiBhbmQKVGVncmExOTQsIGFuZCBkcm9wcyB0aGUgY29tcGlsZSB0aW1lIGd1YXJkcyBhcm91
bmQgdGhlc2Ugc2hhcmVkIHN0cnVjdHVyZXMgaW4KdGhlIHNvdXJjZSBmaWxlLgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jIGIvZHJpdmVycy9waHkvdGVn
cmEveHVzYi10ZWdyYTE4Ni5jCj4gaW5kZXggMzIyZWZkZWEwZDgwNy4uYWE4YWI5NGZhZDRjZiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKPiArKysgYi9k
cml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMTg2LmMKWyAuLi4gXQo+IEBAIC0xNjY1LDExICsx
NjY0LDcgQEAgY29uc3Qgc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsX3NvYyB0ZWdyYTE4Nl94dXNi
X3BhZGN0bF9zb2MgPSB7Cj4gIAkubnVtX3N1cHBsaWVzID0gQVJSQVlfU0laRSh0ZWdyYTE4Nl94
dXNiX3BhZGN0bF9zdXBwbHlfbmFtZXMpLAo+ICB9Owo+ICBFWFBPUlRfU1lNQk9MX0dQTCh0ZWdy
YTE4Nl94dXNiX3BhZGN0bF9zb2MpOwo+IC0jZW5kaWYKCltTZXZlcml0eTogTG93XQpTaW5jZSB0
aGUgZ3VhcmRzIGFyZSByZW1vdmVkIGhlcmUsIHRlZ3JhMTg2X3h1c2JfcGFkY3RsX3NvYyBpcyBu
b3cgZGVmaW5lZAphbmQgZXhwb3J0ZWQgdW5jb25kaXRpb25hbGx5LiBIb3dldmVyLCBpdHMgZXh0
ZXJuIGRlY2xhcmF0aW9uIGluCmRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaCByZW1haW5zIGNvbmRp
dGlvbmFsbHkgZ3VhcmRlZDoKCiNpZiBkZWZpbmVkKENPTkZJR19BUkNIX1RFR1JBXzE4Nl9TT0Mp
CmV4dGVybiBjb25zdCBzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGxfc29jIHRlZ3JhMTg2X3h1c2Jf
cGFkY3RsX3NvYzsKI2VuZGlmCgpEb2VzIHRoaXMgY2F1c2UgbWlzc2luZyBkZWNsYXJhdGlvbiB3
YXJuaW5ncyAoLVdtaXNzaW5nLWRlY2xhcmF0aW9ucyBvcgotV21pc3NpbmctcHJvdG90eXBlcykg
ZHVyaW5nIHRoZSBidWlsZCBpZiB0aGUga2VybmVsIGlzIGNvbmZpZ3VyZWQgd2l0aApDT05GSUdf
QVJDSF9URUdSQV8yMzhfU09DPXkgYnV0IENPTkZJR19BUkNIX1RFR1JBXzE4Nl9TT0M9bj8gU2hv
dWxkIHRoZQpjb3JyZXNwb25kaW5nIGd1YXJkcyBpbiB4dXNiLmggYmUgcmVtb3ZlZCBhcyB3ZWxs
PwoKPiAgCj4gLSNpZiBJU19FTkFCTEVEKENPTkZJR19BUkNIX1RFR1JBXzE5NF9TT0MpIHx8IFwK
PiAtCUlTX0VOQUJMRUQoQ09ORklHX0FSQ0hfVEVHUkFfMjM0X1NPQykgfHwgXAo+IC0JSVNfRU5B
QkxFRChDT05GSUdfQVJDSF9URUdSQV8yNjRfU09DKQo+ICBzdGF0aWMgY29uc3QgY2hhciAqIGNv
bnN0IHRlZ3JhMTk0X3h1c2JfcGFkY3RsX3N1cHBseV9uYW1lc1tdID0gewo+ICAJImF2ZGQtdXNi
IiwKPiAgCSJ2Y2xhbXAtdXNiIiwKCltTZXZlcml0eTogTG93XQpBIHNpbWlsYXIgbWlzbWF0Y2gg
b2NjdXJzIGhlcmUgZm9yIHRlZ3JhMTk0X3h1c2JfcGFkY3RsX3NvYy4gVGhlIGRlZmluaXRpb24K
aXMgbm93IHVuY29uZGl0aW9uYWwsIGJ1dCB0aGUgZXh0ZXJuIGRlY2xhcmF0aW9uIGluIHh1c2Iu
aCBpcyBzdGlsbCBndWFyZGVkCmJ5ICNpZiBkZWZpbmVkKENPTkZJR19BUkNIX1RFR1JBXzE5NF9T
T0MpLiBDb3VsZCB0aGlzIGFsc28gdHJpZ2dlciBtaXNzaW5nCnByb3RvdHlwZSB3YXJuaW5ncyB3
aGVuIGJ1aWxkaW5nIHdpdGggY2VydGFpbiBjb25maWdzIGRpc2FibGVkPwoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwNy10ZWdy
YS1waHktdjMtMC1kNTAxZGU0MTQ3MTBAbnZpZGlhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
