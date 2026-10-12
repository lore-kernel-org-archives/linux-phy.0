Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F9DFCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNJvEOQUMYh8lRH1+taWj7rjoOiONMRG+sDVCE+id4g=; b=BOq2cnDf9QS1Oe
	DGGBKiFPqorQE+cdH93+MP6dWk3ALtHS0fdRxY9dXNz18ma4IKCo3CQ0CbDmMg3zykA4uJ1V/eIuZ
	Tdf8orWrZX9FzYlDO5QAEft295tNrW0Uxx32oxGDdWL7VVLQqPC3ux4R4iWzMcSpxhFsBUBMFOK1l
	PMaFX8YIVA5uJrIbgn0B2T6d1RPQ8i/WR7LY2GDgfniS7XGVfnaU+pAUI8l6L9/YfD/6vQWuHZBPF
	Q3H+4FOYmhbiKUDV0Q8qMmLTW0D5sTx4hmT2z1yF9kz0sl++QK6x3/wzWNwk2EUpinQJWsi/eWoxx
	/qeN+ZRJOZqYOL8uLOYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGLx-0000000AbxZ-3ilU;
	Mon, 12 Oct 2026 13:46:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGLt-0000000AbxG-3DY8
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:46:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6EAA94034C;
	Mon, 12 Oct 2026 13:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAEE91F0089B;
	Mon, 12 Oct 2026 13:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791812765;
	bh=Wv6ang5TgCLCkNPmUiBl924LanCQv29by1MibJLgtNU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dwX5VupGiRRxLWPtn46fHua62Nqv57fcXAtJwdjebzz4MX4AZRKq0qs/Y2XBwaGl+
	 sGfCyNLt3PBu4A2NrmLRapjZtxwMvZGt7FViJrDOxRud3pH579H8oaIORsAGdYZ9gw
	 DK1k1lQ7I5Y91Q8DSmX04x+0zRiUfh8NIx0wFF4w5sghp5V0lm08cc1iCUZeGLsDgP
	 NopR/x9XISmmqUzTLK7H9WKYwP03qncxKvOa6yqcV6k5IHSaG4d9q0PDtOkkiBwOua
	 AgpNysw1YeXGyvSQRlvPexamgd7aa/e6aue1qu6Dl2/5HWKMJJDCCBlmrv7dTZdEmB
	 UasMLMVTfmY2A==
Message-ID: <sashiko-outbox-168210@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 08/13] phy: qcom: edp: Generalize power-on path for
 per-SoC overrides
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org
In-Reply-To: <20261012-nord-drv-dt-v2-8-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-8-a2ab9af954d2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 13:46:04 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbTogZWRw
OiByZXNvdXJjZSBsZWFrIG9uIGVycm9yIHBhdGhzIGluIHFjb21fZWRwX3BoeV9pbml0Ci0tCgpj
b21taXQgMjFjNGNhNjY5NGRkNWQ0NDBhNmIwMDg2OTgzMWViMTc2MjZlMDg3OQpBdXRob3I6IFJp
dGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206IGVk
cDogR2VuZXJhbGl6ZSBwb3dlci1vbiBwYXRoIGZvciBwZXItU29DIG92ZXJyaWRlcwoKVGhpcyBw
YXRjaCBnZW5lcmFsaXplcyB0aGUgcG93ZXItb24gcGF0aCBieSBpbnRyb2R1Y2luZyBhIGRhdGEt
ZHJpdmVuIGxvb3AKZm9yIFRYIHJlc2lzdG9yIHdyaXRlcyBhbmQgYWRkaW5nIHNldmVyYWwgU29D
LXNwZWNpZmljIHJlZ2lzdGVycyB0byB0aGUKY29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUuIEl0IGFs
c28gbWFrZXMgdGhlIGNvbV9jbGtfZndkX2NmZyBjYWxsYmFjayBvcHRpb25hbC4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiBpbmRleCBkNWM2ODM1YjZjNzA0Li5jNWRmMTA4NjYw
N2YwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKClsgLi4uIF0KCj4gQEAg
LTMxMyw5ICszMjgsMTEgQEAgc3RhdGljIGludCBxY29tX2VkcF9waHlfaW5pdChzdHJ1Y3QgcGh5
ICpwaHkpCj4gIAo+ICAJbWVtY3B5KGF1eF9jZmcsIGVkcC0+Y2ZnLT5hdXhfY2ZnLCBzaXplb2Yo
YXV4X2NmZykpOwo+ICAKPiAtCXJldCA9IGVkcC0+Y2ZnLT52ZXJfb3BzLT5jb21fY2xrX2Z3ZF9j
ZmcoZWRwKTsKPiAtCWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiArCWlmIChlZHAtPmNmZy0+
dmVyX29wcy0+Y29tX2Nsa19md2RfY2ZnKSB7Cj4gKwkJcmV0ID0gZWRwLT5jZmctPnZlcl9vcHMt
PmNvbV9jbGtfZndkX2NmZyhlZHApOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cgpb
U2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBlcnJvciBwYXRoIGxlYWsgdGhlIHJlZ3VsYXRvcnMg
YW5kIGNsb2Nrcz8KCkVhcmxpZXIgaW4gcWNvbV9lZHBfcGh5X2luaXQoKSwgcmVndWxhdG9ycyBh
bmQgY2xvY2tzIGFyZSBzdWNjZXNzZnVsbHkKZW5hYmxlZCB2aWEgcmVndWxhdG9yX2J1bGtfZW5h
YmxlKCkgYW5kIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKCkuIElmIHRoZQpuZXdseSB3cmFwcGVk
IG9wdGlvbmFsIGNvbV9jbGtfZndkX2NmZygpIGNhbGxiYWNrIHJldHVybnMgYW4gZXJyb3IsIHRo
ZQpmdW5jdGlvbiByZXR1cm5zIGRpcmVjdGx5LiBUaGlzIGVudGlyZWx5IGJ5cGFzc2VzIHRoZSBv
dXRfZGlzYWJsZV9zdXBwbGllcwpjbGVhbnVwIGxhYmVsLCByZXN1bHRpbmcgaW4gYSBwZXJtYW5l
bnQgbGVhayBvZiB0aGUgcmVndWxhdG9yIHJlZmVyZW5jZXMuCgpGdXJ0aGVybW9yZSwgdGhlcmUg
aXMgbm8gY29ycmVzcG9uZGluZyBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZSgpIGNhbGwgYXQK
YWxsLCBtZWFuaW5nIHRoZSBjbG9ja3Mgd2lsbCBwZXJtYW5lbnRseSBsZWFrIGFzIHdlbGwuCgo+
ICsJfQo+ICAKPiAgCXdyaXRlbChEUF9QSFlfUERfQ1RMX1BXUkROIHwgRFBfUEhZX1BEX0NUTF9B
VVhfUFdSRE4gfAo+ICAJICAgICAgIERQX1BIWV9QRF9DVExfUExMX1BXUkROIHwgRFBfUEhZX1BE
X0NUTF9EUF9DTEFNUF9FTiwKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTItbm9yZC1kcnYtZHQtdjItMC1hMmFiOWFmOTU0ZDJA
b3NzLnF1YWxjb21tLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
