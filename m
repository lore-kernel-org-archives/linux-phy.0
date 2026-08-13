Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66DB2C5CFDB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 09:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opdBcQpnGV0+kx8j9fRmgrCFjuOFBX5eaqQCFSeCRk0=; b=dpI13zwqnf7DOj
	GSHLCC8Aj2r06fAPheZ2rGFVeOdBfIzZU2uklToS+hZb66QhkKtVNlSCwtsbXeCG+H8HTiawhHqih
	kT1TRqRNR15WoxhWCzLlheepGx41/Fvt00/jusDQyzYpxtogDQWc34FmUdfW+gaf79fcbFwfWeGMQ
	0GzHQ3NSFiRK1nh8KJzbF8EMM5qr93uWep6PAi8KZRnWUv54WarFiPqTKoa9uBudtBuUpoBWFtPFB
	ILzud/UEAsEuX4s7L+aDkOM4JsQKmWGOXqRRTzPRpTfWJdpd/5SUUuef5x3jbfCY0ijTKEnRft+2q
	4X4EXcZ3Db66OSD4qelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRbz-00000000H0w-3SNv;
	Thu, 13 Aug 2026 09:20:31 +0000
Received: from ixit.cz ([2a02:830a:f787:8f00::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRbw-00000000Gz0-0nwx;
	Thu, 13 Aug 2026 09:20:30 +0000
Received: from smtpclient.apple (85-70-170-181.rcd.o2.cz [85.70.170.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id BC3165340217;
	Thu, 13 Aug 2026 11:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1786612821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XSbxuFNDxlXVpQ/cS578M2yFcGMkc7DG8pgNdZPizcw=;
	b=LZXlAaqMDuz1Eu1qoATS2mQYnT7CsZwlU8A/IXlgD06ajK8b+e6H1n9LYw4UJuCZm5U/K1
	45EC+UwLTUEFW7hK5NTe7T8cn5/fV82S+8GeZjkxTS2flC4JayGWz1E96Y3dcIj8ur1J4R
	hWWn2JaZ0EhUTvH7hyEn/4YiTGlPbJw=
From: David Heidelberg <david@ixit.cz>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 00/33] Add support for Qualcomm Snapdragon SM7150 SoC and Google Pixel 4a
Date: Thu, 13 Aug 2026 11:20:11 +0200
Message-Id: <7B026D92-3826-494D-B1A9-EF01D41B4461@ixit.cz>
References: <b15b2687-0c2e-43b2-ac9e-78e04e77e065@mainlining.org>
Cc: Jens Reidel <adrian@mainlining.org>,
 Danila Tikhonov <danila@jiaxyga.com>, Miro Mraz <mraz.miro@seznam.cz>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 neil.armstrong@linaro.org, linux-hardening@vger.kernel.org,
 linux@mainlining.org, Connor Mitchell <c.dog29@hotmail.com>
In-Reply-To: <b15b2687-0c2e-43b2-ac9e-78e04e77e065@mainlining.org>
To: Danila Tikhonov <danila@mainlining.org>
X-Mailer: iPhone Mail (23G71)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_022028_512995_FB91B491 
X-CRM114-Status: GOOD (  18.69  )
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

Cj4gT24gMTIuIDguIDIwMjYsIGF0IDIyOjU0LCBEYW5pbGEgVGlraG9ub3YgPGRhbmlsYUBtYWlu
bGluaW5nLm9yZz4gd3JvdGU6Cj4gCj4g77u/SGkgRGF2aWQsCj4gCj4gVGhhbmsgeW91IGZvciB5
b3VyIGNvbW1lbnQuCj4gCj4+IE9uIDEyLzA4LzIwMjYgMTQ6NDAsIERhdmlkIEhlaWRlbGJlcmcg
d3JvdGU6Cj4+IAo+PiAKPj4+IE9uIDIzLzA0LzIwMjUgMDk6MjYsIE5laWwgQXJtc3Ryb25nIHdy
b3RlOgo+Pj4gSGksCj4+PiAKPj4+IE9uIDIzLzA0LzIwMjUgMDA6MDcsIEplbnMgUmVpZGVsIHdy
b3RlOgo+Pj4+IEhpIGV2ZXJ5b25lLAo+Pj4+IAo+Pj4+IGFwb2xvZ2llcyBmb3IgdGhlIG1lc3Mg
dGhpcyBjcmVhdGVkLiBEYW5pbGEncyBtYWlsIHByb3ZpZGVyIHJhdGVsaW1pdGVkIGhpbSBoYWxm
d2F5IHRocm91Z2ggc2VuZGluZyB0aGUgc2VyaWVzIGFuZCB0aGUgYXR0ZW1wdCB0byByZS10cnkg
c2VuZGluZyB0aGUgc2Vjb25kIGhhbGYgYW4gaG91ciBsYXRlciBlbmRlZCB1cCB3aXRoIGEgbmV3
IG1lc3NhZ2UgSUQgKEkgdGhpbmsgZHVlIHRvIG5vdCB1c2luZyAtLWluLXJlcGx5LXRvKS4KPj4+
PiBIZSBhc2tlZCBtZSB0byBsZXQgeW91IGtub3cgdGhhdCB0aGlzIHdpbGwgYmUgcmVzb2x2ZWQg
bGF0ZXIgYW5kIHRoZSB3aG9sZSBzZXJpZXMgd2lsbCBiZSByZS1zZW50IG9uY2UgdGhlIHByb2Js
ZW1zIGFyZSByZXNvbHZlZC4KPj4+IAo+Pj4gVGhlIGI0IHdlYiBzdWJtaXNzaW9uIGlzIGEgZ3Jl
YXQgYWx0ZXJuYXRpdmUgd2hlbiB0aGUgbWFpbCBwcm92aWRlciBpcyByYXRlIGxpbWl0ZWQ6Cj4+
PiBodHRwczovL2I0LmRvY3Mua2VybmVsLm9yZy9lbi9sYXRlc3QvY29udHJpYnV0b3Ivc2VuZC5o
dG1sI3dlYi1lbmRwb2ludAo+Pj4gCj4+IAo+PiBJIHNlZSBwZW9wbGUgaW50ZXJlc3RlZCBpbiBt
b3ZpbmcgUGl4ZWwgNGEgZm9yd2FyZCwgYnV0IGl0IHNlZW1zIHRoaXMgd2FzIG5ldmVyIHVwc3Ry
ZWFtZWQ/IEkgbG9va2VkIGF0IHNtNzE1MCByZXBvc2l0b3J5IFsxXSB3aGVyZSBJIHNlZSBGUk9N
TElTVCwgYnV0IHRoZXNlIHBhdGNoZXMgbmV2ZXIgYXJyaXZlZCB0byB0aGUgbGlzdCBhbmQgdGhp
cyBzZXJpZXMgaXMgZnJvbSAyMDI1Lgo+PiAKPj4gU2hvdWxkIHdlIGV4cGVjdCB2MiAocmUpYmFz
ZWQgb24gcmVjZW50IHRyZWU/Cj4+IAo+IAo+IEknZCBkZWZpbml0ZWx5IGxpa2UgdG8gZ2V0IGJh
Y2sgdG8gdXBzdHJlYW1pbmcgU003MTUwIGFuZCB0aGUgZGV2aWNlcwo+IGJhc2VkIG9uIGl0LCBi
dXQgSSBkb24ndCB0aGluayB0aGVyZSdzIG11Y2ggdmFsdWUgaW4gY29udGludWluZyB3aXRoCj4g
dGhpcyBwYXJ0aWN1bGFyIHNlcmllcyBhcy1pcy4gQSBsb3QgaGFzIGNoYW5nZWQgaW4gdGhlIGtl
cm5lbCBvdmVyIHRoZQo+IHBhc3QgeWVhciwgd2hpY2ggd291bGQgcmVxdWlyZSBzdWJzdGFudGlh
bCBjaGFuZ2VzIHRocm91Z2hvdXQgdGhlIHNlcmllcwo+IGFuZCB3b3VsZCBlZmZlY3RpdmVseSBm
b3JjZSB0aGUgbWFpbnRhaW5lcnMgdG8gcmV2aWV3IGl0IGZyb20gc2NyYXRjaAo+IGFueXdheS4K
CkFmdGVyIGxvbmdlciBwZXJpb2Qgb2YgdGltZSBtYWludGFpbmVycyB3aWxsIGhhdmUgdG8gZG8g
ZnVsbCByZXZpZXcgYW55d2F5LiBTdXJlLCB0aGUgcmV2aWV3cyBuZWVkcyB0byBiZSBhZGRyZXNz
ZWQgOikKCj4gCj4gSSdkIGFsc28gbGlrZSB0byBzcGxpdCB0aGUgc2VyaWVzIHVwIHRvIGF2b2lk
IHRhcmdldGluZyBzdWNoIGEgbGFyZ2UKPiBudW1iZXIgb2YgbWFpbnRhaW5lcnMgaW4gYSBzaW5n
bGUgc3VibWlzc2lvbi4KClllcywgdGhhdOKAmXMgZXhhY3RseSB3aGF04oCZcyBuZWVkZWQgKGF0
IGxlYXN0IGZvciB0aGUgcGFydCBwYXRjaGVzIEkgc2F3KS4KCj4gSG9wZWZ1bGx5LCBJJ2xsIGJl
IGFibGUgdG8KPiBmaW5kIHNvbWUgdGltZSB0byB3b3JrIG9uIHRoaXMgaW4gdGhlIG5lYXIgZnV0
dXJlLgoKV2hlcmUgdGhlIG1vc3QgcmVjZW50IHBhdGNoc2V0IGNhbiBiZSBmb3VuZD8gSnVzdCBp
biBjYXNlIHNvbWVvbmUgd2FudGVkIHRvIHB1c2ggc29tZSBiaXRzIGluIG1lYW50aW1lLgoKVGhh
bmtzCkRhdmlkCgo+IAo+IAo+PiBUaGFua3MKPj4gRGF2aWQKPj4gCj4+IFsxXSBodHRwczovL2dp
dGh1Yi5jb20vc203MTUwLW1haW5saW5lL2xpbnV4L2NvbW1pdC83ZWE0MTUyM2M2NzhlOTRhN2Mw
NDg5MzYwNTJiNWIxYjFiMTA5Y2RkCj4+IAo+Pj4gTmVpbAo+Pj4gCj4+Pj4gCj4+Pj4gQmVzdCBy
ZWdhcmRzLAo+Pj4+IEplbnMKPj4+IAo+Pj4gCj4gLS0tCj4gQmVzdCByZWdhcmRzLAo+IERhbmls
YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
