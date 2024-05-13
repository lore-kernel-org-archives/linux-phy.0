Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98E2BC25B5F
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 14:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t12+4PiVaAHAyhJJcWuH6eM6mWWcxSO09aYZDS3hzOw=; b=YdFhgAVljvJFfA
	KoowCgN/sLURp6qTnnLFaLsPZZBG9vL1GSY+8StQ9Mp3bvz2k8px1z1empZIXheQENcSrJgyr/BVG
	YSm1f3C/UOgN+2/gO6l7Ti6ItDH7E4vUI8bE0z+E1nBBj6RIEABd53SQMy3sHkcblpemFaqGW+V1h
	r13jK+hkptt0roCjwschIAnytZQUeFeEYkK/ZJF04iqxNcg5xKFFc5JXXG6T+aYQwcJWSfbmFievu
	0F/zE3LCvCAOrvJGHFx1fwcRzzcja2c+Bs/ZMu3G3mz9zfaue7ED2+cdChuTbU9wq3oR29nvZMRx1
	8Lqb/P53qK7uwlCmO1gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WUr-0000000D9uA-0ueS;
	Mon, 13 May 2024 14:17:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WUm-0000000D9rn-40KE;
	Mon, 13 May 2024 14:17:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 52D5960DDA;
	Mon, 13 May 2024 14:17:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C7BC4AF0C;
	Mon, 13 May 2024 14:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715609860;
	bh=/vPJpE4pp5NAuUGy0qriY6DZV2OLGz/Fs1yxdax2XUU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W91De+dPXNkp8Cg8/fH0pR2jb23Nd2ZlKNyCC0Q2DVKlM/fcqagl4F28UsxaE0aIx
	 P87FJ6agLNCUKoK7MBVUlkf3HEOnJVCL0Dahrlow/rA3meYeUYvQ5pFbFiHhIaa8EL
	 IXT42kj9JrnedzcnLNscgQzAv+r4wZs9aX2G5Csd+K5geeotS6TaIGGJUKbWp+GWbM
	 PNc1SVMqL7JPSclnPVVNqVAKOLEfDMXEDHdPtW4joJUNZSU7XYMG+TgzT+EAVV/1If
	 xc2Tv4VxQDNsWveO5PvjxV3pEb/181d+2fXde243vqvMSjBUWGNE69QxeLhKbEbLgg
	 +9lMhOPl5Yq2g==
Message-ID: <f4f85f0b-49eb-4fba-ac76-2df845571b12@kernel.org>
Date: Mon, 13 May 2024 16:17:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] Add dp PHY dt-bindings
To: =?UTF-8?B?TElBTktVTiBZQU5HICjmnajov57lnaQp?= <Liankun.Yang@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
 =?UTF-8?B?TWFjIFNoZW4gKOayiOS/iik=?= <Mac.Shen@mediatek.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20240510110523.12524-1-liankun.yang@mediatek.com>
 <20240510110523.12524-3-liankun.yang@mediatek.com>
 <e02c2f42-b5e4-4200-8131-3881b7034625@kernel.org>
 <3f387c9e8ac34ca25ec7b6bfb02536cd4ebbc508.camel@mediatek.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <3f387c9e8ac34ca25ec7b6bfb02536cd4ebbc508.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_071741_107980_72AEF926 
X-CRM114-Status: GOOD (  18.02  )
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

T24gMTMvMDUvMjAyNCAxNjoxNSwgTElBTktVTiBZQU5HICjmnajov57lnaQpIHdyb3RlOgo+IE9u
IE1vbiwgMjAyNC0wNS0xMyBhdCAwODozNyArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4gIAkgCj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBv
ciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsCj4+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIg
b3IgdGhlIGNvbnRlbnQuCj4+ICBPbiAxMC8wNS8yMDI0IDEzOjA0LCBMaWFua3VuIFlhbmcgd3Jv
dGU6Cj4+PiBBZGQgZHAgUEhZIGR0LWJpbmRpbmdzLgo+Pgo+PiBUaGlzIHRlbGxzIG1lIG5vdGhp
bmcuIFJlYWQgc3VibWl0dGluZyBwYXRjaGVzLgo+Pgo+Pj4KPj4+IENoYW5nZWRzIGluIHYyOgo+
Pgo+PiBUaGlzIGRvZXMgZ29lcyB0byBjaGFuZ2Vsb2csIG5vdCBjb21taXQgbG9nLgo+Pgo+Pj4g
LSBBZGQgZHAgUEhZIGR0LWJpbmRpbmdzLgo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LW1lZGlhdGVrL3BhdGNoLwo+Pj4gMjAyNDA0MDMwNDA1MTcuMzI3OS0x
LWxpYW5rdW4ueWFuZ0BtZWRpYXRlay5jb20vCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGlhbmt1
biBZYW5nIDxsaWFua3VuLnlhbmdAbWVkaWF0ZWsuY29tPgo+Pgo+PiBUaGlzIHBhdGNoIGxvb2tz
IHRlcnJpYmxlLi4uIHRoZXJlJ3Mgc28gbWFueSB3cm9uZyB0aGluZ3MgSSBkb24ndAo+PiBldmVu
Cj4+IGtub3cgd2hlcmUgdG8gc3RhcnQuCj4+Cj4+IFBsZWFzZSB1c2Ugc3ViamVjdCBwcmVmaXhl
cyBtYXRjaGluZyB0aGUgc3Vic3lzdGVtLiBZb3UgY2FuIGdldCB0aGVtCj4+IGZvcgo+PiBleGFt
cGxlIHdpdGggYGdpdCBsb2cgLS1vbmVsaW5lIC0tIERJUkVDVE9SWV9PUl9GSUxFYCBvbiB0aGUK
Pj4gZGlyZWN0b3J5Cj4+IHlvdXIgcGF0Y2ggaXMgdG91Y2hpbmcuIEZvciBiaW5kaW5ncywgdGhl
IHByZWZlcnJlZCBzdWJqZWN0cyBhcmUKPj4gZXhwbGFpbmVkIGhlcmU6Cj4+Cj4gaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvZGV2aWNldHJlZS9iaW5kaW5ncy9zdWJtaXR0
aW5nLXBhdGNoZXMuaHRtbCNpLWZvci1wYXRjaC1zdWJtaXR0ZXJzCj4+Cj4+IFBsZWFzZSBydW4g
c2NyaXB0cy9jaGVja3BhdGNoLnBsIGFuZCBmaXggcmVwb3J0ZWQgd2FybmluZ3MuIFRoZW4KPj4g
cGxlYXNlCj4+IHJ1biBgc2NyaXB0cy9jaGVja3BhdGNoLnBsIC0tc3RyaWN0YCBhbmQgKHByb2Jh
Ymx5KSBmaXggbW9yZQo+PiB3YXJuaW5ncy4KPj4gU29tZSB3YXJuaW5ncyBjYW4gYmUgaWdub3Jl
ZCwgZXNwZWNpYWxseSBmcm9tIC0tc3RyaWN0IHJ1biwgYnV0IHRoZQo+PiBjb2RlCj4+IGhlcmUg
bG9va3MgbGlrZSBpdCBuZWVkcyBhIGZpeC4gRmVlbCBmcmVlIHRvIGdldCBpbiB0b3VjaCBpZiB0
aGUKPj4gd2FybmluZwo+PiBpcyBub3QgY2xlYXIuCj4+Cj4+Cj4+PiAtLS0KPj4+ICAuLi4vZGlz
cGxheS9tZWRpYXRlay9tZWRpYXRlay5waHktZHAueWFtbCAgICAgfCA0NQo+PiArKysrKysrKysr
KysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKykKPj4+ICBjcmVh
dGUgbW9kZSAxMDA2NDQKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbWVkaWF0ZWsvbWVkaWF0ZWsucGh5LQo+PiBkcC55YW1sCj4+Cj4+IFdyb25nIGZpbGVuYW1l
Cj4+Cj4+Pgo+Pj4gZGlmZiAtLWdpdAo+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLnBoeS0KPj4gZHAueWFtbAo+PiBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLnBo
eS0KPj4gZHAueWFtbAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi40NzZiYzMyOTM2M2YKPj4+IC0t
LSAvZGV2L251bGwKPj4+ICsrKwo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLnBoeS0KPj4gZHAueWFtbAo+Pj4gQEAgLTAsMCAr
MSw0NSBAQAo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1Ig
QlNELTItQ2xhdXNlKQo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogCj4+IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWsscGh5LWRw
LnlhbWwjCj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9j
b3JlLnlhbWwjCj4+PiArCj4+PiArdGl0bGU6IE1lZGlhVGVrIERpc3BsYXkgUG9ydCBDb250cm9s
bGVyCj4+PiArCj4+PiArbWFpbnRhaW5lcnM6Cj4+PiArICAtIE1hYyBzaGVuIDxtYWMuc2hlbkBt
ZWRpYXRlay5jb20+Cj4+PiArICAtIExpYW5rdW4geWFuZyA8TGlhbmt1bi55YW5nQG1lZGlhdGVr
LmNvbT4KPj4+ICsKPj4+ICtkZXNjcmlwdGlvbjogfAo+Pj4gKyAgU3BlY2lhbCBzZXR0aW5ncyBu
ZWVkIHRvIGJlIGNvbmZpZ3VyZWQgYnkgTWVkaWFUZWsgRFAgYmFzZWQgb24KPj4gdGhlIGFjdHVh
bAo+Pj4gKyAgaGFyZHdhcmUgc2l0dWF0aW9uLiBGb3IgZXhhbXBsZSwgd2hlbiB1c2luZyBhIGNl
cnRhaW4gYnJhbmQncwo+PiBkb2NraW5nCj4+PiArICBzdGF0aW9uIGZvciBkaXNwbGF5IHByb2pl
Y3Rpb24sIGdhcmJhZ2UgbWF5IGFwcGVhci4gQWRqdXN0aW5nCj4+IHRoZSBzcGVjaWZpYwo+Pj4g
KyAgc3NjIHZhbHVlIGNhbiByZXNvbHZlIHRoaXMgaXNzdWUuCj4+PiArCj4+PiArcHJvcGVydGll
czoKPj4+ICsgIHN0YXR1czogZGlzYWJsZWQKPj4KPj4gSSB0aGluayB5b3UgbmljZWx5IHNob2Nr
ZWQgUm9iIGFscmVhZHkuCj4+Cj4+IFBsZWFzZSByZWFjaCBpbnRlcm5hbGx5IHRvIE1lZGlhdGVr
IG9yIGNvbGxhYm9yYXRpbmcgY29tcGFuaWVzIHRvIGdldAo+PiBiYXNpYyB0cmFpbmluZyBhbmQg
aW5zdHJ1Y3Rpb25zIGhvdyB0byB3cml0ZSBwYXRjaGVzIGFuZCBiaW5kaW5ncy4KPj4KPj4gT3Ro
ZXJ3aXNlIGl0IGlzIHdhc3RlIG9mIG91ciB0aW1lLiBNZWRpYXRlayBpcyBub3QgYSBzbWFsbCBj
b21wYW55IHNvCj4+IHRoZXJlIGlzIG5vIGV4Y3VzZSBpbiBzZW5kaW5nIHN1Y2ggcG9vciBxdWFs
aXR5IHBhdGNoZXMsIHdoaWNoIHdvdWxkCj4+IGJlCj4+IEVBU0lMWSBzcG90dGVkIGJ5IHRoZSBN
T1NUIEJBU0lDIHJldmlldy4KPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPj4KPiAK
PiBJIHVzZWQgc2NyaXB0cy9jaGVja3BhdGNoLnBsIGFuZCBmaXggcmVwb3J0ZWQgZXJyb3IgYW5k
IHdhcm5pbmdzLgo+IEkgYW0gcmVzdW1ibWl0dGluZyBiaW5kaW5ncyBieSB0aGUgTU9TVCBCQVNJ
QyByZXZpZXcuCgpObywgcGxlYXNlIHdhaXQuIFdobyBkaWQgdGhlIGJhc2ljIHJldmlldyBvZiB5
b3VyIHBhdGNoPyBXaG8gZnJvbQpNZWRpYXRlaz8gVXBzdHJlYW0gaXMgbm90IGEgd29ya2hvcnNl
IHRvIHVzZSBpbnN0ZWFkIG9mIHlvdXIgcmVzb3VyY2VzCmZvciB0aGUgYWJzb2x1dGUgYmFzaWMg
c3R1ZmYuLi4gVGhpcyBmZWVscyBzdWNoIGV4cGxvaXRpbmcuCgpCZXN0IHJlZ2FyZHMsCktyenlz
enRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
