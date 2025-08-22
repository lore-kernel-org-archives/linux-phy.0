Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57FFACA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqzD0+hDlGJ9AsrjHww0ONj3CASeqmATe3s9QR2KYmk=; b=XswAt+OaH/PjeQ
	aTU5bW2CeQpNlMLH9xAz27SyZ4J2VzkfebtWO8F1XyktNtfA//DHWLgGutWUqNqmK/3waWjKDBq5T
	m1+G4izX3CNXQ3PYK/Ft+SFRCmHfEpldCoL2xWo1DlLWi3dwDDinV7IU5uLn3hpmdnRVXp+t5Fr47
	LymOkRM+/qDUY59TPnBe58TxQKxiXNUWtT29KpJNklzoem+YIqfTq70EpVLHjpKEoq9nEUE2Lx3Qb
	sEOJUuPhJEo6tO/PH+uxcG10SuuXLO/ApTelpGXa8DJLl1vk3Zn95u/4ukNC5xf3V0GnYa3N5ldOR
	xRPxT4JigWaKopVnImVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZb3-00000003X6a-09AR;
	Fri, 22 Aug 2025 21:46:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upNvX-000000021dw-1Nzt
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 09:19:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UVjC001232
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:19:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UR8YTvAoFiE7uKP9EFgzqtNd9BlRcDjah+SNG7rFzDQ=; b=jBDRRZ+HBX2UQimW
	WkaIb5r8nv1RvU3YDVQxzw+rMKYZP5zD6xsLPPpgCl+ToW2+6EBx4OKR61YW+oBL
	Y9j0x4DNkSJvoD1EtP9nVSMN/7CIyHb/HO9Wt11u4PCA17aCZ/JuSAcwYk5EHGKa
	4JKFmezsDUp74aLQpBt0aOh4mQJAuN8sUHt/LDRx+NJrdCTuWqeY5PLgxmU4v6L6
	uX/RSSmhP+1L0AwTXs4jPxM6LT8UJbuRbWtcEHLjFd+qjbxd9G1eV6rewEM2NsOP
	JGh8p7+HyJi4hT7FkCyel9ZqM3u0JPdxuxSRC6HHGkVkLhgox8vMwqxobVFiaPOA
	MR/qYw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5298nyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 09:19:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b10990a1f0so56325041cf.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 02:19:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854352; x=1756459152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UR8YTvAoFiE7uKP9EFgzqtNd9BlRcDjah+SNG7rFzDQ=;
        b=LCUmGDMNlrG3lFl5O0hLtD3PFpWXzCEmjnKg5IUIplKwwwxXCvt0l+DTeNek27CWmf
         9U2trVtkfUIV3ntp0lqjafbTs0ZaUvZvkQ84O1i7q53s+AMc6mn2i6gDPw+4urXnh9L5
         3SQjhIOx0tjj7rI+Ofpa4bzCf+CmfG2H8BOxv/s/ZfWmtRQVNvoYCXtQrYTmf2oB+0mG
         /qANfZ8M6chJO7Zs5+BvMUUMsnyuFfWerUL2UrJXcMe0srKxpG0rYmd//IguaD53P9IX
         6yXOJwsnvdnJoO+edjVxcVk9+lT/nCQHkf/yRNZZQkMqVjK1zkLBW8M04yTAdEHrNjTH
         8D0g==
X-Forwarded-Encrypted: i=1; AJvYcCWL8D90eJXAAVbi4zNnC9lsy7zDdAXIi+P7OCURtKcztQm9g2OebKmeXJTlZ5ErIleEt9XrB8Z/ePE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPatWiKaE2TCRWAYckcuUcgp0slCdPXDLDsIjU9/VA5KnRklTN
	wF7JePaus662tHFpAeoiJtDUOeuGVRmTH7fnfaoGCEf8i2cjMbLY+34sWgb3SCffSpUtc3SJQJm
	u2qeUDsD+Dg5vhEvZwBFLhD1YIFC2OS2XZ56IWUMe1iu2BlQK/hcFNdIio45z4x/JSMAB
X-Gm-Gg: ASbGncsyvjw09lff2ggSB824SZHK/BKdBhomiExk2XLPuPAHPYOlP+xWDuVElYd1G+m
	9afbICTAJejzrKpfa1GCD3+yzESYLkfgzKrnZY33M9/n1O17cmQRcSLb/u5wlCU22lMmWymKGgB
	nn39fFATw0QNVueBU14UcZLfGtOHUHSSB4pgZNJKOXsiwcpQElO9+x1rjXL9sBi4eJzUmDMwvvU
	5zxIn3h3ryvQF/WrXhFGQTndIXmhBHLU1peTLQtiSZZ/5cFa7Q0WCcbZh+ymcKmwulGoPEMJQNy
	0nF3emEpTRtinY+aPHRtWa70eYetTh0wCbDHZX1ccMSgbEWuYYX0ql2hfh9LDO7sjY3t4fZfnt6
	S5MzSFyzSzhPC2k+hCg==
X-Received: by 2002:a05:622a:1353:b0:4b2:8ac5:25a7 with SMTP id d75a77b69052e-4b2aab75c87mr22539941cf.80.1755854352013;
        Fri, 22 Aug 2025 02:19:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhQe/0qT5qVOaaQF4aOu6Jtxg+P2oHtaij6naoDV2P2u2q7XUfpRoxorEfQKrlbAq8zOb79Q==
X-Received: by 2002:a05:622a:1353:b0:4b2:8ac5:25a7 with SMTP id d75a77b69052e-4b2aab75c87mr22539701cf.80.1755854351366;
        Fri, 22 Aug 2025 02:19:11 -0700 (PDT)
Received: from [10.207.49.70] (84-253-220-51.bb.dnainternet.fi. [84.253.220.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f32d1e17csm101972e87.17.2025.08.22.02.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 02:19:10 -0700 (PDT)
Message-ID: <8aa65fdc-d5a1-4a81-bcc1-8d953fa0ffa8@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 12:19:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add regulator loads for SM8650
 and SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
 <20250819222832.8471-3-quic_nitirawa@quicinc.com>
 <ger4kizeltjwalfuwu4dpfjiskrv2okgo5c7d6n3pb24yaxgfo@nkcndblyx3il>
 <b453b8ff-a460-4ccd-9019-aed746a7d52d@quicinc.com>
 <ukxv7donvkulgci2dwrokuflzxzeyh4kohoyja2vywropntxnb@qepcssbe4wpc>
 <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <9a38ec05-f7ab-4241-ba47-0d514b79e808@quicinc.com>
X-Proofpoint-GUID: fapwtRrhXSHgp9Nl5Uj14_wV1TRPulsK
X-Proofpoint-ORIG-GUID: fapwtRrhXSHgp9Nl5Uj14_wV1TRPulsK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX8IlpMEngTRz4
 pMi4QMsf6/nHheCClXrQeYzE8FBZJnkvBq1E8daxLwj7EOF0yKE2n6AiIQZa5xqK5TY0UmvPibN
 lPusylePNUlsIuBd7gwemO755YSXkAuoRWNI2dzrvSJT1g5mvdMuwQq3N9wTBhRqUTupWY5dXF6
 BM6Mbf1y3TkQUV/C/oUxOEw8p+SRSaozBRDUXEwGYF8c1QK64YKMgMYfE/ipZQMTZj6NGSfu/cw
 vbNJe+hEKcqkyQsqttOl/sQugcjeq5N0V778lFxen4HR07PuA1AT8yrTC1xfnefmaiXIlA7aK2U
 mjrr2CYWcMF75JlOTx+tiVcQUV6QZsa8ox5zdeXad3ytDx5ZICQaOdQF++xl8ncRHXQdYRpnhKl
 fmG+n1QVRJDLMX6v6J4Gq2/TYwUSqw==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a83611 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=JdIsBVl79nXNK9flUcZCTw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=9j3tyaYXLkDgBcrGQc0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_021915_371312_0BD3AA17 
X-CRM114-Status: GOOD (  24.15  )
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

T24gMjEvMDgvMjAyNSAxOTowMiwgTml0aW4gUmF3YXQgd3JvdGU6Cj4gCj4gCj4gT24gOC8yMC8y
MDI1IDU6MjQgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIFdlZCwgQXVnIDIwLCAy
MDI1IGF0IDEyOjA3OjU3UE0gKzA1MzAsIE5pdGluIFJhd2F0IHdyb3RlOgo+Pj4KPj4+Cj4+PiBP
biA4LzIwLzIwMjUgNjoxOSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+PiBPbiBXZWQs
IEF1ZyAyMCwgMjAyNSBhdCAwMzo1ODoyNkFNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPj4+
Pj4gQWRkIHJlZ3VsYXRvciBsb2FkIHZvdGluZyBzdXBwb3J0IGZvciBTTTg2NTAgYW5kIFNNODc1
MCBwbGF0Zm9ybXMgYnkKPj4+Pj4gaW50cm9kdWNpbmcgZGVkaWNhdGVkIHJlZ3VsYXRvciBidWxr
IGRhdGEgYXJyYXlzIHdpdGggdGhlaXIgbG9hZAo+Pj4+PiB2YWx1ZXMuCj4+Pj4+Cj4+Pj4+IFRo
ZSBsb2FkIHJlcXVpcmVtZW50cyBhcmU6Cj4+Pj4+IC0gU004NjUwOiB2ZGRhLXBoeSAoMjA1bUEp
LCB2ZGRhLXBsbCAoMTcuNW1BKQo+Pj4+PiAtIFNNODc1MDogdmRkYS1waHkgKDIxM21BKSwgdmRk
YS1wbGwgKDE4LjNtQSkKPj4+Pj4KPj4+Pj4gVGhpcyBlbnN1cmVzIHN0YWJsZSBvcGVyYXRpb24g
YW5kIHByb3BlciBwb3dlciBtYW5hZ2VtZW50IGZvciB0aGVzZQo+Pj4+PiBwbGF0Zm9ybXMgd2hl
cmUgcmVndWxhdG9ycyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIFFNUCBVU0IgUEhZIGFuZAo+Pj4+
PiBvdGhlciBJUCBibG9ja3MgYnkgc2V0dGluZyBhcHByb3ByaWF0ZSByZWd1bGF0b3IgbG9hZCBj
dXJyZW50cyAKPj4+Pj4gZHVyaW5nIFBIWQo+Pj4+PiBvcGVyYXRpb25zLgo+Pj4+Pgo+Pj4+PiBD
b25maWd1cmF0aW9ucyB3aXRob3V0IHNwZWNpZmljIGxvYWQgcmVxdWlyZW1lbnRzIHdpbGwgY29u
dGludWUgdG8gCj4+Pj4+IHdvcmsKPj4+Pj4gdW5jaGFuZ2VkLCBhcyBpbml0X2xvYWRfdUEgcmVt
YWlucyB6ZXJvLWluaXRpYWxpemVkIHdoZW4gLmluaXRfbG9hZF91QQo+Pj4+PiBpcyBub3QgcHJv
dmlkZWQuCj4+Pj4KPj4+PiBDYW4gd2UgcGxlYXNlIGdldCBjb25maWd1cmF0aW9uIGZvciB0aGUg
cmVzdCBvZiB0aGUgcGxhdGZvcm1zPwo+Pj4KPj4+IEhpIERtaXRyeSwKPj4+Cj4+PiBJZiB5b3Un
cmUgb2theSB3aXRoIGl0LCBjYW4gSSBtZXJnZSB0aGUgY29uZmlndXJhdGlvbiBmb3IgdGhlIHJl
bWFpbmluZwo+Pj4gcGxhdGZvcm1zIGluIHRoZSBuZXh0IHBhdGNoIHNlcmllcyBhZnRlciBJIGNv
bXBsZXRlIHRlc3Rpbmcgb24gYWxsIAo+Pj4gcmVtYWluaW5nCj4+PiBwbGF0Zm9ybXMuCj4+Cj4+
IFlvdSBkb24ndCBuZWVkIHRvIHRlc3QsIGZpbmRpbmcgTVNNODk5NiBvciA5OCBtaWdodCBiZSB0
cm91Ymxlc29tZS4gSnVzdAo+PiBmaWxsIGluIHRoZSB2YWx1ZXMgZnJvbSB0aGUgaGFyZHdhcmUg
ZG9jdW1lbnRhdGlvbi4KPiAKPiBIaSBEbWl0cnksCj4gCj4gV2hpbGUgaW1wbGVtZW50aW5nIGNo
YW5nZXMgZm9yIGFsbCByZW1haW5pbmcgcGxhdGZvcm0sIEkgbm90aWNlZCB0aGF0IAo+IHRoZSAi
cmVndWxhdG9yLWFsbG93LXNldC1sb2FkIiBwcm9wZXJ0eSBpcyBkZWZpbmVkIG9ubHkgZm9yIFNN
ODc1MCBhbmQgCj4gU004ODUwIHdpdGhpbiB0aGUgUE1JQyBQSFkgYW5kIFBMTCBkZXZpY2UgdHJl
ZSBub2RlcyB3aGljaCBtZWFucyB0aGF0IAo+IGV2ZW4gaWYgdGhlIFVGUyBQSFkgZHJpdmVyIGlz
IHVwZGF0ZWQgdG8gdm90ZSBmb3IgdGhpcyBjb25maWd1cmF0aW9uIG9uIAo+IG90aGVyIHBsYXRm
b3JtcywgaXQgd2lsbCBoYXZlIG5vIGltcGFjdC4KCklmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBv
biBvdGhlciBwbGF0Zm9ybXMgd2UgZG9uJ3QgYWxsb3cgc2V0dGluZyB0aGUgCmxvYWQgZXhhY3Rs
eSBiZWNhdXNlIGNvbnN1bWVycyB3ZXJlIG5vdCB2b3Rpbmcgb24gdGhlIGN1cnJlbnQvcG93ZXIg
CnJlcXVpcmVtZW50cy4KCj4gCj4gU2hvdWxkIEkgc3RpbGwgcHJvY2VlZCB3aXRoIGFwcGx5aW5n
IHRoZSBjaGFuZ2UgYWNyb3NzIGFsbCBwbGF0Zm9ybSwgb3IgCj4gbGltaXQgaXQgdG8ganVzdCB0
aGUgU004NzUwIGFuZCBTTTg4NTAgZHJpdmVycz8gV2hhdOKAmXMgeW91ciByZWNvbW1lbmRhdGlv
bj8KCkkgdGhpbmssIHdlIHNob3VsZCBwcm9jZWVkLCB0aGVuIG9uY2UgYWxsIFBIWXMgZ2V0IHRo
b3NlIHZvdGVzIHdlIGNhbiAKZW5hYmxlIGxvYWQgdG9nZ2xpbmcgb24gdGhvc2UgcGxhdGZvcm1z
IHRvby4KCj4gCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gLy8gRGV2aWNlIHRyZWU6Cj4gdnJlZ19s
MWpfMHA5MTogbGRvMSB7Cj4gIMKgwqDCoCByZWd1bGF0b3ItbmFtZSA9ICJ2cmVnX2wxal8wcDkx
IjsKPiAgwqDCoMKgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDg4MDAwMD47Cj4gIMKgwqDC
oCByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw5MjAwMDA+Owo+ICDCoMKgwqAgcmVndWxhdG9y
LWluaXRpYWwtbW9kZSA9IDxSUE1IX1JFR1VMQVRPUl9NT0RFX0hQTT47Cj4gIMKgwqDCoCByZWd1
bGF0b3ItYWxsb3ctc2V0LWxvYWQ7Cj4gIMKgwqDCoCByZWd1bGF0b3ItYWxsb3dlZC1tb2RlcyA9
IDxSUE1IX1JFR1VMQVRPUl9NT0RFX0xQTSAKPiBSUE1IX1JFR1VMQVRPUl9NT0RFX0hQTT47Cj4g
fTsKPiAKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiBkcml2ZXJzL3JlZ3VsYXRvci9vZl9yZWd1bGF0
b3IuYwo+IAo+IAo+IGlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJyZWd1bGF0b3ItYWxs
b3ctc2V0LWxvYWQiKSkKPiAgwqDCoMKgwqDCoMKgwqAgY29uc3RyYWludHMtPnZhbGlkX29wc19t
YXNrIHw9IFJFR1VMQVRPUl9DSEFOR0VfRFJNUzsKPiAKPiA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAv
L2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwo+IHN0YXRpYyBpbnQgZHJtc191QV91cGRhdGUoc3Ry
dWN0IHJlZ3VsYXRvcl9kZXYgKnJkZXYpCj4gewo+ICDCoMKgwqAgLi4uCj4gIMKgwqDCoCBpZiAo
IXJlZ3VsYXRvcl9vcHNfaXNfdmFsaWQocmRldiwgUkVHVUxBVE9SX0NIQU5HRV9EUk1TKSkgewo+
ICDCoMKgwqDCoMKgwqDCoCByZGV2X2RiZyhyZGV2LCAiRFJNUyBvcGVyYXRpb24gbm90IGFsbG93
ZWRcbiIpOwo+ICDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPiAgwqDCoMKgIH0KPiAgwqDCoMKg
IC4uLgo+IH0KPiAKPiAKPiBSZWdhcmRzLAo+IE5pdGluCj4gCj4gCj4gCj4gCj4+Cj4gCgoKLS0g
CldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
