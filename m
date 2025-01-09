Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C99E77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 08:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1deyrOFyF+CpQQyc96aqdjz+XNPvfko483i8SRVnNj8=; b=lbJ2qvG8eBLnbq
	Jh8TBFnyeSe0u6PueX9DivJB80M2Na53tv487fXLqW1ku6VBhRaVYjfD4e6B5aO40U3ldyQhPIouN
	aTZGD6cunju59M62LVaNRLfxmBrYKMpyIN0eURJETX0mKbFyE9vfh6/xpgjBloxo+VEFyMqeplklS
	yhN2L6x9M6Cz3X8YQ1Pg6kzLZyeA3FnlnYf53y1iQo43XgLdpVVrUb3WWzKnOlwO0a7VOd5BPE7Jz
	+g0wkVdtX4cTq8zGbA3EJ1rW+pWRG1SIMCQS1E62hAFMNZO50K34NzyHpzu6/+bcu1wloDuMRA1vs
	QuWJZK0gaNduvVLVmfoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVoAo-0000000BDHj-1z6f;
	Thu, 09 Jan 2025 08:45:50 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVoAm-0000000BDHP-05Dm
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 08:45:49 +0000
X-UUID: 1ca38b34ce6611efa216b1d71e6e1362-20250109
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:5f7346f3-81d8-4bd6-bf28-a810989c540d,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:fb374a9b2398e9c74934e3ffe924b5b4,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 1ca38b34ce6611efa216b1d71e6e1362-20250109
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1417979268; Thu, 09 Jan 2025 16:45:43 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id 34D2516002081;
	Thu,  9 Jan 2025 16:45:43 +0800 (CST)
X-ns-mid: postfix-677F8CB7-1119601058
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id 314C716002081;
	Thu,  9 Jan 2025 08:45:39 +0000 (UTC)
Message-ID: <671f844e-58af-47f3-8c31-776bb41413f2@kylinos.cn>
Date: Thu, 9 Jan 2025 16:45:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in
 fsl_samsung_hdmi_phy_configure_pll_lock_det
From: Pei Xiao <xiaopei01@kylinos.cn>
To: Adam Ford <aford173@gmail.com>,
 Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: geert@linux-m68k.org, aford@beaconembedded.com, arnd@arndb.de,
 frieder.schrempf@kontron.de, kishon@kernel.org, l.stach@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 m.felsch@pengutronix.de, sandor.yu@nxp.com, u.kleine-koenig@baylibre.com,
 vkoul@kernel.org
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
 <Z3aDU_dhfgEHlL4u@atmark-techno.com>
 <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
 <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn>
In-Reply-To: <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_004548_427167_2B87CDB5 
X-CRM114-Status: GOOD (  11.70  )
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

CuWcqCAyMDI1LzEvMyAwOTozNCwgUGVpIFhpYW8g5YaZ6YGTOgo+IGhpIEFkYW0sCj4KPiDlnKgg
MjAyNS8xLzIgMjM6MDQsIEFkYW0gRm9yZCDlhpnpgZM6Cj4+IE9uIFRodSwgSmFuIDIsIDIwMjUg
YXQgNjoxNeKAr0FNIERvbWluaXF1ZSBNYXJ0aW5ldAo+PiA8ZG9taW5pcXVlLm1hcnRpbmV0QGF0
bWFyay10ZWNobm8uY29tPiB3cm90ZToKPj4+IEFkYW0gRm9yZCB3cm90ZSBvbiBNb24sIERlYyAz
MCwgMjAyNCBhdCAwODoxMToxNlBNIC0wNjAwOgo+Pj4+PiBpbmRleCA1ZWFjNzBhMWU4NTguLjNl
NGQxYTUxNjBlYSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtc2Ftc3VuZy1oZG1pLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtc2Ftc3VuZy1oZG1pLmMKPj4+Pj4gQEAgLTM0MSw3ICszNDEsNyBAQCBmc2xfc2Ftc3VuZ19o
ZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3Bo
eSAqcGh5LAo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+Pj4gICAgICAg
ICB9Cj4+Pj4+Cj4+Pj4+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01B
U0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPj4+Pj4gKyAgICAgICB3cml0ZWIo
RklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2ID09IDQgPyBkaXYgLSAxIDogZGl2KSwg
cGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwo+Pj4+IFRoZSBmb3ItbG9vcCBhYm92ZSB0aGlzIGxp
bmUgc3RhdGVzOiAgIGZvciAoZGl2ID0gMDsgZGl2IDwgNDsgZGl2KyspCj4+Pj4gSG93IGNvdWxk
IHRoaXMgZXZlciByZWFjaCA0PyAgSWYgaXQgZGlkIHJlYWNoIDQsIHRoZSBjYWxjdWxhdGlvbiBm
b3IKPj4+PiBpbnRfcGxsY2xrIHdvdWxkIG5lZWQgdG8gYmUgcmVjYWxjdWxhdGVkIHNpbmNlIGlu
dF9wbGxjbGsgPSBwY2xrIC8gKDEKPj4+PiA8PCBkaXYpOwo+Pj4gQnV0Li4uIGZvciAoZGl2ID0g
MDsgZGl2IDwgNDsgZGl2KyspIGRvZXMgcmVhY2ggNCwgaWYgdGhlIGJyZWFrCj4+PiBjb25kaXRp
b24gZGlkbid0IG1hdGNoLCB3aGljaCBpcyBzb21ldGhpbmcgdGhlIGNvbXBpbGVyIGNhbm5vdCBl
bnN1cmUKPj4+IGhlcmUuCj4+Pgo+Pj4gVGhlIG9sZCBjb2RlIHdvdWxkIGp1c3QgZmFsbCBvdXQg
b2YgYW55IG9mIHRoZSBzd2l0Y2ggY2FzZXMgYW5kIGZhbGxiYWNrCj4+PiB0byBkaXYgPSAxIGlm
IHBpeGNsayA+IDI5NzAwMDAwMCwgd2hpY2ggaXMgbGlrZWx5IGluY29ycmVjdCwgc28gaW4gdGhh
dAo+Pj4gc2Vuc2UganVzdCBwYWRkaW5nIHRoaXMgdGhyb3VnaCBgJiAzYCBhbmQgcHJldGVuZGlu
ZyBpdCB3aWxsIG5ldmVyCj4+PiBoYXBwZW4gaXMgcHJvYmFibHkgYWNjZXB0YWJsZSwgYnV0IHRo
aXMgb3VnaHQgdG8gaGF2ZSBhIGJldHRlciBjb21tZW50Cj4+PiB0aGFuIHdoYXQgUGVpIGp1c3Qg
c2VudC4KPj4gTWF5YmUgd2UgdXNlIHRoZSBNQVggZnVuY3Rpb24gdG8gc2V0IGRpdiA9IG1heChk
aXYsMyk7Cj4gZG8geW91IG1lYW46Cj4gd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01B
U0ssIG1pbihkaXYsIDMpKSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOyAKCkRvZXMgYW55b25l
IGhhdmUgYW55IHN1Z2dlc3Rpb25zP8KgCgpUaGlzIGNvbXBpbGF0aW9uIGlzc3VlIHdpbGwgcmVz
dWx0IGluIGVycm9ycyBvbiBzb21lIHZlcnNpb25zIG9mIGdjYyzCoAoKc28gaXQgc3RpbGwgbmVl
ZHMgdG8gYmUgcmVzb2x2ZWQgYWZ0ZXIgYWxsLgoKPj4+ICh0aGlzIHdhcyBjb3JyZWN0IHdpdGgg
dGhlIG9sZCBsb29rdXAgdGFibGVzLCBJJ20gbm90IHN1cmUgaWYgd2UgY2FuJ3QKPj4+IGNvbXB1
dGUgYW55IGhpZ2hlciBmcmVxdWVuY2llcyBub3c/KQo+Pj4KPj4+IE15IHByZWZlcmVuY2Ugd291
bGQgYmUgdG8gYWN0dWFsbHkgY2hlY2sgYW5kIGhhbmRsZSB0aGlzIHNvbWVob3cgc2luY2UgSQo+
Pj4gZG9uJ3QgdGhpbmsgdGhpcyBwYXJ0IG9mIHRoZSBjb2RlIGlzIHRoYXQgcGVyZm9ybWFuY2Ug
Y3JpdGljYWwgdGhhdCB3ZQo+Pj4gY2FuJ3QgYWZmb3JkIGFuIGV4dHJhIGluc3RydWN0aW9uLCBl
LmcuIHNvbWV0aGluZyBsaWtlIHRoYXQ6Cj4+PiBpZiAoV0FSTl9PTkNFKGRpdiA9PSA0LCAicGl4
Y2xrICV1IG91dCBvZiByYW5nZSIsIHBjbGspKQo+Pj4gICAgICAgICAoYXBwcm9wcmlhdGUgZmFs
bGJhY2sgb3IgcmV0dXJuPykKPj4+Cj4+PiBidXQgSSBoYXZlbid0IHNwZW50IHRoZSB0aW1lIHRv
IGFjdHVhbGx5IGNoZWNrIHNvIHdpbGwgbGVhdmUgdGhhdCB1cCB0bwo+Pj4geW91Lgo+Pj4KPj4+
IFRoYW5rIHlvdSBib3RoLAo+Pj4gLS0KPj4+IERvbWluaXF1ZQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
