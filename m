Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACD57C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 09:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJWIsL/rbYW/KYRAwHt31PFQUSb8nSjcyUOPIe3bWhs=; b=KAr0ANIyPO6all
	RMV/ohnWbpevr4TKeNzxZj5Do5lVIXiA+QvlyJPB8m7FoDm91uCjpXi5Kg92r2eVlVqvdUXivB8Ds
	MMtJcz7HsAn4BmiNCOErVUiDtZ0tmqnOFKwqKb5rEil2EcyB7nv2IvZ5VdE+o6OgniXxfwgUOpn1X
	bl51nhSVSF4n4k+WKCbTo2vwlSxh4sHiCC9KPABbxAkwcverVWm+GcY26iNtu8Rp/aSlcEcYo7Dtx
	nmxSRTaFJ1oDAMLNVqVfrzzeHoQFBsHNTQ/LuF/MI/7QLz0PpjcA9oZhWNPTeo2Y70ozdFyjcz63K
	BrSW2jRVAxPNXDl0FN2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYlGP-007xgg-61; Mon, 28 Mar 2022 09:02:13 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYlGM-007xfh-3e
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 09:02:12 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220328090205epoutp02cfff7839d65eddbf647a81ed69b5ee79~gf_58QruK2053620536epoutp02c
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 09:02:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220328090205epoutp02cfff7839d65eddbf647a81ed69b5ee79~gf_58QruK2053620536epoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648458125;
 bh=eF3iknj3DFZy4JaEdicp6aGFJOG1Z9lY5FCFTX5urrE=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=gqvmNjmvPjtnfj/XYX4rghceIHBtZWtoFUBG8vZ+ntaaQCd1tN78ebAftTqGzFj4g
 WsfwC9oD7EdRBLknlWSeiDS2O3OZiaWxuOSmfpCWhS1d85bDJq9pzrwmao8ZyiMPpy
 oEUzcSrgzrcXIPT8afab2+wErs0mZtDSGfjJyafM=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20220328090205epcas2p46d90d925fa6c81d906e1c5c372b2a6d5~gf_5WBIOh2027020270epcas2p4s;
 Mon, 28 Mar 2022 09:02:05 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.91]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4KRmsj6GtHz4x9QT; Mon, 28 Mar
 2022 09:02:01 +0000 (GMT)
X-AuditID: b6c32a47-831ff700000063c4-a2-62417988c360
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 8F.7A.25540.88971426; Mon, 28 Mar 2022 18:02:00 +0900 (KST)
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
In-Reply-To: <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
Date: Mon, 28 Mar 2022 18:02:00 +0900
X-CMS-MailID: 20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFJsWRmVeSWpSXmKPExsWy7bCmmW5HpWOSwcKnBhZLmjIsXh7StJh/
 5ByrxfNDs5gtPrWoWlx42sNm8XLWPTaL8+c3sFs09PxmtTjy5iOzxf7jK5ksLu+aw2Zxdt5x
 NosJq76xWLz5/YLd4tziTIvWvUfYLXbeOcHsIOSxZt4aRo/r6wI8Fmwq9di0qpPN48mV6Uwe
 m5fUe/RtWcXocfzGdiaPz5vkAjijsm0yUhNTUosUUvOS81My89JtlbyD453jTc0MDHUNLS3M
 lRTyEnNTbZVcfAJ03TJzgF5RUihLzCkFCgUkFhcr6dvZFOWXlqQqZOQXl9gqpRak5BSYF+gV
 J+YWl+al6+WlllgZGhgYmQIVJmRn/PnwnKlgnkTFvf1zWBoYj4h3MXJySAiYSFz4sImxi5GL
 Q0hgB6PE90X7gBwODl4BQYm/O4RBaoQFnCX+3W5lBrGFBJQkdqyZxwwRt5b4NOUyC4jNJmAp
 cbH1IdgcEYFvTBKzf7xiA3GYBW4zS8x//p4FYhuvxIz2p1C2tMT25VsZQWxOATuJD997WCHi
 GhI/lvUyQ9iiEjdXv2WHsd8fm88IYYtItN47C1UjKPHg526ouJTEgieHoOZUS+z/+5sJwm5g
 lOi/nwrymISAvsSO68YgYV4BX4me6fvASlgEVIF+74Na5SJxauI0MJtZQFti2cLXzCCtzAKa
 Eut36UNMUZY4cgvuqYaNv9nR2cwCfBIdh//CxXfMewJ1jJrEvJU7mScwKs9CBPQsJLtmIexa
 wMi8ilEstaA4Nz212KjAGB63yfm5mxjBiVrLfQfjjLcf9A4xMnEwHmKU4GBWEuGVPWufJMSb
 klhZlVqUH19UmpNafIjRFOjLicxSosn5wFyRVxJvaGJpYGJmZmhuZGpgriTO65WyIVFIID2x
 JDU7NbUgtQimj4mDU6qBKSbZyKc810Pt4bHASe8fnha75MIhtXTRnF07/91eIeTwX1trE8uM
 A28DYtUTHrlGae9WrzW1qP7Tl1DJLLBw4YNUPi2rOu6lvatXf2jYfMs6s19kt+YjiyVTqzt1
 /xkcDno0Yd3ej884IpczfEzPesud2e4b5uZ0+bXXm/1TfWXnmx9srLu+cY0Dm+meq/OOWDa6
 iZQHS8uXP9a3O/JrT8vCsm9/vhbwr5/i2bn0/qm1R5tXT+86/+L2U/aZkv3u/yQOl+un7Wds
 miM/+b7VuflFV622/Ap927zIX0hH8+XMbWrT/+ssP5fxyaupfdOTeybld259nP0nK7/ZTI79
 f2NlZNoy+R9mLwqXeXob3FViKc5INNRiLipOBACCdAQSXQQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1
References: <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_020210_749302_2CEBED0C 
X-CRM114-Status: GOOD (  12.14  )
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
b2YgS296bG93c2tpwqA8a3J6a0BrZXJuZWwub3JnPg0KPiBEYXRlIDogMjAyMi0wMy0yOCAxNjox
MiAoR01UKzkpDQo+IFRpdGxlIDogUmU6IFtQQVRDSCAwLzVdIEFkZCBzdXBwb3J0IGZvciBBeGlz
LCBBUlRQRUMtOCBQQ0llIGRyaXZlcg0KPiANCj4gT27CoDI4LzAzLzIwMjLCoDAzOjQ0LMKg7J20
7JmV7ISdwqB3cm90ZToNCj4gPsKgVGhpc8Kgc2VyaWVzwqBwYXRjaGVzwqBpbmNsdWRlwqBuZXds
ecKgUENJZcKgc3VwcG9ydMKgZm9ywqBBeGlzwqBBUlRQRUMtOMKgU29DLg0KPiA+wqBBUlRQRUMt
OMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmljYXRpb25zLg0KPiA+
wqBQQ0llwqBjb250cm9sbGVywqBkcml2ZXLCoGFuZMKgcGh5wqBkcml2ZXLCoGhhdmXCoGJlZW7C
oG5ld2x5wqBhZGRlZC4NCj4gPsKgVGhlcmXCoGlzwqBhbHNvwqBhwqBuZXfCoE1BSU5UQUlORVLC
oGluwqB0aGXCoGFkZGl0aW9uwqBvZsKgcGh5wqBkcml2ZXIuDQo+ID7CoFBDSWXCoGNvbnRyb2xs
ZXLCoGlzwqBkZXNpZ25lZMKgYmFzZWTCoG9uwqBEZXNpZ24tV2FyZcKgUENJZcKgY29udHJvbGxl
csKgSVANCj4gPsKgYW5kwqBQQ0llwqBwaHnCoGlzwqBkZXNpbmdlZMKgYmFzZWTCoG9uwqBTQU1T
VU5HwqBQSFnCoElQLg0KPiA+wqBJdMKgYWxzb8KgaW5jbHVkZXPCoG1vZGlmaWNhdGlvbnPCoHRv
wqB0aGXCoERlc2lnbi1XYXJlwqBjb250cm9sbGVywqBkcml2ZXLCoHRvwqANCj4gPsKgcnVuwqB0
aGXCoDY0Yml0LWJhc2VkwqBBUlRQRUMtOMKgUENJZcKgY29udHJvbGxlcsKgZHJpdmVyLg0KPiA+
wqBJdMKgY29uc2lzdHPCoG9mwqA2wqBwYXRjaGVzwqBpbsKgdG90YWwuDQo+ID7CoA0KPiA+wqBU
aGlzwqBzZXJpZXPCoGhhc8KgYmVlbsKgdGVzdGVkwqBvbsKgQVhJU8KgU1fCoGJyaW5nLXVwwqBi
b2FyZMKgDQo+ID7CoHdpdGjCoEFSVFBFQy04wqBjaGlwc2V0Lg0KPiANCj4gWW91wqBsb3N0wqBt
YWlswqB0aHJlYWRpbmcuwqBUaGlzwqBtYWtlc8KgcmVhZGluZ8KgdGhpc8KgZGlmZmljdWx0wqBm
b3LCoHVzLsKgUGx1cw0KPiB5b3XCoHNlbnTCoHNvbWV0aGluZ8Kgbm9uLWFwcGxpY2FibGXCoChw
YXRjaMKgIzIpLMKgc2/CoHBsZWFzZcKgcmVzZW5kLg0KPiANCj4gS25vd2luZ8KgcmVjZW50wqBT
YW1zdW5nwqByZWx1Y3RhbmNlwqB0b8KgZXh0ZW5kwqBleGlzdGluZ8KgZHJpdmVyc8KgYW5kwqBh
bHdheXMNCj4gZHVwbGljYXRlLMKgcGxlYXNlwqBwcm92aWRlwqBkZXNjcmlwdGlvbi9hbmFseXNp
c8Kgd2h5wqB0aGlzwqBkcml2ZXLCoGNhbm5vdMKgYmUNCj4gY29tYmluZWTCoHdpdGjCoGV4aXN0
aW5nwqBkcml2ZXIuwqBUaGXCoGFuc3dlcsKgbGlrZTrCoHdlwqBuZWVkwqBzZXZlcmFswqBzeXNj
b24NCj4gYmVjYXVzZcKgd2XCoGRvwqBub3TCoGltcGxlbWVudMKgb3RoZXLCoGZyYW1ld29ya3PC
oChsaWtlwqBpbnRlcmNvbm5lY3QpwqBhcmXCoG5vdA0KPiB2YWxpZC4NCj4gDQo+IEJlc3TCoHJl
Z2FyZHMsDQo+IEtyenlzenRvZg0KDQpIZWxsbywgS3J6eXN6dG9mDQpUaGFua3MgZm9yIHlvdXIg
cmV2aWV3Lg0KDQpwYXRjaCMyIHdhcyBzZW50IHRvIHRoZSB3cm9uZyBmb3JtYXQgc28gc2VudCBh
Z2Fpbi4NClNvcnJ5IGZvciBjYXVzaW5nIGNvbmZ1c2lvbi4NCg0KVGhpcyBwYXRjaCBpcyBzcGVj
aWFsaXplZCBpbiBBcnRwZWMtOCwgDQp0aGUgU29DIFBsYXRmb3JtIG9mIEF4aXMgQ29tbXVuaWNh
dGlvbiwgYW5kIGlzIG5ld2x5IGFwcGxpZWQuDQpTaW5jZSB0aGUgdGFyZ2V0IFNvQyBwbGF0Zm9y
bSBpcyBkaWZmZXJlbnQgZnJvbSB0aGUgZHJpdmVyIHByZXZpb3VzbHkgDQp1c2VkIGJ5IFNhbXN1
bmcsIGl0IGlzIGRpZmZpY3VsdCB0byBtZXJnZSB3aXRoIHRoZSBleGlzdGluZyBkcml2ZXIuDQoN
ClRoYW5rcy4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
