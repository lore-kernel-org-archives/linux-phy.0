Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C0B8EE4983
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 16:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LY8Mb9PofSib/Dl8fr2dMS+3NQJmcvFvlN/vTBgEr0=; b=AyMxgUAtL4nHFr
	AQq9wzdCFqP9aZJTYH7xJEGKlU0MbA+zO6KLQ/zCpG7qen+bcJzHZG4ifMFSAOVa9wbF+Nfy6D7Kd
	Y6i0Lgz8fwrQuD5TOGCOOvtiAiPp5iRSp6b2dKe7xKHe6AtDbljUvL1oPd5zdQYL9cSfuyMpcGsQj
	Uwni2u86tqGwLQCbgasaMaElm3BYhB5vYsdSG1FcaMB0F9WM2gDwQJQbx6DH16mbC6Tt2HoTgKHfA
	RLq0wivhihvkRD84KDt4jcmN7QNm8zdzy0RRMOQnMquHm9QTKB7DIlOB/cBFD8FYjhyXJ+Zo+a7md
	aO+s03rIZZ1Iil2+l+DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacQ7-00000005345-2ZWG;
	Tue, 30 Dec 2025 16:18:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacQ5-0000000533j-10UE
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 16:18:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 619D943D98
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 16:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41892C19421
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 16:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767111479;
	bh=VEY4Cb5jc6lnJsaQHLgbiRjhF3KHmAUR5XwBio5g9jg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=TSRIXQP88/SwcyieF2OFf3akY7ze9/s843ItQyYPFVueX/KlH3Q+Qsp/H1b/ZI1b7
	 DnAZd/jDIPFdoSjMp/5YQ/C/9Zhh7zCakHU3yyS9gF3gqh6YIOUugPYSHzeCaNMtua
	 BYLjhHoRr+o1+KYdyGs9hAz0OcfpktcA8AyIZNSagQ88h9rvnsWfTwjOUc1k9yEg6r
	 z2l5Pj0mAWF36HuYGzC/2C2Re6byFSKsIePAyLTo7BPtJqArF0ryYCb7a3DZlJ1GDA
	 u1aUr8PpJ5ZTFJHZNDqDCUpxeQ7EpbpATb29Ewb3W01GjxRjpJd5M1OsB+9kugsFwC
	 QHx8uSJ56teXw==
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-65cfb4beabcso6309331eaf.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:17:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVUUCd3cI8Y+iminajEhSMop21+MgGRe6H8k6GfqUcT1I2b10kR7SvczwuVbhnF1ASN3iVflZyZd3k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhna5UPtCoIyP+JBA5iDIo9oheI00nzF+n1MYBuwIaTKLlfD1d
	WiQo2FaeaswfpZfX9Izk92D+btQGGlCJnnIoMbsbcPJmGpKDbO/nb6Jfl/57C3FdB2sTNDAYa5g
	bwoURRKROHbKbytgUX+UUs9qQp9rXDHQ=
X-Google-Smtp-Source: AGHT+IGqDWcQ17YvGmngpzLFMCVN7IFD3mBl45UeHMfJhujCrVsAMj1aofBPXJY0M8PXWnf/GD3wVU2PvQyIXeDk1WI=
X-Received: by 2002:a05:6820:611:b0:659:9a49:8fd6 with SMTP id
 006d021491bc7-65d0ec2650cmr15565301eaf.79.1767111478359; Tue, 30 Dec 2025
 08:17:58 -0800 (PST)
MIME-Version: 1.0
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki> <2556645.jE0xQCEvom@rafael.j.wysocki>
 <CAMuHMdVMFQebA43FJ53PBnd67C8fxWAC21cr4jWTGDwg-HV53w@mail.gmail.com> <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
In-Reply-To: <CAMuHMdWshJOjzD5DGzyRUG66jvPC6PPVBgaT=UdWy+XOk_T5Pw@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 30 Dec 2025 17:17:44 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0jtck8SYvXE2Env36MkK8zvK==U_7CANNrQWxFuQf2rWg@mail.gmail.com>
X-Gm-Features: AQt7F2ocK3gV_BF4thHLc9hfJbDk4QtxfyJrWP4X7jV60IIvVc6wuKzFseGDX3E
Message-ID: <CAJZ5v0jtck8SYvXE2Env36MkK8zvK==U_7CANNrQWxFuQf2rWg@mail.gmail.com>
Subject: Re: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Linux PM <linux-pm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Brian Norris <briannorris@chromium.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_081801_321473_F9CF211C 
X-CRM114-Status: GOOD (  29.49  )
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

T24gVHVlLCBEZWMgMzAsIDIwMjUgYXQgMTE6NTTigK9BTSBHZWVydCBVeXR0ZXJob2V2ZW4KPGdl
ZXJ0QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgMzAgRGVjIDIwMjUgYXQgMTE6
MzQsIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+ID4g
T24gTW9uLCAyMiBEZWMgMjAyNSBhdCAyMTo0MCwgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbEBr
ZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gRnJvbTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5q
Lnd5c29ja2lAaW50ZWwuY29tPgo+ID4gPgo+ID4gPiBUaGUgUEhZIGNvcmUgZGVmaW5lcyBwaHlf
cG1fcnVudGltZV9wdXQoKSB0byByZXR1cm4gYW4gaW50LCBidXQgdGhhdAo+ID4gPiByZXR1cm4g
dmFsdWUgaXMgbmV2ZXIgdXNlZC4gIEl0IGFsc28gcGFzc2VzIHRoZSByZXR1cm4gdmFsdWUgb2YK
PiA+ID4gcG1fcnVudGltZV9wdXQoKSB0byB0aGUgY2FsbGVyIHdoaWNoIGlzIG5vdCB2ZXJ5IHVz
ZWZ1bC4KPiA+ID4KPiA+ID4gUmV0dXJuaW5nIGFuIGVycm9yIGNvZGUgZnJvbSBwbV9ydW50aW1l
X3B1dCgpIG1lcmVseSBtZWFucyB0aGF0IGl0IGhhcwo+ID4gPiBub3QgcXVldWVkIHVwIGEgd29y
ayBpdGVtIHRvIGNoZWNrIHdoZXRoZXIgb3Igbm90IHRoZSBkZXZpY2UgY2FuIGJlCj4gPiA+IHN1
c3BlbmRlZCBhbmQgdGhlcmUgYXJlIG1hbnkgcGVyZmVjdGx5IHZhbGlkIHNpdHVhdGlvbnMgaW4g
d2hpY2ggdGhhdAo+ID4gPiBjYW4gaGFwcGVuLCBsaWtlIGFmdGVyIHdyaXRpbmcgIm9uIiB0byB0
aGUgZGV2aWNlcycgcnVudGltZSBQTSAiY29udHJvbCIKPiA+ID4gYXR0cmlidXRlIGluIHN5c2Zz
IGZvciBvbmUgZXhhbXBsZS4KPiA+ID4KPiA+ID4gTW9kaWZ5IHBoeV9wbV9ydW50aW1lX3B1dCgp
IHRvIGRpc2NhcmQgdGhlIHBtX3J1bnRpbWVfcHV0KCkgcmV0dXJuCj4gPiA+IHZhbHVlIGFuZCBj
aGFuZ2UgaXRzIHJldHVybiB0eXBlIHRvIHZvaWQuICBBbHNvIGRyb3AgdGhlIHJlZHVuZGFudAo+
ID4gPiBwbV9ydW50aW1lX2VuYWJsZWQoKSBjYWxsIGZyb20gdGhlcmUuCj4gPiA+Cj4gPiA+IE5v
IGludGVudGlvbmFsIGZ1bmN0aW9uYWwgaW1wYWN0Lgo+ID4gPgo+ID4gPiBUaGlzIHdpbGwgZmFj
aWxpdGF0ZSBhIHBsYW5uZWQgY2hhbmdlIG9mIHRoZSBwbV9ydW50aW1lX3B1dCgpIHJldHVybgo+
ID4gPiB0eXBlIHRvIHZvaWQgaW4gdGhlIGZ1dHVyZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1i
eTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tPgo+ID4KPiA+
IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1pdCBjYWFkMDdhZTA3ZTNm
YjE3ICgicGh5Ogo+ID4gY29yZTogRGlzY2FyZCBwbV9ydW50aW1lX3B1dCgpIHJldHVybiB2YWx1
ZXMiKSBpbiBwaHkvbmV4dC4KPiA+Cj4gPiBUaGlzIGlzIGNhdXNpbmcgc2V2ZXJhbCBtZXNzYWdl
cyBsaWtlCj4gPgo+ID4gICAgIHBoeSBwaHktZTY1OTAxMDAudXNiLXBoeS1jb250cm9sbGVyLjI6
IFJ1bnRpbWUgUE0gdXNhZ2UgY291bnQgdW5kZXJmbG93IQo+ID4KPiA+IGR1cmluZyBib290LCBh
bmQgczJyYW0gb24gS29lbHNjaCAoUi1DYXIgTTItVykuCj4KPiBPbiBSLUNhciBHZW4zLCB0aGVy
ZSBhcmUgbm8gc3VjaCBtZXNzYWdlcywgYXMgZS5nLgo+IGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5
LXJjYXItZ2VuMy11c2IyLmMgZG9lcyBzdXBwb3J0IFJ1bnRpbWUgUE0uCj4gUi1DYXIgR2VuMiB1
c2VzIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMi5jLCB3aGljaCBkb2VzIG5vdAo+
IHVzZSBSdW50aW1lIFBNIHlldCwgYnV0IHN0aWxsIHJlbGllcyBvbiBleHBsaWNpdCBjbG9jayBt
YW5hZ2VtZW50Lgo+Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiA+ID4gKysr
IGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ID4gPiBAQCAtMTkwLDE1ICsxOTAsMTIgQEAgaW50
IHBoeV9wbV9ydW50aW1lX2dldF9zeW5jKHN0cnVjdCBwaHkgKgo+ID4gPiAgfQo+ID4gPiAgRVhQ
T1JUX1NZTUJPTF9HUEwocGh5X3BtX3J1bnRpbWVfZ2V0X3N5bmMpOwo+ID4gPgo+ID4gPiAtaW50
IHBoeV9wbV9ydW50aW1lX3B1dChzdHJ1Y3QgcGh5ICpwaHkpCj4gPiA+ICt2b2lkIHBoeV9wbV9y
dW50aW1lX3B1dChzdHJ1Y3QgcGh5ICpwaHkpCj4gPiA+ICB7Cj4gPiA+ICAgICAgICAgaWYgKCFw
aHkpCj4gPiA+IC0gICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4gKyAgICAgICAgICAgICAg
IHJldHVybjsKPiA+ID4KPiA+ID4gLSAgICAgICBpZiAoIXBtX3J1bnRpbWVfZW5hYmxlZCgmcGh5
LT5kZXYpKQo+ID4gPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9UU1VQUDsKPiA+Cj4gPiBB
ZGRpbmcgc29tZSBpbnN0cnVtZW50YXRpb24gc2hvd3MgdGhhdCB0aGlzIGJyYW5jaCB3YXMgdGFr
ZW4gYmVmb3JlLAo+ID4gdGh1cyBza2lwcGluZyB0aGUgY2FsbCB0byBwbV9ydW50aW1lX3B1dCgp
Lgo+ID4KPiA+IENhbiBJIGp1c3QgcHV0IHRoZSBjaGVjayBiYWNrLCBvciBpcyB0aGVyZSBhbiB1
bmRlcmx5aW5nIHByb2JsZW0gdGhhdAo+ID4gc2hvdWxkIGJlIGZpeGVkIGluc3RlYWQ/CgpTb3Jy
eSBmb3IgYnJlYWtpbmcgdGhpcyEKCj4gSSBhc3N1bWUgdGhlIFBIWSBjb3JlIHNob3VsZCBzdXBw
b3J0IGJvdGggZHJpdmVycyB0aGF0IGRvIGFuZCBkbyBub3QKPiBzdXBwb3J0IFJ1bnRpbWUgUE0u
CgpZZXMsIGl0IHNob3VsZCBiZSBzdWZmaWNpZW50IHRvIHJlc3RvcmUgdGhlIHBtX3J1bnRpbWVf
ZW5hYmxlZCgpIGNoZWNrLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
