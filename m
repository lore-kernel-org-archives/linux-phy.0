Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EAAC55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 09:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEINcXDfA/SDWK6iLwn1SoePHsScJG/E2OLlPLkyaog=; b=0FXaErnjFACPcC
	Fp/JpHfvU00ZIhggflS2PryZGfOiAqxFqDMEmXSSUo691qP0tLJ3N4XG2LWhGnCYMSoXvLUXmbv8H
	8SpY4d9HfHWp+oIqaHPUueipOP/sYDbe97LtVGmegOI395xv3gzEE1S4HYIrYYcozhI9/9HOG3uQY
	/P/GlXUXdeKJ2cUML2vkRX4/Jes3Ls4AS1Z53LPx/HIGSZIGqtsMhR5kjAtGluJWDFMQv1coOCnV+
	0QnnrCmlnB/oiaRJfPfqKeNnMxmAlwYo8QtSbbFuMxEx5o9ebAqdZRR8KTUKt7H5wFs0rD2iXDauB
	qhAGU+3codHotIy4bZDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrB5R-00000001PdE-0IDq;
	Tue, 04 Aug 2026 09:05:25 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrB5N-00000001PcV-4Bn1
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 09:05:23 +0000
X-UUID: 9bb021868fe311f1aa26b74ffac11d73-20260804
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:19c4fdb4-4b10-464d-99e1-ff321468d59a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:4f3a03141d7c79f92dc26ff513a7e1b0,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102|865|898,TC:nil,Content:0
	|15|52,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,O
	SI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 9bb021868fe311f1aa26b74ffac11d73-20260804
X-User: xiaopei01@kylinos.cn
Received: from [10.42.12.251] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 1641223646; Tue, 04 Aug 2026 17:05:15 +0800
Message-ID: <63160e2f-8566-4a2f-b0fe-ba97603df78b@kylinos.cn>
Date: Tue, 4 Aug 2026 17:05:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Fix use-after-free in
 rcar_gen3_phy_usb2_remove due to race condition
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <d265021fb7fe432e32eedbe9e075fb041c15cbe6.1785830417.git.xiaopei01@kylinos.cn>
 <TY3PR01MB1134664317D6A75D8230DB51B86D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <TY3PR01MB1134664317D6A75D8230DB51B86D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_020522_364316_4BA347D5 
X-CRM114-Status: GOOD (  19.19  )
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

CgrlnKggMjAyNi84LzQgMTY6MzQsIEJpanUgRGFzIOWGmemBkzoKPiBIaSBQZWkgWGlhbywKPiAK
PiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0K
Pj4gRnJvbTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPgo+PiBTZW50OiAwNCBBdWd1
c3QgMjAyNiAwOTowMgo+PiBTdWJqZWN0OiBbUEFUQ0hdIHBoeTogcmVuZXNhczogcmNhci1nZW4z
LXVzYjI6IEZpeCB1c2UtYWZ0ZXItZnJlZSBpbiByY2FyX2dlbjNfcGh5X3VzYjJfcmVtb3ZlIGR1
ZSB0bwo+PiByYWNlIGNvbmRpdGlvbgo+Pgo+PiBJbiByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUs
ICZjaGFubmVsLT53b3JrIGlzIGJvdW5kIHdpdGggcmNhcl9nZW4zX3BoeV91c2IyX3dvcmsuIHJj
YXJfZ2VuM19waHlfdXNiMl9pcnEKPj4gY2FuIHNjaGVkdWxlIHRoaXMgd29yayBvbiBzeXN0ZW1f
d3EgdmlhIHJjYXJfZ2VuM19kZXZpY2VfcmVjb2duaXRpb24oKSwgYW5kIHRoZSByb2xlIHN5c2Zz
IHN0b3JlIGNhbiBhbHNvCj4+IHNjaGVkdWxlIGl0IHZpYSByY2FyX2dlbjNfaW5pdF9mb3JfaG9z
dCgpIC8gcmNhcl9nZW4zX2luaXRfZm9yX3BlcmkoKS4KPj4KPj4gSWYgd2UgcmVtb3ZlIHRoZSBk
ZXZpY2UsIHJjYXJfZ2VuM19waHlfdXNiMl9yZW1vdmUgbWFrZXMgY2xlYW51cCBhbmQgdGhlIG1l
bW9yeSBhbGxvY2F0ZWQgZm9yIGNoYW5uZWwKPj4gd2l0aCBkZXZtX2t6YWxsb2MoKSBpcyByZWxl
YXNlZCBieSB0aGUgZGV2bSBjbGVhbnVwIGFmdGVyIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJu
cywgd2hpbGUgdGhlIHdvcmsKPj4gbWVudGlvbmVkIGFib3ZlIG1heSBzdGlsbCBiZSBwZW5kaW5n
IG9yIHJ1bm5pbmcuIFRoZSBzZXF1ZW5jZSBvZiBvcGVyYXRpb25zIHRoYXQgbWF5IGxlYWQgdG8g
YSBVQUYgYnVnIGlzCj4+IGFzIGZvbGxvd3M6Cj4+Cj4+IENQVTAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIENQVTEKPj4KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCByY2FyX2dlbjNfcGh5X3VzYjJfaXJxCj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgcmNhcl9nZW4zX2RldmljZV9yZWNvZ25pdGlv
bgo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IHJjYXJfZ2Vu
M19pbml0X2Zvcl9ob3N0Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgc2NoZWR1bGVfd29yaygmY2gtPndvcmspCj4+IHJjYXJfZ2VuM19waHlfdXNiMl9yZW1v
dmUgICAgICAgICAgICAgICAgIHwKPj4gZGV2aWNlX3JlbW92ZV9maWxlKCZwZGV2LT5kZXYsICAg
ICAgICAgICAgfAo+PiAgICAgICAgICAgICAgICAgICAgJmRldl9hdHRyX3JvbGUpICAgICAgICB8
Cj4+IC8vIHJlbW92ZSByZXR1cm5zICAgICAgICAgICAgICAgICAgICAgICAgIHwKPj4gLy8gZGV2
bSBjbGVhbnVwOiBmcmVlX2lycSwgICAgICAgICAgICAgICAgfAo+PiAvLyBrZnJlZShjaGFubmVs
KSAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgcmNhcl9nZW4zX3BoeV91c2IyX3dvcmsKPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAvLyB1c2UgY2ggKHVzZS1hZnRlci1mcmVl
KQo+Pgo+PiBGaXggaXQgYnkgZGlzYWJsaW5nIHRoZSBPVEcgaW50ZXJydXB0cywgc28gdGhlIElS
USBoYW5kbGVyIGNhbm5vdCBzY2hlZHVsZSBuZXcgd29yaywgYW5kIGNhbmNlbGluZyB0aGUKPj4g
d29yayBiZWZvcmUgdGhlIHJlbWFpbmluZyBjbGVhbnVwIGluIHJjYXJfZ2VuM19waHlfdXNiMl9y
ZW1vdmUgYW5kIHRoZSBkZXZtIHJlbGVhc2Ugb2YgY2hhbm5lbC4KPj4KPj4gRml4ZXM6IGMxNGY4
YTQwMzJlZiAoInBoeTogcmNhci1nZW4zLXVzYjI6IGZpeCBtdXRleF9sb2NrIGNhbGxpbmcgaW4g
aW50ZXJydXB0IikKPj4gQXNzaXN0ZWQtYnk6IENvZGV4OmRlZXBzZWVrLXY0LWZsYXNoCj4+IFNp
Z25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPj4gLS0tCj4+ICBk
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIHwgMTAgKysrKysrKysrLQo+
PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyBiL2Ry
aXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4gaW5kZXggOWE0NWQ4NDBl
ZmViLi5mYTBlNjgwYTRiOTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5
LXJjYXItZ2VuMy11c2IyLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+PiBAQCAtMTA2Nyw4ICsxMDY3LDE2IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2Vu
M19waHlfdXNiMl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgIHsKPj4gIAlz
dHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoYW5uZWwgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsKPj4KPj4gLQlpZiAoY2hhbm5lbC0+aXNfb3RnX2NoYW5uZWwpCj4+ICsJaWYgKGNoYW5uZWwt
PmlzX290Z19jaGFubmVsKSB7Cj4+ICsJCS8qIERpc2FibGUgT1RHIGludGVycnVwdHMgc28gdGhl
IElSUSBoYW5kbGVyIGNhbm5vdAo+PiArCQkgKiBzY2hlZHVsZSBuZXcgd29yay4KPj4gKwkJICov
Cj4+ICsJCXJjYXJfZ2VuM19jb250cm9sX290Z19pcnEoY2hhbm5lbCwgMCk7Cj4+ICsKPj4gIAkJ
ZGV2aWNlX3JlbW92ZV9maWxlKCZwZGV2LT5kZXYsICZkZXZfYXR0cl9yb2xlKTsKPj4gKwo+PiAr
CQljYW5jZWxfd29ya19zeW5jKCZjaGFubmVsLT53b3JrKTsKPiAKPiBXaGF0IGFib3V0IHBlbmRp
bmcgd3EgdGhhdCBpcyBzdGlsbCBhYm91dCBleGVjdXRlIGFmdGVyCj4gImRldmljZV9yZW1vdmVf
ZmlsZSgmcGRldi0+ZGV2LCAmZGV2X2F0dHJfcm9sZSk7IiA/CkhpIEJpanUsCiAgSSBkb24ndCB1
bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4uIGNhbmNlbF93b3JrX3N5bmMgaXMgZXhhY3RseSB3aGF0
CmNhdGNoZXMgdGhpcyBraW5kIG9mIHBlbmRpbmcgd29yayDigJQgaXQgZWl0aGVyIGNhbmNlbHMg
dGhlIHdvcmsgdGhhdApoYXNuJ3QgcnVuIHlldCwgb3Igd2FpdHMgZm9yIHRoZSBvbmUgdGhhdCBp
cyBjdXJyZW50bHkgcnVubmluZyB0bwpmaW5pc2gsIGFuZCBpdCBpcyBwbGFjZWQgcmlnaHQuCiBD
b3VsZCB5b3UgZXhwbGFpbiBpdCBpbiBtb3JlIGRldGFpbD8KClRoYW5rc++8gQpQZWkuCgogID4g
YWZ0ZXIgZGV2aWNlX3JlbW92ZV9maWxlLgoKPiBDaGVlcnMsCj4gQmlqdQo+IAo+PiArCX0KPj4g
IH0KPj4KPj4gIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+PiAtLQo+PiAyLjI1LjEKPj4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
