Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C2BC5CFC1
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU66ynJq8jPeX+T3uINhVJOgElSDLQEHe/8DPFiZU5M=; b=MpoIEY/OnSb0oK
	VDDZl6q1buHaJTGG9kJkjE0Vtf0IaWzRi4b/LjcX4JpgvVIAirIssUo6+/BK+YYKqjPJwsiDfIzo+
	M08y/GHItGrqf2JLIYRAiLoCO7e4Sgo7XbnHujcSgJwUC8lwn8mY96xZmBAJeK7PZwsM73QS7mh2U
	IsVKj9ROkgZuN0X8k0KAxpSwRnt37tn6wzizk2+INB5GquNgEv653P3a1c1XTKO5f7cJmgSvXQYyu
	MLXhAFgvsk1IZWzcKtpC4O9XOuq32X2y+jMBd8or6hWqGqD7OYVSSZ9QV/fOh52Txn6/uHVfL93Az
	+MyE96Fli1aGnvj72Jeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wulVw-000000022pn-3JzQ;
	Fri, 14 Aug 2026 06:35:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wulVt-000000022pT-2pv2
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 06:35:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67E4QfsB3614535
	for <linux-phy@lists.infradead.org>; Fri, 14 Aug 2026 06:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q62LA/TLjmvPWhJyTRg3Jbr4r61LixtTZckidFb0VyQ=; b=NvxLPHBoNRwOUIXz
	m8ef2WVoREGLPeuJt6rQrAmTWoSGUJlMZeOkNbbf3iBguR7qMAFowZnc8Y46v/P4
	OTFSExoR/QowA2YXD8x4mj+QqBVg78YX94fVSRpGR85XAXlJL+yUb9L5DaFcQQ04
	OXxU//SBBsIPbwMExkFHtxQAdZSHiFP6syzG5iweVpxZ9zAbeEWTPe0R6j8JrtLx
	CfH6sUhQ+0yYUJQ0xQlCM8pmcEzNJfIaKhRgEe2y2eBEXnNAyrojUtkUHKCp2Gcl
	u++NIftyhrKaVpwDEUgAD+0qhc0a5PsGefXGA2VN/Pt+XMvSJCeLSWcw+uNA9NeX
	l9Lggg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g1hgy2uxb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 14 Aug 2026 06:35:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cd01a14e81so10651625ad.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 23:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786689331; x=1787294131; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q62LA/TLjmvPWhJyTRg3Jbr4r61LixtTZckidFb0VyQ=;
        b=UQAGGBzxxhSN2KfL91Ig8kTGNFkn/vQip/ZslXujivzxbvcvNEDFnJ7UJxZt64yIBt
         0yq3d8OSY3eeXnZGu2FgDkLqE7haUI7mNeZLiQH8NL+zfjAeRxn6xduBIw/kZs9ZZDaE
         K0o+jCTxAMoQxkHBDYI5ZuuE5drdG/4uN5GocTQLXKdpOP8f0s1nnAOIelb3mjxMHjQf
         BHDO/LI8EkFJMLggpLPaAx+oQK5QDJaGJAlfgLYvlh3+Pycl18aseptWJPtmIw2iwhyY
         dF5Y67nn1YUkWElWAXbB7jPgV8TnR+AzLJNMdz2EbLi0p1Ybsglej9ZbUsx6EJMWlAV/
         cPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786689331; x=1787294131;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q62LA/TLjmvPWhJyTRg3Jbr4r61LixtTZckidFb0VyQ=;
        b=fCBnJNeBq9QKKcNMYCcdl/QgUu+YYvFoXKA0my640hNrSkFQUpd9TVByGgyFj1MEcr
         W5lmhR1zq6ZYeyCP82JJxg1LUKvOAATuWi0w43vHr1o7jy1JCPhmHWtMtqFkmXMef5Tl
         g8C8nMHaf2Ba/eMYFkvVCqU57Gro/MCClwZvGDnQ7hd3omd5U4oPJCHo6g+/5dkzbvem
         q0tsO5Kpomt9ssh4hDYobRxk4wJnwVePlasWapqHXRbH44QgBvs4tfdF6IGbGCtkqBwD
         wh1s35vmk5Xjq5PGJU0yu9MXATluu0q+9rlrQldnYDrsUm8NADUU4aOKDV3ZX13OQ/37
         lA0w==
X-Forwarded-Encrypted: i=1; AHgh+RoYmexZlWIsi8hQQYncoXZJkQSLoA7e5ExBiKycCg1t+iJFopebHGde/aA3v4XtQ4CynGfZqx8gEpI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLvoDMJLSyvzolF2Y+RnirM1EtuPVdax6jDXEXAE4Cp+8DDdE9
	FtxPqhE98uytu3Z+iaeGXIN6fZXIfTXrVMow8GoudpkA7a3H3DhUAoxYBX46/fRNsRIGL1pQYlB
	DrK/kMIgRcdu6ZZWu/ZP4UaMIC6z6gA9aNrBHZ6lpESdg2efIWQtqTrBlGtJW5bKVBHjE
X-Gm-Gg: AR+sD10QitV2ukUeepo+lkICv+ruiOoYkbyWcxL5L2mLf6+ariIU6lVmN1JlblnqYRM
	mJs37P7C/Hu8I7kmwLIhuCllmzR1n+krhX7a9DhW3b1joMcBhwCKHRBKSA9JgHb+tMANsxhTnIB
	LWfciaD+JmoJFj7UnPVpTA1NG3i1g1IwHdj8QO45s98VY10nF1eEaDYXD82/LazCmcbCroZyExi
	RfakIqJqsk+n3uKjpoSW87tczpV4LQCUVa0vUPO7emDu77br24/2HY3o38h9L4eNMIwKDReYWWb
	2XR6qik/zYej7Ho15fWYqQDPtWm7pdbo9QPMbD+dg1Kcbu/lm9FCoAL+4tTh0GuNtPCQVgIb3Jc
	9KqBTsVcUtdwKocVYBE3/iJxAk14=
X-Received: by 2002:a17:902:e742:b0:2c9:cf62:6f61 with SMTP id d9443c01a7336-2d3b0f3f6b0mr34316715ad.17.1786689331411;
        Thu, 13 Aug 2026 23:35:31 -0700 (PDT)
X-Received: by 2002:a17:902:e742:b0:2c9:cf62:6f61 with SMTP id d9443c01a7336-2d3b0f3f6b0mr34316175ad.17.1786689330925;
        Thu, 13 Aug 2026 23:35:30 -0700 (PDT)
Received: from [10.216.43.17] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d3aebc81a6sm5222685ad.72.2026.08.13.23.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2026 23:35:30 -0700 (PDT)
Message-ID: <b8c9b2e7-87ea-47d6-b01b-b773ebd7882b@oss.qualcomm.com>
Date: Fri, 14 Aug 2026 12:05:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, vkoul@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260814004725.1368027-1-nitin.rawat@oss.qualcomm.com>
 <c37708f3-5043-4ad5-944e-64ceedeecad6@oss.qualcomm.com>
Content-Language: en-US
From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
In-Reply-To: <c37708f3-5043-4ad5-944e-64ceedeecad6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE0MDA0OSBTYWx0ZWRfX0KBsZ1NbRpLE
 QtWtS1w+HNGtMoQTyM4SSypIb7FkTcimWRMTHPxsuxPjcrIDYgHcZAwfNI4uvbZHPgPM+tRTKl9
 cOaOnO1o74YO951lrSuw3vAoz6hpYuHBH1cwzGPtzS+i8tj6EB76g0vkxmEoMY+ViCdpgURkYFs
 SRTaUDonmpdkxSfhJU/A5GAxJlWYDSR0dxWqHyxzIg8wHmvT5lft5hWTZxBgYAc0Ftt2Jjjk7QD
 q8LDvV+FPmIqqBzVDfjm89hvH4IPbP1w+9yz3/tSuzDO2wry81cu70pUmgmeWOwsb1EleA8eEGd
 wFGyl7FDXNoOiMRIJrjkJ1JC4HV4QIV6MlOdgnL6/jW7ls4n45TkgKwnSLGc/2HKl+yCIuWAYqX
 87RVH8KrSFivXI1LqlB29J1gRCJqTwC/wcyv0Z7QJaswQI+OVCz8C8Q8QP9qbRO551SVuzwX5uK
 w4VsCRClRa4zxbJNscg==
X-Authority-Analysis: v=2.4 cv=AaSB2XXG c=1 sm=1 tr=0 ts=6a7eb734 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=ZzmLuljT6Y08Yp8wPLQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 63qiM9y1QDBfG4e8JULBR-sY2I9D453o
X-Proofpoint-GUID: 63qiM9y1QDBfG4e8JULBR-sY2I9D453o
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE0MDA0OSBTYWx0ZWRfX33VGuVYv+6iS
 UEMPfMf5rdAPov0in25c+J6vvYMHJl1pFadzmgrfnUAt9Qz4fyW2/oMUEQF6LYkQ0aqCGK+lTi8
 5DBVQeZoE7+0HTh/vZwcpX5xOlIuqzw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-14_02,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608140049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_233533_832513_7F0EF961 
X-CRM114-Status: GOOD (  15.04  )
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

CgpPbiA4LzE0LzIwMjYgODowMSBBTSwgSmluZ3lpIFdhbmcgd3JvdGU6Cj4gCj4gCj4gT24gOC8x
NC8yMDI2IDg6NDcgQU0sIE5pdGluIFJhd2F0IHdyb3RlOgo+PiBEb2N1bWVudCB0aGUgUU1QIFVG
UyBQSFkgY29tcGF0aWJsZSBmb3IgUXVhbGNvbW0gTWFpbGkgdG8gc3VwcG9ydAo+PiBwaHlzaWNh
bCBsYXllciBmdW5jdGlvbmFsaXR5IGZvciBVRlMgZm91bmQgb24gdGhlIFNvQy4gVXNlIGZhbGxi
YWNrIHRvCj4+IGluZGljYXRlIHRoZSBjb21wYXRpYmlsaXR5IG9mIHRoZSBRTVAgVUZTIFBIWSBv
biB0aGUgTWFpbGkgd2l0aCB0aGF0IG9uCj4+IHRoZSBIYXdpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBOaXRpbiBSYXdhdCA8bml0aW4ucmF3YXRAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogSmluZ3lpIFdhbmcgPGppbmd5aS53YW5nQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+
IAo+IGluY29ycmVjdCBEQ08gY2hhaW4sIHRoZSBsYXN0IFNvQiBzaG91bGQgYmUgc2FtZSBhcyB0
aGUgb25lIHdobwo+IHNlbmQgdGhlIHBhdGNoLgoKSSdsbCBmaXggaW4gbmV4dCBQYXRjaHNldC4K
VGhhbmtzCj4gCj4gVGhhbmtzLAo+IEppbmd5aQo+IAo+PiDCoCAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1swqDCoMKgIHwgNCArKysrCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtIAo+
PiB1ZnMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sc2M4MjgweHAtIAo+PiBxbXAtdWZzLXBoeS55YW1sCj4+IGluZGV4IDdlODNjYjMyMzhlYy4u
ZDk0NTAzZmMyNmU3IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy0gCj4+IHBoeS55YW1sCj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZz
LSAKPj4gcGh5LnlhbWwKPj4gQEAgLTE2LDYgKzE2LDEwIEBAIGRlc2NyaXB0aW9uOgo+PiDCoCBw
cm9wZXJ0aWVzOgo+PiDCoMKgwqAgY29tcGF0aWJsZToKPj4gwqDCoMKgwqDCoCBvbmVPZjoKPj4g
K8KgwqDCoMKgwqAgLSBpdGVtczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sbWFpbGktcW1wLXVmcy1waHkKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBxY29tLGhhd2ktcW1wLXVmcy1waHkKPj4gwqDCoMKg
wqDCoMKgwqAgLSBpdGVtczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20scWNzODMwMC1xbXAtdWZzLXBoeQo+
PiAtLSAKPj4gMi4zNC4xCj4+Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
