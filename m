Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73194C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 19 Apr 2022 00:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uYDDAD9o88I28juwyzlOkHIguWSFGsGu5rIzSoGPT40=; b=ac+F3T/ar6j6y9
	UtxFAPDV0fomALubptPgsGUWKz8XGgPZOXTzNK9DbZwStli1p9NqmToTfJYOKMA5ef/kqAuieOoaw
	FjTkXgQ5vpEwzQsYyywnhKCF7/4nxtZigLGxR6s5epitIMXY1ew8ao31gpwUT5qZQ21x9ird9emZV
	PvQCBMssOiYWySWIR0Lz29pyifNIfpsMEEmOQ3OrUOXnFPUqhAIKACsOz2OfsocBqBFnjKR2CIBVm
	y9nAUySZ7/u6rD6s0++moDKvZz7lXjn6bZmtOX0SHxhWiz56svn6Ll+2HPohwMkCBTDiC7qLh4HFC
	krjM9t/is/ly/ACY8SxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngbPI-000tXo-L7; Tue, 19 Apr 2022 00:07:48 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngbPC-000tVt-Vh
 for linux-phy@lists.infradead.org; Tue, 19 Apr 2022 00:07:46 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220419000733epoutp02d634ece8b9d9aad8137464ff87a7955d~nI4d4e_Wi0774107741epoutp02u
 for <linux-phy@lists.infradead.org>; Tue, 19 Apr 2022 00:07:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220419000733epoutp02d634ece8b9d9aad8137464ff87a7955d~nI4d4e_Wi0774107741epoutp02u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1650326853;
 bh=AChNfJQWMXjSwwKi12gVmv2Q77//iQk0dtbyPaoW1Ls=;
 h=Subject:Reply-To:From:To:CC:Date:References:From;
 b=Kgxtor4qALYW5tJjrytsesasDEb6okogLTiBAPEqKcE/Zv/7zZ+FIAeywTCPq423j
 Url6N7Qa3RFbNHAeWSfT0f+nc71Sbgsvd+XI2cppeNSLEq5+9Y8E1bhRTEj4cHfFDH
 3x+m4TbI4O3xQvMqW+DaaE4YLBE+lkBJTKQDDtOE=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20220419000732epcas2p1b9493d582a4b17b4ef6bdc5e24ef5ce3~nI4c_DA3O0349203492epcas2p1H;
 Tue, 19 Apr 2022 00:07:32 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.68]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4Kj3yp6jvCz4x9Qb; Tue, 19 Apr
 2022 00:07:30 +0000 (GMT)
X-AuditID: b6c32a45-4fdff700000228cc-45-625dfd42be01
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.47.10444.24DFD526; Tue, 19 Apr 2022 09:07:30 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>, vkoul
 <vkoul@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>, "lars.persson"
 <lars.persson@axis.com>
CC: bhelgaas <bhelgaas@google.com>, linux-phy
 <linux-phy@lists.infradead.org>, linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, "lorenzo.pieralisi"
 <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>, linux-arm-kernel
 <linux-arm-kernel@axis.com>, kernel <kernel@axis.com>, Moon-Ki Jun
 <moonki.jun@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a@epcms2p7>
Date: Tue, 19 Apr 2022 09:07:30 +0900
X-CMS-MailID: 20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLJsWRmVeSWpSXmKPExsWy7bCmma7T39gkgzdt8hZLmjIsXh7StJh/
 5Byrxe4Zy5ksnh+axWzxqUXV4sLTHjaLl7PusVmcP7+B3aKh5zerxZE3H5kt9h9fyWRxedcc
 Nouz846zWUxY9Y3F4s3vF+wW5xZnWrTuPcJusfPOCWYHYY8189YwelxfF+CxYFOpx6ZVnWwe
 T65MZ/LYvKTeo2/LKkaP4ze2M3l83iQXwBmVbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZg
 qGtoaWGupJCXmJtqq+TiE6DrlpkD9I+SQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAl
 p8C8QK84Mbe4NC9dLy+1xMrQwMDIFKgwITvjePs51oLNYhWzX31iamB8IdrFyMkhIWAicXta
 IzOILSSwg1Fi2R32LkYODl4BQYm/O4RBwsIC7hKTmqayQ5QoSexYM48ZIq4vcX1FNyuIzSag
 K/Fv8Uu2LkYuDhGBBUwS9+fOYAJxmAX+M0m8ajzGBrGMV2JG+1MWCFtaYvvyrYwQtobEj2W9
 zBC2qMTN1W/ZYez3x+ZD1YhItN47C1UjKPHg526ouJTEgieHWCHsaon9f38zQdgNjBL991NB
 npEAunTHdWOQMK+Ar0TnsQ9gJSwCqhKnn8yBOsdF4tHBWWAjmQW0JZYtfM0M0sosoCmxfpc+
 xBRliSO3WGAeadj4mx2dzSzAJ9Fx+C9cfMe8J1DHqEnMW7mTGWKMjMTWl/4TGJVmIcJ5FpK1
 sxDWLmBkXsUollpQnJueWmxUYAiP2eT83E2M4HSt5bqDcfLbD3qHGJk4GA8xSnAwK4nw9iyJ
 ThLiTUmsrEotyo8vKs1JLT7EaAr08ERmKdHkfGDGyCuJNzSxNDAxMzM0NzI1MFcS5/VK2ZAo
 JJCeWJKanZpakFoE08fEwSnVwNTtV1KZ9vDXG4NcxbA5CYwhegJd6n/rn9mH+vlIrGVlXOx+
 4qKPHpuEQ9rpJRe25eX/ySzJr557rmdKnQaP8uMd3dukl+UsWHa+a2b5vuXenUX6Xp9cWWZ3
 +wlWlU+P+O2w/6rDu8kc/Gpf7LdUnb83h02oLorp8tQXUtoprDP9uqLWp8nVtBiJ8zDtuur/
 9eqqffLf3vGsr5oZsbL54M0mgfsClkE7iqytLaakNsV9vpmsxGY/sZrP0egMW00By8zKi/lM
 UvOOM95qWDLNw9fvmebSNwVb6qTFL73pWJv2Z3vuruDVn+a42DtI8UtYV+zr2NB7++ZRway6
 fWxZiVnGAe9c41/x/WxOfsCgxFKckWioxVxUnAgAgmXUsGAEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a
References: <CGME20220419000730epcms2p77c94d5e55db13ebf2f88b25d16b6ef7a@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_170743_407549_CB994894 
X-CRM114-Status: GOOD (  11.14  )
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
Reply-To: wangseok.lee@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBPbsKgMjgvMDMvMjAyMsKgMDQ6MTQswqDsnbTsmZXshJ3CoHdyb3RlOg0KPj7CoEFkZMKgc3Vw
cG9ydMKgQXhpcyzCoEFSVFBFQy04wqBTb0MuDQo+PsKgQVJUUEVDLTjCoGlzwqB0aGXCoFNvQ8Kg
cGxhdGZvcm3CoG9mwqBBeGlzwqBDb21tdW5pY2F0aW9ucy4NCj4+wqBUaGlzwqBpc8KgYmFzZWTC
oG9uwqBhcm02NMKgYW5kwqBzdXBwb3J0wqBHRU40wqAmwqAybGFuZS4NCj4+wqBUaGlzwqBQQ0ll
wqBjb250cm9sbGVywqBpc8KgYmFzZWTCoG9uwqBEZXNpZ25XYXJlwqBIYXJkd2FyZcKgY29yZQ0K
Pj7CoGFuZMKgdXNlc8KgRGVzaWduV2FyZcKgY29yZcKgZnVuY3Rpb25zwqB0b8KgaW1wbGVtZW50
wqB0aGXCoGRyaXZlci4NCj4+wqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBkcml2ZXIvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaS1leHlub3MuYw0KPj7CoA0KPj7CoFNpZ25lZC1vZmYtYnk6wqBXYW5nc2Vv
a8KgTGVlwqANCj4+IC0tLQ0KPj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcg
ICAgICAgIHwgIDMxICsNCj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZSAg
ICAgICB8ICAgMSArDQo+PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1hcnRwZWM4
LmMgfCA5MTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+PiAgMyBmaWxlcyBjaGFu
Z2VkLCA5NDQgaW5zZXJ0aW9ucygrKQ0KPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWFydHBlYzguYw0KPj4gDQo+IA0KPiBJIHRvb2sgYSBsb29r
IGF0IHRoZSB5b3VyIGRyaXZlciBhbmQgYXQgZXhpc3RpbmcgUENJZSBFeHlub3MgZHJpdmVyLg0K
PiBVbmZvcnR1bmF0ZWx5IFBDSWUgRXh5bm9zIGRyaXZlciBpcyBpbiBwb29yIHNoYXBlLCByZWFs
bHkgcG9vci4gVGhpcw0KPiB3b3VsZCBleHBsYWluIHRoYXQgbWF5YmUgaXQncyBiZXR0ZXIgdG8g
aGF2ZSBuZXcgZHJpdmVyIGluc3RlYWQgb2YNCj4gbWVyZ2luZyB0aGVtLCBlc3BlY2lhbGx5IHRo
YXQgaGFyZHdhcmUgaXMgZGlmZmVyZW50LiBBbHRob3VnaCBJIGFtIHN0aWxsDQo+IHdhaXRpbmcg
Zm9yIHNvbWUgZGVzY3JpcHRpb24gb2YgdGhlc2UgZGlmZmVyZW5jZXMuLi4NCj4gDQo+IEkgc2Fp
ZCB0aGF0IEV4eW5vcyBQQ0llIGxvb2tzIHBvb3IuLi4gYnV0IHdoYXQgaXMgd29yc2UsIGl0IGxv
b2tzIGxpa2UNCj4geW91IGJhc2VkIG9uIGl0IHNvIHlvdSBjb3BpZWQgb3Igc29tZSBiYWQgcGF0
dGVybnMgaXQgaGFkLg0KPiANCj4gRXhjZXB0IHRoaXMgdGhlIGRyaXZlciBoYXMgc2V2ZXJhbCBj
b2Rpbmcgc3R5bGUgaXNzdWVzLCBzbyBwbGVhc2UgYmUNCj4gc3VyZSB0byBydW4gY2hlY2twYXRj
aCwgc3BhcnNlIGFuZCBzbWF0Y2ggYmVmb3JlIHNlbmRpbmcgaXQuDQo+IA0KPiBQbGVhc2Ugd29y
ayBvbiB0aGlzIGRyaXZlciB0byBtYWtlIGl0IGNsb3NlIHRvIExpbnV4IGNvZGluZyBzdHlsZSwg
c28NCj4gdGhlcmUgd2lsbCBiZSBubyBuZWVkIGZvciB1cywgcmV2aWV3ZXJzLCBmb2N1cyBvbiBi
YXNpYyBzdHVmZi4NCj4gDQo+IE9wdGlvbmFsbHksIHNlbmQgYWxsIHRoaXMgdG8gc3RhZ2luZy4g
OikNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQpIaSwNCg0KVGhhbmsgeW91IGZv
ciB5b3VyIGtpbmRuZXNzIHJldmlldy4NCkkgd2lsbCByZS13b3JrIGFnYWluIGNsb3NlIHRvIHRo
ZSBsaW51eCBjb2Rpbmcgc3R5bGUuDQpBZGRpbHRpb25hbHksIElmIHlvdSB0ZWxsIG1lIHdoYXQg
ImJhZCBwYXR0ZXJucyIgeW91IG1lbnRpb25lZCwNCml0IHdpbGwgYmUgdmVyeSBoZWxwZnVsIGZv
ciB0aGUgd29yay4NCkNvdWxkIHlvdSBwbGVhc2UgdGVsbCBtZSB0aGF0Pw0KDQpUaGFuayB5b3Uu
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
