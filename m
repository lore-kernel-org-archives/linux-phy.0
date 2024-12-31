Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3A6E77188
	for <linux-phy@archiver.kernel.org>; Tue, 31 Dec 2024 02:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyHJNRP7koWYiGGlFowZ0P3X+JBNOnXCzniu2Pd80Ps=; b=B392ULBbFXC6FN
	Fz/yUFeOmA3HlFq8+xQy2IYh8WaITiiut9a3FXCLoq1nJUeg2ZHJWThnImyUeuTB0yEQzoYUBoW/U
	bWOrmCuFLqi3/R6wCnn0tTUkbJGkVLzkXKXXoef1nuFStwSYuJY3LWAsxSz93qmjx1ClocslQj7C/
	yR9K3pT3SrxcMZt7slbf0h5cRGhMAyJWk67EWECsAwnyW19d/y5GW5tyTxd0J0IKN+WGj6x76aNc8
	6g6pnnybwXNp0prPWJtIcItrhsR1Lx8Q6rV5pYf88f1YK3KupaGUS55/Iuxc+ex0QfJyt1+19vtvi
	C9cfQ+61NX8wYdT23TTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSRrY-00000006Jrh-1FXQ;
	Tue, 31 Dec 2024 02:20:04 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSRrR-00000006Jpw-3gf1
	for linux-phy@lists.infradead.org;
	Tue, 31 Dec 2024 02:20:03 +0000
X-UUID: b2e2572ec71d11efa216b1d71e6e1362-20241231
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:69619919-2896-410f-bc0c-10886e30855c,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:102f1764faf4b93a8a6d0ed7e2fd76b6,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: b2e2572ec71d11efa216b1d71e6e1362-20241231
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 213365141; Tue, 31 Dec 2024 10:19:44 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id D9B9516002081;
	Tue, 31 Dec 2024 10:19:43 +0800 (CST)
X-ns-mid: postfix-677354BF-781682439
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id CB56B16003301;
	Tue, 31 Dec 2024 02:19:38 +0000 (UTC)
Message-ID: <9a0ee7f2-7b35-495f-891c-0ed9271a2f81@kylinos.cn>
Date: Tue, 31 Dec 2024 10:19:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in
 fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Adam Ford <aford173@gmail.com>
Cc: geert@linux-m68k.org, aford@beaconembedded.com, arnd@arndb.de,
 dominique.martinet@atmark-techno.com, frieder.schrempf@kontron.de,
 kishon@kernel.org, l.stach@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com,
 u.kleine-koenig@baylibre.com, vkoul@kernel.org
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_181958_278452_88B75C4E 
X-CRM114-Status: GOOD (  12.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDI0LzEyLzMxIDEwOjExLCBBZGFtIEZvcmQg5YaZ6YGTOgo+IE9uIFN1biwgRGVjIDI5
LCAyMDI0IGF0IDg6MTHigK9QTSBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+IHdyb3Rl
Ogo+PiBGSUVMRF9QUkVQKCkgY2hlY2tzIHRoYXQgYSBjb25zdGFudCBmaXRzIGludG8gdGhlIGF2
YWlsYWJsZSBiaXRmaWVsZCwKPj4gYnV0IHRoZSBpbmRleCBkaXYgZXF1YWxzIHRvIDQsaXMgb3V0
IG9mIHJhbmdlLCB3aGljaCBnY2MKPj4gY29ycmVjdGx5IGNvbXBsYWlucyBhYm91dDoKPj4KPj4g
SW4gZnVuY3Rpb24g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2Rl
dOKAmSwKPj4gaW5saW5lZCBmcm9tIOKAmGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZeKA
mSBhdAo+PiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyA6NDcw
OjI6Cj4+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjog
Y2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydF81MzjigJkKPj4gZGVjbGFyZWQgd2l0aCBh
dHRyaWJ1dGUgZXJyb3I6IEZJRUxEX1BSRVA6IHZhbHVlIHRvbyBsYXJnZSBmb3IgdGhlIGZpZWxk
Cj4+ICAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBp
bGV0aW1lX2Fzc2VydF8sCj4+IF9fQ09VTlRFUl9fKQo+PiAgICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXgo+PiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90
eXBlcy5oOjUyMzo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mCj4+IG1hY3JvIOKAmF9fY29tcGls
ZXRpbWVfYXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsKPj4gICAgICAgIHwg
ICAgXn5+fn5+Cj4+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjI6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybwo+PiDigJhfY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4+
ICAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0
aW1lX2Fzc2VydF8sCj4+ICAgX19DT1VOVEVSX18pCj4+Cj4+IFJld29yayB0aGlzIHNvIHRoZSBm
aWVsZCB2YWx1ZSB3aGljaCBpcyByZXN0cmljdGVkIHRvIHRoZSByYW5nZSBvZiAwIHRvIDMsCj4+
IHNvIGJ1aWxkIGVycm9yIHdpbGwgZml4Lgo+Pgo+PiBGaXhlczogZDU2NzY3OWYyYjZhICgicGh5
OiBmcmVlc2NhbGU6IGZzbC1zYW1zdW5nLWhkbWk6IENsZWFuIHVwIGZsZF90Z19jb2RlIGNhbGN1
bGF0aW9uIikKPj4gU2lnbmVkLW9mZi1ieTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9zLmNu
Pgo+PiAtLS0KPj4gICBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWku
YyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1
bmctaGRtaS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMK
Pj4gaW5kZXggNWVhYzcwYTFlODU4Li4zZTRkMWE1MTYwZWEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4+ICsrKyBiL2RyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4+IEBAIC0zNDEsNyArMzQxLDcg
QEAgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNs
X3NhbXN1bmdfaGRtaV9waHkgKnBoeSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFr
Owo+PiAgICAgICAgICB9Cj4+Cj4+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tf
RElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPj4gKyAgICAgICB3cml0
ZWIoRklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2ID09IDQgPyBkaXYgLSAxIDogZGl2
KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwo+IFRoZSBmb3ItbG9vcCBhYm92ZSB0aGlzIGxp
bmUgc3RhdGVzOiAgIGZvciAoZGl2ID0gMDsgZGl2IDwgNDsgZGl2KyspCj4gSG93IGNvdWxkIHRo
aXMgZXZlciByZWFjaCA0PyAgSWYgaXQgZGlkIHJlYWNoIDQsIHRoZSBjYWxjdWxhdGlvbiBmb3IK
PiBpbnRfcGxsY2xrIHdvdWxkIG5lZWQgdG8gYmUgcmVjYWxjdWxhdGVkIHNpbmNlIGludF9wbGxj
bGsgPSBwY2xrIC8gKDEKPiA8PCBkaXYpOwoKeWVzLCB5b3UgYXJlIHJpZ2h0LG1heSBiZSBuZXZl
ciByZWFjaCA0LHNvIGRpdiAtIDEgd2lsbGUgZml4IEZJRUxEX1BSRVAKCmJ1aWxkIGVycm9yLgoK
I2RlZmluZSBSRUcxMl9DS19ESVZfTUFTS8KgwqDCoMKgwqDCoCBHRU5NQVNLKDUsIDQpCgpvbmx5
IHR3byBiaXQgLG1heCB2YWx1ZSBpcyAzLgoKdGhhbmtzIQoKUGVpLgoKPgo+IGFkYW0KPj4gICAg
ICAgICAgLyoKPj4gICAgICAgICAgICogQ2FsY3VsYXRpb24gZm9yIHRoZSBmcmVxdWVuY3kgbG9j
ayBkZXRlY3RvciB0YXJnZXQgY29kZSAoZmxkX3RnX2NvZGUpCj4+IC0tCj4+IDIuMjUuMQo+PgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
