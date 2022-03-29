Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECAD4C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 05:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BJbAJXqUhxHVEXEhNhfOjKY1Ibv00j/5vMsBf7KdKg=; b=Q11MLQDAZacYZ8
	iVsZquuGL9VIBxQdUXcIwBjUFxm5WB47kOPFkffs+VMEwE89M7fmgPLotm5Ylaoibd9wlSs5wSxQ1
	X10V2VJuHx/ywuwwLaGRu6F4p5HUgrYDopWGvna7/Og7rKHfczzSvv90GloipdRuQvQsLJJAgJDbG
	9RWQ2KJlVXi2ZQiXX1cXefKZTZFyn/wLhnG2Bwsvo6sruiLWq0IU3oKFINerAHDeOBXka9Ul2JLkf
	ozKTkIpvrRBacnHmPTNiZ30W94D/FpWWszgdLjlUr0ArP+hpwevhTiMpRQy0OZ4XqtIIMNTMc2BmC
	U2lMI66zdsvE2XEU6vfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ4Hu-00B5Oc-Dt; Tue, 29 Mar 2022 05:21:02 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ4Hq-00B5Np-UW
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 05:21:01 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20220329052055epoutp03420a190102334883b52c3f3c5b9066d6~gwnEx6EWa0885208852epoutp03Q
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 05:20:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20220329052055epoutp03420a190102334883b52c3f3c5b9066d6~gwnEx6EWa0885208852epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648531255;
 bh=9fjLCEadA6/+3pmT0Zg5DOylhoulxyWmmYdU3kRn7Ro=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=Ip+GEYkxSTJAv9tGFkLNfPIxeYoDWb16YaStL1nATztdFijGEUQKX+qv1+Bt69yU1
 6FZIu/vivNPK+pVx88yoeShB9eEQQyq1W+hgvNPboVmwht9S3UOLHum+EXcLsvQA8u
 vrmCctA4WisrLuxiNklk30J7K+ykCqRbl6ncw3I8=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20220329052054epcas2p1e9ac022b162b5dbca77c441e89f1efa8~gwnEKwr1a0181101811epcas2p1B;
 Tue, 29 Mar 2022 05:20:54 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4KSHw50J8sz4x9QT; Tue, 29 Mar
 2022 05:20:53 +0000 (GMT)
X-AuditID: b6c32a46-bffff70000023ea8-99-6242973273f9
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.2B.16040.23792426; Tue, 29 Mar 2022 14:20:50 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
From: =?UTF-8?B?7J207JmV7ISd?= <wangseok.lee@samsung.com>
To: Rob Herring <robh@kernel.org>
CC: "kernel@axis.com" <kernel@axis.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kw@linux.com" <kw@linux.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 =?UTF-8?B?7KCE66y46riw?= <moonki.jun@samsung.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "jesper.nilsson@axis.com"
 <jesper.nilsson@axis.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1648471865.787623.2153571.nullmailer@robh.at.kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220329052049epcms2p623bd47de38aba8a43689e515bc712ede@epcms2p6>
Date: Tue, 29 Mar 2022 14:20:49 +0900
X-CMS-MailID: 20220329052049epcms2p623bd47de38aba8a43689e515bc712ede
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBJsWRmVeSWpSXmKPExsWy7bCmha7RdKckg1k3uS2WNGVYvDykaTH/
 yDlWi+eHZjFbfGpRtbjwtIfN4uWse2wWDT2/WS2OvPnIbLH/+Eomi8u75rBZnJ13nM1iwqpv
 LBZvfr9gtzi3ONOide8Rdov/e3awW+y8c4LZQchjzbw1jB7X1wV4LNhU6rFpVSebx5Mr05k8
 Ni+p9+jbsorR4/iN7UwenzfJBXBGZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqY
 KynkJeam2iq5+AToumXmAL2ipFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9Ar
 TswtLs1L18tLLbEyNDAwMgUqTMjOmLDiJHNBv2TF4ok72BsYN0t0MXJySAiYSDz4cJypi5GL
 Q0hgB6PEyivX2boYOTh4BQQl/u4QBqkRFnCQ2LPiMxuILSSgJLFjzTxmiLi1xKcpl1lAbDYB
 S4mLrQ8ZQWwRAUWJ323TWEFsZoEVbBJrmrIgdvFKzGh/ygJhS0tsX74VrJ5TwE3ib/8xVoi4
 hsSPZb3MELaoxM3Vb9lh7PfH5jNC2CISrffOQtUISjz4uRsqLiWx4MkhqDnVEvv//maCsBsY
 Jfrvp4K8JSGgL7HjujFImFfAV+Lzs8tgY1gEVCUmtZ+FOs1F4uLhFmaI87Ulli18zQzSyiyg
 KbF+lz7EFGWJI7dYYJ5q2PibHZ3NLMAn0XH4L1x8x7wnUMeoScxbuZN5AqPyLEQwz0KyaxbC
 rgWMzKsYxVILinPTU4uNCozgMZucn7uJEZyktdx2ME55+0HvECMTB+MhRgkOZiURXtmz9klC
 vCmJlVWpRfnxRaU5qcWHGE2BvpzILCWanA/ME3kl8YYmlgYmZmaG5kamBuZK4rxeKRsShQTS
 E0tSs1NTC1KLYPqYODilGpjaDyW0NH1V+nP5tWxoXFjeneJ6zYfRnjsVFnifU7d2PCy09vO6
 mZ9Sl0XJm288v6benOnGmj1JZo53513s/ONnFHHxT5jpirS7O4RuP2g52/lRTle1fZP7U9nW
 ro7ZvHMy/PRs3tVMSXfnfOrD8IDLdMl84Z+Lkn05Xmxq4Uo1uXsqs3PHyist/ZI8ilv5TfX3
 hur9nbU1aF5Wjl/NpOOBYQ+bFPUsFlkG6/QpLDqfce8Pe47UW+MJZ+2fHX+T+kf6bLq46rKt
 4UYv+524/l48JxQn571HjsP4s5DdetNbZ4KnfZLNX6+a/3yuWujC3yYaBep8pb/m5SVdbNmm
 z9bUKem/jv2sm32udHDqRyWW4oxEQy3mouJEANffGbJbBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603
References: <1648471865.787623.2153571.nullmailer@robh.at.kernel.org>
 <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
 <CGME20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_222059_484097_E231055F 
X-CRM114-Status: GOOD (  11.37  )
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

PiAtLS0tLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0tLS0KPiBTZW5kZXIgOiBSb2IgSGVy
cmluZ8KgPHJvYmhAa2VybmVsLm9yZz4NCj4gRGF0ZSA6IDIwMjItMDMtMjggMjE6NTEgKEdNVCs5
KQ0KPiBUaXRsZSA6IFJlOiBbUEFUQ0ggMi81XSBkdC1iaW5kaW5nczogcGh5OiBBZGQgQVJUUEVD
LTggUENJZSBwaHkNCj4gDQo+IE9uwqBNb24swqAyOMKgTWFywqAyMDIywqAxNzo0MzoxOcKgKzA5
MDAswqDvv73rjIHvv73vv73vv73vv73CoHdyb3RlOg0KPj7CoEFkZMKgZGVzY3JpcHRpb27CoHRv
wqBzdXBwb3J0wqBBeGlzLMKgQVJUUEVDLTjCoFNvQy4NCj4+wqBBUlRQRUMtOMKgaXPCoHRoZcKg
U29DwqBwbGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmljYXRpb25zDQo+PsKgYW5kwqBQQ0llwqBw
aHnCoGlzwqBkZXNpZ25lZMKgYmFzZWTCoG9uwqBTQU1TVU5HwqBQSFkuDQo+PsKgDQo+PsKgU2ln
bmVkLW9mZi1ieTrCoFdhbmdzZW9rwqBMZWXCoDx3YW5nc2Vvay5sZWVAc2Ftc3VuZy5jb20+DQo+
PsKgLS0tDQo+PsKgwqAuLi4vYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55YW1s
wqDCoMKgwqDCoMKgwqDCoHzCoDY3wqArKysrKysrKysrKysrKysrKysrKysrDQo+PsKgwqAxwqBm
aWxlwqBjaGFuZ2VkLMKgNjfCoGluc2VydGlvbnMoKykNCj4+wqDCoGNyZWF0ZcKgbW9kZcKgMTAw
NjQ0wqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1w
Y2llLXBoeS55YW1sDQo+PsKgDQo+IA0KPiBNecKgYm90wqBmb3VuZMKgZXJyb3JzwqBydW5uaW5n
wqAnbWFrZcKgRFRfQ0hFQ0tFUl9GTEFHUz0tbcKgZHRfYmluZGluZ19jaGVjaycNCj4gb27CoHlv
dXLCoHBhdGNowqAoRFRfQ0hFQ0tFUl9GTEFHU8KgaXPCoG5ld8KgaW7CoHY1LjEzKToNCj4gDQo+
IHlhbWxsaW50wqB3YXJuaW5ncy9lcnJvcnM6DQo+IA0KPiBkdHNjaGVtYS9kdGPCoHdhcm5pbmdz
L2Vycm9yczoNCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9heGlzLGFy
dHBlYzgtcGNpZS1waHkuZXhhbXBsZS5kdC55YW1sOjA6MDrCoC9leGFtcGxlLTAvYXJ0ZWM4L3Bj
aWUtcGh5QDE2YzgwMDAwOsKgZmFpbGVkwqB0b8KgbWF0Y2jCoGFuecKgc2NoZW1hwqB3aXRowqBj
b21wYXRpYmxlOsKgWydzYW1zdW5nLGFydHBlYzgtcGNpZS1waHknXQ0KPiANCj4gZG9jwqByZWZl
cmVuY2XCoGVycm9yc8KgKG1ha2XCoHJlZmNoZWNrZG9jcyk6DQo+IA0KPiBTZWXCoGh0dHBzOi8v
cHJvdGVjdDIuZmlyZWV5ZS5jb20vdjEvdXJsP2s9MGZkZDVlZGMtNmYzZmMzODEtMGZkY2Q1OTMt
MDAwYmFiZDlmMWJhLWNkNzMxMDEzZmRkNzIzODkmcT0xJmU9ZGYyMGYyMjktNjA2YS00ZTZhLWJj
YjItMmNiZGMzOTkyNDhlJnU9aHR0cHMlM0ElMkYlMkZwYXRjaHdvcmsub3psYWJzLm9yZyUyRnBh
dGNoJTJGMTYxMDA2OA0KPiANCj4gVGhpc8KgY2hlY2vCoGNhbsKgZmFpbMKgaWbCoHRoZXJlwqBh
cmXCoGFuecKgZGVwZW5kZW5jaWVzLsKgVGhlwqBiYXNlwqBmb3LCoGHCoHBhdGNoDQo+IHNlcmll
c8KgaXPCoGdlbmVyYWxsecKgdGhlwqBtb3N0wqByZWNlbnTCoHJjMS4NCj4gDQo+IElmwqB5b3XC
oGFscmVhZHnCoHJhbsKgJ21ha2XCoGR0X2JpbmRpbmdfY2hlY2snwqBhbmTCoGRpZG4ndMKgc2Vl
wqB0aGXCoGFib3ZlDQo+IGVycm9yKHMpLMKgdGhlbsKgbWFrZcKgc3VyZcKgJ3lhbWxsaW50J8Kg
aXPCoGluc3RhbGxlZMKgYW5kwqBkdC1zY2hlbWHCoGlzwqB1cMKgdG8NCj4gZGF0ZToNCj4gDQo+
IHBpcDPCoGluc3RhbGzCoGR0c2NoZW1hwqAtLXVwZ3JhZGUNCj4gDQo+IFBsZWFzZcKgY2hlY2vC
oGFuZMKgcmUtc3VibWl0Lg0KDQpIZWxsbyBSb2IgSGVycmluZw0KVGhhbmtzIGZvciB5b3VyIHJl
dmlldy4NCg0KSSB3cm90ZSB0aGUgd3JvbmcgImNvbXBhdGlibGUiIHZhbHVlLg0Kc28gaSB3aWxs
IG1vZGlmeSB0aGlzIHBhcnQgYW5kIHN1bW1pdCBpdCBhZ2Fpbi4NCmFsc28gaSBjaGVja2VkIHRo
ZSByZXN1bHQgYnkgcGVyZm9ybWluZyANCiJtYWtlIGR0X2JpbmRpbmdfY2hlY2sgRFRfU0NIRU1B
X0ZJTEVTPQ0KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9heGlzLGFydHBl
YzgtcGNpZS55YW1sIi4NCg0KVGhhbmtzLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
