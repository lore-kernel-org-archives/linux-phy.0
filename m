Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A58D1CD6E74
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 11:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsEcxUcrQvnx9tItNiUdKvM7ogKbMAUt7kLfkraFooQ=; b=Azzj+0RJ8noc+f
	lOWzBbH+dMwOOnvfp8c0hf918CeCB4OxyaEfCRZtKUAuIuIhwbruGFJnn/6zdJjT9rSUSrwiTS4/G
	Rk914QUz83nPNnHz97gALQIOnDPSuME4zoZnQDseVbSWS1URq6HYaJfCLMe7BhONf1Nyjm/Sp7s7g
	ecTxusC9x0BOMGE0kh8aiIktfZpzQEqsZL31jROvL2sA19DrdXAh3HA7dDi+PYDwZHqb3pC0qzoXy
	sM/qiZguF4LxDQeKXRPYm5lvxEZWWIMPzksIqsAmj50CnEVgIrISma4lCbQ3chUU6HJrxpva388l/
	N4X96ney4K3ZpxFuh67g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSjb-00000000XUk-0HJh;
	Fri, 05 Jun 2026 11:29:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSjZ-00000000XUd-3XXk
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 11:29:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F538601E3;
	Fri,  5 Jun 2026 11:29:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A81D1F00893;
	Fri,  5 Jun 2026 11:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780658944;
	bh=nwJoYl4z9YwzrOTrGFnPw42XCXLrtKfU+4nGyfFmFoY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fpqJhmtDZkdpI9pAcGwwhL0HCYZcwewZm0w6wA2ZFbXHuo0Dlwue1Ya6FQ5m949zg
	 19otdqn4HJMawAlmpFARrHutaa7Q03qzHEXliBNPgbuVf0Nm43O3K6I+rjU/tG5D0h
	 PjfCp2dT0V2X0+N2LJiCzheKCxe/sTxnODYqDuqKR6SNaDkI24qz41Ig15KQMHE4RT
	 7Loxd/KtsOYhiJ2kmGafhJb888PtIlUBllCxaKPzm5W1IYVx1dTniqBZ+jvNgUXPRj
	 iXkpjUDta/GUvHC0NWD4oiO+eC2eU1tKI2ygMh+sS+r/l+yMv51JteodsDYLKmYIdW
	 Cx2k8XAY2UmTQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] phy: fsl-imx8mq-usb: add control register regmap
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, Frank.Li@kernel.org, neil.armstrong@linaro.org, imx@lists.linux.dev
In-Reply-To: <20260605-imx8mp-usb-phy-improvement-v4-4-b2ddf2f3862c@nxp.com>
References: <20260605-imx8mp-usb-phy-improvement-v4-4-b2ddf2f3862c@nxp.com>
Date: Fri, 05 Jun 2026 11:29:03 +0000
Message-Id: <20260605112904.6A81D1F00893@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtNZWRpdW1d
IFdyaXRlcyB0byB0aGUgQ1IgZGVidWdmcyBjb250cm9sIHJlZ2lzdGVycyBhcmUgc2lsZW50bHkg
ZGlzY2FyZGVkIHdpdGhvdXQgZXJyb3IgaWYgdGhlIFBIWSBpcyBydW50aW1lIHN1c3BlbmRlZC4K
ClByZS1leGlzdGluZyBpc3N1ZXM6Ci0gW0hpZ2hdIENsb2NrIHJlZmVyZW5jZSBjb3VudCB1bmRl
cmZsb3cgb24gZHJpdmVyIHVuYmluZCBkdWUgdG8gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoKSBhbmQg
UnVudGltZSBQTS4KLS0KCmNvbW1pdCAzYmNlMGQ0MWE0ZTIyODIwMzZjNmZhNDFlNjJmNDdjZmUw
Nzg4ZDY1CkF1dGhvcjogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4
bXEtdXNiOiBhZGQgY29udHJvbCByZWdpc3RlciByZWdtYXAKICAgIApUaGUgQ1IgcG9ydCBpcyBh
IHNpbXBsZSAxNi1iaXQgZGF0YS9hZGRyZXNzIHBhcmFsbGVsIHBvcnQgdGhhdCBpcwphY2Nlc3Nl
ZCB0aHJvdWdoIDMyLWJpdCBNTUlPIHJlZ2lzdGVycyBmb3Igb24tY2hpcCBhY2Nlc3MgdG8gdGhl
CmNvbnRyb2wgcmVnaXN0ZXJzIGluc2lkZSB0aGUgVVNCIDMuMCBmZW10b1BIWS4gQWRkIGNvbnRy
b2wgcmVnaXN0ZXIKcmVnbWFwIGFuZCBleHBvcnQgdGhlc2UgcmVnaXN0ZXJzIGJ5IGRlYnVnZnMg
dG8gaGVscCBQSFkncyBkaWFnbm9zdGljLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtaW14OG1xLXVzYi5jCj4gaW5kZXggMjdhYTY5NmY1ZGQ0MC4uZTI0ZjQ2ZDc5MjRiNiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiAr
KysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKWyAuLi4gXQo+
IEBAIC02NjcsNiArNjcxLDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlt
eDhtcV91c2JfcGh5X29mX21hdGNoW10gPSB7Cj4gIH07Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
b2YsIGlteDhtcV91c2JfcGh5X29mX21hdGNoKTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
cmVnbWFwX2NvbmZpZyBpbXhfY3JfcmVnbWFwX2NvbmZpZyA9IHsKPiArCS5uYW1lID0gImNyIiwK
PiArCS5yZWdfYml0cyA9IDMyLAo+ICsJLnZhbF9iaXRzID0gMzIsCj4gKwkucmVnX3N0cmlkZSA9
IDQsCj4gKwkubWF4X3JlZ2lzdGVyID0gMHg3LAo+ICt9OwoKW1NldmVyaXR5OiBNZWRpdW1dCkRv
ZXMgdGhpcyByZWdtYXAgY29uZmlndXJhdGlvbiBuZWVkIGEgLmNhY2hlX3R5cGU/CgpXaXRob3V0
IG9uZSwgaXQgZGVmYXVsdHMgdG8gUkVHQ0FDSEVfTk9ORS4gTGF0ZXIgaW4gdGhlIHBhdGNoLApp
bXg4bXFfdXNiX3BoeV9ydW50aW1lX3N1c3BlbmQoKSBwdXRzIHRoZSByZWdtYXAgaW50byBjYWNo
ZS1vbmx5IG1vZGUuCldpdGggUkVHQ0FDSEVfTk9ORSwgYW55IGRlYnVnZnMgd3JpdGVzIHdoaWxl
IHN1c3BlbmRlZCB3aWxsIHJldHVybiBzdWNjZXNzLApidXQgdGhlIGRhdGEgaXMgc2lsZW50bHkg
ZGlzY2FyZGVkIGJlY2F1c2UgdGhlcmUgaXMgbm8gY2FjaGUgYmFja2luZyBpdC4KClsgLi4uIF0K
PiBAQCAtNzMxLDYgKzc1MCw5IEBAIHN0YXRpYyBpbnQgaW14OG1xX3VzYl9waHlfcnVudGltZV9z
dXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAJc3RydWN0IGlteDhtcV91c2JfcGh5
ICppbXhfcGh5ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gIAo+ICsJaWYgKGlteF9waHktPmNy
X3JlZ21hcCkKPiArCQlyZWdjYWNoZV9jYWNoZV9vbmx5KGlteF9waHktPmNyX3JlZ21hcCwgdHJ1
ZSk7Cj4gKwo+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteF9waHktPmFsdF9jbGspOwo+ICAJ
Y2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteF9waHktPmNsayk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBjYW4gdGhpcyBsZWFkIHRvIGEgY2xvY2sg
ZW5hYmxlX2NvdW50CnVuZGVyZmxvdyBvbiBkcml2ZXIgdW5iaW5kPwoKVGhlIGRyaXZlciBhY3F1
aXJlcyB0aGUgY2xvY2sgdXNpbmcgZGV2bV9jbGtfZ2V0X2VuYWJsZWQoKSBpbgppbXg4bXFfdXNi
X3BoeV9wcm9iZSgpLCBtZWFuaW5nIGRldm0gbWFuYWdlcyB0aGUgZW5hYmxlIHN0YXRlLiBIb3dl
dmVyLCBpdAptYW51YWxseSBkaXNhYmxlcyB0aGUgY2xvY2sgaGVyZSBkdXJpbmcgcnVudGltZSBz
dXNwZW5kLgoKSWYgdGhlIGRyaXZlciBpcyB1bmJvdW5kIHdoaWxlIHRoZSBkZXZpY2UgaXMgaW4g
dGhlIHJ1bnRpbWUgc3VzcGVuZGVkIHN0YXRlLAp0aGUgZGV2bSBjbGVhbnVwIGZ1bmN0aW9uIHdp
bGwgY2FsbCBjbGtfZGlzYWJsZV91bnByZXBhcmUoKSBhIHNlY29uZCB0aW1lIG9uCnRoZSBhbHJl
YWR5IGRpc2FibGVkIGNsb2NrLCBzaW5jZSB0aGVyZSBpcyBubyAucmVtb3ZlIGNhbGxiYWNrIHRv
IHJlc3VtZSB0aGUKZGV2aWNlIGZpcnN0LgoKPiBAQCAtNzUyLDYgKzc3NCw5IEBAIHN0YXRpYyBp
bnQgaW14OG1xX3VzYl9waHlfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJ
CXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+ICsJaWYgKGlteF9waHktPmNyX3JlZ21hcCkKPiArCQly
ZWdjYWNoZV9jYWNoZV9vbmx5KGlteF9waHktPmNyX3JlZ21hcCwgZmFsc2UpOwoKW1NldmVyaXR5
OiBNZWRpdW1dClNob3VsZCB0aGVyZSBiZSBhIHJlZ2NhY2hlX3N5bmMoKSBjYWxsIGhlcmUgYWZ0
ZXIgZGlzYWJsaW5nIGNhY2hlLW9ubHkgbW9kZT8KCklmIGEgdmFsaWQgY2FjaGUgdHlwZSBpcyBh
ZGRlZCB0byBpbXhfY3JfcmVnbWFwX2NvbmZpZywgdGhlIGNhY2hlIHdpbGwgbmVlZAp0byBiZSBz
eW5jaHJvbml6ZWQgaGVyZSB0byBmbHVzaCBhbnkgcGVuZGluZyBkaWFnbm9zdGljIHdyaXRlcyB0
byB0aGUgaGFyZHdhcmUKdGhhdCBvY2N1cnJlZCB3aGlsZSB0aGUgZGV2aWNlIHdhcyBzdXNwZW5k
ZWQuCgo+ICsKPiAgCXJldHVybiAwOwo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA1LWlteDhtcC11c2ItcGh5LWltcHJv
dmVtZW50LXY0LTAtYjJkZGYyZjM4NjJjQG54cC5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
