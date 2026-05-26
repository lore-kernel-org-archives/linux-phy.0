Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F479CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 19:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpY+6DSvWbUUxm6Tw1wqt0kayZ9nPL3jI0uRPg2jLyc=; b=frwctDTqIzSUDe
	MJWFW+7PmaYomoqYjb98gqOwbbc5B3bxPzZ/geVwl47FoXiu+IiyuOtrAmstY4w65beC9fEWELFbR
	BbaZI9/Y/PEgzslannei46Fqr1gm3ixnv4+Dl6+FRV2Mq+YuC4oVuH7ZPLj79LmUi6U0s9OO0E93+
	l5zOW60EPRSvThGHu9uoR1dLFo3zD+xEL7bwqufoMkz39SC8+apIOQe4WX4nx5Pz/9smm6g8fmkQS
	+avOKoXru1Q3Bqw/RdBLJDQTsaztUs0TL1Hiip/gaAQgPWI+EE+1zC+mW7bL5Km5i02Hg6ft2yXm5
	5txtJg78JwXG1vVW18nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRxpS-00000002vTW-2SAL;
	Tue, 26 May 2026 19:52:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRxpP-00000002vTA-36LY
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 19:52:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F229343C2D;
	Tue, 26 May 2026 19:52:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7621B1F00A3A;
	Tue, 26 May 2026 19:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779825158;
	bh=fgta5qpMtYouRXGhJBb+FoBguZBQkyT210Gnc22X8hs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iV974A3oLoIj2BKpSdk3uiqrmYpagDcK8DsD4qU0dmrZaf9Ul/vEIfjwcyfviOZPE
	 A5ZMGKJa1sRBVxAjJIVXi81q4GdL6nwZCpDKUc9wlAyxE8nxfKhQ+Nxrb11egoI9AM
	 CM9Fpov5cw7+ODibcuvPmp0HyjNhNrBKqN1i+/OqecbtYn/d7dnAeAUW5g5w9cP9PX
	 YnBuM/x9+Ag4cooP/PpI2hsLL6burnzOMuGuzHsr40YDQGnXp2kEIzegtEinjEOJ4I
	 9csF3mEv/vb3xzV2Gisto9SjCRrzlnzs1GH0VlahC5VdIFkvAFOvL4kSQ9R9dLdhEI
	 saZjzri+vWagw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] phy: qcom: qmp-usbc: Add support for "phy" reset
 used on Shikra
To: "Pratham Pratap" <pratham.pratap@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-5-pratham.pratap@oss.qualcomm.com>
Date: Tue, 26 May 2026 19:52:38 +0000
Message-Id: <20260526195238.7621B1F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_125239_802219_F2656651 
X-CRM114-Status: GOOD (  11.44  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBVbmNvbmRpdGlv
bmFsbHkgYWRkaW5nIHRoZSAncGh5JyByZXNldCB0byBgdXNiM2RwcGh5X3Jlc2V0X2xgIGJyZWFr
cyB0aGUgZHJpdmVyIHByb2JlIGZvciBleGlzdGluZyBRQ1M2MTUgcGxhdGZvcm1zLgotLQoKY29t
bWl0IGM4MDI0YTBkMzRlODA1YWRhNmUxMjhmY2I1N2U5MzFlZjc2OTIwMzgKQXV0aG9yOiBLcmlz
aG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFj
b206IHFtcC11c2JjOiBBZGQgc3VwcG9ydCBmb3IgInBoeSIgcmVzZXQgdXNlZCBvbiBTaGlrcmEK
ClRoaXMgcGF0Y2ggYWRkcyB0aGUgInBoeSIgcmVzZXQgdG8gdGhlIHVzYjNkcHBoeV9yZXNldF9s
IGFycmF5LiBUaGlzIGV4dHJhCnJlc2V0IGlzIG5lZWRlZCBmb3IgdGhlIG9wZXJhdGlvbiBvZiB0
aGUgUU1QIFBoeSBvbiB0aGUgU2hpa3JhIHBsYXRmb3JtLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC11c2JjLmMKPiBpbmRleCBjMzQyNDc5YTM3OTgwLi4wNjdlN2Y2ZTU2NDI0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jClsgLi4uIF0K
PiAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCB1c2IzZHBwaHlfcmVzZXRfbFtdID0gewo+IC0J
InBoeV9waHkiLCAiZHBfcGh5IiwKPiArCSJwaHlfcGh5IiwgImRwX3BoeSIsICJwaHkiLAoKW1Nl
dmVyaXR5OiBDcml0aWNhbF0KV2lsbCBhZGRpbmcgdGhpcyByZXNldCB1bmNvbmRpdGlvbmFsbHkg
Y2F1c2UgYSBwcm9iZSBmYWlsdXJlIGZvciBleGlzdGluZwpRQ1M2MTUgcGxhdGZvcm1zPwoKVGhl
IGxlbmd0aCBvZiB0aGUgdXNiM2RwcGh5X3Jlc2V0X2wgYXJyYXkgaXMgdXNlZCBieSBBUlJBWV9T
SVpFKCkgdG8gZGVmaW5lCnRoZSBudW1fcmVzZXRzIHZhbHVlIGZvciB0aGUgY29uZmlndXJhdGlv
bi4gU2luY2UgcW1wX3VzYmNfcmVzZXRfaW5pdCgpCmZldGNoZXMgdGhlc2UgcmVzZXRzIHVzaW5n
IGRldm1fcmVzZXRfY29udHJvbF9idWxrX2dldF9leGNsdXNpdmUoKSwgaXQKc3RyaWN0bHkgcmVx
dWlyZXMgYWxsIHJlcXVlc3RlZCByZXNldHMgdG8gYmUgcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRy
ZWUuCgpJZiBhbiBvbGRlciBkZXZpY2UgdHJlZSBvbmx5IGRlZmluZXMgdGhlIHR3byBvcmlnaW5h
bCByZXNldHMsIHBoeV9waHkgYW5kCmRwX3BoeSwgd29uJ3QgdGhlIGRyaXZlciBmYWlsIHRvIGZp
bmQgdGhlIHRoaXJkIHJlc2V0IGFuZCByZXR1cm4gLUVOT0VOVCwKY2F1c2luZyB0aGUgcHJvYmUg
dG8gYWJvcnQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNTI2MTg0NDAxLjM5NTk3MTctMS1wcmF0aGFtLnByYXRhcEBvc3MucXVh
bGNvbW0uY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
