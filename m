Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D3EC55172
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 09:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ngm/SA7AACIMNt/JRlhJiHWlcVki8J/I8opaYl65sI=; b=yehhm2erxKFh85
	9jbpgbTT3z+IaYHo+9JC4t9XviM8K0rZz59zyr2NNpU88hrru2XJ3W15r9wrJ4MVRlAjhMBvu0vmL
	kpQrdQC2A1540VquvRiCiatRL0BYh6HbNfAw1WJjdemkN0LMi0K+xe0aOpm1L9S0W2dWaLU3pbSyA
	7wGd1OWIvtMSHDF1hMn4+wDT0lSjcwejMm2MkZPaNZq1gGoig9phZt6R81DhzsgDjqa2DacFdHobQ
	sGKB/ONZ+obIW6DdL+u40WYAovqqGRn4Nz/XCBIId1nVTzyLqqOTOSLzA9FhZlqjYG6u4pd85s+AT
	3f2/8VotL//0ZMBRW1Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrBU3-00000001Rk0-2IrE;
	Tue, 04 Aug 2026 09:30:51 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrBTz-00000001Rio-3iFf
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 09:30:50 +0000
X-UUID: 275d692a8fe711f1aa26b74ffac11d73-20260804
X-CID-CACHE: Type:Local,Time:202608041705+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:26563bed-3b8b-41a4-97fb-4bafefa6e28e,IP:0,U
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
X-UUID: 275d692a8fe711f1aa26b74ffac11d73-20260804
X-User: xiaopei01@kylinos.cn
Received: from [10.42.12.251] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 809947026; Tue, 04 Aug 2026 17:30:38 +0800
Message-ID: <c1449f71-b516-4184-b224-052d2e0a46e6@kylinos.cn>
Date: Tue, 4 Aug 2026 17:30:35 +0800
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
 <63160e2f-8566-4a2f-b0fe-ba97603df78b@kylinos.cn>
 <TY3PR01MB1134613500284ECC47AE1B1D686D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <TY3PR01MB1134613500284ECC47AE1B1D686D42@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_023048_614126_F02BFAF5 
X-CRM114-Status: GOOD (  20.16  )
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

CgrlnKggMjAyNi84LzQgMTc6MDgsIEJpanUgRGFzIOWGmemBkzoKPiAKPiAKPj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNu
Pgo+PiBTZW50OiAwNCBBdWd1c3QgMjAyNiAxMDowNQo+PiBUbzogQmlqdSBEYXMgPGJpanUuZGFz
Lmp6QGJwLnJlbmVzYXMuY29tPjsgWW9zaGloaXJvIFNoaW1vZGEgPHlvc2hpaGlyby5zaGltb2Rh
LnVoQHJlbmVzYXMuY29tPjsKPj4gdmtvdWxAa2VybmVsLm9yZzsgbmVpbC5hcm1zdHJvbmdAbGlu
YXJvLm9yZzsgZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU7IG1hZ251cy5kYW1tCj4+IDxtYWdudXMu
ZGFtbUBnbWFpbC5jb20+OyBsaW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC0KPj4ga2VybmVsQHZnZXIua2VybmVsLm9y
Zwo+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBwaHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBG
aXggdXNlLWFmdGVyLWZyZWUgaW4gcmNhcl9nZW4zX3BoeV91c2IyX3JlbW92ZSBkdWUgdG8KPj4g
cmFjZSBjb25kaXRpb24KPj4KPj4KPj4KPj4g5ZyoIDIwMjYvOC80IDE2OjM0LCBCaWp1IERhcyDl
hpnpgZM6Cj4+PiBIaSBQZWkgWGlhbywKPj4+Cj4+PiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPj4+
Cj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+PiBGcm9tOiBQZWkgWGlhbyA8eGlh
b3BlaTAxQGt5bGlub3MuY24+Cj4+Pj4gU2VudDogMDQgQXVndXN0IDIwMjYgMDk6MDIKPj4+PiBT
dWJqZWN0OiBbUEFUQ0hdIHBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IEZpeCB1c2UtYWZ0
ZXItZnJlZSBpbgo+Pj4+IHJjYXJfZ2VuM19waHlfdXNiMl9yZW1vdmUgZHVlIHRvIHJhY2UgY29u
ZGl0aW9uCj4+Pj4KPj4+PiBJbiByY2FyX2dlbjNfcGh5X3VzYjJfcHJvYmUsICZjaGFubmVsLT53
b3JrIGlzIGJvdW5kIHdpdGgKPj4+PiByY2FyX2dlbjNfcGh5X3VzYjJfd29yay4gcmNhcl9nZW4z
X3BoeV91c2IyX2lycSBjYW4gc2NoZWR1bGUgdGhpcwo+Pj4+IHdvcmsgb24gc3lzdGVtX3dxIHZp
YSByY2FyX2dlbjNfZGV2aWNlX3JlY29nbml0aW9uKCksIGFuZCB0aGUgcm9sZSBzeXNmcyBzdG9y
ZSBjYW4gYWxzbyBzY2hlZHVsZSBpdAo+PiB2aWEgcmNhcl9nZW4zX2luaXRfZm9yX2hvc3QoKSAv
IHJjYXJfZ2VuM19pbml0X2Zvcl9wZXJpKCkuCj4+Pj4KPj4+PiBJZiB3ZSByZW1vdmUgdGhlIGRl
dmljZSwgcmNhcl9nZW4zX3BoeV91c2IyX3JlbW92ZSBtYWtlcyBjbGVhbnVwIGFuZAo+Pj4+IHRo
ZSBtZW1vcnkgYWxsb2NhdGVkIGZvciBjaGFubmVsIHdpdGggZGV2bV9remFsbG9jKCkgaXMgcmVs
ZWFzZWQgYnkKPj4+PiB0aGUgZGV2bSBjbGVhbnVwIGFmdGVyIHRoZSByZW1vdmUgY2FsbGJhY2sg
cmV0dXJucywgd2hpbGUgdGhlIHdvcmsKPj4+PiBtZW50aW9uZWQgYWJvdmUgbWF5IHN0aWxsIGJl
IHBlbmRpbmcgb3IgcnVubmluZy4gVGhlIHNlcXVlbmNlIG9mIG9wZXJhdGlvbnMgdGhhdCBtYXkg
bGVhZCB0byBhIFVBRiBidWcKPj4gaXMgYXMgZm9sbG93czoKPj4+Pgo+Pj4+IENQVTAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENQVTEKPj4+Pgo+Pj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgcmNhcl9nZW4zX3BoeV91c2IyX2lycQo+
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgcmNhcl9nZW4z
X2RldmljZV9yZWNvZ25pdGlvbgo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgcmNhcl9nZW4zX2luaXRfZm9yX2hvc3QKPj4+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IHNjaGVkdWxlX3dvcmsoJmNoLT53b3JrKQo+Pj4+
IHJjYXJfZ2VuM19waHlfdXNiMl9yZW1vdmUgICAgICAgICAgICAgICAgIHwKPj4+PiBkZXZpY2Vf
cmVtb3ZlX2ZpbGUoJnBkZXYtPmRldiwgICAgICAgICAgICB8Cj4+Pj4gICAgICAgICAgICAgICAg
ICAgICZkZXZfYXR0cl9yb2xlKSAgICAgICAgfAo+Pj4+IC8vIHJlbW92ZSByZXR1cm5zICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKPj4+PiAvLyBkZXZtIGNsZWFudXA6IGZyZWVfaXJxLCAgICAg
ICAgICAgICAgICB8Cj4+Pj4gLy8ga2ZyZWUoY2hhbm5lbCkgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgcmNh
cl9nZW4zX3BoeV91c2IyX3dvcmsKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IC8vIHVzZSBjaAo+Pj4+ICh1c2UtYWZ0ZXItZnJlZSkKPj4+Pgo+Pj4+IEZp
eCBpdCBieSBkaXNhYmxpbmcgdGhlIE9URyBpbnRlcnJ1cHRzLCBzbyB0aGUgSVJRIGhhbmRsZXIg
Y2Fubm90Cj4+Pj4gc2NoZWR1bGUgbmV3IHdvcmssIGFuZCBjYW5jZWxpbmcgdGhlIHdvcmsgYmVm
b3JlIHRoZSByZW1haW5pbmcgY2xlYW51cCBpbiByY2FyX2dlbjNfcGh5X3VzYjJfcmVtb3ZlCj4+
IGFuZCB0aGUgZGV2bSByZWxlYXNlIG9mIGNoYW5uZWwuCj4+Pj4KPj4+PiBGaXhlczogYzE0Zjhh
NDAzMmVmICgicGh5OiByY2FyLWdlbjMtdXNiMjogZml4IG11dGV4X2xvY2sgY2FsbGluZyBpbgo+
Pj4+IGludGVycnVwdCIpCj4+Pj4gQXNzaXN0ZWQtYnk6IENvZGV4OmRlZXBzZWVrLXY0LWZsYXNo
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNuPgo+Pj4+
IC0tLQo+Pj4+ICBkcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIHwgMTAg
KysrKysrKysrLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNh
ci1nZW4zLXVzYjIuYwo+Pj4+IGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVz
YjIuYwo+Pj4+IGluZGV4IDlhNDVkODQwZWZlYi4uZmEwZTY4MGE0YjkxIDEwMDY0NAo+Pj4+IC0t
LSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4+PiArKysgYi9k
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4+Pj4gQEAgLTEwNjcsOCAr
MTA2NywxNiBAQCBzdGF0aWMgdm9pZCByY2FyX2dlbjNfcGh5X3VzYjJfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpICB7Cj4+Pj4gIAlzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNo
YW5uZWwgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPj4+Pgo+Pj4+IC0JaWYgKGNoYW5u
ZWwtPmlzX290Z19jaGFubmVsKQo+Pj4+ICsJaWYgKGNoYW5uZWwtPmlzX290Z19jaGFubmVsKSB7
Cj4+Pj4gKwkJLyogRGlzYWJsZSBPVEcgaW50ZXJydXB0cyBzbyB0aGUgSVJRIGhhbmRsZXIgY2Fu
bm90Cj4+Pj4gKwkJICogc2NoZWR1bGUgbmV3IHdvcmsuCj4+Pj4gKwkJICovCj4+Pj4gKwkJcmNh
cl9nZW4zX2NvbnRyb2xfb3RnX2lycShjaGFubmVsLCAwKTsKPj4+PiArCj4+Pj4gIAkJZGV2aWNl
X3JlbW92ZV9maWxlKCZwZGV2LT5kZXYsICZkZXZfYXR0cl9yb2xlKTsKPj4+PiArCj4+Pj4gKwkJ
Y2FuY2VsX3dvcmtfc3luYygmY2hhbm5lbC0+d29yayk7Cj4+Pgo+Pj4gV2hhdCBhYm91dCBwZW5k
aW5nIHdxIHRoYXQgaXMgc3RpbGwgYWJvdXQgZXhlY3V0ZSBhZnRlcgo+Pj4gImRldmljZV9yZW1v
dmVfZmlsZSgmcGRldi0+ZGV2LCAmZGV2X2F0dHJfcm9sZSk7IiA/Cj4+IEhpIEJpanUsCj4+ICAg
SSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4uIGNhbmNlbF93b3JrX3N5bmMgaXMgZXhh
Y3RseSB3aGF0IGNhdGNoZXMgdGhpcyBraW5kIG9mIHBlbmRpbmcgd29yayDigJQKPj4gaXQgZWl0
aGVyIGNhbmNlbHMgdGhlIHdvcmsgdGhhdCBoYXNuJ3QgcnVuIHlldCwgb3Igd2FpdHMgZm9yIHRo
ZSBvbmUgdGhhdCBpcyBjdXJyZW50bHkgcnVubmluZyB0byBmaW5pc2gsCj4+IGFuZCBpdCBpcyBw
bGFjZWQgcmlnaHQuCj4+ICBDb3VsZCB5b3UgZXhwbGFpbiBpdCBpbiBtb3JlIGRldGFpbD8KPiAK
PiBBc3N1bWUgeW91IHJlbW92ZWQgdGhlIGZpbGUsIGFuZCBiZWZvcmUgY2FuY2VsX3dvcmtfc3lu
YygpLCB0aGUgV1EgZ2V0IHNjaGVkdWxlZAo+IHdpbGwgaXQgcmVzdWx0IGluIFVBRiBidWcgbWVu
dGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPiAKVGhlIHJjYXJfZ2VuM19waHlfdXNiMl93
b3JrIG9ubHkgdXNlcyBjaGFuLiBJZiB5b3UgY2FsbApkZXZpY2VfcmVtb3ZlX2ZpbGUoJnBkZXYt
PmRldiwgJmRldl9hdHRyX3JvbGUpIGJlZm9yZQpjYW5jZWxfd29ya19zeW5jKCZjaGFubmVsLT53
b3JrKSwgaXQgZG9lcyBub3QgbGVhZCB0byBhIFVBRi4KCk9uIHRoZSBjb250cmFyeSwgaWYgeW91
IGNhbGwgY2FuY2VsX3dvcmtfc3luYygmY2hhbm5lbC0+d29yaykgZmlyc3QsIHRoZQpzeXNmcyBu
b2RlIGhhcyBub3QgYmVlbiByZW1vdmVkIHlldC4gV2hlbiB0aGUgc3lzZnMgbm9kZSBpcyB3cml0
dGVuIHRvCih2aWEgc3RvcmUpIGFnYWluLCBpdCB3aWxsIHNjaGVkdWxlIHRoZSB3b3JrIG9uY2Ug
bW9yZSwgcmVuZGVyaW5nIHRoZQpjYW5jZWxfd29ya19zeW5jIGNhbGwgaW5lZmZlY3RpdmUuCj4g
TWF5YmU/Pwo+IAo+IHJjYXJfZ2VuM19jb250cm9sX290Z19pcnEoY2hhbm5lbCwgMCk7Cj4gY2Fu
Y2VsX3dvcmtfc3luYygmY2hhbm5lbC0+d29yayk7Cj4gZGV2aWNlX3JlbW92ZV9maWxlKCZwZGV2
LT5kZXYsICZkZXZfYXR0cl9yb2xlKTsKPiAKPiBDaGVlcnMsCj4gQmlqdQo+IAo+IAo+IAo+IAo+
Pgo+PiBUaGFua3PvvIEKPj4gUGVpLgo+Pgo+PiAgID4gYWZ0ZXIgZGV2aWNlX3JlbW92ZV9maWxl
Lgo+Pgo+Pj4gQ2hlZXJzLAo+Pj4gQmlqdQo+Pj4KPj4+PiArCX0KPj4+PiAgfQo+Pj4+Cj4+Pj4g
IHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2
KQo+Pj4+IC0tCj4+Pj4gMi4yNS4xCj4+Pj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
