Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CBB0CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 04:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8H6XE9CcjBfGNQXPsnFnef6qPMq4gejH7OIaTdavT8=; b=R1SBm2xYrIaXZ8
	to0E3IFSVKWH3Fh5irVl4ILoM1QKD8uzX5QUND/fx89t0L6zVWiEqXW81eqngQeoY4H/NEzrE6HYO
	sUnl2trDkcOfJdZkkbsxbMLq6YDNQ1TsavXlJDR4Sq7LomK9HeL9aTzoQsFuh8J7fKgPce7482auT
	b7QhgcfQVryGldHKfxp3kMXxEBI23avadJheH2l2l5WPivP+He3MvPF8CTCEVhSpClXX4nsAXPmcZ
	mHAE2rw8ShPwFY0Ou2XQyyni9t3ZpV0hBGecoOzGuNetaKtofVcrEkbxNCRsyhQzy+HKLw4bBe0uL
	WTSMoli9yAktl3dcraUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEfVh-00000003Uv5-3XPC;
	Thu, 08 Oct 2026 04:13:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEfVf-00000003Uui-1J94
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 04:13:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984C4Th1753423
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 04:13:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nt2x+jEs12Lf5eX1DXl9eLI48xHiZT3l2Oh8LjkTB8Q=; b=prJP00kjzEXd8a0/
	+BH0YUhaZ83tX1bSGFz9j3BKLxAox5jjjG3dcT1WklGPwUY1PddfnfOKuwJA8bU4
	QFNOpZOgDozqIkX4ooV+2Wryc7+23YEqpIr1i90Fr36RohY06Juc8Q7cc1r79/zj
	eWOKNWV52TH2LJQdws1xqmzL25cd+NmX92gmYz/vArAeo9PQV8ME4qe9UTWMn+XF
	2yomndHqUEMVFYNgfiK/DTh4UDijVGgRD7WKBY9337b/VPJtYILM9hQSGzoeQlVj
	Uot5k/KNgIkKtVOjUEP9cuq/fwZNbzsTS92+AljK/1a2CIo/Qe6uFtDsL5sW5ZiD
	D1dyJw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe2s5q5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 04:13:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2d001671a54so57827145ad.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 21:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791432812; cv=none;
        d=google.com; s=arc-20260327;
        b=GIBpGVBv+8YGOsFrNV7W+EZ4nknb71e2G15HLQmxl1E7yZClJOYmrEFx0IQQq+5wj4
         kbimFw1KidLQky/kqXhvWwIazpWjXr6l6TpLi+TlepzQMjHTM3LiTn29o+C3hPloMtme
         cY1xjHG2oRSEm38NgCHz9SEv6+crHCJHCrG4tbm1nlLQAmv5C+WwUEDrHszDUpmmcQfh
         NyVSOquhIIk484bBx4kW/3nKOHSR36hrBjHAZgxPvHX251vYwYEtNqaBhNc5UVuzM0Zm
         JfAdcZaZyYxt3RczUOSDtutcOBBxZbRADJXpRnwG5sNCjB+UGHlAgRYjWqW3PzhEQieB
         yiFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Nt2x+jEs12Lf5eX1DXl9eLI48xHiZT3l2Oh8LjkTB8Q=;
        fh=SRKAoZ5/mvUXrav3XeIjGC1M2oI7Htwtd9kWk21gFPw=;
        b=h3KVi9uWKlAm2wd+EHO5TG8C7DwKTdEpZ5NM1gpME8pht3FttKeVD8BHV7rxMtQj7p
         FJrvfLuUZpBurCmBUQD4hPAV7TDnDtbPRg8PMTIgBD9NXN1qUhRm6nwDFQn1fLTTUU7y
         eqRI6dvf/fMIwc92VRsq6EkRonTA1nka1v3dDXoGa0uQua+XHajsWZluREvaQAu+wa8P
         fiJJe1oZQJaHVCD1Od5mgjAMh+gsRU9xPL5EIi/38q6mVEIbBUcY7se9TtTanUwf9i5K
         h7Lox2j/ZnFEwQY/yB6cHcYJD+ap0AEPjO7tZZ0vS4l7RWl5NRIomz3Ys9QQJJ6TA6b6
         RQhw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791432812; x=1792037612; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Nt2x+jEs12Lf5eX1DXl9eLI48xHiZT3l2Oh8LjkTB8Q=;
        b=AVLcTKgatmkWXzOTX6lmLYM1/miPPTUTtJriSgp1Vtbm4SH3/Jp7n2/6xDAVr2VdvU
         QpNY38Gs9YG57ocwsd/8Pfn6fUj+trOjaKvFS+kvs73H3B6XQLxizxhD9Mo1iJoqgnbj
         u72AyQRSaDpDNo0DyS8Oc3jkjURL5YUM67NgQcPK1Wfaw6cMGKmZTg47N0fmsPpgJUC6
         QVp4TxgKYxVHxVenplrEa9QWdWiEh5PXRWwHrfMJ7ybmdrsgYdm+udMYcY8b+HuDr8/o
         6JU8JKfIa+FcNtmNOOV43do972SMKY+UVd46VEDOBkGGOcEuKPkTQHaZHtMSrBz57uPQ
         ju0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791432812; x=1792037612;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Nt2x+jEs12Lf5eX1DXl9eLI48xHiZT3l2Oh8LjkTB8Q=;
        b=HxyZ3L074haK72PfLsRJ08ZbF4LtZRSNYyRFaAbh0gFWbVSgqWM/ZvIdskCHiomteh
         kkHQnePSNwS9epeOs90b+PUIP4unRDFZiD+Sc8soWD0hY8aKDaTULa4F0dSq1DaK4btM
         BMn1Sc9Mm5vQhVf7Hh6h8EjGNDIR6TGsKKysZ5w2IANYkW/Zl5Eahz/kTO13dJIm7R7G
         xAGcJTPBgodlC4J/NxtF+ZqioeSGHRCl8iZbVjq+Xcczd/5orOkiMlVyixDrbi70ExS/
         Qt8yft1uzRO5s4F74ZtyJLiK6XZ2wxiuz6YZmF1R5cEtgs4x9mVXeoE8Zx56+57ZNOle
         WWAg==
X-Forwarded-Encrypted: i=1; AKwUvBzobM0LTEroGPEE67LcyDNiDe8dAGOj7DDITliIrqWzAsAi+FKODQE/RedV8b74bW8Q94KtJS2/uwc=@lists.infradead.org
X-Gm-Message-State: AFq9FYK6n5A0sSSkmuJAcqhg5J7dBnxBUqa4GOxxEXzaK1A02/6hNNJh
	ozlDhYYWagZwUQrZU8GaL1FQXupWAlnwLCGVLreeSx7IVPzLXl+kJiyteAdp0zB/8uOLYjbU+tQ
	zpphiSFqlQ9B5Le2ZBWgHyOrXEpFNU3iI7EimEwZrNvvTsJgPFLqjg/CtF31OSNlqr8V0lT2zUG
	H5x+ORUtMxv5gSOZWjGI7iH4eMGC6hjqnfmtakgLN2zrY=
X-Gm-Gg: AYBFou2ZO63O+v8xd2VSXA8+yPp84K2nJRfpNVoWoBH+HKmforQ8Gjk0W6HZmR9h4Nu
	RVD62DGEW9HRX0m6e9iCZiOBuUxrNThVdS+y02pKss6UhceuFaErAyKLY385zOC8r7Jrw2/OEhh
	lOmKo7/KVivJhvCCORIZzY2PejidCh6xI8WT5mTpD304gV/C4aCwpw46CcXQ==
X-Received: by 2002:a17:903:388b:b0:2dd:76b1:34f0 with SMTP id d9443c01a7336-2e6003b68e7mr37860435ad.11.1791432811871;
        Wed, 07 Oct 2026 21:13:31 -0700 (PDT)
X-Received: by 2002:a17:903:388b:b0:2dd:76b1:34f0 with SMTP id
 d9443c01a7336-2e6003b68e7mr37860195ad.11.1791432811391; Wed, 07 Oct 2026
 21:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com>
 <20260928-steel-hornet-of-kindness-aa5e2f@quoll> <CAFkd8hs6H-WT6C2Nzns2jB1yHq1CfODijAX1VbMxUUAe7zH6Rg@mail.gmail.com>
 <e4a07d79-199b-4998-ae2d-a9e8b91a228c@kernel.org>
In-Reply-To: <e4a07d79-199b-4998-ae2d-a9e8b91a228c@kernel.org>
From: Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Date: Thu, 8 Oct 2026 12:13:20 +0800
X-Gm-Features: AclHuK8QBXqkiOqYuICecJ7KFfILuZyxlgsMgUrPOb-9hebjAdLP4OyLrmMCzjI
Message-ID: <CAFkd8htKJO6rd4EnfjwZ7mANU4n18WMtBha=ZKS+UoF-4gT4ng@mail.gmail.com>
Subject: Re: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AbMkjHXG c=1 sm=1 tr=0 ts=6ac7186d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=SvoBQ3C05wZ_be5UkMcA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: LfuKoujvQy-lttFeBspXi7Y24YZ0FJL-
X-Proofpoint-ORIG-GUID: LfuKoujvQy-lttFeBspXi7Y24YZ0FJL-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAxNiBTYWx0ZWRfX4tbMQXdKmq0b
 XfHRL2tGBkoCD7JSAv503KAyRJL1gVBiDRTo5jt/Nzto7Vy1+Ho+aKxJPmnNoy9xrx3XI7Rdjlx
 EhWVKWQyImbRAZ91CjtoVV3R9ShHbeY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAxNiBTYWx0ZWRfXzSo8gb9L6rRV
 1LbFPqczQis9iwKu5G+7QhQTiaXERphOfL0pd3X1Q1kN6WCyrvPWaSBnat7Fsl4iMAoMrCh23US
 ovrbaaMHaV5CVA3Pl7nPfXjAfB4tpBKuQWgfGgRaK+AXu7dc/wdInlxSR0vFxQb5eIWAiJrWuHw
 kv+dny9ZnBJbilD4u6rpmy+OjxYlucWtEPqsobRzsNn4Ki9InQidMxdWXXZRQ9YGXfsM6PQz+z2
 GsV0/nfEqtD6be8myPJ5DOmwWeIfGoo6mw/OxrXO/1oIYzkxhevhwFlAoSzTF+hZgl0sc1dLQgp
 GKBeKAgnQT2W9hwC/4s0+OrxRQ/7GFq8uqy+gvIV5o7Nw8p5z3x0pnfGYslldehCkzwNFrZpE8F
 LIwqiBM//JshCOAFjTMMiiOOb61JGGt6vyX1NNaISouSjckUYOGRYK0+cR4dDPIWena+sE/sNfu
 xfL5e7RUTtuWiS6V/EA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_211335_509379_EEDC539A 
X-CRM114-Status: GOOD (  30.23  )
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

T24gV2VkLCBTZXAgMzAsIDIwMjYgYXQgMToxNuKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyOS8wOS8yMDI2IDEyOjQ5LCBaaGFuZ2ZlaSBH
YW8gd3JvdGU6Cj4gPiBIaSwgS3J6eXN6dG9mCj4gPgo+ID4gT24gTW9uLCBTZXAgMjgsIDIwMjYg
YXQgNjoxOeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6
Cj4gPj4KPiA+PiBPbiBXZWQsIFNlcCAyMywgMjAyNiBhdCAwNDo1ODowM1BNICswODAwLCBaaGFu
Z2ZlaSBHYW8gd3JvdGU6Cj4gPj4+IE9uIFdlZCwgU2VwIDIzLCAyMDI2IGF0IDg6MDTigK9BTSBN
b2hkIEF5YWFuIEFud2FyCj4gPj4+IDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+IHdyb3Rl
Ogo+ID4+Pj4KPiA+Pj4+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIEV0aGVybmV0
IFNlckRlcyBmb3VuZCBvbiB0aGUgUXVhbGNvbW0KPiA+Pj4+IE5vcmQgU29DLgo+ID4+Pj4KPiA+
Pj4+IE5vcmQgdXNlcyBhIFFNUCB2NyBTZXJEZXMgYmxvY2ssIHdoaWNoIGlzIGFuIHVwZGF0ZWQg
dmVyc2lvbiBvZiB0aGUKPiA+Pj4+IFNHTUlJIFNlckRlcyBQSFkgSVAgYWxyZWFkeSBoYW5kbGVk
IGJ5IHBoeS1xY29tLXNnbWlpLWV0aC4gVGhlIGRyaXZlcgo+ID4+Pj4gY3VycmVudGx5IHN1cHBv
cnRzIHRoZSAxLjI1IEdiYXVkIGFuZCAzLjEyNSBHYmF1ZCBjb25maWd1cmF0aW9ucyB1c2VkIGJ5
Cj4gPj4+PiBTR01JSSwgMTAwMEJBU0UtWCBhbmQgMjUwMEJBU0UtWC4gTm9yZCBhZGRpdGlvbmFs
bHkgcmVxdWlyZXMgdGhlIFNlckRlcwo+ID4+Pj4gdG8gb3BlcmF0ZSBhdCAxMC4zMTI1IEdiYXVk
IGZvciBpdHMgMTAgR2lnYWJpdCBFdGhlcm5ldCBpbnRlcmZhY2VzLgo+ID4+Pj4KPiA+Pj4+IFRo
ZSBzZXJpZXMgY2FuIGJlIGJyb2FkbHkgZGl2aWRlZCBpbnRvIHRocmVlIHBhcnRzOgo+ID4+Pj4K
PiA+Pj4+ICAgMS4gQWRkIHRoZSBxY29tLG5vcmQtZHdtYWMtc2dtaWktcGh5IGNvbXBhdGlibGUg
dG8gdGhlIGJpbmRpbmcuCj4gPj4+PiAgIDIuIFByZXBhcmUgdGhlIGRyaXZlciBmb3IgUEhZIG1v
ZGVzIHdoaWNoIHJlcXVpcmUgZGlmZmVyZW50IFNlckRlcwo+ID4+Pj4gICAgICBwcm9ncmFtbWlu
ZyBhbmQgcmVhZGluZXNzIGNoZWNrcy4gRXhpc3RpbmcgU0E4Nzc1UCBiZWhhdmlvdXIgaXMKPiA+
Pj4+ICAgICAgdW5jaGFuZ2VkLgo+ID4+Pj4gICAzLiBBZGQgdGhlIFFNUCB2NyByZWdpc3RlciBk
ZWZpbml0aW9ucywgMTAuMzEyNSBHYmF1ZCBwcm9ncmFtbWluZwo+ID4+Pj4gICAgICBzZXF1ZW5j
ZSBhbmQgcmVhZGluZXNzIGNoZWNrcyByZXF1aXJlZCBmb3IgVVNYR01JSSBhbmQgMTBHQkFTRS1S
Lgo+ID4+Pj4KPiA+Pj4+IFRoZSBjaGFuZ2VzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gdGhlIE5vcmQg
UmlkZSBTWCBwbGF0Zm9ybSwgd2hpY2ggaGFzIGEKPiA+Pj4+IE1WLVE2MjIzIHN3aXRjaCwgcnVu
bmluZyBpbiBmaXhlZCBsaW5rIFVTWEdNSUkgMTBHIG1vZGUuCj4gPj4+Pgo+ID4+Pj4gU2lnbmVk
LW9mZi1ieTogTW9oZCBBeWFhbiBBbndhciA8bW9oZC5hbndhckBvc3MucXVhbGNvbW0uY29tPgo+
ID4+Pj4gLS0tCj4gPj4+PiBNb2hkIEF5YWFuIEFud2FyICgzKToKPiA+Pj4+ICAgICAgIGR0LWJp
bmRpbmdzOiBwaHk6IHFjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1waHk6IGFkZCBOb3JkIGNvbXBh
dGlibGUKPiA+Pj4+ICAgICAgIHBoeTogcWNvbTogc2dtaWktZXRoOiBwcmVwYXJlIGZvciBhZGRp
dGlvbmFsIFBIWSBtb2Rlcwo+ID4+Pj4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IGFkZCBO
b3JkIFVTWEdNSUkgc3VwcG9ydAo+ID4+Pj4KPiA+Pj4+ICAuLi4vYmluZGluZ3MvcGh5L3Fjb20s
c2E4Nzc1cC1kd21hYy1zZ21paS1waHkueWFtbCB8ICAgMSArCj4gPj4+PiAgZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy1zZ21paS5oICAgICAgfCAgIDUgKwo+ID4+Pj4gIGRy
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12Ny5oIHwgICAyICsK
PiA+Pj4+ICAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4cngtdjcuaCAg
ICB8ICAgOSArCj4gPj4+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc2dtaWktZXRo
LmMgICAgICAgICAgfCAyMjYgKysrKysrKysrKysrKysrKysrLS0tCj4gPj4+PiAgNSBmaWxlcyBj
aGFuZ2VkLCAyMTkgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gPj4+PiAtLS0KPiA+
Pj4+IGJhc2UtY29tbWl0OiBhOGM1OTFlZDZiNjcyOTE1ZTBiZTU3ODQzZjk0M2EyYTcyM2FmZjQw
Cj4gPj4+PiBjaGFuZ2UtaWQ6IDIwMjYwOTIzLW5vcmRfZXRoZXJuZXRfc2VyZGVzLWM0ODZmNzE1
ZjM4Mwo+ID4+Pj4KPiA+Pj4+IEJlc3QgcmVnYXJkcywKPiA+Pj4+IC0tCj4gPj4+PiBNb2hkIEF5
YWFuIEFud2FyIDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cj4gPj4+Pgo+ID4+Pgo+ID4+
PiBHb29kIEpvYu+8jAo+ID4+Pgo+ID4+PiBUZXN0ZWQtYnk6IFpoYW5nZmVpIEdhbyA8emhhbmdm
ZWkuZ2FvQG9zcy5xdWFsY29tbS5jb20+Cj4gPj4KPiA+PiBUaGlzIGhhcyB0byBzdG9wLgo+ID4+
Cj4gPj4gV2h5IGFnYWluIGFkZGluZyBmYWtlIHRlc3RpbmcgdG8gdGhlIGJpbmRpbmdzPyBZb3Ug
Y2Fubm90IHJlcGx5IHR3aWNlPwo+ID4gUmVwbHkgdHdpY2Ugc2luY2UgSSB0aG91Z2h0IHRoZXkg
YXJlIHR3byBkaWZmZXJlbnQgcGF0Y2ggc2V0LCBvbmUgaXMgcGh5LAo+Cj4gWW91IGRvbid0IGV2
ZW4gdHJ5IHRvIHVuZGVyc3RhbmQgdGhlIHByb2JsZW0uCj4KPiA+IHRoZSBvdGhlciBpcyBuZXQs
IHdoaWxlIG5ldCBtYWludGFpbmVyIHNhaWQgdGhhdCBpcyB0b28gZWFscnkgZm9yIHJmYy4KPiA+
Cj4gPiBUaGUgdGVzdGVkIGJyYW5jaCBpcwo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3poYW5nZmVp
LWdhby9rZXJuZWwtdG9waWNzL3RyZWUvbmV4dC05LjIzICggYW5kCj4gPiA5LjI0LWV0aCksIGFu
ZCBtYXkga2VlcCB0ZXN0aW5nIGZvciBlYWNoIGN5Y2xlLgo+ID4gY29udGlhbmluZyBkdHMsIHBo
eSwgbmV0IGFuZCBhbGwgcmVxdWlyZWQgcGF0Y2hzZXQsIGFzc3VtaW5nIG9uZQo+ID4gaW50ZWdy
YXRlZCBicmFuY2ggd2lsbCBiZSBlYXNpZXIgZm9yIGludGVyYWwgdHJhY2suCj4gPiBUaGUgZHRz
IHdpbGwgYmUgc2VuZCBsYXRlci4KPiA+IFRlc3RpbmcgaGFyZHdhcmUgaXMgcmlkZSBhbmQgcnJk
Lgo+ID4KPgo+IEV4cGxhaW4gSE9XIGRpZCB5b3UgdGVzdCB0aGUgYmluZGluZ3MgaW4gdGVybXMg
b2YgTGludXgga2VybmVsIHRlc3RpbmcuCj4KPiBUaGVuIGV4cGxhaW4gV0hZIHlvdSBjYW5ub3Qg
Z2l2ZSB0aGUgdGFnIG9ubHkgdG8gYXBwcm9wcmlhdGUgcGxhY2VzLAo+IGluc3RlYWQgb2YgYmxh
bmtldCBvbmUuCgpPaCwgdW5kZXJzdGFuZCBub3cuCgpJIG9ubHkgcGVyZm9ybWVkIGhhcmR3YXJl
IHJ1bnRpbWUgdGVzdGluZywKd2hpY2ggZGlkIG5vdCB2YWxpZGF0ZSB0aGUgYmluZGluZyBpdHNl
bGYuCgpJIHNob3VsZCBoYXZlIHByb3ZpZGVkIHRoZSBUZXN0ZWQtYnkgdGFnIG9ubHkgZm9yIHRo
ZSBkcml2ZXIgcGF0Y2hlcyBleGVyY2lzZWQsCnJhdGhlciB0aGFuIGFwcGx5aW5nIGl0IHRvIHRo
ZSBlbnRpcmUgc2VyaWVzLgoKSSB3aWxsIHJ1biBhbmQgcmVwb3J0IGR0X2JpbmRpbmdfY2hlY2sg
c2VwYXJhdGVseSBmb3IgYmluZGluZyBwYXRjaGVzLAphbmQgZHRic19jaGVjayBmb3IgdGhlIGNv
cnJlc3BvbmRpbmcgRFRTIHBhdGNoZXMuCgpUaGFua3MgZm9yIHRoZSBndWlkYW5jZSwgYW5kIHNv
cnJ5IGZvciB0aGUgY29uZnVzaW9uLgoKVGhhbmtzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
