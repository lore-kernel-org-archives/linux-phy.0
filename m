Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 452F7EE4982
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 16:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHIGNTQy3/uhu62Ngcqle5XlFwg6JfZiWkHyGqr5NIc=; b=p+GVZSzA67BlmM
	3s+Kg9gbzZj1hu9kLV77EpV859sE30aLCPou2IuwzPJYOv9YGPlB+AtSa2tKRuz0XTwsi+NbTdRma
	dEeHlPCuK6GQKQU0Ar/PfiCbjA+wd3/6Vi+m2U9qY3C/P7D2CThSloFGehCMCwDyIYhkTaYB/u62d
	4XpUMt5EL5Xena8oxixu3qqILkbvo0rhak6Zl9Qmlb4jIyNPqKrpyjo4CWwG6j5VAr6cjYVxXgRt2
	Aug6yJsuwGSsceyd0ecRJ66Xyu53lV05p91aaGCX4kt9zf2z+jmTA2ZTWdeUQOPlUNNDksplcBQ68
	b479fz6btYB52mM/PbVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacQx-00000005372-03Oh;
	Tue, 30 Dec 2025 16:18:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacQv-0000000536L-0jiX
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 16:18:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8B7F4407EB
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 16:18:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD27C19421
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 16:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767111532;
	bh=k11I6TH4hh1xItjM+8O3XlYwQ4cJNtO+7rbbpZauB74=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=n8nxJGH5q7jhlaFgPryuP586CmNAv8tk95aj6+sljIHt25uDvGHkUoe+vt+V9hnKu
	 uFSaSHPybV4DUX1aknNxbb5/mrqU4jksImRixX2UahCGEcuQlkos6ONNw4YJu34zMJ
	 sPnGgamLNOWJ9ahDAEDz4/+isZBWpn8QNIJ4w37U9TOAeMx/8B/RHrID7Zud819s15
	 JO04Pa6A4h54CoZyFXqFLbs+fccPf8703xsXbMBRosX8dj7nCuCMVQStVS+2t86TVb
	 o9vmt2AUsFk809NcF0KfO7kjO4dF5Zf/m/PmTRgMaQMj7/patzl40yd9di+TfKknEd
	 X8pE7I6YC0h3w==
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-455a461ab6eso3095687b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:18:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVdvZ996Lg35HOjfUlYrjkgQA6hilbUSjYozvEm7NxEwlwbn9UkW9IoO5kPbz61gP12MRDUC9SKU5Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXyR4TZnNE7BEN6pUwDQgiijwEsrRcrtR9HaFTAaua5Ul+w5G0
	44iL5SLitO6+lst8Atz0xoIWlB+pFWnYCw1wBVjMvXBUnZLzEJ3kSsaVS98Zln8UovC8fKTPfR2
	drtQOa8vKQanPxIauMCJmu6en7zqmNj0=
X-Google-Smtp-Source: AGHT+IEdabLLxZ0XTEgZlfk9fnVlkw8+txCIs0Un/B8yOfm3X38+PZiV6Uu339Qlt8g6YBaV8b/gqN8TBz47Ppq0Tlc=
X-Received: by 2002:a4a:dcd6:0:b0:65d:163:3e5 with SMTP id 006d021491bc7-65d0ea694a3mr9520016eaf.47.1767111531525;
 Tue, 30 Dec 2025 08:18:51 -0800 (PST)
MIME-Version: 1.0
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki> <2556645.jE0xQCEvom@rafael.j.wysocki>
 <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com>
 <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com> <CAMuHMdVeHY7+9Jz60OX521iaEorGOcrxuGC8iuzDRUA-tkEvLQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVeHY7+9Jz60OX521iaEorGOcrxuGC8iuzDRUA-tkEvLQ@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 30 Dec 2025 17:18:38 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0hFBF_jKUV8DeWvxYpb8=s3F_4vwQ8kiYnOCBZEff4ZYQ@mail.gmail.com>
X-Gm-Features: AQt7F2rCs_r1PtPfO7YpKtu0zWadoNeeETCRVLW5w_39U6CvaW6J7q_HTWb9v0o
Message-ID: <CAJZ5v0hFBF_jKUV8DeWvxYpb8=s3F_4vwQ8kiYnOCBZEff4ZYQ@mail.gmail.com>
Subject: Re: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Linux PM <linux-pm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Brian Norris <briannorris@chromium.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_081853_256675_5003E6AD 
X-CRM114-Status: GOOD (  32.35  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBEZWMgMzAsIDIwMjUgYXQgNDowNeKAr1BNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAzMCBEZWMgMjAyNSBhdCAxMTo1
NCwgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4gPiBP
biBUdWUsIDMwIERlYyAyMDI1IGF0IDExOjM0LCBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxp
bnV4LW02OGsub3JnPiB3cm90ZToKPiA+ID4gT24gTW9uLCAyMiBEZWMgMjAyNSBhdCAyMTo0MCwg
UmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPiBGcm9t
OiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2NraUBpbnRlbC5jb20+Cj4gPiA+ID4K
PiA+ID4gPiBUaGUgUEhZIGNvcmUgZGVmaW5lcyBwaHlfcG1fcnVudGltZV9wdXQoKSB0byByZXR1
cm4gYW4gaW50LCBidXQgdGhhdAo+ID4gPiA+IHJldHVybiB2YWx1ZSBpcyBuZXZlciB1c2VkLiAg
SXQgYWxzbyBwYXNzZXMgdGhlIHJldHVybiB2YWx1ZSBvZgo+ID4gPiA+IHBtX3J1bnRpbWVfcHV0
KCkgdG8gdGhlIGNhbGxlciB3aGljaCBpcyBub3QgdmVyeSB1c2VmdWwuCj4gPiA+ID4KPiA+ID4g
PiBSZXR1cm5pbmcgYW4gZXJyb3IgY29kZSBmcm9tIHBtX3J1bnRpbWVfcHV0KCkgbWVyZWx5IG1l
YW5zIHRoYXQgaXQgaGFzCj4gPiA+ID4gbm90IHF1ZXVlZCB1cCBhIHdvcmsgaXRlbSB0byBjaGVj
ayB3aGV0aGVyIG9yIG5vdCB0aGUgZGV2aWNlIGNhbiBiZQo+ID4gPiA+IHN1c3BlbmRlZCBhbmQg
dGhlcmUgYXJlIG1hbnkgcGVyZmVjdGx5IHZhbGlkIHNpdHVhdGlvbnMgaW4gd2hpY2ggdGhhdAo+
ID4gPiA+IGNhbiBoYXBwZW4sIGxpa2UgYWZ0ZXIgd3JpdGluZyAib24iIHRvIHRoZSBkZXZpY2Vz
JyBydW50aW1lIFBNICJjb250cm9sIgo+ID4gPiA+IGF0dHJpYnV0ZSBpbiBzeXNmcyBmb3Igb25l
IGV4YW1wbGUuCj4gPiA+ID4KPiA+ID4gPiBNb2RpZnkgcGh5X3BtX3J1bnRpbWVfcHV0KCkgdG8g
ZGlzY2FyZCB0aGUgcG1fcnVudGltZV9wdXQoKSByZXR1cm4KPiA+ID4gPiB2YWx1ZSBhbmQgY2hh
bmdlIGl0cyByZXR1cm4gdHlwZSB0byB2b2lkLiAgQWxzbyBkcm9wIHRoZSByZWR1bmRhbnQKPiA+
ID4gPiBwbV9ydW50aW1lX2VuYWJsZWQoKSBjYWxsIGZyb20gdGhlcmUuCj4gPiA+ID4KPiA+ID4g
PiBObyBpbnRlbnRpb25hbCBmdW5jdGlvbmFsIGltcGFjdC4KPiA+ID4gPgo+ID4gPiA+IFRoaXMg
d2lsbCBmYWNpbGl0YXRlIGEgcGxhbm5lZCBjaGFuZ2Ugb2YgdGhlIHBtX3J1bnRpbWVfcHV0KCkg
cmV0dXJuCj4gPiA+ID4gdHlwZSB0byB2b2lkIGluIHRoZSBmdXR1cmUuCj4gPiA+ID4KPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsLmoud3lzb2NraUBpbnRl
bC5jb20+Cj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNv
bW1pdCBjYWFkMDdhZTA3ZTNmYjE3ICgicGh5Ogo+ID4gPiBjb3JlOiBEaXNjYXJkIHBtX3J1bnRp
bWVfcHV0KCkgcmV0dXJuIHZhbHVlcyIpIGluIHBoeS9uZXh0Lgo+ID4gPgo+ID4gPiBUaGlzIGlz
IGNhdXNpbmcgc2V2ZXJhbCBtZXNzYWdlcyBsaWtlCj4gPiA+Cj4gPiA+ICAgICBwaHkgcGh5LWU2
NTkwMTAwLnVzYi1waHktY29udHJvbGxlci4yOiBSdW50aW1lIFBNIHVzYWdlIGNvdW50IHVuZGVy
ZmxvdyEKPiA+ID4KPiA+ID4gZHVyaW5nIGJvb3QsIGFuZCBzMnJhbSBvbiBLb2Vsc2NoIChSLUNh
ciBNMi1XKS4KPiA+Cj4gPiBPbiBSLUNhciBHZW4zLCB0aGVyZSBhcmUgbm8gc3VjaCBtZXNzYWdl
cywgYXMgZS5nLgo+ID4gZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBk
b2VzIHN1cHBvcnQgUnVudGltZSBQTS4KPiA+IFItQ2FyIEdlbjIgdXNlcyBkcml2ZXJzL3BoeS9y
ZW5lc2FzL3BoeS1yY2FyLWdlbjIuYywgd2hpY2ggZG9lcyBub3QKPiA+IHVzZSBSdW50aW1lIFBN
IHlldCwgYnV0IHN0aWxsIHJlbGllcyBvbiBleHBsaWNpdCBjbG9jayBtYW5hZ2VtZW50Lgo+ID4K
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gPiA+ID4gKysrIGIvZHJpdmVy
cy9waHkvcGh5LWNvcmUuYwo+ID4gPiA+IEBAIC0xOTAsMTUgKzE5MCwxMiBAQCBpbnQgcGh5X3Bt
X3J1bnRpbWVfZ2V0X3N5bmMoc3RydWN0IHBoeSAqCj4gPiA+ID4gIH0KPiA+ID4gPiAgRVhQT1JU
X1NZTUJPTF9HUEwocGh5X3BtX3J1bnRpbWVfZ2V0X3N5bmMpOwo+ID4gPiA+Cj4gPiA+ID4gLWlu
dCBwaHlfcG1fcnVudGltZV9wdXQoc3RydWN0IHBoeSAqcGh5KQo+ID4gPiA+ICt2b2lkIHBoeV9w
bV9ydW50aW1lX3B1dChzdHJ1Y3QgcGh5ICpwaHkpCj4gPiA+ID4gIHsKPiA+ID4gPiAgICAgICAg
IGlmICghcGh5KQo+ID4gPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgcmV0dXJuOwo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgICBpZiAoIXBtX3J1bnRp
bWVfZW5hYmxlZCgmcGh5LT5kZXYpKQo+ID4gPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVO
T1RTVVBQOwo+ID4gPgo+ID4gPiBBZGRpbmcgc29tZSBpbnN0cnVtZW50YXRpb24gc2hvd3MgdGhh
dCB0aGlzIGJyYW5jaCB3YXMgdGFrZW4gYmVmb3JlLAo+ID4gPiB0aHVzIHNraXBwaW5nIHRoZSBj
YWxsIHRvIHBtX3J1bnRpbWVfcHV0KCkuCj4gPiA+Cj4gPiA+IENhbiBJIGp1c3QgcHV0IHRoZSBj
aGVjayBiYWNrLCBvciBpcyB0aGVyZSBhbiB1bmRlcmx5aW5nIHByb2JsZW0gdGhhdAo+ID4gPiBz
aG91bGQgYmUgZml4ZWQgaW5zdGVhZD8KPiA+Cj4gPiBJIGFzc3VtZSB0aGUgUEhZIGNvcmUgc2hv
dWxkIHN1cHBvcnQgYm90aCBkcml2ZXJzIHRoYXQgZG8gYW5kIGRvIG5vdAo+ID4gc3VwcG9ydCBS
dW50aW1lIFBNLgo+Cj4gSSBoYXZlIHNlbnQgYSBwYXRjaDoKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy8zY2E5ZjgxNjZkMjE2ODViZmJmOTc1MzVkYTMwMTcyZjc0ODIyMTMwLjE3NjcxMDcwMTQu
Z2l0LmdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlCgpMR1RNCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
