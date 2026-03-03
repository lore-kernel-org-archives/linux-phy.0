Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C132EC144C
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 14:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqqkXUav5KbDiZdL+3MEXIRpyQW0XnCRuy9XYzEMDAg=; b=3vuD2D4ezEkbQA
	xN+HY5EoAzTWqK6g0lVSWQUIBa5UgxRU19+8aezsnkSY8dRiryPFtBx5YiBksQK/ziXV8urct6OyS
	A08tNoiD82SdnnabppMUpoVLBY3ES0jtcYV5bBAiFkHbTSvBOGKKyj/zynHsGcbsgyrraHueJg9Hc
	nWQbiOuSV1S97/3yl0HRgBXOBmhNcWNp5J/e8nIe9YtrSSnJvibZ641SBnvCiPF4SJorSoiuMhLTJ
	5LDxxIJDUE5PCOPElTpMqQkd6vPvo3EU77lxUUYkN78ZoFez1FMOc/zSJkIROiTgaosFFz7Qi/Y+3
	7z+xBHkVWwyEAsHsv4gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxQgJ-0000000FKIM-3ju3;
	Tue, 03 Mar 2026 14:25:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxQgG-0000000FKGC-170I;
	Tue, 03 Mar 2026 14:25:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772547897;
	bh=Wuu0sJNWhS9l8RA8loMZGodMF057v2ZgnGI93IEHQH8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LAKKkoLBDxV7fhvW7PQbnxmgd+EEhNbbiZhMIXv3zudJUMUxwzojDI/8vl/gjIRCK
	 KTmBe+bwNOUd+Ap3ntDXb6MR3sYa0QS1x4Rfrcaus8KXPpNZyuZBpGP57Lko1P3Apa
	 kqSWmH0N8k4nBRk5D4HweaGTGLd6BWvRpz6Fql7yjdVunGI6CImaNvJy8N25cQomuP
	 R41mlxjoa+SyjZUuGm6bDkLHGNq3kmBR+ah7mAjmIo240KUIhymLkTBzLEb1vUGbhH
	 7ljpQVo4NITw7KjLe1XNtCV0B/gtkI6y1YevzWozsQVp4w/Ms1K/F4nxlXkgOez76G
	 7sMaw+DhRA53g==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D4A9D17E03E5;
	Tue,  3 Mar 2026 15:24:56 +0100 (CET)
Message-ID: <4b318ffd-13cb-435c-af1a-2896d0e6cadb@collabora.com>
Date: Tue, 3 Mar 2026 15:24:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] drm/mediatek: dsi: Add compatible for mt8167-dsi
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 "l.scorcia@gmail.com" <l.scorcia@gmail.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>
Cc: "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>
References: <cover.1771863641.git.l.scorcia@gmail.com>
 <2fbf179c03c61f527e2583f9df4f97f6aaf3297a.1771863641.git.l.scorcia@gmail.com>
 <bc064717108de5ea1a8c98937bb03fd00794682c.camel@mediatek.com>
 <CAORyz2Ki5aPNbcY5-_mRwFgwT46VN_pRV2iP7z7x3snzrbKz=g@mail.gmail.com>
 <dcb797934bdb4467037559ee5e91bee0a568c03a.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <dcb797934bdb4467037559ee5e91bee0a568c03a.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_062500_453557_AADD6C08 
X-CRM114-Status: GOOD (  25.51  )
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

SWwgMDMvMDMvMjYgMDg6NTYsIENLIEh1ICjog6Hkv4rlhYkpIGhhIHNjcml0dG86Cj4gT24gV2Vk
LCAyMDI2LTAyLTI1IGF0IDA5OjE1ICswMTAwLCBMdWNhIExlb25hcmRvIFNjb3JjaWEgd3JvdGU6
Cj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0
dGFjaG1lbnRzIHVudGlsIHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIgb3IgdGhlIGNvbnRl
bnQuCj4+Cj4+Cj4+Pj4gVGhlIG10ODE2NyBEU0kgY29udHJvbGxlciBpcyBmdWxseSBjb21wYXRp
YmxlIHdpdGggdGhlIG9uZSBmb3VuZCBpbgo+Pj4+IG10MjcwMS4gRGV2aWNlIHRyZWUgZG9jdW1l
bnRhdGlvbiBpcyBhbHJlYWR5IHByZXNlbnQgdXBzdHJlYW0uCj4+Pgo+Pj4gSWYgbXQ4MTY3IERT
SSBpcyBmdWxseSBjb21wYXRpYmxlIHdpdGggbXQyNzAxIERTSSwgSSB0aGluayB0aGUgYmluZGlu
ZyBkb2N1bWVudCBhbmQgZGV2aWNlIHRyZWUgc2hvdWxkIGJlIG1vZGlmaWVkLgo+Pj4gSW4gZGV2
aWNlIHRyZWUsCj4+Pgo+Pj4gICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE2Ny1kc2ki
LCAibWVkaWF0ZWssbXQyNzAxLWRzaSI7Cj4+Pgo+Pj4gQW5kIHRoaXMgcGF0Y2ggaXMgbm90IG5l
Y2Vzc2FyeS4KPj4KPj4gSGksIGlmIEkgdW5kZXJzdGFuZCB5b3VyIHJldmlldyBjb3JyZWN0bHkg
dGhhdCdzIHdoYXQgdjIgWzFdIG9mIHRoaXMKPj4gcGF0Y2ggZGlkLCBidXQgdGhlIGNoYW5nZSB3
YXMgcmVqZWN0ZWQgZHVyaW5nIHJldmlldy4KPj4KPj4gQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGVy
ZSBpcyBubyB3aW4td2luIHNvbHV0aW9uIGhlcmUuIFRoaXMgdHJpY2t5Cj4+IHNpdHVhdGlvbiBk
ZXJpdmVzIGZyb20gdGhlIGZhY3QgdGhhdCBpbiBsYXN0IHllYXIncyBzdWJtaXNzaW9ucyB0aGUK
Pj4gY2hhbmdlIHdhcyBvbmx5IHBhcnRpYWxseSBtZXJnZWQgLSB0aGUgYmluZGluZ3Mgd2VudCB1
cHN0cmVhbSB3aGlsZQo+PiB0aGUgZHJpdmVyIGRpZCBub3QsIGFuZCBub3cgd2UgaGF2ZSB0byB3
b3JrIGFyb3VuZCB0aGlzLiBJbiB2MyBJIHRyaWVkCj4+IHRvIGFkZHJlc3MgdGhlIGlzc3VlIGJ5
IGFjdHVhbGx5IGltcGxlbWVudGluZyB3aGF0IHRoZSBiaW5kaW5nCj4+IGRvY3VtZW50IHNheXMu
Cj4+IEknbGwgYmUgaGFwcHkgdG8gcmVzdWJtaXQgdjQgYnV0IEkgbmVlZCB0byBrbm93IHdoYXQn
cyB0aGUgY29uc2Vuc3VzIGhlcmUuCj4gCj4gWW91IG1lYW4gS3J6eXN6dG9mJ3MgY29tbWVudD8K
PiBIZSBoYXMgdHdvIGNvbW1lbnQuCj4gVGhlIGZpcnN0IGlzICdyZW1vdmUnLiBZb3UgYWN0dWFs
bHkgbm90IHJlbW92ZSAibWVkaWF0ZWssbXQ4MTY3LWRzaSIuIFlvdSBjaGFuZ2UgaXQuCj4gVGhl
IHNlY29uZCBpcyBhYm91dCBmYWxsYmFjay4gSSdtIGFsc28gbm90IHN1cmUgd2h5IGhlIHNheXMg
aXQncyBOQUsuIEFsc28gYSBiYWQgd29yZGluZz8KPiBBZnRlciBBbmdlbG8ncyBjb21tZW50LCBL
cnp5c3p0b2YgZG9lcyBub3QgcmVzcG9uc2UuCj4gSSBhbHNvIGRvIG5vdCBrbm93IHdoYXQgS3J6
eXN6dG9mIHRoaW5rLgo+IEkgYWdyZWUgd2l0aCBBbmdlbG8uIFNpbmdsZSAibWVkaWF0ZWssbXQ4
MTY3LWRzaSIgZG9lcyBub3QgcmVmbGVjdCB0aGUgaGFyZHdhcmUgY29tcGF0aWJsZSBidXQgZmFs
bGJhY2sgZG9lcy4KPiBNYXliZSBkZXNjcmliZSBtb3JlIGluZm9ybWF0aW9uIChoYXJkd2FyZSkg
dG8gS3J6eXN6dG9mLCBhbmQgYXNrIHdoYXQncyB0aGUgYmV0dGVyIHdheSB0byBkby4KPiAKCkZp
cnN0IG9mIGFsbDogSSB3b3VsZCBiZSBoYXBweSB3aXRoIGhhdmluZwoKY29tcGF0aWJsZSA9ICJt
ZWRpYXRlayxtdDgxNjctZHNpIiwgIm1lZGlhdGVrLG10MjcwMS1kc2kiOwoKaW4gdGhlIGRldmlj
ZXRyZWUsIGFuZCB0byBkcm9wIHRoaXMgcGF0Y2ggLSBidXQgdGhhdCdzIG5vdCBwb3NzaWJsZSwg
Y2hlY2sgYmVsb3cuCgpUaGUgcHJvYmxlbSB0aGF0IEtyenlzenRvZiB3YXMgcmFpc2luZyBpcyB0
aGF0IHRoZSBiaW5kaW5ncyBjdXJyZW50bHkgZGVmaW5lCnRoZSAibWVkaWF0ZWssbXQ4MTY3LWRz
aSIgYXMgc2luZ2xlIGNvbXBhdGlibGUgd2l0aCBubyBmYWxsYmFjaywgYW5kIHJlbW92aW5nCml0
IHdvdWxkIGJyZWFrIHRoZSBBQkkgKGFzIHRoZSBiaW5kaW5ncyBhcmUgbm90IHVzZWQgb25seSBm
b3IgTGludXgsIGJ1dCBhbHNvCmZvciBib290bG9hZGVycykuCgpFdmVuIHRob3VnaCBJIGNhbiB0
cnkgbXkgYmVzdCB0byBjb252aW5jZSBoaW0sIHRoaXMgaXMgYSByZWFsIHByb2JsZW06IG1pc3Rh
a2VzCndlcmUgbWFkZSBpbiB0aGUgcGFzdCwgYW5kIHRoZSBvbmx5IHdheSB0byBnZXQgdGhlIG10
ODE2Ny1kc2kgc3VwcG9ydGVkIHJpZ2h0Cm5vdyBpcyB0bywgdW5mb3J0dW5hdGVseSwgYWRkIHRo
ZSBjb21wYXRpYmxlIGluIG10a19kc2kuYy4KCkkgZG9uJ3QgbGlrZSB0aGF0LCBhbmQgSSBzZWUg
dGhhdCB5b3UgKENLKSBkb24ndCBhcyB3ZWxsLCBidXQgdGhhdCdzIHRoZSByZXN1bHQKb2YgcGFz
dCBtaXN0YWtlcy4uLiBhbmQgYXBwYXJlbnRseSB3ZSBjYW4ndCBkbyBhbnl0aGluZyBhYm91dCB0
aGlzIGlmIG5vdCB0bwoqdXNlbGVzc2x5IGNsdXR0ZXIgdGhlIGRyaXZlciogd2l0aCB0aGF0LgoK
U28sIHRoYXQgc2FpZC4uLgoKSSdtIHNhZCB0byBzYXkgdGhhdCB0aGlzIHBhdGNoIGlzIHRoZSBv
bmx5IHdheSB0byBnZXQgdGhpcyBTb0MgcHJvYmVkIGJ5IG10a19kc2kKYW5kIHRoYXQgdGhlcmUn
cyBubyBvdGhlciB3YXkgYXJvdW5kIGl0LCBiZWNhdXNlIHRoZSBiaW5kaW5ncyBtYWludGFpbmVy
cyBhcmUKZm9yYmlkZGluZyB1cyBmcm9tIHJlbW92aW5nIHRoZSBiYWQgY29tcGF0aWJsZSAod2hp
Y2ggd2FzICpuZXZlciogdXNlZCBhbnl3YXkpCmZyb20gdGhlcmUgYW5kIG1ha2luZyBpdCByaWdo
dCB3aXRoIGFsbG93aW5nIGl0IG9ubHkgdW5kZXIgMjcwMSBmYWxsYmFjay4KCkknbSBtb3Zpbmcg
a3J6ayB0byB0aGUgVG86IGZpZWxkIG9mIHRoaXMgZW1haWwgaW4gaG9wZSB0byBnZXQgYmFjayBh
IHJlcGx5IHRoYXQKc291bmRzIGxpa2UgInlvdSBtaXN1bmRlcnN0b29kIG1lLCB5b3UgY2FuIGRv
IGl0IiwgYnV0IEknbSBub3QgcG9zaXRpdmUgYWJvdXQgdGhpcy4KCktyenlzenRvZiwgcGxlYXNl
IGNvbmZpcm0gb3IgZGVueSB3aGF0IEkgc2FpZC4KClJlZ2FyZHMsCkFuZ2VsbwoKCj4gUmVnYXJk
cywKPiBDSwo+IAo+Pgo+PiBUaGFua3MhCj4+Cj4+IFsxXSBodHRwczovL3VybGRlZmVuc2UuY29t
L3YzL19faHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhdGVr
L3BhdGNoL2ZmOTIwYTdjYzk0ZjJiMGMwM2Q0YmI1NTE0MjAzMGZkZWQzMGQwN2MuMTc3MTI1ODQw
Ny5naXQubC5zY29yY2lhQGdtYWlsLmNvbS9fXzshIUNUUk5LQTl3TWcwQVJidyFsSUJuQ1JreWJN
MW94b0FSYjcwSmxMTVBsWEhLcVc5ZHdTbVZxWEdzdmozTEU5aHNXdUlOa1BndHJscjhKbDgtYXRP
dnpZb01qdGF2SE9yMyQKPj4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgTGVvbmFyZG8g
U2NvcmNpYSA8bC5zY29yY2lhQGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiAgIGRyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgfCAxICsKPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4+Pj4gaW5k
ZXggYWY0ODcxZGU5ZTRjLi5hZDEwZTg2YjE2MWQgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHNpLmMKPj4+PiBAQCAtMTMwMSw2ICsxMzAxLDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBtdGtfZHNpX2RyaXZlcl9kYXRhIG10ODE4OF9kc2lfZHJpdmVyX2RhdGEgPSB7Cj4+Pj4K
Pj4+PiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG10a19kc2lfb2ZfbWF0Y2hb
XSA9IHsKPj4+PiAgICAgICAgICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10MjcwMS1kc2ki
LCAuZGF0YSA9ICZtdDI3MDFfZHNpX2RyaXZlcl9kYXRhIH0sCj4+Pj4gKyAgICAgICB7IC5jb21w
YXRpYmxlID0gIm1lZGlhdGVrLG10ODE2Ny1kc2kiLCAuZGF0YSA9ICZtdDI3MDFfZHNpX2RyaXZl
cl9kYXRhIH0sCj4+Pj4gICAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxNzMt
ZHNpIiwgLmRhdGEgPSAmbXQ4MTczX2RzaV9kcml2ZXJfZGF0YSB9LAo+Pj4+ICAgICAgICAgIHsg
LmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTgzLWRzaSIsIC5kYXRhID0gJm10ODE4M19kc2lf
ZHJpdmVyX2RhdGEgfSwKPj4+PiAgICAgICAgICB7IC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10
ODE4Ni1kc2kiLCAuZGF0YSA9ICZtdDgxODZfZHNpX2RyaXZlcl9kYXRhIH0sCj4+Pj4gLS0KPj4+
PiAyLjQzLjAKPj4+Pgo+Pj4+Cj4+IC0tCj4+IEx1Y2EgTGVvbmFyZG8gU2NvcmNpYQo+PiBsLnNj
b3JjaWFAZ21haWwuY29tCj4gCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
