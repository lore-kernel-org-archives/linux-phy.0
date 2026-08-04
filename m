Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29166C55838
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 12:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7AXI7VU1uZ26+V5cszmHk9lOLxVcH0Y8aE962UVOlQ=; b=a1z12ZqH06W3aT
	EWjXsEwdmBXdY4MRkTvk3EEsm0v1W8MtdUR2Sj/EOu4Xigr27/WLNGn6+yeGmxS3bfEUnV5DefyGd
	1blSzGoVKSZCzCW0SIjUxlrYFZKnD0dKNsU6N8KieTwle2vqigZNnpoUWEeHSYgANVURdL1AzESZd
	M/EFaeq/X/ksU4y9GRu+1i8YW/TbWIQlmmSgif2o5+wvSo8htv5Ty5wXrgPJTCA6unJNugfhHDjDd
	rQqTZFhP7un2o+n+MZLKJU9zvuy3YElD1iA5CzzNpaab4t6Zk59FWA1u1xcZDIF+RTD2XdDCpM1QH
	tdnpxLvu2QpQQJHWuESw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEPB-00000001piH-2yGq;
	Tue, 04 Aug 2026 12:38:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrEPA-00000001pi8-3oky
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 12:38:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D46260A59;
	Tue,  4 Aug 2026 12:38:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 745AE1F000E9;
	Tue,  4 Aug 2026 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785847080;
	bh=Cu24YGS4maiUjZkGccStrwbYvf6/k7R6LXMY12zR6x4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lHFu3I2NZiYiFySTEEycEDKunrGtp1EieOEmyK0/N91ushoFi64pA+NKFR+ktuV1d
	 f8ThxhZK66Ht/ItbR7ZFbm+nCfK85FQxFE+vkt2r/Iyn30gzU18vDKW9Y1h1JpVSyB
	 A1VMS+5m/0zhUnBs7AVjYxXDamuvzBHfV9SPSk+jy75GEqnorPcrF7qkkAZbChNfj0
	 aoauTxB+ateZ1vDMNEYSCqxmcPk26HO12WpYku2G0ZqasFFHZh35NwoVwlogsF6YaR
	 yV/1Un2feroGHOMecPm7KNs1cJ+T4GrCi4enqJ9PSlfftOu4QhZLDVnAZcT2SgfHgc
	 b8tPuNxfDzKNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V4 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
To: "Monish Chunara" <monish.chunara@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260804122054.3462145-2-monish.chunara@oss.qualcomm.com>
References: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
 <20260804122054.3462145-2-monish.chunara@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 12:37:58 +0000
Message-Id: <20260804123759.745AE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgaW50ZXJydXB0
c2AgcHJvcGVydHkgZm9yIHRoZSBgc2RoY18yYCBub2RlIHNwZWNpZmllcyAzIGNlbGxzIHBlciBp
bnRlcnJ1cHQsIGJ1dCB0aGUgaW50ZXJydXB0IHBhcmVudCByZXF1aXJlcyA0IGNlbGxzLgotLQoK
LS0tIFBhdGNoIFsxXTogW1BBVENIIFY0IDEvMl0gYXJtNjQ6IGR0czogcWNvbTogQWRkIFNEIENh
cmQgc3VwcG9ydCBmb3IgU2hpa3JhIFNvQyAtLS0KY29tbWl0IDgzY2E2ZTcwYjJmNjE1ZjA5MjY2
OGZmN2ZkN2VmZmVmNzFkOGQxZmEKQXV0aG9yOiBNb25pc2ggQ2h1bmFyYSA8bW9uaXNoLmNodW5h
cmFAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IEFkZCBTRCBDYXJkIHN1cHBv
cnQgZm9yIFNoaWtyYSBTb0MKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUgc3VwcG9ydCBm
b3IgdGhlIFNEIGNhcmQgaW50ZXJmYWNlIG9uIHRoZSBTaGlrcmEKU29DLiBJdCBjb25maWd1cmVz
IHRoZSBzZGhjXzIgY29udHJvbGxlciBhbmQgcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBwaW4KY29u
dHJvbCwgY2xvY2tzLCBpbnRlcmNvbm5lY3RzLCBhbmQgb3BlcmF0aW5nIHBvaW50cy4KCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEuZHRzaQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9zaGlrcmEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEu
ZHRzaQoKWyAuLi4gXQoKPiArCQlzZGhjXzI6IG1tY0A0Nzg0MDAwIHsKPiArCQkJY29tcGF0aWJs
ZSA9ICJxY29tLHNoaWtyYS1zZGhjaSIsICJxY29tLHNkaGNpLW1zbS12NSI7Cj4gKwkJCXJlZyA9
IDwweDAgMHgwNDc4NDAwMCAweDAgMHgxMDAwPjsKPiArCj4gKwkJCWludGVycnVwdHMgPSA8R0lD
X1NQSSAzNTAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDM1MyBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGludGVycnVw
dHMgcHJvcGVydHkgcHJvdmlkZSBlbm91Z2ggY2VsbHMgZm9yIHRoZSBpbnRlcnJ1cHQgcGFyZW50
PwoKSWYgdGhlIGludGVycnVwdCBwYXJlbnQgZm9yIHRoaXMgU29DIHJlcXVpcmVzIDQgY2VsbHMg
KHN1Y2ggYXMgCiNpbnRlcnJ1cHQtY2VsbHMgPSA8ND4pLCBwYXJzaW5nIHRoaXMgMy1jZWxsIGRl
ZmluaXRpb24gd2lsbCBmYWlsIGR1cmluZyBib290LgoKVGhpcyBjb3VsZCBwcmV2ZW50IHRoZSBz
ZGhjaS1tc20gZHJpdmVyIGZyb20gb2J0YWluaW5nIGl0cyBpbnRlcnJ1cHRzLCBjYXVzaW5nCmEg
cHJvYmUgZmFpbHVyZSBhbmQgbGVhdmluZyB0aGUgU0QgY2FyZCBub24tZnVuY3Rpb25hbC4gV291
bGQgaXQgYmUgY29ycmVjdAp0byBhZGQgYSA0dGggY2VsbCBoZXJlLCBtYXRjaGluZyBob3cgc2Ro
Y18xIGlzIGNvbmZpZ3VyZWQ/Cgo+ICsJCQlpbnRlcnJ1cHQtbmFtZXMgPSAiaGNfaXJxIiwKPiAr
CQkJCQkgICJwd3JfaXJxIjsKClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDQxMjIwNTQuMzQ2MjE0NS0xLW1vbmlz
aC5jaHVuYXJhQG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
