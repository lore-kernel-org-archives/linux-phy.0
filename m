Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1B2E7718B
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 02:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZtchNyLNXDlFTbRJ7FiiSRVcqU+BT/9OQeTGhOPAEA=; b=0QMlY4wgPDxMGq
	ZHIJ7jFGj29hyTf5dP1ysZVkPaCzb6jR+b7+Nu2em0wBgP5erMda5Kc/pSFF940J9wHOqC35ts89l
	cVythVqkh85yGB5B4wZ1mdzd8qKd/4cxWZIOdqaDV9lUsrLDgyshov8KToZIb+9AD9Nx9m6zROByA
	GFeHm4TYP+Ek0oVVFLPsKfotpI4b/rXl2NLqj2zYm6DKltob0y/NIooA6fQeAd35Havfho/tZhxMI
	DcbMhZjReUnTLhi6KzCY5au/hy7y+xA/etJGKEMQtkY+V2TMpwT8Viyc3PX0MHPNoW6FNsAqqpjgY
	wsHEoEkfVVqHGaW/aYpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTAjl-00000009auE-3xHK;
	Thu, 02 Jan 2025 02:15:01 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTAji-00000009atQ-22sI
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 02:15:00 +0000
X-UUID: 575076e6c8af11efa216b1d71e6e1362-20250102
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:0742ade4-2fe7-4c4c-b5bc-4be26801a860,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:b19434f069e11143f9d306c06b4caebd,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 575076e6c8af11efa216b1d71e6e1362-20250102
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1083382807; Thu, 02 Jan 2025 10:14:48 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id EB01C16003300;
	Thu,  2 Jan 2025 10:14:47 +0800 (CST)
X-ns-mid: postfix-6775F697-804123497
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id A036016002081;
	Thu,  2 Jan 2025 02:14:43 +0000 (UTC)
Message-ID: <3bcfd31d-0ddb-46a7-9ed8-5b41047d8e69@kylinos.cn>
Date: Thu, 2 Jan 2025 10:14:43 +0800
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
 <9a0ee7f2-7b35-495f-891c-0ed9271a2f81@kylinos.cn>
 <CAHCN7x+xM13-DQ-miA7NbvY1wsr0197LQYCbLFbpur7oDf9TnQ@mail.gmail.com>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <CAHCN7x+xM13-DQ-miA7NbvY1wsr0197LQYCbLFbpur7oDf9TnQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250101_181458_861607_D5BAF43F 
X-CRM114-Status: GOOD (  13.86  )
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

CgrlnKggMjAyNS8xLzEgMDE6MDIsIEFkYW0gRm9yZCDlhpnpgZM6Cj4gT24gTW9uLCBEZWMgMzAs
IDIwMjQgYXQgODoxOeKAr1BNIFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4gd3JvdGU6
Cj4+Cj4+Cj4+IOWcqCAyMDI0LzEyLzMxIDEwOjExLCBBZGFtIEZvcmQg5YaZ6YGTOgo+Pj4gT24g
U3VuLCBEZWMgMjksIDIwMjQgYXQgODoxMeKAr1BNIFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5v
cy5jbj4gd3JvdGU6Cj4+Pj4gRklFTERfUFJFUCgpIGNoZWNrcyB0aGF0IGEgY29uc3RhbnQgZml0
cyBpbnRvIHRoZSBhdmFpbGFibGUgYml0ZmllbGQsCj4+Pj4gYnV0IHRoZSBpbmRleCBkaXYgZXF1
YWxzIHRvIDQsaXMgb3V0IG9mIHJhbmdlLCB3aGljaCBnY2MKPj4+PiBjb3JyZWN0bHkgY29tcGxh
aW5zIGFib3V0Ogo+Pj4+Cj4+Pj4gSW4gZnVuY3Rpb24g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlf
Y29uZmlndXJlX3BsbF9sb2NrX2RldOKAmSwKPj4+PiBpbmxpbmVkIGZyb20g4oCYZnNsX3NhbXN1
bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4+Pj4gZHJpdmVycy9waHkvZnJlZXNjYWxlL3Bo
eS1mc2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgo+Pj4+IC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBp
bGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBpbGV0aW1lX2Fzc2Vy
dF81MzjigJkKPj4+PiBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogRklFTERfUFJFUDog
dmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKPj4+PiAgICA1NDIgfCAgX2NvbXBpbGV0aW1l
X2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLAo+Pj4+IF9fQ09V
TlRFUl9fKQo+Pj4+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeCj4+Pj4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1MjM6NDogbm90ZTog
aW4gZGVmaW5pdGlvbiBvZgo+Pj4+IG1hY3JvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZIDUy
MyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsKPj4+PiAgICAgICAgfCAgICBefn5+fn4KPj4+PiAu
Ly4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8KPj4+PiDigJhfY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4+Pj4gICAgNTQyIHwg
IF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0
XywKPj4+PiAgIF9fQ09VTlRFUl9fKQo+Pj4+Cj4+Pj4gUmV3b3JrIHRoaXMgc28gdGhlIGZpZWxk
IHZhbHVlIHdoaWNoIGlzIHJlc3RyaWN0ZWQgdG8gdGhlIHJhbmdlIG9mIDAgdG8gMywKPj4+PiBz
byBidWlsZCBlcnJvciB3aWxsIGZpeC4KPj4+Pgo+Pj4+IEZpeGVzOiBkNTY3Njc5ZjJiNmEgKCJw
aHk6IGZyZWVzY2FsZTogZnNsLXNhbXN1bmctaGRtaTogQ2xlYW4gdXAgZmxkX3RnX2NvZGUgY2Fs
Y3VsYXRpb24iKQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5v
cy5jbj4KPj4+PiAtLS0KPj4+PiAgIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1
bmctaGRtaS5jIHwgMiArLQo+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1z
YW1zdW5nLWhkbWkuYwo+Pj4+IGluZGV4IDVlYWM3MGExZTg1OC4uM2U0ZDFhNTE2MGVhIDEwMDY0
NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5j
Cj4+Pj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMK
Pj4+PiBAQCAtMzQxLDcgKzM0MSw3IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9w
bGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCj4+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+Pj4+ICAgICAgICAgIH0KPj4+Pgo+Pj4+IC0gICAg
ICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyAr
IFBIWV9SRUcoMTIpKTsKPj4+PiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJ
Vl9NQVNLLCBkaXYgPT0gNCA/IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEy
KSk7Cj4+PiBUaGUgZm9yLWxvb3AgYWJvdmUgdGhpcyBsaW5lIHN0YXRlczogICBmb3IgKGRpdiA9
IDA7IGRpdiA8IDQ7IGRpdisrKQo+Pj4gSG93IGNvdWxkIHRoaXMgZXZlciByZWFjaCA0PyAgSWYg
aXQgZGlkIHJlYWNoIDQsIHRoZSBjYWxjdWxhdGlvbiBmb3IKPj4+IGludF9wbGxjbGsgd291bGQg
bmVlZCB0byBiZSByZWNhbGN1bGF0ZWQgc2luY2UgaW50X3BsbGNsayA9IHBjbGsgLyAoMQo+Pj4g
PDwgZGl2KTsKPj4KPj4geWVzLCB5b3UgYXJlIHJpZ2h0LG1heSBiZSBuZXZlciByZWFjaCA0LHNv
IGRpdiAtIDEgd2lsbGUgZml4IEZJRUxEX1BSRVAKPj4KPj4gYnVpbGQgZXJyb3IuCj4+Cj4+ICNk
ZWZpbmUgUkVHMTJfQ0tfRElWX01BU0sgICAgICAgR0VOTUFTSyg1LCA0KQo+Pgo+PiBvbmx5IHR3
byBiaXQgLG1heCB2YWx1ZSBpcyAzLgo+IAo+IFdvdWxkIGRvaW5nIGEgbG9naWNhbCBBTkQgb2Yg
KGRpdiAmIDB4MDMpICBtYWtlIHRoZSBjb21waWxlciBlcnJvciBnbwo+IGF3YXk/ICBJIGZlZWwg
bGlrZSB0aGUgZXZhbHVhdGlvbiBvZiBjaGVja2luZyBpZiBkaXY9PTQgaXMgdW5uZWNlc3NhcnkK
PiBzaW5jZSB0aGUgZm9yLWxvb3Agd29uJ3QgbGV0IGl0IGdldCB0byA0IGFuZCBpdCBtaWdodCBh
ZGQgYW4KPiBhZGRpdGlvbmFsIGluc3RydWN0aW9uLgpZZXMsIHRoYW5rIHlvdSBmb3IgeW91ciBn
cmVhdCBtb2RpZmljYXRpb24uIEFmdGVyIGFkZGluZyAmIDB4MDMsIAp0aGUgY29tcGlsYXRpb24g
ZmFpbHVyZSBkaXNhcHBlYXJlZC4gSSBhcG9sb2dpemUgZm9yIG15IG1lc3N5IGNvZGUuClRoYW5r
IHlvdS4gSSB3aWxsIHNlbmQgb3V0IHRoZSBtb2RpZmllZCBwYXRjaCBsYXRlci4KCj4gYWRhbQo+
Pgo+PiB0aGFua3MhCj4+Cj4+IFBlaS4KPj4KPj4+Cj4+PiBhZGFtCj4+Pj4gICAgICAgICAgLyoK
Pj4+PiAgICAgICAgICAgKiBDYWxjdWxhdGlvbiBmb3IgdGhlIGZyZXF1ZW5jeSBsb2NrIGRldGVj
dG9yIHRhcmdldCBjb2RlIChmbGRfdGdfY29kZSkKPj4+PiAtLQo+Pj4+IDIuMjUuMQo+Pj4+CgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
