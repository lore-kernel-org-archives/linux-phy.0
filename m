Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5137C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 03:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ftWccUMqD9HWTlaLfYyl5hifZQr9jU1GXxg7rgGDwY=; b=UWM8t+4vjhIVVB
	JLTBnYdt5FkY5cAv+3piQmF4TWnzf77tKDRsygNvhkRkvdRFipLEEv0x82+tncHGbwzqS6nDEXpsg
	QMPELjkP3HGMlnfpSHq9cY3bteAniho0rdB/H27BjJwUdPMI95WkEuL8iojDW0vQbWAJKP6xPGh8Z
	PB+WQBLA5b1g6f19sFGCIrXQw3o4XIbxvDVaEYYH1f2MjtmHKG+RGGzZN5XeBgaFvbeLcBxi4Ysor
	qScm5IPJ+Kca96O6JDtSYzB1sBrGn1brnwMjR6ulT6G1ltXUfoVPbXDeULz7Q7zwBg24u/bj/1UtN
	LMnfhG1z102RYTKmbJEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ2rq-00Ax7S-9v; Tue, 29 Mar 2022 03:50:02 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ2rm-00Ax6H-Ii
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 03:50:01 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20220329034953epoutp045528fefd1e361ae41b20594b6ef9e5b3~gvXmMNBCy1026510265epoutp049
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 03:49:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20220329034953epoutp045528fefd1e361ae41b20594b6ef9e5b3~gvXmMNBCy1026510265epoutp049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648525793;
 bh=PS7xjfk7eSwGLAi/Q3oQyLCdyKqSh7gNFdsMgNu3oEk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=NJ3FKO0SexvCUom5lmq38pbK9n97OGUtOQks6/IGGcRZbcL8TR5UQZ5TQzIQHzDLB
 EBEef5OmGDNuKd4my3672ww5vqu2FWiCY23PinolwSRJfKpcwuvQGTYYi3ShJOgb2k
 hkjyFIrh3sUO9P+ihFgJpOWb91crvqU1kg45wRKc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20220329034952epcas2p30b60294081e0903c5ddc4125a1222ece~gvXlkKTTa2083920839epcas2p3T;
 Tue, 29 Mar 2022 03:49:52 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.102]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4KSFv167Rcz4x9QH; Tue, 29 Mar
 2022 03:49:49 +0000 (GMT)
X-AuditID: b6c32a46-bffff70000023ea8-b5-624281dd3fbb
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.F8.16040.DD182426; Tue, 29 Mar 2022 12:49:49 +0900 (KST)
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
In-Reply-To: <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220329034949epcms2p1717d820646c878f314b03e07c2d092ba@epcms2p1>
Date: Tue, 29 Mar 2022 12:49:49 +0900
X-CMS-MailID: 20220329034949epcms2p1717d820646c878f314b03e07c2d092ba
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJJsWRmVeSWpSXmKPExsWy7bCmqe7dRqckg68HRSyWNGVYvDykaTH/
 yDlWi+eHZjFbfGpRtbjwtIfN4uWse2wW589vYLdo6PnNanHkzUdmi/3HVzJZXN41h83i7Lzj
 bBYTVn1jsXjz+wW7xbnFmRate4+wW+y8c4LZQchjzbw1jB7X1wV4LNhU6rFpVSebx5Mr05k8
 Ni+p9+jbsorR4/iN7UwenzfJBXBGZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqY
 KynkJeam2iq5+AToumXmAL2ipFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9Ar
 TswtLs1L18tLLbEyNDAwMgUqTMjO2HlxP1vBRceKm2/bmRoY39t3MXJySAiYSOz6uoGli5GL
 Q0hgB6PElEOvWLsYOTh4BQQl/u4QBqkRFnCW+He7lRnEFhJQktixZh4zRNxa4tOUyywgNpuA
 pcTF1oeMIHNEBL4xScz+8YoNxGEWuM0sMf/5exaIbbwSM9qfQtnSEtuXb2UEWcYpYCfxZpk7
 RFhD4seyXmYIW1Ti5uq37DD2+2PzGSFsEYnWe2ehagQlHvzcDRWXkljw5BArhF0tsf/vbyYI
 u4FRov9+KsgqCQF9iR3XjUHCvAK+EhtP9oONYRFQlVi2/R3UKheJ25t3g8WZBbQlli18zQzS
 yiygKbF+lz7EFGWJI7fgfmrY+Jsdnc0swCfRcfgvXHzHvCdQx6hJzFu5k3kCo/IsRDjPQrJr
 FsKuBYzMqxjFUguKc9NTi40KjOBRm5yfu4kRnKa13HYwTnn7Qe8QIxMH4yFGCQ5mJRFe2bP2
 SUK8KYmVValF+fFFpTmpxYcYTYG+nMgsJZqcD8wUeSXxhiaWBiZmZobmRqYG5krivF4pGxKF
 BNITS1KzU1MLUotg+pg4OKUamNT+VhUl/vn89VpTUEvgbE315kMfEmwdZv2wf1UYpXln+mKr
 4+8PTrUPkpO5OdttTquFimWhi8tyLaX7r6QEN01121XHfDWz42W0xKUiKYnW/MA8zic97EoF
 i6OPNL2Y+HPfhreOxyeoOV17wefBcPzgLxHjU5KR4uctj0uUxT79kBH5LvTiq9l3LTomVHFF
 /jRumJLBsv/thwuzNB4X+CtN5at+w+fouMx6y/OICa6TZ6qbvwjY3fbO0G62tPyjZOF/Lq8z
 b9tc43Sy3CWz7FrUO9UTeXYJ70TndG3YtUAicmWkuLqs4F+jmJMLUgNuG/mxcq87odU69emk
 4p8bl8ZV9J18Lf/MJIzfN7pOXYmlOCPRUIu5qDgRAKvHCopcBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1
References: <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
 <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
 <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
 <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_204959_112246_27552B8E 
X-CRM114-Status: GOOD (  12.18  )
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
b2YgS296bG93c2tpwqA8a3J6a0BrZXJuZWwub3JnPg0KPiBEYXRlIDogMjAyMi0wMy0yOCAyMDo0
NCAoR01UKzkpDQo+IFRpdGxlIDogUmU6IFtQQVRDSCAwLzVdIEFkZCBzdXBwb3J0IGZvciBBeGlz
LCBBUlRQRUMtOCBQQ0llIGRyaXZlcg0KPiANCj4gT27CoDI4LzAzLzIwMjLCoDEzOjI5LMKg7J20
7JmV7ISdwqB3cm90ZToNCj4+PsKgLS0tLS0tLS0twqBPcmlnaW5hbMKgTWVzc2FnZcKgLS0tLS0t
LS0tDQo+Pj7CoFNlbmRlcsKgOsKgS3J6eXN6dG9mwqBLb3psb3dza2nCoDxrcnprQGtlcm5lbC5v
cmc+DQo+Pj7CoERhdGXCoDrCoDIwMjItMDMtMjjCoDE4OjM4wqAoR01UKzkpDQo+Pj7CoFRpdGxl
wqA6wqBSZTrCoFtQQVRDSMKgMC81XcKgQWRkwqBzdXBwb3J0wqBmb3LCoEF4aXMswqBBUlRQRUMt
OMKgUENJZcKgZHJpdmVyDQo+Pj4NCj4+PsKgT27CoDI4LzAzLzIwMjLCoDExOjAyLMKg7J207JmV
7ISdwqB3cm90ZToNCj4+Pj4+wqDCoC0tLS0tLS0tLcKgT3JpZ2luYWzCoE1lc3NhZ2XCoC0tLS0t
LS0tLQ0KPj4+Pj7CoMKgU2VuZGVywqA6wqBLcnp5c3p0b2bCoEtvemxvd3NracKgPGtyemtAa2Vy
bmVsLm9yZz4NCj4+Pj4+wqDCoERhdGXCoDrCoDIwMjItMDMtMjjCoDE2OjEywqAoR01UKzkpDQo+
Pj4+PsKgwqBUaXRsZcKgOsKgUmU6wqBbUEFUQ0jCoDAvNV3CoEFkZMKgc3VwcG9ydMKgZm9ywqBB
eGlzLMKgQVJUUEVDLTjCoFBDSWXCoGRyaXZlcg0KPj4+Pj4NCj4+Pj4+wqDCoE9uwqAyOC8wMy8y
MDIywqAwMzo0NCzCoOydtOyZleyEncKgd3JvdGU6DQo+Pj4+Pj7CoMKgwqBUaGlzwqBzZXJpZXPC
oHBhdGNoZXPCoGluY2x1ZGXCoG5ld2x5wqBQQ0llwqBzdXBwb3J0wqBmb3LCoEF4aXPCoEFSVFBF
Qy04wqBTb0MuDQo+Pj4+Pj7CoMKgwqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKg
b2bCoEF4aXPCoENvbW11bmljYXRpb25zLg0KPj4+Pj4+wqDCoMKgUENJZcKgY29udHJvbGxlcsKg
ZHJpdmVywqBhbmTCoHBoecKgZHJpdmVywqBoYXZlwqBiZWVuwqBuZXdsecKgYWRkZWQuDQo+Pj4+
Pj7CoMKgwqBUaGVyZcKgaXPCoGFsc2/CoGHCoG5ld8KgTUFJTlRBSU5FUsKgaW7CoHRoZcKgYWRk
aXRpb27CoG9mwqBwaHnCoGRyaXZlci4NCj4+Pj4+PsKgwqDCoFBDSWXCoGNvbnRyb2xsZXLCoGlz
wqBkZXNpZ25lZMKgYmFzZWTCoG9uwqBEZXNpZ24tV2FyZcKgUENJZcKgY29udHJvbGxlcsKgSVAN
Cj4+Pj4+PsKgwqDCoGFuZMKgUENJZcKgcGh5wqBpc8KgZGVzaW5nZWTCoGJhc2VkwqBvbsKgU0FN
U1VOR8KgUEhZwqBJUC4NCj4+Pj4+PsKgwqDCoEl0wqBhbHNvwqBpbmNsdWRlc8KgbW9kaWZpY2F0
aW9uc8KgdG/CoHRoZcKgRGVzaWduLVdhcmXCoGNvbnRyb2xsZXLCoGRyaXZlcsKgdG/CoA0KPj4+
Pj4+wqDCoMKgcnVuwqB0aGXCoDY0Yml0LWJhc2VkwqBBUlRQRUMtOMKgUENJZcKgY29udHJvbGxl
csKgZHJpdmVyLg0KPj4+Pj4+wqDCoMKgSXTCoGNvbnNpc3RzwqBvZsKgNsKgcGF0Y2hlc8KgaW7C
oHRvdGFsLg0KPj4+Pj4+wqDCoMKgDQo+Pj4+Pj7CoMKgwqBUaGlzwqBzZXJpZXPCoGhhc8KgYmVl
bsKgdGVzdGVkwqBvbsKgQVhJU8KgU1fCoGJyaW5nLXVwwqBib2FyZMKgDQo+Pj4+Pj7CoMKgwqB3
aXRowqBBUlRQRUMtOMKgY2hpcHNldC4NCj4+Pj4+DQo+Pj4+PsKgwqBZb3XCoGxvc3TCoG1haWzC
oHRocmVhZGluZy7CoFRoaXPCoG1ha2VzwqByZWFkaW5nwqB0aGlzwqBkaWZmaWN1bHTCoGZvcsKg
dXMuwqBQbHVzDQo+Pj4+PsKgwqB5b3XCoHNlbnTCoHNvbWV0aGluZ8Kgbm9uLWFwcGxpY2FibGXC
oChwYXRjaMKgIzIpLMKgc2/CoHBsZWFzZcKgcmVzZW5kLg0KPj4+Pj4NCj4+Pj4+wqDCoEtub3dp
bmfCoHJlY2VudMKgU2Ftc3VuZ8KgcmVsdWN0YW5jZcKgdG/CoGV4dGVuZMKgZXhpc3RpbmfCoGRy
aXZlcnPCoGFuZMKgYWx3YXlzDQo+Pj4+PsKgwqBkdXBsaWNhdGUswqBwbGVhc2XCoHByb3ZpZGXC
oGRlc2NyaXB0aW9uL2FuYWx5c2lzwqB3aHnCoHRoaXPCoGRyaXZlcsKgY2Fubm90wqBiZQ0KPj4+
Pj7CoMKgY29tYmluZWTCoHdpdGjCoGV4aXN0aW5nwqBkcml2ZXIuwqBUaGXCoGFuc3dlcsKgbGlr
ZTrCoHdlwqBuZWVkwqBzZXZlcmFswqBzeXNjb24NCj4+Pj4+wqDCoGJlY2F1c2XCoHdlwqBkb8Kg
bm90wqBpbXBsZW1lbnTCoG90aGVywqBmcmFtZXdvcmtzwqAobGlrZcKgaW50ZXJjb25uZWN0KcKg
YXJlwqBub3QNCj4+Pj4+wqDCoHZhbGlkLg0KPj4+Pj4NCj4+Pj4+wqDCoEJlc3TCoHJlZ2FyZHMs
DQo+Pj4+PsKgwqBLcnp5c3p0b2YNCj4+Pj7CoMKgDQo+Pj4+wqDCoEhlbGxvLMKgS3J6eXN6dG9m
DQo+Pj4+wqDCoFRoYW5rc8KgZm9ywqB5b3VywqByZXZpZXcuDQo+Pj4+wqDCoA0KPj4+PsKgwqBw
YXRjaCMywqB3YXPCoHNlbnTCoHRvwqB0aGXCoHdyb25nwqBmb3JtYXTCoHNvwqBzZW50wqBhZ2Fp
bi4NCj4+Pj7CoMKgU29ycnnCoGZvcsKgY2F1c2luZ8KgY29uZnVzaW9uLg0KPj4+wqDCoA0KPj4+
wqBUaGXCoGZpcnN0wqBzZW5kaW5nwqB3YXPCoEhUTUwuwqBTZWNvbmTCoHdhc8KgYnJva2VuwqB0
ZXh0LMKgc2/CoHN0aWxswqBub3TCoHdvcmtpbmcuDQo+Pj4NCj4+PsKgUGxlYXNlwqByZXNlbmTC
oGV2ZXJ5dGhpbmfCoHdpdGjCoHByb3BlcsKgdGhyZWFkaW5nLg0KPj7CoA0KPj7CoEhlbGxvLMKg
S3J6eXN6dG9mDQo+PsKgDQo+PsKgScKgc2VudMKgcGF0Y2gjMsKgdGhyZWXCoHRpbWVzLg0KPj7C
oGR1ZcKgdG/CoHRoZcKgaW5mbHVlbmNlwqBvZsKgdGhlwqBlbWFpbMKgc3lzdGVtLA0KPj7CoHRo
ZXJlwqB3YXPCoHNvbWV0aGluZ8Kgd3JvbmfCoHdpdGjCoHRoZcKgZmlyc3TCoGFuZMKgc2Vjb25k
wqBtYWlscy4NCj4+wqBTb3JyecKgZm9ywqBjYXVzaW5nwqBjb25mdXNpb24uDQo+PsKgRGlkwqB5
b3XCoHJlY2VpdmXCoHRoZcKgdGhpcmTCoHBhdGNowqBpwqBzZW50wqB5b3U/DQo+IA0KPiBNYXli
ZSzCoEnCoGRvbid0wqBrbm93LsKgSXQnc8Kgbm90wqB0aHJlYWRlZMKgc2/CoGl0J3PCoGRpZmZp
Y3VsdMKgdG/CoGZpbmTCoGl0DQo+IGFtb25nwqBvdGhlcsKgMTAwwqBlbWFpbHMuLi4NCg0KSSB0
aGluayB5b3UgYWxzbyByZWNlaXZlZCBhIG5vcm1hbCBwYXRjaCMgMi4NCg0KPj7CoMKgDQo+Pj4+
wqDCoFRoaXPCoHBhdGNowqBpc8Kgc3BlY2lhbGl6ZWTCoGluwqBBcnRwZWMtOCzCoA0KPj4+PsKg
wqB0aGXCoFNvQ8KgUGxhdGZvcm3CoG9mwqBBeGlzwqBDb21tdW5pY2F0aW9uLMKgYW5kwqBpc8Kg
bmV3bHnCoGFwcGxpZWQuDQo+Pj4+wqDCoFNpbmNlwqB0aGXCoHRhcmdldMKgU29DwqBwbGF0Zm9y
bcKgaXPCoGRpZmZlcmVudMKgZnJvbcKgdGhlwqBkcml2ZXLCoHByZXZpb3VzbHnCoA0KPj4+PsKg
wqB1c2VkwqBiecKgU2Ftc3VuZyzCoGl0wqBpc8KgZGlmZmljdWx0wqB0b8KgbWVyZ2XCoHdpdGjC
oHRoZcKgZXhpc3RpbmfCoGRyaXZlci4NCj4+Pg0KPj4+wqBSZWNlbnRsecKgScKgYWx3YXlzwqBz
YXfCoHN1Y2jCoGFuc3dlcnPCoGFuZMKgc29tZXRpbWVzwqBpdMKgd2FzwqB0cnVlLMKgc29tZXRp
bWVzDQo+Pj7CoG5vdC7CoFdoYXTCoGlzwqBleGFjdGx5wqBkaWZmZXJlbnQ/DQo+Pj4NCj4+PsKg
QmVzdMKgcmVnYXJkcywNCj4+PsKgS3J6eXN6dG9mDQo+PsKgDQo+PsKgVGhlwqBtYWluwqByZWFz
b27CoHRoaXPCoHBhdGNowqBzaG91bGTCoGJlwqBhZGRlZMKgaXPCoHRoYXQNCj4+wqB0aGlzwqBw
YXRjaMKgaXPCoG5vdMKgdGhlwqBkcml2ZXLCoGFwcGxpZWTCoHRvwqBleHlub3PCoHBsYXRmb3Jt
Lg0KPiANCj4gU3RpbGzCoHRoaXPCoGRvZXPCoG5vdMKgZXhwbGFpbsKgd2h5wqB5b3XCoG5lZWTC
oHNlcGFyYXRlwqBkcml2ZXIuDQoNClBDSWUgZHJpdmVyIG9mIGFydHBlYy04IGlzIG5vdCBhdmFp
bGFibGUgaW4gZXh5bm9zIHBsYXRmb3JtLg0KYmVjYXVzZSB0aGUgUENJZSBvZiBhcnRwZWMgYW5k
IGV4eW5vcyBoYXZlIHZlcnkgZGlmZmVyZW50IA0KaGFyZHdhcmUgaW4gU29DIGRlc2lnbi4NCk5v
dCBvbmx5IGl0IGlzIHRoZSBTb0MgZGlmZmVyZW50LCANCmJ1dCB0aGUgaGFyZHdhcmUgZGVzaWdu
IG9mIFBDSWUgaXMgYWxzbyBkaWZmZXJlbnQuDQpUaGVyZWZvcmUsIHdlIGFyZSB1c2luZyBkcml2
ZXIncyBjb21wYXRpYmxlIA0KYXMgYXhpcywgYXJ0cGVjOC1wY2llIHJhdGhlciB0aGFuIHNhbXN1
bmcsIGFydHBlYzgtcGNpZS4NCg0KPj7CoEJlY2F1c2XCoHRoZcKgU29DwqBwbGF0Zm9ybcKgaXPC
oGRpZmZlcmVudCzCoA0KPj7CoHRoZcKgSVDCoGNvbmZpZ3VyYXRpb27CoG9mwqBQQ0llwqBpc8Kg
YWxzb8KgZGlmZmVyZW50Lg0KPiANCj4gV2hhdMKgaXPCoGV4YWN0bHnCoGRpZmZlcmVudD/CoFVz
dWFsbHnCoGRyaXZlcnPCoGNhbsKgc3VwcG9ydMKgSVDCoGJsb2Nrc8Kgd2l0aA0KPiBzb21lwqBk
aWZmZXJlbmNlcy4uLg0KPiANCj4+wqBXZcKgd2lsbMKgb3JnYW5pemXCoGHCoGRyaXZlcsKgZm9y
wqBBcnRwZWMtOMKgcGxhdGZvcm3CoGFuZMKgDQo+PsKgaWbCoHRoZXJlwqBpc8Kgbm/CoHNwZWNp
YWzCoHJlYXNvbizCoG1haW50YWluwqB0aGlzwqANCj4+wqB3aXRob3V0wqBhZGRpbmfCoGl0wqBm
cm9twqB0aGXCoG5leHTCoHNlcmllcy4NCj4gDQo+IEnCoGRvbid0wqB1bmRlcnN0YW5kwqB0aGlz
Lg0KPiANCj4gDQo+IEJlc3TCoHJlZ2FyZHMsDQo+IEtyenlzenRvZg0KDQpBbHNvLCBhcyB5b3Ug
a25vdywNCmV4eW5vcyBkcml2ZXIgaXMgZGVzaWduZWQgYWNjb3JkaW5nIHRvIGV4eW5vcyBTb0Mg
cGxhdGZvcm0sDQpzbyBib3RoIGZ1bmN0aW9uIGFuZCB2YXJpYWJsZSBuYW1lcyBzdGFydCB3aXRo
IGV4eW5vcy4NCkNvbXBhcmVkIHRvIHRoZSBleGlzdGluZyBleHlub3MgZHJpdmVyLCANCnlvdSBj
YW4gc2VlIHRoYXQgdGhlIHN0cnVjdHVyZSBhbmQgdHlwZSBvZiBmdW5jdGlvbiBhcmUgZGlmZmVy
ZW50Lg0KRm9yIHRoaXMgcmVhc29uLCBpdCBpcyBkaWZmaWN1bHQgdG8gdXNlIHRoZSBleGlzdGlu
ZyBleHlub3MgZHJpdmVyIA0KZm9yIGFydHBlYy4NCk91ciBpZGVhIGlzIHRvIHJlZ2lzdGVyIGEg
bmV3IFBDSWUgZHJpdmVyIGZvciBhcnRwZWMtOCBTb0MgcGxhdGZvcm0gDQphbmQgbWFpbnRhaW4g
aXQgaW4gdGhlIGZ1dHVyZS4NCg0KVGhhbmtzLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
