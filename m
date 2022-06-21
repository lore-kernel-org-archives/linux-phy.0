Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED08C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 07:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIwHwOfpKZO3IfsbtY/AnOR+0/PmV+WGpsKsS4a1cMo=; b=TdChW3vxJRROMs
	5fl+x1sR7Gh8JmseTgEYyTeuATi/BbQak+/w1YzPowyxTHBX7QBebUr/Zi/CK0DkgahwtWtjJ1uBZ
	8Ad17tl+XMLyT37DDpdqWp2BJz/EAO2o/IF7fa49325RObyEsdf3mmOS/tt+/Ha0P7ZCg2DU9BzUT
	hhZ0UZBlT0ht4IiugAMgsUyVkpdzTXwdAkZkI1dVylgTkkBwv/sYISQzs578RvA6MoSizIKFb3z/6
	gjk8aAKhdLcVknv2pyo8qwveUhhWXsgj11bH4k+SADGMBmugxZCMrDAg9/1TwZIEKzUvpmb7IjMXx
	cOFYGEngBZlPatUHvliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Ykg-004EgS-Jg; Tue, 21 Jun 2022 07:56:46 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Yke-004EdT-7P
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 07:56:46 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220621075637epoutp020158dbf5d35b53ad55401eb36ea64453~6k6-7-o7I1157811578epoutp02v
	for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 07:56:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220621075637epoutp020158dbf5d35b53ad55401eb36ea64453~6k6-7-o7I1157811578epoutp02v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655798197;
	bh=qMkIU/60yigSbDip1bHSim25RSYjPC0FSsBXInxoocM=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=o7R+wTJBc5EhObtTVKXwC4+1x0VG19r6NWLBhmL3dKXnF3i+XF+Vg1cKGG/U5Wdn/
	 ibX9od4PrX/0W5NdPqFXinmCWq0hGiS1eeJHoknqNhnRsbcYtMZl1pdGMXIUkICAmx
	 ewkBhzjoKd4zW7md2LErCXt20IIBiya80ZUEWH4I=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220621075635epcas2p153d2731cc2986f491bb6d4accaf87ee7~6k6_7SzU62117621176epcas2p1T;
	Tue, 21 Jun 2022 07:56:35 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.89]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LRzNz4RbGz4x9Pp; Tue, 21 Jun
	2022 07:56:35 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-5d-62b179b32e90
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	67.39.09642.3B971B26; Tue, 21 Jun 2022 16:56:35 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
	<lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <e3411d6c-ec64-f20e-4c58-13245fe255b5@kernel.org>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220621075635epcms2p79d73dfb24d1d8d49af7467db48598e6f@epcms2p7>
Date: Tue, 21 Jun 2022 16:56:35 +0900
X-CMS-MailID: 20220621075635epcms2p79d73dfb24d1d8d49af7467db48598e6f
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJJsWRmVeSWpSXmKPExsWy7bCmqe7myo1JBmsPyVksacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9Novz5zewWzT0/Ga1OPLmI7PF/uMr
	mSwu75rDZnF23nE2iwmrvrFYvPn9gt3i3OJMi9a9R9gtdt45wWzxa+sfJgdRjzXz1jB6XF8X
	4LFgU6nHplWdbB5Prkxn8ti8pN6jb8sqRo/jN7YzeXzeJBfAGZVtk5GamJJapJCal5yfkpmX
	bqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQP0mZJCWWJOKVAoILG4WEnfzqYov7Qk
	VSEjv7jEVim1ICWnwLxArzgxt7g0L10vL7XEytDAwMgUqDAhO2PTy27mgu1cFQvOTWdsYJzM
	1cXIySEhYCLRvuATaxcjF4eQwA5Gid2PDjJ2MXJw8AoISvzdIQxSIyzgJfGmtYkRxBYSUJLY
	sWYeM0RcX+L6im5WEJtNQFfi3+KXbCBzRARmsUks+bqUCcRhFljAKLH/9z5GiG28EjPan7JA
	2NIS25dvBYtzCthJHD06gx0iriHxY1kvM4QtKnFz9Vt2GPv9sflQc0QkWu+dhaoRlHjwczdU
	XEpiwZNDrBB2tcT+v7+ZIOwGRon++6kgj0kAXb3jujFImFfAV6J/3zewchYBVYmzL09BneYi
	0ftuCRuIzSygLbFs4WtmkFZmAU2J9bv0IaYoSxy5xQLzVMPG3+zobGYBPomOw3/h4jvmPYE6
	Rk1i3sqdzBMYlWchAnoWkl2zEHYtYGRexSiWWlCcm55abFRgDI/b5PzcTYzgNK7lvoNxxtsP
	eocYmTgYDzFKcDArifDacG9IEuJNSaysSi3Kjy8qzUktPsRoCvTlRGYp0eR8YCbJK4k3NLE0
	MDEzMzQ3MjUwVxLn9UrZkCgkkJ5YkpqdmlqQWgTTx8TBKdXAJLhlg+rju0+m2H6UOz5H0/Xb
	xLNemg6zCnUPcuv82N0k1uHMsC936umcDIvohSasF++2r5H1bp6Y+HZNhPi2VRw5ajuvqX27
	dsoqTSC39PH9M7OiV/F+kytTf6lWOddGcfuh/du+L2Jaseh6YtsOb56f77qO6Nosn2nd+8bC
	hqU6769f2OxVrCnrPhjKnzkyXejUtoDzff23ZsZ0LT9Znf4sdjXTw91RnHO5r8aZ1k4vN/wl
	H1ZuslmM2/Xyzp1BazO/nDkXtvX0kTA2tdL/HoV3dcJtZqm+M1S6+dN34vmmSReMDabaKkjv
	XZq0XedJ/OfQe3HzsqZ1Pz/EHdWZqi4j9LRhx2ZtV3vZjX+WzFdiKc5INNRiLipOBACKymWD
	bAQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <e3411d6c-ec64-f20e-4c58-13245fe255b5@kernel.org>
	<20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<20220614013042epcms2p36f88b7eb7f879fefb2f3fbd4548ad705@epcms2p3>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_005644_644891_D7298E8A 
X-CRM114-Status: GOOD (  11.51  )
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

T27CoDIwLzA2LzIwMjLCoDE3OjM1LMKgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gT27C
oDE0LzA2LzIwMjLCoDAzOjMwLMKgV2FuZ3Nlb2vCoExlZcKgd3JvdGU6DQo+PsKgQWRkwqBzdXBw
b3J0wqBBeGlzLMKgQVJUUEVDLTjCoFNvQy4NCj4+wqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBw
bGF0Zm9ybcKgb2bCoEF4aXPCoENvbW11bmljYXRpb25zLg0KPj7CoA0KPiANCj4gKC4uLikNCj4g
DQo+PsKgKw0KPj7CoCtlbnVtwqBhcnRwZWM4X3BjaWVfaXNvbGF0aW9uwqB7DQo+PsKgK8KgwqDC
oMKgwqDCoMKgwqBQQ0lFX0NMRUFSX0lTT0xBVElPTsKgPcKgMCwNCj4+wqArwqDCoMKgwqDCoMKg
wqDCoFBDSUVfU0VUX0lTT0xBVElPTsKgPcKgMQ0KPj7CoCt9Ow0KPj7CoCsNCj4+wqArZW51bcKg
YXJ0cGVjOF9wY2llX3JlZ19iaXTCoHsNCj4+wqArwqDCoMKgwqDCoMKgwqDCoFBDSUVfUkVHX0JJ
VF9MT1fCoD3CoDAsDQo+PsKgK8KgwqDCoMKgwqDCoMKgwqBQQ0lFX1JFR19CSVRfSElHSMKgPcKg
MQ0KPj7CoCt9Ow0KPiANCj4gUmVtb3ZlwqB0aGlzwqBlbnVtLsKgVGhpc8KgaXPCoHJlZGVmaW5p
dGlvbsKgb2bCoHRydWUvZmFsc2XCoG9ywqAxLzAuDQo+IA0KPiBCZXN0wqByZWdhcmRzLA0KPiBL
cnp5c3p0b2YNCg0Kb2ssIGkgd2lsbCBjaGFuZ2UgdGhlIGFib3ZlIGVudW0gdHlwZXMgdG8gYm9v
bGVhbi4NCg0KVGhhbmsgeW91IGZvciBraW5kbmVzcyByZWl2ZXcuDQoNCkJlc3QgcmVnYXJkcywN
CldhbmdzZW9rIExlZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
