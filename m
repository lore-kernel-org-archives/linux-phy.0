Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD5FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 11:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JHon5p+UM0ZO0nZLmKy4tsDNNWB78HNaL1SKXtsvWE=; b=tmxFu1qsiMRrQ2
	FkQzKZeYAeNDgAq4JMKeLhCv2uDw13KTcvz0Bbqj31xFQoC3PH+1GDjZPJXEn0cSkwi6IoWRlBJlC
	8tLq5l9eCzO8z5IMwiYYTjPrgSKGPj+/b/VAR6UALUuvpx+5vjJXej01jQmmqcWgIvvGlvY8tv8nq
	Rc6DuyzS7nDytP3OSsERosfCP4xur0Z6o6tuOVD8DLRWKASB+MOjXzHWLKqnf8iFb8KAFlZeVwW4X
	WcGjo/j9YOWQHW9cDc36uNgWHpfiMqj9LTOs0ePqgKMDdK8UJYswUQBLERiVA90K7qVes2n9c6HxS
	2/b2+zbW/3q+EACHJvSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYnYv-008OgP-Vf; Mon, 28 Mar 2022 11:29:29 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYnYs-008Odp-CT
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 11:29:29 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220328112922epoutp025b613955139df8462a4c55400fe98247~gh-fjaSYR2600526005epoutp02J
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 11:29:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220328112922epoutp025b613955139df8462a4c55400fe98247~gh-fjaSYR2600526005epoutp02J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648466962;
 bh=vSUewbMNA8HwQeSd5z30bPDEh+33/q5/Gq8I560ttKc=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=gakbeW79Y0jc0ql5GIXom6Qw7gE0yqON97hvR1zPbFODfr7XRP+uQspLTNW2xKQjJ
 0TxVxEWqATpZMZZ3EQCv0iyxA5D2FaWggKjumLw0kLkJZX2HT/bRHNgOLk1u5zUJM2
 mLSjDVT4VZUyHWhjMhMY0oFlX2qrSdpgvsmJYFiw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20220328112921epcas2p1d144d08a77e255896603a159bddc0568~gh-eoj-I71362413624epcas2p1w;
 Mon, 28 Mar 2022 11:29:21 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.97]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4KRr7f5WN9z4x9Pw; Mon, 28 Mar
 2022 11:29:18 +0000 (GMT)
X-AuditID: b6c32a46-bffff70000023ea8-7a-62419c0e60bc
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 41.82.16040.E0C91426; Mon, 28 Mar 2022 20:29:18 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
From: =?UTF-8?B?7J207JmV7ISd?= <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
 <lars.persson@axis.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
 <kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
Date: Mon, 28 Mar 2022 20:29:18 +0900
X-CMS-MailID: 20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBJsWRmVeSWpSXmKPExsWy7bCmuS7fHMckg1+PNC2WNGVYvDykaTH/
 yDlWi+eHZjFbfGpRtbjwtIfN4uWse2wW589vYLdo6PnNanHkzUdmi/3HVzJZXN41h83i7Lzj
 bBYTVn1jsXjz+wW7xbnFmRate4+wW+y8c4LZQchjzbw1jB7X1wV4LNhU6rFpVSebx5Mr05k8
 Ni+p9+jbsorR4/iN7UwenzfJBXBGZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqY
 KynkJeam2iq5+AToumXmAL2ipFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9Ar
 TswtLs1L18tLLbEyNDAwMgUqTMjOuHFmF1PBMc2K2Ut0Ghg3aXQxcnJICJhIrOhaxwJiCwns
 YJT4tMKqi5GDg1dAUOLvDmGQsLCAs8S/263MECVKEjvWzGOGiFtLfJpyGayVTcBS4mLrQ8Yu
 Ri4OEYFvTBKzf7xiA3GYBW4zS8x//p4FYhmvxIz2p1C2tMT25VsZQWxOATuJPweeQ8U1JH4s
 62WGsEUlbq5+yw5jvz82nxHCFpFovXcWqkZQ4sHP3VBxKYkFTw6xQtjVEvv//maCsBsYJfrv
 p4I8JiGgL7HjujFImFfAV+J162WwMSwCqhLb1q+BKneR+HD7PlicWUBbYtnC18wgrcwCmhLr
 d+lDTFGWOHIL7qmGjb/Z0dnMAnwSHYf/wsV3zHsCNV1NYt7KncwTGJVnIQJ6FpJdsxB2LWBk
 XsUollpQnJueWmxUYASP2eT83E2M4CSt5baDccrbD3qHGJk4GA8xSnAwK4nwyp61TxLiTUms
 rEotyo8vKs1JLT7EaAr05URmKdHkfGCeyCuJNzSxNDAxMzM0NzI1MFcS5/VK2ZAoJJCeWJKa
 nZpakFoE08fEwSnVwJSf6+jWNLm9XK36/oPytRe8+tWkjHYcUihuiTzN91FbcXqxpNbGpwX9
 N7aEKm4xN4xatNpiYgn7/rkzVMMvtDXdOSVVFsx39mJ6y4sc0ZZtuy9MyFvOf+DruaKlgnrm
 ihvkUjWffq+6P7PTa/nGFAHzKwfZxL9lpZ5c02zNGbXpu9hj28btR8zu9WjOuKrh9fcys/LW
 TV9aud547b4y4cbMCf/4NghfrJvdWXWTWcPP3uzC4WsC/0x8PnBuizqzOlXE9/f/n4czjvmE
 /E5dVKR42kE20Nb3Q8jFSQ2ea6frHhFoc/ikHiCzdfnPzDd/60M3XOnQr26942z6r/p1/zeV
 PstL7eXen05Fns45+FqJpTgj0VCLuag4EQDI7jzTWwQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1
References: <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
 <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_042926_817341_B21C2947 
X-CRM114-Status: GOOD (  12.06  )
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

PiAtLS0tLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0tLS0KPiBTZW5kZXIgOiBLcnp5c3p0
b2YgS296bG93c2tpwqA8a3J6a0BrZXJuZWwub3JnPg0KPiBEYXRlIDogMjAyMi0wMy0yOCAxODoz
OCAoR01UKzkpDQo+IFRpdGxlIDogUmU6IFtQQVRDSCAwLzVdIEFkZCBzdXBwb3J0IGZvciBBeGlz
LCBBUlRQRUMtOCBQQ0llIGRyaXZlcg0KPiANCj4gT27CoDI4LzAzLzIwMjLCoDExOjAyLMKg7J20
7JmV7ISdwqB3cm90ZToNCj4+PsKgLS0tLS0tLS0twqBPcmlnaW5hbMKgTWVzc2FnZcKgLS0tLS0t
LS0tDQo+Pj7CoFNlbmRlcsKgOsKgS3J6eXN6dG9mwqBLb3psb3dza2nCoDxrcnprQGtlcm5lbC5v
cmc+DQo+Pj7CoERhdGXCoDrCoDIwMjItMDMtMjjCoDE2OjEywqAoR01UKzkpDQo+Pj7CoFRpdGxl
wqA6wqBSZTrCoFtQQVRDSMKgMC81XcKgQWRkwqBzdXBwb3J0wqBmb3LCoEF4aXMswqBBUlRQRUMt
OMKgUENJZcKgZHJpdmVyDQo+Pj4NCj4+PsKgT27CoDI4LzAzLzIwMjLCoDAzOjQ0LMKg7J207JmV
7ISdwqB3cm90ZToNCj4+Pj7CoMKgVGhpc8Kgc2VyaWVzwqBwYXRjaGVzwqBpbmNsdWRlwqBuZXds
ecKgUENJZcKgc3VwcG9ydMKgZm9ywqBBeGlzwqBBUlRQRUMtOMKgU29DLg0KPj4+PsKgwqBBUlRQ
RUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmljYXRpb25zLg0K
Pj4+PsKgwqBQQ0llwqBjb250cm9sbGVywqBkcml2ZXLCoGFuZMKgcGh5wqBkcml2ZXLCoGhhdmXC
oGJlZW7CoG5ld2x5wqBhZGRlZC4NCj4+Pj7CoMKgVGhlcmXCoGlzwqBhbHNvwqBhwqBuZXfCoE1B
SU5UQUlORVLCoGluwqB0aGXCoGFkZGl0aW9uwqBvZsKgcGh5wqBkcml2ZXIuDQo+Pj4+wqDCoFBD
SWXCoGNvbnRyb2xsZXLCoGlzwqBkZXNpZ25lZMKgYmFzZWTCoG9uwqBEZXNpZ24tV2FyZcKgUENJ
ZcKgY29udHJvbGxlcsKgSVANCj4+Pj7CoMKgYW5kwqBQQ0llwqBwaHnCoGlzwqBkZXNpbmdlZMKg
YmFzZWTCoG9uwqBTQU1TVU5HwqBQSFnCoElQLg0KPj4+PsKgwqBJdMKgYWxzb8KgaW5jbHVkZXPC
oG1vZGlmaWNhdGlvbnPCoHRvwqB0aGXCoERlc2lnbi1XYXJlwqBjb250cm9sbGVywqBkcml2ZXLC
oHRvwqANCj4+Pj7CoMKgcnVuwqB0aGXCoDY0Yml0LWJhc2VkwqBBUlRQRUMtOMKgUENJZcKgY29u
dHJvbGxlcsKgZHJpdmVyLg0KPj4+PsKgwqBJdMKgY29uc2lzdHPCoG9mwqA2wqBwYXRjaGVzwqBp
bsKgdG90YWwuDQo+Pj4+wqDCoA0KPj4+PsKgwqBUaGlzwqBzZXJpZXPCoGhhc8KgYmVlbsKgdGVz
dGVkwqBvbsKgQVhJU8KgU1fCoGJyaW5nLXVwwqBib2FyZMKgDQo+Pj4+wqDCoHdpdGjCoEFSVFBF
Qy04wqBjaGlwc2V0Lg0KPj4+DQo+Pj7CoFlvdcKgbG9zdMKgbWFpbMKgdGhyZWFkaW5nLsKgVGhp
c8KgbWFrZXPCoHJlYWRpbmfCoHRoaXPCoGRpZmZpY3VsdMKgZm9ywqB1cy7CoFBsdXMNCj4+PsKg
eW91wqBzZW50wqBzb21ldGhpbmfCoG5vbi1hcHBsaWNhYmxlwqAocGF0Y2jCoCMyKSzCoHNvwqBw
bGVhc2XCoHJlc2VuZC4NCj4+Pg0KPj4+wqBLbm93aW5nwqByZWNlbnTCoFNhbXN1bmfCoHJlbHVj
dGFuY2XCoHRvwqBleHRlbmTCoGV4aXN0aW5nwqBkcml2ZXJzwqBhbmTCoGFsd2F5cw0KPj4+wqBk
dXBsaWNhdGUswqBwbGVhc2XCoHByb3ZpZGXCoGRlc2NyaXB0aW9uL2FuYWx5c2lzwqB3aHnCoHRo
aXPCoGRyaXZlcsKgY2Fubm90wqBiZQ0KPj4+wqBjb21iaW5lZMKgd2l0aMKgZXhpc3RpbmfCoGRy
aXZlci7CoFRoZcKgYW5zd2VywqBsaWtlOsKgd2XCoG5lZWTCoHNldmVyYWzCoHN5c2Nvbg0KPj4+
wqBiZWNhdXNlwqB3ZcKgZG/CoG5vdMKgaW1wbGVtZW50wqBvdGhlcsKgZnJhbWV3b3Jrc8KgKGxp
a2XCoGludGVyY29ubmVjdCnCoGFyZcKgbm90DQo+Pj7CoHZhbGlkLg0KPj4+DQo+Pj7CoEJlc3TC
oHJlZ2FyZHMsDQo+Pj7CoEtyenlzenRvZg0KPj7CoA0KPj7CoEhlbGxvLMKgS3J6eXN6dG9mDQo+
PsKgVGhhbmtzwqBmb3LCoHlvdXLCoHJldmlldy4NCj4+wqANCj4+wqBwYXRjaCMywqB3YXPCoHNl
bnTCoHRvwqB0aGXCoHdyb25nwqBmb3JtYXTCoHNvwqBzZW50wqBhZ2Fpbi4NCj4+wqBTb3JyecKg
Zm9ywqBjYXVzaW5nwqBjb25mdXNpb24uDQo+IMKgDQo+IFRoZcKgZmlyc3TCoHNlbmRpbmfCoHdh
c8KgSFRNTC7CoFNlY29uZMKgd2FzwqBicm9rZW7CoHRleHQswqBzb8Kgc3RpbGzCoG5vdMKgd29y
a2luZy4NCj4gDQo+IFBsZWFzZcKgcmVzZW5kwqBldmVyeXRoaW5nwqB3aXRowqBwcm9wZXLCoHRo
cmVhZGluZy4NCg0KSGVsbG8sIEtyenlzenRvZg0KDQpJIHNlbnQgcGF0Y2gjMiB0aHJlZSB0aW1l
cy4NCmR1ZSB0byB0aGUgaW5mbHVlbmNlIG9mIHRoZSBlbWFpbCBzeXN0ZW0sDQp0aGVyZSB3YXMg
c29tZXRoaW5nIHdyb25nIHdpdGggdGhlIGZpcnN0IGFuZCBzZWNvbmQgbWFpbHMuDQpTb3JyeSBm
b3IgY2F1c2luZyBjb25mdXNpb24uDQpEaWQgeW91IHJlY2VpdmUgdGhlIHRoaXJkIHBhdGNoIGkg
c2VudCB5b3U/DQogDQo+PsKgVGhpc8KgcGF0Y2jCoGlzwqBzcGVjaWFsaXplZMKgaW7CoEFydHBl
Yy04LMKgDQo+PsKgdGhlwqBTb0PCoFBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNhdGlvbizC
oGFuZMKgaXPCoG5ld2x5wqBhcHBsaWVkLg0KPj7CoFNpbmNlwqB0aGXCoHRhcmdldMKgU29DwqBw
bGF0Zm9ybcKgaXPCoGRpZmZlcmVudMKgZnJvbcKgdGhlwqBkcml2ZXLCoHByZXZpb3VzbHnCoA0K
Pj7CoHVzZWTCoGJ5wqBTYW1zdW5nLMKgaXTCoGlzwqBkaWZmaWN1bHTCoHRvwqBtZXJnZcKgd2l0
aMKgdGhlwqBleGlzdGluZ8KgZHJpdmVyLg0KPiANCj4gUmVjZW50bHnCoEnCoGFsd2F5c8Kgc2F3
wqBzdWNowqBhbnN3ZXJzwqBhbmTCoHNvbWV0aW1lc8KgaXTCoHdhc8KgdHJ1ZSzCoHNvbWV0aW1l
cw0KPiBub3QuwqBXaGF0wqBpc8KgZXhhY3RsecKgZGlmZmVyZW50Pw0KPiANCj4gQmVzdMKgcmVn
YXJkcywNCj4gS3J6eXN6dG9mDQoNClRoZSBtYWluIHJlYXNvbiB0aGlzIHBhdGNoIHNob3VsZCBi
ZSBhZGRlZCBpcyB0aGF0DQp0aGlzIHBhdGNoIGlzIG5vdCB0aGUgZHJpdmVyIGFwcGxpZWQgdG8g
ZXh5bm9zIHBsYXRmb3JtLg0KQmVjYXVzZSB0aGUgU29DIHBsYXRmb3JtIGlzIGRpZmZlcmVudCwg
DQp0aGUgSVAgY29uZmlndXJhdGlvbiBvZiBQQ0llIGlzIGFsc28gZGlmZmVyZW50Lg0KV2Ugd2ls
bCBvcmdhbml6ZSBhIGRyaXZlciBmb3IgQXJ0cGVjLTggcGxhdGZvcm0gYW5kIA0KaWYgdGhlcmUg
aXMgbm8gc3BlY2lhbCByZWFzb24sIG1haW50YWluIHRoaXMgDQp3aXRob3V0IGFkZGluZyBpdCBm
cm9tIHRoZSBuZXh0IHNlcmllcy4NCg0KVGhhbmsgeW91LgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
