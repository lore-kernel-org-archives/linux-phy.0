Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD12CA5FAC
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XAJsaMi0XX/8h5pxiYmHaKQdC3TQ4xRQNUYwdC+izE=; b=lWKHEj9F7WNkpI
	9paG2M3IMBxe8iATaaloa40wbtlgJpNUT8jf5excXaHQZxZyqj4XFjV3MeEDBzW/aaESoxeNPVW8T
	sj5qwR7hcAYNOYso6Tsa0kHfpzTpoOyNxakK7E/yfJcE6LlAwPvjIYPaMDJBBz+owWiK5izgvzgHx
	BlcLVw9ENX8ddZDu7o3wLp30dPuHSC+G/tPnItTZN1VsVkXBtsw9nI/YYqorOeu9HLj+Lbu1yf9WG
	Z9Z82L5nu8Mvf80TGQbcM+pB0dGuSYptEtBW4/aQ8sa1J6KRA6AwI05sKlURl1mLKcC+mCPUA1qVJ
	agIACzcCt49jafTgTIYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBt26-00000005xdp-1xEZ;
	Wed, 30 Sep 2026 12:03:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBt22-00000005xcz-28CH
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 12:03:31 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UB7bab3135733
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 12:03:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SVhgKlodbVYoJavsQBEw6xYqmpo3okld/zMkNE/WOb0=; b=bJPxCCpjb/bth02W
	bf8k/+YmCPG8RvFHW6EKmbFotGo7gbw/4TNRRc9PmHSGjJIhVVc3nftbceghkL+y
	SCxKNfCZdpSCsTjG+gqQXfxSx6BvT9xmAhU1BVL1w6IQxguW46KMSJ2A7RvF80NI
	k6qifzQVJpxTje+e8k6epzZEkGTKHsTTvTxGheLnzCH5EFs0Eh5fXK4orFYaDDQM
	xRjSLPgsX/7qoCr+2EjuWFqgAWBFkU02kHDcBkrKIrSNGABOtjr0MBGmAsj2aHpb
	pX/h6ujeRmhuhArdITMe3itvzyaWlXRQg6ymzjwR7LuOGr/0PmJB1VUhA17j6lfp
	G2bZNQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0x27h7uq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 12:03:28 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-398dcfabbf8so12743835a91.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 05:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790769808; x=1791374608; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SVhgKlodbVYoJavsQBEw6xYqmpo3okld/zMkNE/WOb0=;
        b=ZKWLfHXDk5cSi6W+f5HQU2tzcXigk3cLEE3VBKpHg1w8HFtXRnK00cpxDmQfZtPkqc
         Vjdt+ig+SHtiYI9dhleMh7xnhE/NSElrMQGFks6i5bHpUKzVsY5Vc8036fFClYu3R0aF
         nLKnL0eJ02dcN6W2o1uxtIaE8ErqC59n1t9ZzLYTt7TTlDiJEc5uYUBy5BvBQ7e+V2Ni
         s8AQGSX9yyPbttKDpExSxV4GueUUyrJhN2WlZ0aM9FmL6gO8E3oS2/ZEyn1EUdnkIN6E
         vQk0k9FoLC4/A++ko3wodcUPBroN/ZCXPTIkMR+EfcdIkAMSbiI6ak/2FEmin5gplaCT
         F/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790769808; x=1791374608;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SVhgKlodbVYoJavsQBEw6xYqmpo3okld/zMkNE/WOb0=;
        b=b+Gl0MpwhxgSQVBNldqKdZaDCPhOJVWjqiU//R3ExMmYWAAkLzByWuSEkxaoFB/pqO
         CtcqU8+P7zvnOSYP5soPbCyUbaWetUIuzSe2z7Bds44sDW1gQ/vuneTRddRT9fH4THBO
         j1k0JeKfUvUaeiMAVMrXh1Uv575lNPhkv7Xc5ngZ55u0B5XGAU9lvh+HbCSeqEYBFSan
         gw94x9h0hOahiPE+WfA5pckcu1BdqUSNMphMaNpd/MpD8I8u9yQGK+G1jxAhGDwFXTY0
         suN7+jHtY1BOXULWRL8tlPfuhoFInDG8Kyp+QFftAo0KdECFLKMLBUySihd2GGICWaJ4
         3Rmw==
X-Forwarded-Encrypted: i=1; AKwUvBxqBJji0vKUjO0zpEkA2MgE6wcZN7omGZ3hgRpf0W/BUEpuWQwvYcc6Umv8BhX4pkSm0X3GwbyRreo=@lists.infradead.org
X-Gm-Message-State: AFq9FYK6TYlC+ObktcTou6mGmMFS1SOYzdTjmG9SY4AeOxTAtFABfvxK
	pKjLU/TekHgoCyqn6kBh870EcpF4EpaoMwn2qHMn6aHcEf1H5C3GNGGCrMZeJS/AcZw6JSWJcKS
	lXTUlaYCuFdb85eOrtYIbScnna6oZp9FMBWbdoulT6iLsLQb+z4+83BiXPcoODMabcGfdmamM4O
	ur
X-Gm-Gg: AYBFou35IIYr2u5t0vN0a72itgYHXrkWbbeuaCVNtZ7tcZgN3+W4yeTDWz/A6Oqz1JN
	8ZyLJ8AYIX1JUKfDSX5gALw0gcF8UWxO6wfj1Z/2cnzuZSgfB4tkVbwJYK5cWMV6Vcl8aw4WnM0
	zqjjmxPw8nxEM9ovaY3nVPbqAd1I6B0SCgycSWlyPNJJH/UZ6ngvoVS1/Ma/lUvWpq5IQNAhm2c
	gqbupvo4rW4hTr0GilZYg0SvKf0n1/fAububcqGtjUxVb5b4Ocajc5q49T/WxD4tPKZs1/O/VLA
	MRqo6xluvjff7asWeM42zxRCdLnuJbGPjg/c0H32oP42KpsG0fMrx/vpoQplIpGtelwg22c0BdK
	IrX5tD3tULLkFYCmnvVAYaClQP8RJ
X-Received: by 2002:a17:90b:1c8d:b0:39e:4d7b:b247 with SMTP id 98e67ed59e1d1-3a4d1526645mr923025a91.19.1790769802619;
        Wed, 30 Sep 2026 05:03:22 -0700 (PDT)
X-Received: by 2002:a17:90b:1c8d:b0:39e:4d7b:b247 with SMTP id 98e67ed59e1d1-3a4d1526645mr923003a91.19.1790769802144;
        Wed, 30 Sep 2026 05:03:22 -0700 (PDT)
Received: from [10.204.78.119] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4ca7810d6sm4068318a91.6.2026.09.30.05.03.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 05:03:21 -0700 (PDT)
Message-ID: <c201bdf4-7b23-4f7f-83fd-b19a8d2aba9c@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 17:33:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/9] phy: qualcomm: qmp-combo: Add hardware-specific DP
 PHY config fields
To: Oleg Keri <okerixx@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
 <178966967452.3333.16125740437772430030@gmail.com>
Content-Language: en-GB
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
In-Reply-To: <178966967452.3333.16125740437772430030@gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA0NyBTYWx0ZWRfX/1mtn80DgPn9
 UKBgS2tBYa4JU+EQSssPgOCk+qy+sL9tpo/lC5g8BtG8h2IBNvNHb5UCLaP4zMaG0RBfEJHkcJK
 3rTmutsfUxIPfPXd7YEy0E3e2Mb8ABc=
X-Proofpoint-GUID: kAWbGxjbGxANr2W_cP1FhUUsf7Y-9cr0
X-Authority-Analysis: v=2.4 cv=W9GtxhWk c=1 sm=1 tr=0 ts=6abcfa90 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=2Pgbhd59ai6847CPl0QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA0NyBTYWx0ZWRfX1sYZiRDVzzun
 uvWe+/gpqihBUT4MbGqCcPkQYE2DhTSlwT5QdXVzvQ9H8FvJcG5+wR+ueotd4tFnGXeZOoyEnd7
 FAu06xjNHvunhhcgRWxKL6Q4hrfWFYbRMAU8K6LIRVq9J2bOMzUIVtBZu4iDyolqllOhgqkerPz
 dmP6381yO44/wUpYIcVlIPC4IP6kOomQiLpNQX0TDTb0BBn8G+IO2+S9mYrGwrDrcwc+c6dj/fZ
 4pDlTvMJtjHMJubEeWE2WVTPMdIRR4ub+cJRB1U2sTiEWY582I0Mka1Ec/W5V/O0SMjKU9KVjSH
 b0UCRCLe82w77sHjhxrNJZFutmxV92W0tHFyRwGtoa1EqsNWRJw50MH7g1FUHkgHTtWe7Sc3QYW
 XjVcqBmF6q3rDAOYqTh+KiMw3g64xMYdOZL+/RovnxhJl9ngAXBYPxv5mghDeoCGnGURehL2cIE
 124SyCD8NPz2H3cm3iA==
X-Proofpoint-ORIG-GUID: kAWbGxjbGxANr2W_cP1FhUUsf7Y-9cr0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609300047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_050330_677223_0CA42177 
X-CRM114-Status: GOOD (  27.60  )
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

Ck9uIDkvMTcvMjAyNiAxMTo1NyBQTSwgT2xlZyBLZXJpIHdyb3RlOgo+IEhpIE5hYmlnZSwKPgo+
IE9uIFR1ZSwgU2VwIDA4LCAyMDI2LCBOYWJpZ2UgQWFsYSB3cm90ZToKPj4gVXBkYXRlIHFtcF9j
b21ib19jb25maWd1cmVfZHBfbW9kZSgpIHRvIGhvbm9yIGRwX21vZGVfaWdub3JlX3JldmVyc2Us
Cj4+IHNvIEdseW11ciBjYW4gYnlwYXNzIFR5cGVDIG9yaWVudGF0aW9uLWJhc2VkIGxhbmUgcmV2
ZXJzYWwuCj4gVGhpcyBicmVha3MgMi1sYW5lIERQIHdpdGggYSByZXZlcnNlZCBwbHVnIG9uIGEg
TGVub3ZvIFlvZ2EgU2xpbSA3eAo+IEdlbiAxMSAoR2x5bXVyKSwgd2l0aCB0aGUgd2hvbGUgdjQg
c2VyaWVzIG9uIG5leHQtMjAyNjA5MTYuCj4KPiBXaXRoIGRwX21vZGVfaWdub3JlX3JldmVyc2Ug
c2V0LCBxbXBfY29tYm9fY29uZmlndXJlX2RwX21vZGUoKSBhbHdheXMKPiBwcm9ncmFtcyB0aGUg
bm9ybWFsIHNpZGUgKERQX1BIWV9NT0RFIDB4NWMsIGxhbmUgMi8zIHBvd2VyIGJpdHMgaW4KPiBE
UF9QSFlfUERfQ1RMKSwgd2hpbGUgcW1wX3Y4X2NvbmZpZ3VyZV9kcF9waHkoKSBzdGlsbCBmb2xs
b3dzIHRoZSByZWFsCj4gb3JpZW50YXRpb24gYW5kIGVuYWJsZXMgVFhBIGZvciBhIHJldmVyc2Vk
IHBsdWcuIFdpdGggZmV3ZXIgdGhhbiBmb3VyCj4gbGFuZXMgdGhlIHR3byBubyBsb25nZXIgbWF0
Y2guCj4KPiBPbiBhIDItbGFuZSBEUCArIFVTQjMgZG9jayAoSEJSMiwgb25lIExUVFBSKSB0aGUg
cmV2ZXJzZWQgcGx1ZyBwYXNzZXMKPiBjbG9jayByZWNvdmVyeSBhbmQgdGhlbiBuZXZlciByZWFj
aGVzIGNoYW5uZWwgRVE6IHRoZSBMVFRQUiByZXBvcnRzCj4gQ1JfRE9ORSBvbiBib3RoIGxhbmVz
IGJ1dCBuZXZlciBFUV9ET05FIG9yIFNZTUJPTF9MT0NLRUQsIHdhbGtzIGl0cwo+IHByZS1lbXBo
YXNpcyByZXF1ZXN0IHVwIHRvIGxldmVsIDMgYXQgc3dpbmcgbGV2ZWwgMCwgYW5kIHRoZW4gY2xv
Y2sKPiByZWNvdmVyeSBpcyBsb3N0LiBBbGwgZm91ciBhdHRlbXB0cyBlbmQgdGhlIHNhbWUgd2F5
Ogo+Cj4gICAgW2RybTptc21fZHBfY3RybF9saW5rX3RyYWluXzFfMl0gKkVSUk9SKiBsaW5rIHRy
YWluaW5nICMyIG9uIHBoeSAxIGZhaWxlZC4gcmV0PS0xMTAKPiAgICBbZHJtOm1zbV9kcF9jdHJs
X3NldHVwX21haW5fbGlua10gKkVSUk9SKiBsaW5rIHRyYWluaW5nIG9mIExUVFBSKHMpIGZhaWxl
ZC4gcmV0PS0xMTAKPiAgICBbZHJtOm1zbV9kcF9kaXNwbGF5X2F0b21pY19lbmFibGVdICpFUlJP
UiogRmFpbGVkIGxpbmsgdHJhaW5pbmcgKHJjPS0xMDQpCj4KPiBUaGUgc2FtZSBkb2NrIHRyYWlu
cyBhdCBvbmNlIHdpdGggdGhlIHBsdWcgdGhlIG90aGVyIHdheSByb3VuZC4gVUNTSQo+IGFuZCBw
bWljX2dsaW5rX2FsdG1vZGUgcmVwb3J0IHRoZSBzYW1lIG9yaWVudGF0aW9uIGluIGJvdGggY2Fz
ZXMsIHNvCj4gdGhlIG9yaWVudGF0aW9uIGl0c2VsZiBpcyByaWdodC4KPgo+IElnbm9yaW5nIHRo
ZSBvcmllbnRhdGlvbiBvbmx5IHdoZW4gYWxsIGZvdXIgbGFuZXMgY2FycnkgRFAgZml4ZXMgaXQK
PiBoZXJlLCBib3RoIG9yaWVudGF0aW9ucyB0cmFpbjoKPgo+IC0JYm9vbCByZXZlcnNlID0gKHFt
cC0+b3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSkgJiYKPiAtCQkgICAg
ICAgIWNmZy0+ZHBfbW9kZV9pZ25vcmVfcmV2ZXJzZTsKPiAgIAljb25zdCBzdHJ1Y3QgcGh5X2Nv
bmZpZ3VyZV9vcHRzX2RwICpkcF9vcHRzID0gJnFtcC0+ZHBfb3B0czsKPiArCWJvb2wgcmV2ZXJz
ZSA9IChxbXAtPm9yaWVudGF0aW9uID09IFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0UpICYmCj4g
KwkJICAgICAgICEoY2ZnLT5kcF9tb2RlX2lnbm9yZV9yZXZlcnNlICYmIGRwX29wdHMtPmxhbmVz
ID09IDQpOwo+Cj4gSSBoYXZlIG5vIDQtbGFuZSBzaW5rIHRvIGNoZWNrIHdoZXRoZXIgMHg1YyBp
cyByZWFsbHkgbmVlZGVkIGZvciBhCj4gcmV2ZXJzZWQgNC1sYW5lIGxpbms7IGNvdWxkIHlvdSBz
YXkgd2hhdCB0aGUgZmxhZyBpcyBmb3I/Cj4KPiBTZXBhcmF0ZWx5LCBvbiA3Lzk6IExOMC9MTjFf
RFJWX0xWTCBpcyBub3cgbG9va2VkIHVwIGZyb20gdi9wIGxldmVscywKPiBidXQgb25seSBpbiBx
bXBfdjhfY29uZmlndXJlX2RwX2Nsb2NrcygpLCBpLmUuIGF0IHBvd2VyLW9uIHdoZW4gYm90aAo+
IGFyZSB6ZXJvLiBMZXZlbCBjaGFuZ2VzIGR1cmluZyB0cmFpbmluZyBnbyB0aHJvdWdoIGNvbmZp
Z3VyZV9kcF90eCgpLAo+IHdoaWNoIGRvZXMgbm90IHRvdWNoIHRoZXNlIHJlZ2lzdGVycywgc28g
dGhleSBzdGF5IGF0IHRoZSBbMF1bMF0gZW50cnkKPiAoMHgwMiBhdCBIQlIyKSB3aGVyZSB0aGUg
b2xkIGNvZGUgaGFkIDB4MWYuIEkgY2FuIHRlc3QgYSB2NSBvbiB0aGlzCj4gbWFjaGluZS4KCkhp
IE9sZWcsCgpUaGFua3MgZm9yIHRlc3RpbmcgYW5kIHRoZSBkZXRhaWxlZCByZXBvcnQuCgpZb3Ug
YXJlIHJpZ2h0LiBUaGUgcm9vdCBjYXVzZSBpcyB0aGF0IGluIHBhdGNoIDQvOSwKZHBfbW9kZV9p
Z25vcmVfcmV2ZXJzZSB3YXMgYXBwbGllZCB0byB0aGUgcmV2ZXJzZSB2YXJpYWJsZSBpdHNlbGYs
CndoaWNoIGNhdXNlZCBpdCB0byBzdXBwcmVzcyBub3QganVzdCB0aGUgRFBfUEhZX01PREUgd3Jp
dGUgYnV0IGFsc28KdGhlIFBEX0NUTCBsYW5lIHBvd2VyLWRvd24gc2VsZWN0aW9uLiBGb3IgYSAy
LWxhbmUgcmV2ZXJzZWQgcGx1ZywKUERfQ1RMIHdhcyBwcm9ncmFtbWluZyB0aGUgd3JvbmcgbGFu
ZSBwYWlyIGFzIGFjdGl2ZSwgd2hpbGUKcW1wX3Y4X2NvbmZpZ3VyZV9kcF9waHkoKSB3YXMgc3Rp
bGwgdXNpbmcgdGhlIHJhdyBvcmllbnRhdGlvbiBmb3IKdGhlIGRyaXZlci1lbmFibGUgcmVnaXN0
ZXJzLiBUaGUgdHdvIHdlcmUgbm8gbG9uZ2VyIGluIGFncmVlbWVudCwKY2F1c2luZyB0aGUgbGlu
ayB0cmFpbmluZyBmYWlsdXJlIHlvdSBvYnNlcnZlZC4KClRoZSBmaXggZGVjb3VwbGVzIHRoZSB0
d286IHJldmVyc2UgaXMgbm93IGFsd2F5cyB0aGUgcmF3IGNhYmxlCm9yaWVudGF0aW9uLCBhbmQg
ZHBfbW9kZV9pZ25vcmVfcmV2ZXJzZSBpcyBhcHBsaWVkIG9ubHkgdG8gdGhlCkRQX1BIWV9NT0RF
IHdyaXRlLCB3aGljaCBpcyB0aGUgb25seSByZWdpc3RlciB0aGF0IGFjdHVhbGx5IG5lZWRzCnRv
IGJlIGZpeGVkIHRvIDB4NWMgZm9yIEdseW11ciByZWdhcmRsZXNzIG9mIG9yaWVudGF0aW9uOgoK
LcKgIMKgIMKgYm9vbCByZXZlcnNlID0gKHFtcC0+b3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5U
QVRJT05fUkVWRVJTRSkgJiYKLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICFjZmctPmRw
X21vZGVfaWdub3JlX3JldmVyc2U7CiDCoCDCoCDCoCBjb25zdCBzdHJ1Y3QgcGh5X2NvbmZpZ3Vy
ZV9vcHRzX2RwICpkcF9vcHRzID0gJnFtcC0+ZHBfb3B0czsKK8KgIMKgIMKgYm9vbCByZXZlcnNl
ID0gKHFtcC0+b3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRSk7CgotwqAg
wqAgwqBpZiAocmV2ZXJzZSkKK8KgIMKgIMKgaWYgKHJldmVyc2UgJiYgIWNmZy0+ZHBfbW9kZV9p
Z25vcmVfcmV2ZXJzZSkKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHdyaXRlbCgweDRjLCBxbXAtPmRw
X2RwX3BoeSArIFFTRVJERVNfRFBfUEhZX01PREUpOwogwqAgwqAgwqAgZWxzZQogwqAgwqAgwqAg
wqAgwqAgwqAgwqAgd3JpdGVsKDB4NWMsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9QSFlf
TU9ERSk7CgpJIGhhdmUgdmVyaWZpZWQgdGhpcyBvbiBib3RoIDItbGFuZSBhbmQgNC1sYW5lIGlu
IGJvdGggb3JpZW50YXRpb25zLgoKUmVnYXJkaW5nIGRwX21vZGVfaWdub3JlX3JldmVyc2UgZm9y
IDQtbGFuZTogSSBoYXZlIGNvbmZpcm1lZCB3aXRoCnRoZSBnbHltdXIgSFBHIGd1aWRlIERQX1BI
WV9NT0RFIG11c3QgYWx3YXlzIGJlIDB4NWMgZm9yIEdseW11cgpyZWdhcmRsZXNzIG9mIG9yaWVu
dGF0aW9uLiBUaGUgZmxhZyBleGlzdHMgc29sZWx5IHRvIHN1cHByZXNzIHRoZQoweDRjIHdyaXRl
LiBJIHdpbGwgYWRkIHRoaXMgZml4IGluIHRoZSBuZXh0IHJldmlzaW9uIHY1LgoKClRoYW5rcywK
Ck5hYmlnZSBBYWxhCgo+IFRoYW5rcywKPiBPbGVnCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
