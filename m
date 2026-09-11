Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC631C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOlhQeQ6fy5LuDvOWiDWxXHh3+dRhSiQTv9Yb5sVH5s=; b=YKiyDm3Fotj8+W
	THk3Af3llTitPAk+JOt5XSDelIMlJcQfyT7Z2tjcb1kzA5ICG+0nwNOPZTjqnpPLMwyR2MdDWFoqb
	xIqr6smxtYnPJ5LpeZOH04KbpM0NDJUy+U4MVOfceSOm6scTkbmvpMY2DyQkusWPF5afyB7PajHIU
	A8n9dyJsaUzGRRl/ftCmqZ5M7H/qsz6PKsSgOmyD61IN6bCngbY5BOq2ug0N9TXiBi5wqG+7hZMFb
	sFYQsuoJqZXdP/4vV/u4a5PcQ6qrLISdIhBKBl9uOWXS9H6m2y+tOrESGYScO/HvK3osbBKLfOlg4
	8PIwzxOl7EG58SJi4ypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53V0-0000000H8KJ-2VoI;
	Fri, 11 Sep 2026 15:49:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Uz-0000000H8Ji-0yLy
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:49:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A9BB060202;
	Fri, 11 Sep 2026 15:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0B81F000FF;
	Fri, 11 Sep 2026 15:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789141748;
	bh=hd+UvuJiwOUDiM2w6IpVWyqO25djS1xmTmBKKaDCSdQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JCptqKzZ75f32yJlRgCuNxgHtGsNfod82lXksNFXwLA9+FtJtt9MsmuYvPM8/dGs/
	 QOvomvRyoUxVkNxGNULfpJ+d3ywbAK01KTQMsxfzGwt4urlJZoFXll7H9AB6K6bt2l
	 aZUekB8Zv78fWUwChnPW/f0Fuo4zlSjSPEkGA0ueaQ7zW3jg8+iwKDSehi+53h3IF+
	 H5jl0IZ509R1ITFFOgHiBPLuTy8sGH1yrhHaTDNL0sDlnUdBC07afOusPlUBWiR+xz
	 1oGFCVWwhiU24LN7Z0Snrpc84pji2E67S5t8kqGbHyXV1M10LYWu1UVu6pKPMH3ZPn
	 TeI6ApyF3+qmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/17] phy: qcom: edp: Add Nord-specific register
 offsets
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:49:07 +0000
Message-Id: <20260911154907.BB0B81F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGFkZGVk
IHJlZ2lzdGVyIGBEUF9QSFlfTERPX0NGR2AgaXMgbWlzc2luZyB0aGUgYF9OT1JEYCBzdWZmaXgu
Ci0tCgpjb21taXQgZDliOGFjMWQ2NDBjZTBjMGY0ODg5N2Y0NjIxNmJkOWU3MmViMzkxZQpBdXRo
b3I6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFj
b206IGVkcDogQWRkIE5vcmQtc3BlY2lmaWMgcmVnaXN0ZXIgb2Zmc2V0cwoKVGhpcyBjb21taXQg
YWRkcyBOb3JkLXNwZWNpZmljIHJlZ2lzdGVyIG9mZnNldHMgZm9yIHRoZSBEUCBQSFkgYW5kIFFT
RVJERVMKdjggQ09NIHRvIGFsbG93IE5vcmQgc2VxdWVuY2VzIHRvIHJlZmVyZW5jZSB0aGVtIGRp
cmVjdGx5IGJ5IG5hbWUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gaW5kZXgg
YTNjODkzZjcyOTA4Zi4uYmY4YTE3MzM2YzdlYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLWVkcC5jClsgLi4uIF0KPiBAQCAtNDEsOSArNDEsMTkgQEAKPiAgCj4gICNkZWZpbmUgRFBf
UEhZX1ZDT19ESVYgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDA3NAo+ICAjZGVmaW5lIERQ
X1BIWV9UWDBfVFgxX0xBTkVfQ1RMICAgICAgICAgICAgICAgICAweDAwN2MKPiArLyogTm9yZCB1
c2VzIGEgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dDsgbm9uLU5vcmQgdmFsdWUgaXMgMHgwMGEw
ICovCj4gICNkZWZpbmUgRFBfUEhZX1RYMl9UWDNfTEFORV9DVEwgICAgICAgICAgICAgICAgIDB4
MDBhMAo+ICsjZGVmaW5lIERQX1BIWV9UWDJfVFgzX0xBTkVfQ1RMX05PUkQgICAgICAgICAgICAw
eDAwYzAKPiAgCj4gKy8qIE5vcmQgdXNlcyBhIGRpZmZlcmVudCByZWdpc3RlciBsYXlvdXQ7IG5v
bi1Ob3JkIHZhbHVlIGlzIDB4MDBlMCAqLwo+ICAjZGVmaW5lIERQX1BIWV9TVEFUVVMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAweDAwZTAKPiArI2RlZmluZSBEUF9QSFlfU1RBVFVTX05PUkQg
ICAgICAgICAgICAgICAgICAgICAgMHgwMTEwCj4gKyNkZWZpbmUgRFBfUEhZX0xET19DRkcgICAg
ICAgICAgICAgICAgICAgICAgICAgIDB4MDBmMAoKW1NldmVyaXR5OiBMb3ddClRoZSBjb21taXQg
bWVzc2FnZSBub3RlcyB0aGlzIHBhdGNoIGFkZHMgTm9yZC1zcGVjaWZpYyBkZWZpbmVzLCBhbmQg
b3RoZXIKbmV3bHkgaW50cm9kdWNlZCByZWdpc3RlcnMgYXBwcm9wcmlhdGVseSB1c2UgYSBfTk9S
RCBzdWZmaXggKGxpa2UKRFBfUEhZX1NUQVRVU19OT1JEIGFuZCBEUF9QSFlfVFhfTE4wX0RSVl9M
VkxfTk9SRCkuCgpEb2VzIERQX1BIWV9MRE9fQ0ZHIGFsc28gbmVlZCB0aGUgX05PUkQgc3VmZml4
IGhlcmU/IExlYXZpbmcgaXQgb2ZmIG1ha2VzIGl0CmFwcGVhciBhcyBhIGdlbmVyaWMgcmVnaXN0
ZXIgcmF0aGVyIHRoYW4gYSBOb3JkLXNwZWNpZmljIG9uZS4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTEtbm9yZC1kcnYtZHQt
djEtMC1lMjVjMDczY2YxYjZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
