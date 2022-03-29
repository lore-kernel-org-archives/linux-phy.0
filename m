Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B739C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 06:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaNA1tEpUd8bhySVO0FYJ6rasEpSvc4wYPMbWwDEs/k=; b=Itfvj4uRqK0Bv0
	uI3slXKQYblfwktWiRlR8PWGU4C+wXuTbCu4Clubs4LVCmq5eU14RwuZRRxst5oVaHJCtczdgom05
	ojZrZMtpFBi26rV15VlAtMlvthkYidTj4CAoz1ADYMI9MFw5yLfvBm4wLOvBGSf9G43IJCqRZzr8c
	MxZorns5+kd+rQ5PH8EIlf6ryUa0rfKmcMBKn/q3Aorv+Oucy6ntnrGy1gbxeudkacVLveVeA+oaG
	blYJz2IQUSQo7MCDRsR04xBKmCcM0BO5dltAl/KfnaZYyNHBcIPhq6t3Hi0J9sqKx1DxdC2fS4IID
	RSkSaFHjc6blnFwxH58w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ5FZ-00BCE9-Vo; Tue, 29 Mar 2022 06:22:41 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ5FV-00BCCT-9i
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 06:22:41 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220329062227epoutp023229b28fdba77526d1932e807868e4ae~gxcznXE7P0398503985epoutp02R
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 06:22:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220329062227epoutp023229b28fdba77526d1932e807868e4ae~gxcznXE7P0398503985epoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648534947;
 bh=N51PSQTtmOXZTnikqsTn+4JvQLS/DokmO4Rw6FKKyok=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=Zm+j0moQXMFHEM9s3rgQzuSVNMrePZu3S+KbcNC3NV9ZoEoi2z82im0RZ6eNcfwiS
 28RTCfV3jXnqUUqzK5DBRFB8Rim9XAxLSbkApSYO0BPInI62UVhs1ltcLaKszhGiG7
 Ezin9uemqyIwQ+6KDo/5PF/oD0zGhhgg6cszB1so=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20220329062226epcas2p42c9e83f9fefb9ef9276a3575005cdfc2~gxcy7dADK1074710747epcas2p4N;
 Tue, 29 Mar 2022 06:22:26 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.36.68]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4KSKH411lvz4x9Q1; Tue, 29 Mar
 2022 06:22:24 +0000 (GMT)
X-AuditID: b6c32a45-4fdff700000228cc-17-6242a59cdbf1
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 D2.48.10444.C95A2426; Tue, 29 Mar 2022 15:22:20 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 4/5] phy: Add ARTPEC-8 PCIe PHY driver
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
In-Reply-To: <da2351be-1fca-4269-cb7b-9dcd6a01b2dc@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220329062220epcms2p2e66ed043478fd6c40906863cead7e8de@epcms2p2>
Date: Tue, 29 Mar 2022 15:22:20 +0900
X-CMS-MailID: 20220329062220epcms2p2e66ed043478fd6c40906863cead7e8de
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJJsWRmVeSWpSXmKPExsWy7bCmhe6cpU5JBtP36lgsacqweHlI02L+
 kXOsFs8PzWK2+NSianHhaQ+bxctZ99gszp/fwG7R0POb1eLIm4/MFvuPr2SyuLxrDpvF2XnH
 2SwmrPrGYvHm9wt2i3OLMy1a9x5ht9h55wSzg5DHmnlrGD2urwvwWLCp1GPTqk42jydXpjN5
 bF5S79G3ZRWjx/Eb25k8Pm+SC+CMyrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQw
 V1LIS8xNtVVy8QnQdcvMAXpFSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgXqBX
 nJhbXJqXrpeXWmJlaGBgZApUmJCd0fnhO3vBAd6Knp6ZzA2MXbxdjJwcEgImEteftrJ1MXJx
 CAnsYJTYuXsvkMPBwSsgKPF3hzBIjbCAlcS+xknMILaQgJLEjjXzmCHi1hKfplxmAbHZBCwl
 LrY+ZASZIyLwjUli9o9XYEOZBW4zS8x//p4FYhuvxIz2p1C2tMT25VsZQWxOATuJd0vnMEPE
 NSR+LOuFskUlbq5+yw5jvz82nxHCFpFovXcWqkZQ4sHP3VBxKYkFTw6xQtjVEvv//maCsBsY
 Jfrvp4I8JiGgL7HjujHEj74SX1tqQCpYBFQl7va8hep0kbh87xDYRGYBbYllC18zg5QzC2hK
 rN+lDzFEWeLILbifGjb+ZkdnMwvwSXQc/gsX3zHvCdQtahLzVu5knsCoPAsRzrOQ7JqFsGsB
 I/MqRrHUguLc9NRiowJDeNQm5+duYgSnaS3XHYyT337QO8TIxMF4iFGCg1lJhFf2rH2SEG9K
 YmVValF+fFFpTmrxIUZToC8nMkuJJucDM0VeSbyhiaWBiZmZobmRqYG5kjivV8qGRCGB9MSS
 1OzU1ILUIpg+Jg5OqQamuZV1MxT3WKRyfJi6OPiK5SHpfsnJHz7eW7k1tODkgbedG521ZFY/
 O8B0fNrbGeE5TCFpphPb5lq0L9bNshRWyw/cvjzkyYpps8s/dH8VS9Yv/eFaceQG4yqNO3Pn
 d90P3/O+Jfi845+7m/bMEX2ScvG0x7v2bU8+3Y49nyTHJtCfb2fEI1Pz0oJ1xR2TNgmXOTl3
 zy0TlEtcnnrc7vLk3Qcs1tYKbCtIScm/Elb989xaJU3D4+ruaU8XdNvs4GhlttHiO1bF3hDz
 NmtCu8/9inzX7/M9627pKCu57ZWX5HeWX9FQfevW3pzmrNvKq+Ye83/lX7r5zqvKC2XGFrkP
 ai5O/nghWjHqc8FcxdO3lFiKMxINtZiLihMBF+7RclwEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4
References: <da2351be-1fca-4269-cb7b-9dcd6a01b2dc@kernel.org>
 <20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4@epcms2p6>
 <CGME20220328021832epcms2p6b6294b824c64404c437d0fd7f09369a4@epcms2p2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_232238_607421_C61E5351 
X-CRM114-Status: GOOD (  11.66  )
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
b2YgS296bG93c2tpwqA8a3J6a0BrZXJuZWwub3JnPg0KPiBEYXRlIDogMjAyMi0wMy0yOCAyMjow
OSAoR01UKzkpDQo+IFRpdGxlIDogUmU6IFtQQVRDSCA0LzVdIHBoeTogQWRkIEFSVFBFQy04IFBD
SWUgUEhZIGRyaXZlcg0KPiDCoA0KPiBPbsKgMjgvMDMvMjAyMsKgMDQ6MTgswqDsnbTsmZXshJ3C
oHdyb3RlOg0KPj7CoEFkZMKgc3VwcG9ydMKgQXhpcyzCoEFSVFBFQy04wqBTb0MuDQo+PsKgQVJU
UEVDLTjCoGlzwqB0aGXCoFNvQ8KgcGxhdGZvcm3CoG9mwqBBeGlzwqBDb21tdW5pY2F0aW9ucy4N
Cj4+wqBUaGlzwqBpc8KgYmFzZWTCoG9uwqBhcm02NMKgYW5kwqBzdXBwb3J0wqBHRU40wqAmwqAy
bGFuZS4NCj4+wqBUaGlzwqBkcml2ZXLCoHByb3ZpZGVzwqBQSFnCoGludGVyZmFjZcKgZm9ywqBB
UlRQRUMtOMKgU29DwqBQQ0llwqBjb250cm9sbGVyLA0KPj7CoGJhc2VkwqBvbsKgU2Ftc3VuZ8Kg
UENJZcKgUEhZwqBJUC4NCj4+wqANCj4gDQo+IFlvdcKgYWxyZWFkecKgc2VudMKgaXTCoG9uwqAy
OHRowqBvZsKgSmFudWFyecKgYW5kwqBkaWTCoG5vdMKgcmVzcG9uZMKgdG/CoG15wqBjb21tZW50
cy4NCj4gDQo+IFBsZWFzZcKgZG/CoG5vdMKgcmVzZW5kwqBzYW1lL3NpbWlsYXLCoGNvZGUswqBi
dXTCoGluc3RlYWTCoHJlc3BvbmTCoHRvwqBjb21tZW50cw0KPiByZWNlaXZlZMKgZWFybGllci4N
Cj4gDQo+IEJlc3TCoHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KSGVsbG8sIEtyenlzenRvZg0KDQpZ
ZXMsIHlvdSBhcmUgcmlnaHQuDQpJIGhhdmUgc2VudCBhIHBhdGNoIHNldCB0aGlzIHRpbWUsIA0K
aW5jbHVkaW5nIHBhcnRzIHRoYXQgbmVlZCB0byBiZSBtb2RpZmllZCBpbiB0aGUgcHJldmlvdXNs
eSBzZW50IHBhdGNoLg0KUGxlYXNlIGlnbm9yZSBwcmV2aW91c2x5IHNlbnQgcGF0Y2ggYW5kIHJl
ZmVyIHRvIHRoZSBuZXcgcGF0Y2ggc2V0Lg0KSSBhbHNvIHJlcGxpZWQgdG8gdGhlIHByZXZpb3Vz
IGUtbWFpbCwNCmJ1dCB0aGUgZW1haWwgYWRkcmVzcyB3YXMgd3JvbmcgYW5kIHJldHVybmVkLg0K
DQpUaGFua3MuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
