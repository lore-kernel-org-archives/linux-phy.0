Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC1F8E77188
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 01:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUX1SwQF5+d87hHeG8tLqhiGcFYEzXf1PvPfMcSPeGI=; b=x7CgrEnrqcZmyD
	bmxjaafpm4Wbw5hVoFJ6u/a3IiXUuvNogCuhH0huvX8tN2tQlosyeDg+edxF7h4SpdA82rgAtwHd3
	tMT+N6fdTpCMKAWU7HQj/qRERB24qHOw2jrEtxY/MryjiMqr4ddkq4qsAiFAOcO5ArPJVR6/GOirK
	JrhDAjv078XUV+HZCsL0pYslyf1l51Zff8g68NfPtLTdnQpvJV2pFctKll8PUu3ljl3jA4C1EgcTq
	p/q8TiQPwGw9fkkb3fHak4TboL43Mx1LdFEzdMjqpJ1Ami1rRQG5huqR3ekxcJSeCzPm/Asra2iWy
	+ChgFGZS0H7yegODsiNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTWad-0000000BqWL-27jL;
	Fri, 03 Jan 2025 01:35:03 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTWaZ-0000000BqVY-3UJ3
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 01:35:01 +0000
X-UUID: ed8adc32c97211efa216b1d71e6e1362-20250103
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:c3382fae-567a-4caa-93a4-1ec0ee6ea25a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:ce56c59af5b2dd20664c5f814e5e4394,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: ed8adc32c97211efa216b1d71e6e1362-20250103
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1929751659; Fri, 03 Jan 2025 09:34:52 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id CB8E716001CC7;
	Fri,  3 Jan 2025 09:34:51 +0800 (CST)
X-ns-mid: postfix-67773EBB-730810238
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id 3D2D416001CC7;
	Fri,  3 Jan 2025 01:34:46 +0000 (UTC)
Message-ID: <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn>
Date: Fri, 3 Jan 2025 09:34:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in
 fsl_samsung_hdmi_phy_configure_pll_lock_det
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
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_173500_172220_E135D154 
X-CRM114-Status: GOOD (  13.07  )
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

aGkgQWRhbSwKCuWcqCAyMDI1LzEvMiAyMzowNCwgQWRhbSBGb3JkIOWGmemBkzoKPiBPbiBUaHUs
IEphbiAyLCAyMDI1IGF0IDY6MTXigK9BTSBEb21pbmlxdWUgTWFydGluZXQKPiA8ZG9taW5pcXVl
Lm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPj4KPj4gQWRhbSBGb3JkIHdyb3Rl
IG9uIE1vbiwgRGVjIDMwLCAyMDI0IGF0IDA4OjExOjE2UE0gLTA2MDA6Cj4+Pj4gaW5kZXggNWVh
YzcwYTFlODU4Li4zZTRkMWE1MTYwZWEgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPj4+PiArKysgYi9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+Pj4+IEBAIC0zNDEsNyArMzQxLDcgQEAgZnNs
X3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1
bmdfaGRtaV9waHkgKnBoeSwKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+
PiAgICAgICAgIH0KPj4+Pgo+Pj4+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tf
RElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPj4+PiArICAgICAgIHdy
aXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgPT0gNCA/IGRpdiAtIDEgOiBk
aXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7Cj4+Pgo+Pj4gVGhlIGZvci1sb29wIGFib3Zl
IHRoaXMgbGluZSBzdGF0ZXM6ICAgZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYrKykKPj4+IEhv
dyBjb3VsZCB0aGlzIGV2ZXIgcmVhY2ggND8gIElmIGl0IGRpZCByZWFjaCA0LCB0aGUgY2FsY3Vs
YXRpb24gZm9yCj4+PiBpbnRfcGxsY2xrIHdvdWxkIG5lZWQgdG8gYmUgcmVjYWxjdWxhdGVkIHNp
bmNlIGludF9wbGxjbGsgPSBwY2xrIC8gKDEKPj4+IDw8IGRpdik7Cj4+Cj4+IEJ1dC4uLiBmb3Ig
KGRpdiA9IDA7IGRpdiA8IDQ7IGRpdisrKSBkb2VzIHJlYWNoIDQsIGlmIHRoZSBicmVhawo+PiBj
b25kaXRpb24gZGlkbid0IG1hdGNoLCB3aGljaCBpcyBzb21ldGhpbmcgdGhlIGNvbXBpbGVyIGNh
bm5vdCBlbnN1cmUKPj4gaGVyZS4KPj4KPj4gVGhlIG9sZCBjb2RlIHdvdWxkIGp1c3QgZmFsbCBv
dXQgb2YgYW55IG9mIHRoZSBzd2l0Y2ggY2FzZXMgYW5kIGZhbGxiYWNrCj4+IHRvIGRpdiA9IDEg
aWYgcGl4Y2xrID4gMjk3MDAwMDAwLCB3aGljaCBpcyBsaWtlbHkgaW5jb3JyZWN0LCBzbyBpbiB0
aGF0Cj4+IHNlbnNlIGp1c3QgcGFkZGluZyB0aGlzIHRocm91Z2ggYCYgM2AgYW5kIHByZXRlbmRp
bmcgaXQgd2lsbCBuZXZlcgo+PiBoYXBwZW4gaXMgcHJvYmFibHkgYWNjZXB0YWJsZSwgYnV0IHRo
aXMgb3VnaHQgdG8gaGF2ZSBhIGJldHRlciBjb21tZW50Cj4+IHRoYW4gd2hhdCBQZWkganVzdCBz
ZW50Lgo+IAo+IE1heWJlIHdlIHVzZSB0aGUgTUFYIGZ1bmN0aW9uIHRvIHNldCBkaXYgPSBtYXgo
ZGl2LDMpOwpkbyB5b3UgbWVhbjoKd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ss
IG1pbihkaXYsIDMpKSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOyAKPj4gKHRoaXMgd2FzIGNv
cnJlY3Qgd2l0aCB0aGUgb2xkIGxvb2t1cCB0YWJsZXMsIEknbSBub3Qgc3VyZSBpZiB3ZSBjYW4n
dAo+PiBjb21wdXRlIGFueSBoaWdoZXIgZnJlcXVlbmNpZXMgbm93PykKPj4KPj4gTXkgcHJlZmVy
ZW5jZSB3b3VsZCBiZSB0byBhY3R1YWxseSBjaGVjayBhbmQgaGFuZGxlIHRoaXMgc29tZWhvdyBz
aW5jZSBJCj4+IGRvbid0IHRoaW5rIHRoaXMgcGFydCBvZiB0aGUgY29kZSBpcyB0aGF0IHBlcmZv
cm1hbmNlIGNyaXRpY2FsIHRoYXQgd2UKPj4gY2FuJ3QgYWZmb3JkIGFuIGV4dHJhIGluc3RydWN0
aW9uLCBlLmcuIHNvbWV0aGluZyBsaWtlIHRoYXQ6Cj4+IGlmIChXQVJOX09OQ0UoZGl2ID09IDQs
ICJwaXhjbGsgJXUgb3V0IG9mIHJhbmdlIiwgcGNsaykpCj4+ICAgICAgICAgKGFwcHJvcHJpYXRl
IGZhbGxiYWNrIG9yIHJldHVybj8pCj4+Cj4+IGJ1dCBJIGhhdmVuJ3Qgc3BlbnQgdGhlIHRpbWUg
dG8gYWN0dWFsbHkgY2hlY2sgc28gd2lsbCBsZWF2ZSB0aGF0IHVwIHRvCj4+IHlvdS4KPj4KPj4g
VGhhbmsgeW91IGJvdGgsCj4+IC0tCj4+IERvbWluaXF1ZQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
