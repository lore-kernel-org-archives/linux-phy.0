Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52754C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6YfjITekMwVuZ/sJmHNc9pcEdCt7LQPNpLJcWjlJ5E=; b=WvJHWMarOA95SD
	6HDx0WypglT+NuiTnNzxe8DxuPNB+Jg0cdp0GO1CLnprKEEOdvAWo2VjyToL9WnmSXfZLE3EoX5wR
	s7GEIQhhf+pRzI5+lZh9bfw9tTbri3VfDDMSfqEuuLID8KlL8GRFxxH8PO2nWjeFSMJELrAAVFa8G
	tOVIOQycmqEK3vQhIgZaL7qNjma4uawmcEY4fv9cb9U4Q8GS8mZs+ZSOYZLJ7hoeqmjNwRz0J8ijL
	pB7oZZiMG1Z+fdDyzDOlrFm5lX3H5lu0pL6qGrJev0mmbzDcFASJQD/DHLQRSOGDoOR/K3rDl1FTM
	MgghnrOIR6cMnxTfuqlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsO5-00000005NJm-07sm;
	Fri, 28 Aug 2026 08:56:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsO3-00000005NJW-49CK
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:56:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 34C63601F7;
	Fri, 28 Aug 2026 08:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 922FD1F000E9;
	Fri, 28 Aug 2026 08:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787907394;
	bh=K91hK6EiEK54KMzCCrvx+T2/sDYj5zsj9Wh5luVu3vQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qf92CfQI1MjPl2FTOwyAR8uJbIR2Y7jlIQvMF1b8uMQtTfUz+rXRTfL8EVG9HWCjN
	 TPlGNC7ebh03xFoWpW5eCihHXmjM3jjVhpszRtNOpwCp0EzyStLXBDXiLCbLe2mBnZ
	 CYnz5wP25pbnvb9X4l2rpPIEQ8edANFUprWoy25+i7KYHREo29K7iBFmExkQLsssWY
	 kNMSs33n8hI3ZElRiItPnrz3GKFI2LHOv6/fP0g4vrVcgkz08Hbl9WgHCXuAXSMRpb
	 ukPxPFywPH1J3DjoscpHMRsXOlWE+zLVzEGWSI0h5VTLSnxyp4LCDxcgESsJTlX+1C
	 77rZv4cZMk4wg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/7] drm/display: Add soft depend for
 aux-hpd-typec-dp-bridge module
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260828084737.565-4-kernel@airkyi.com>
References: <20260828084737.565-1-kernel@airkyi.com>
 <20260828084737.565-4-kernel@airkyi.com>
Date: Fri, 28 Aug 2026 08:56:34 +0000
Message-Id: <20260828085634.922FD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRGVwZW5kZW5jeSBp
bnZlcnNpb24gdW5jb25kaXRpb25hbGx5IGxvYWRzIFVTQiBUeXBlLUMgc3Vic3lzdGVtIG9uIGFs
bCBEUC1jYXBhYmxlIHN5c3RlbXMKLS0KCmNvbW1pdCAxOGU3NWRmNTU5OWViM2MzNDc5ZGMxMDAy
NTQ3ZGNmNWY2YTE1OTNiCkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hp
cHMuY29tPgoKZHJtL2Rpc3BsYXk6IEFkZCBzb2Z0IGRlcGVuZCBmb3IgYXV4LWhwZC10eXBlYy1k
cC1icmlkZ2UgbW9kdWxlCgpUaGlzIGNvbW1pdCBhZGRzIGEgc29mdCBkZXBlbmRlbmN5IGluIHRo
ZSBkcm1fZGlzcGxheV9oZWxwZXIgbW9kdWxlIGZvciB0aGUKYXV4LWhwZC10eXBlYy1kcC1icmlk
Z2UgbW9kdWxlLiBUaGlzIGVuc3VyZXMgdGhlIGJyaWRnZSBtb2R1bGUgaXMgbG9hZGVkCmVhcmx5
LCBhcyBpdCBzZXJ2ZXMgYXMgYSBnZW5lcmljIFR5cGUtQyBEaXNwbGF5UG9ydCBIUEQgYnJpZGdl
IHRoYXQgaXNuJ3QKZGlyZWN0bHkgcmVxdWlyZWQgYnkgYW55IG90aGVyIG1vZHVsZS4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kaXNwbGF5X2hlbHBlcl9tb2Qu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kaXNwbGF5X2hlbHBlcl9tb2QuYwo+IGlu
ZGV4IGQ4YTZlNjIyODc3MzYuLmYwMTUyZDZiMGIyZDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2Rpc3BsYXkvZHJtX2Rpc3BsYXlfaGVscGVyX21vZC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2Rpc3BsYXkvZHJtX2Rpc3BsYXlfaGVscGVyX21vZC5jCj4gQEAgLTE4LDUgKzE4LDYg
QEAgc3RhdGljIHZvaWQgX19leGl0IGRybV9kaXNwbGF5X2hlbHBlcl9tb2R1bGVfZXhpdCh2b2lk
KQo+ICAJZHJtX2RwX2F1eF9kZXZfZXhpdCgpOwo+ICB9Cj4gIAo+ICtNT0RVTEVfU09GVERFUCgi
cHJlOiBhdXgtaHBkLXR5cGVjLWRwLWJyaWRnZSIpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMg
YWRkaW5nIGEgc29mdCBkZXBlbmRlbmN5IG9uIGF1eC1ocGQtdHlwZWMtZHAtYnJpZGdlIHRvIHRo
ZSBjb3JlCmRybV9kaXNwbGF5X2hlbHBlciBtb2R1bGUgY3JlYXRlIGFuIGFyY2hpdGVjdHVyYWwg
ZGVwZW5kZW5jeSBpbnZlcnNpb24/CgpUaGUgbGVhZiBicmlkZ2UgZHJpdmVyIChhdXgtaHBkLXR5
cGVjLWRwLWJyaWRnZSkgaGFzIGEgaGFyZCBkZXBlbmRlbmN5IG9uIHRoZQp0eXBlYyBjb3JlIHN1
YnN5c3RlbSBiZWNhdXNlIGl0IHJlZ2lzdGVycyBhIGJ1cyBub3RpZmllciBvbiB0eXBlY19idXMu
IEFzIGEKcmVzdWx0LCB3aGVuIGEgc3lzdGVtIGxvYWRzIGEgRFJNIGRyaXZlciB0aGF0IHV0aWxp
emVzIGdlbmVyaWMgZGlzcGxheSBoZWxwZXJzCihzdWNoIGFzIGFtZGdwdSwgaTkxNSwgb3Igbm91
dmVhdSksIHdvbid0IHRoaXMgdW5jb25kaXRpb25hbGx5IHB1bGwgdGhlIGVudGlyZQpVU0IgVHlw
ZS1DIHN1YnN5c3RlbSBpbnRvIG1lbW9yeT8KClRoaXMgc2VlbXMgbGlrZSBpdCBtaWdodCB3YXN0
ZSBtZW1vcnkgcmVzb3VyY2VzIG9uIHN5c3RlbXMgd2l0aG91dCBUeXBlLUMKaGFyZHdhcmUgYnkg
YXV0b21hdGljYWxseSBsb2FkaW5nIGF1eC1ocGQtdHlwZWMtZHAtYnJpZGdlLmtvIChhbmQgY29u
c2VxdWVudGx5CnR5cGVjLmtvKSB1cG9uIGxvYWRpbmcgYW55IHN0YW5kYXJkIERSTSBkcml2ZXIu
IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0bwpoYW5kbGUgdGhpcyB3aXRob3V0IGJ1cmRlbmluZyBh
bGwgZ2VuZXJpYyBkaXNwbGF5IGhlbHBlciB1c2Vycz8KCj4gIG1vZHVsZV9pbml0KGRybV9kaXNw
bGF5X2hlbHBlcl9tb2R1bGVfaW5pdCk7Cj4gIG1vZHVsZV9leGl0KGRybV9kaXNwbGF5X2hlbHBl
cl9tb2R1bGVfZXhpdCk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwODI4MDg0NzM3LjU2NS0xLWtlcm5lbEBhaXJreWkuY29tP3Bh
cnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
