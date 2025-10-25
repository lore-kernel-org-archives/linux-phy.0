Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1265CCD1BF
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCBROdrdUULlPeXTBzaJ7N6BoEG1Scjpoucxnb0p7N8=; b=Qle8pCmpiulCCn
	ptEddB20nrz8UNtE/GzMOXo0IU94lnEglksU/nmCjvrKtYeYo8KSt5QDsxRBWpbMeNEVgDNQ5kJVe
	40jbB9X3nnkuTMCuKKEYe1V3HiNj9UvtkzOBGCMC1r64RLKTuthS+S9LG005Bry1nNdW1EvrP2Ux7
	1Chu/HB0uIJr7/FyDFQmYSsphtpD4PWAofwmVMG+SRQN/kZ30erecQEWkSdufJ89DDsbrUIfuwBDr
	hBRa9aINAfe243F0r8t5ZOUsWU5Ou8F+8cQWSinHb4XqQmF67wC5b/YZCF916NVq/IN94P4c4L5j+
	/LMbQpFdGp1ppHK0CTgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSLV-0000000AkuK-1KIL;
	Sat, 25 Oct 2025 00:41:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSLS-0000000Akty-3w0S
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:41:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OI9ESU018800
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:41:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ya8Q6uFCCxVarjTky3xl1Z6ewP/ZO6Fn6dKVnrcxZ5g=; b=HyYHbihJDASOeksK
	Y7kb56aLOxi4/wvzvHC4WTbI7w6kCerS3XOGnfZQUp7BPRcN17tUB+3EW3BR9Oc2
	RapLfuDSCbxdAnq6lUA3u6A8W9uFDVIng0a1wjirgMSXA1nwKhTay5mrylsAIMLr
	hH7XaaGiXKUCL5V6IHnWfsHu3ZX9LHF/yc2gydEsd6vCncp5xmTUrN0UGflWeHq6
	0WUClzfDizYsrGF/yDdE90POESFOwk4Z0BWz88Agg8Bm82HeAA20fKEjBRecZ+QK
	9H4LkRmCt/Gpnuxm1QnJfL4vgkNAIAWhmT8wdlRj1H7LB7zQsiGAJe51ibhGZC5D
	2GXmpg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49yp6k4tv1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:41:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-290992f9693so30148595ad.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761352881; x=1761957681;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ya8Q6uFCCxVarjTky3xl1Z6ewP/ZO6Fn6dKVnrcxZ5g=;
        b=s5S5HYKGovUzEF3KW5LSRyax8ks+KWcvqGqIKC/ySLaq6HvJ5R/AvhkkPZSGT8gedG
         EZXNrCPnlELZSy01kUrI1hAXbVgBoOA8NJkfXVpNOY8r/xL/S/ceAj+NHIiLE3UOeAN4
         QsxgceEKJwLqkQAsITo0PW/memYwzDLEqlpp0qpEGRXNWQi07+LeiokxLoCB2nAZF/6w
         GEVFe9OOnCpg1ZOKlZP7ZAZR7vdXcqLdGn4gL7Sd3bq9pVr4jF8ht+txWUCwXoj3zeh7
         PExYk8KbCkvjuwIvbhQ9/kdgfSut2UjhNfrlE7TB/CwH+tGOwIB0GCr3psH4OkzePH05
         7pYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+/6SlauPIjpb6RuO4VFMQK47PicUp3WoKnslIgKj98+oedRROaj3RmtpWd2BbCZDpnzXZ3gOAqM0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyzbo24bSL+hBUogioiP8c2T3vxMCRb6zMWgkp6yJTnuN3LFg/C
	f3hlaTBsbVdENANQnD72PLNLyEhisyy01cCnoWCfIBOlKkqHcUkXJqWgvrxOxAHARqgAdVgrdjw
	VZaMI7EPuML5T87ykJpYHKoC5l0AYcAxpNExxt8O1yHdAPZSj7Uo8lPT/qjjyf+TzQI2bbIAtuf
	aW
X-Gm-Gg: ASbGncsFJilFTCvhVdb9CNAotB2CuTvNXENNUuFxTUme/nrqyL2WD4vZITSeQi3IpEr
	moeadmUnzH7uo4amhoSPv3LZG/pUfTZTZDnXBmOEc8AfE9n809VUlWtBkQuVZ5KkO2GXl+xji+o
	E3lcfdBlpznRT2tZlAXL4YE/fZ59bBv3GMhGePSC5HPXviCmPvNireKWnLN+MT7NuD6fwgEtSyE
	21HGHS21R+sUuZViA5w7M2Xl3Ty7HDaUaXYS/eMKfTjlldyBxIFht1+n36NJpJnAKyoWN0t+MYJ
	niiYduJzlWPG4JwKdTRIo3TFOXaT9J3caiavm7WyY/I8zsquD2wI+XHwQ/sty47tf896vzB76D1
	6sHLnsbWLuFdeNhYSPTPLIAZUkytNNkChm1lGv+le
X-Received: by 2002:a17:902:e847:b0:25b:e5a2:fb29 with SMTP id d9443c01a7336-29489df3872mr54903855ad.12.1761352880863;
        Fri, 24 Oct 2025 17:41:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnu5Z8NPBgBgFB2GFR1aP8qmtpDHK45P3Rv0Oz7knL23wjldQEPCmVxD+1gC0RKhDO+yVGeQ==
X-Received: by 2002:a17:902:e847:b0:25b:e5a2:fb29 with SMTP id d9443c01a7336-29489df3872mr54903645ad.12.1761352880384;
        Fri, 24 Oct 2025 17:41:20 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d40a7esm5035005ad.70.2025.10.24.17.41.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 17:41:19 -0700 (PDT)
Message-ID: <39732bf6-dd6f-b808-7c10-b3faa4d46489@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:41:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-8-wesley.cheng@oss.qualcomm.com>
 <zaotrz6upmpwv2w65633rlflubmykzn5dqiydl66y7rdalld4l@bo4oto5iynor>
 <9d3dd1cf-4969-3dcb-18dc-59cfb68033f7@oss.qualcomm.com>
In-Reply-To: <9d3dd1cf-4969-3dcb-18dc-59cfb68033f7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEzMSBTYWx0ZWRfX60/c2iBf3y9X
 ux4TbulduzhTGuzsLJv7wCVbWJ/pir8LUNLbaWA6LYfRprzf6joaROpSedggCujx2U9ZXfmGeqs
 rUEJCVb2I4/V4A7JHkcAVmyDXOosugu+BkkXdjmByDwF3EGRPLpTS2sdXJ5skd6kYId4SzB0060
 MLOcrboSRIFI2b+aoDuK14LQKifKLHH8FfHQCUVnMXK0WcVfDgviKsKKT/uL9hTYd2UKH2zmlt6
 G2p3e0nTqGGOFGbYYg4qE6johDZ6vClfKCtTA+KuJ7wm8YL/fAgorQhrYGS1hLp07Wl9B61DJaf
 pjFG9NfJMogqt2esSQS53IRHXI+wrjiJU+DtV7RG2r8j8TV5uVNCDMOZqfZzJBiv+VO4QzdthRk
 1nBiP8bOIkyFlNTG3z1q24IUmd9bsQ==
X-Proofpoint-GUID: h4i_7W_yvk4xCVojrsiZvF3veH1qftJe
X-Authority-Analysis: v=2.4 cv=bL8b4f+Z c=1 sm=1 tr=0 ts=68fc1cb2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RNL1vAbd1nz3C39zmhQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: h4i_7W_yvk4xCVojrsiZvF3veH1qftJe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510230131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174123_004935_A7C27381 
X-CRM114-Status: GOOD (  24.41  )
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

CgpPbiAxMC8yNC8yMDI1IDU6MDIgUE0sIFdlc2xleSBDaGVuZyB3cm90ZToKPiAKPiAKPiBPbiAx
MC8yNC8yMDI1IDM6MDQgQU0sIEFiZWwgVmVzYSB3cm90ZToKPj4gT24gMjUtMTAtMDYgMTU6MTk6
NTksIFdlc2xleSBDaGVuZyB3cm90ZToKPj4+IEZvciBTdXBlclNwZWVkIFVTQiB0byB3b3JrIHBy
b3Blcmx5LCB0aGVyZSBpcyBhIHNldCBvZiBIVyBzZXR0aW5ncyB0aGF0Cj4+PiBuZWVkIHRvIGJl
IHByb2dyYW1tZWQgaW50byB0aGUgVVNCIGJsb2NrcyB3aXRoaW4gdGhlIFFNUCBQSFkuwqAgRW5z
dXJlIAo+Pj4gdGhhdAo+Pj4gdGhlc2Ugc2V0dGluZ3MgZm9sbG93IHRoZSBsYXRlc3Qgc2V0dGlu
Z3MgbWVudGlvbmVkIGluIHRoZSBIVyAKPj4+IHByb2dyYW1taW5nCj4+PiBndWlkZS7CoCBUaGUg
UU1QIFVTQiBQSFkgb24gR2x5bXVyIGlzIGEgVVNCNDMgYmFzZWQgUEhZIHRoYXQgd2lsbCBoYXZl
IAo+Pj4gc29tZQo+Pj4gbmV3IHdheXMgdG8gZGVmaW5lIGNlcnRhaW4gcmVnaXN0ZXJzLCBzdWNo
IGFzIHRoZSByZXBsYWNlbWVudCBvZiBUWEEvUlhBCj4+PiBhbmQgVFhCL1JYQiByZWdpc3RlciBz
ZXRzLsKgIFRoaXMgd2FzIHJlcGxhY2VkIHdpdGggdGhlIExBTEIgcmVnaXN0ZXIgCj4+PiBzZXQu
Cj4+Pgo+Pj4gVGhlcmUgYXJlIGFsc28gc29tZSBQSFkgaW5pdCB1cGRhdGVzIHRvIG1vZGlmeSB0
aGUgUENTIE1JU0MgcmVnaXN0ZXIgCj4+PiBzcGFjZS4KPj4+IFdpdGhvdXQgdGhlc2UsIHRoZSBR
TVAgUEhZIFBMTCBsb2NraW5nIGZhaWxzLgo+Pj4KPj4+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBXZXNsZXkgQ2hlbmcgPHdlc2xleS5jaGVuZ0Bvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0t
Cj4+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uY8KgwqDCoMKg
IHwgMzE0ICsrKysrKysrLQo+Pj4gwqAgLi4uL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNz
LWFvbi12OC5owqDCoMKgIHzCoCAxNyArCj4+PiDCoCAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1wY3MtbWlzYy12OC5owqDCoCB8wqAgMTIgKwo+Pj4gwqAgLi4uL3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1xc2VyZGVzLWxhbGItdjguaMKgwqAgfCA2MzkgKysrKysrKysrKysrKysrKysrCj4+
PiDCoCAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2I0My1wY3MtdjguaMKgIHzCoCAz
MyArCj4+PiDCoCAuLi4vcGh5LXFjb20tcW1wLXVzYjQzLXFzZXJkZXMtY29tLXY4LmjCoMKgwqDC
oMKgwqAgfCAyMjQgKysrKysrCj4+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKwo+Pj4gwqAgNyBmaWxlcyBjaGFuZ2Vk
LCAxMjQwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+IMKgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLWFvbi12OC5oCj4+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBj
cy1taXNjLXY4LmgKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcXNlcmRlcy1sYWxiLXY4LmgKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiNDMtcGNzLXY4LmgKPj4+IMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11c2I0My1xc2VyZGVzLWNvbS12OC5oCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIAo+Pj4gYi9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtY29tYm8uYwo+Pj4gaW5kZXggMWNhYTFmYjZhOGM3Li44MjE2ODIwZTM4
OGYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29t
Ym8uYwo+Pj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMK
Pj4KPj4gWy4uLl0KPj4KPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIGdseW11
cl91c2IzZHBwaHlfY2ZnID0gewo+Pj4gK8KgwqDCoCAub2Zmc2V0c8KgwqDCoMKgwqDCoMKgID0g
JnFtcF9jb21ib191c2I0M2RwX29mZnNldHNfdjgsCj4+PiArCj4+PiArwqDCoMKgIC5zZXJkZXNf
dGJswqDCoMKgwqDCoMKgwqAgPSBnbHltdXJfdXNiNDNkcF9zZXJkZXNfdGJsLAo+Pj4gK8KgwqDC
oCAuc2VyZGVzX3RibF9udW3CoMKgwqDCoMKgwqDCoCA9IEFSUkFZX1NJWkUoZ2x5bXVyX3VzYjQz
ZHBfc2VyZGVzX3RibCksCj4+PiArwqDCoMKgIC50eF90YmzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ID0gZ2x5bXVyX3VzYjQzZHBfbGFsYl90YmwsCj4+PiArwqDCoMKgIC50eF90YmxfbnVtwqDCoMKg
wqDCoMKgwqAgPSBBUlJBWV9TSVpFKGdseW11cl91c2I0M2RwX2xhbGJfdGJsKSwKPj4+ICvCoMKg
wqAgLnBjc190YmzCoMKgwqDCoMKgwqDCoCA9IGdseW11cl91c2I0M2RwX3Bjc190YmwsCj4+PiAr
wqDCoMKgIC5wY3NfdGJsX251bcKgwqDCoMKgwqDCoMKgID0gQVJSQVlfU0laRShnbHltdXJfdXNi
NDNkcF9wY3NfdGJsKSwKPj4+ICvCoMKgwqAgLnBjc191c2JfdGJswqDCoMKgwqDCoMKgwqAgPSBn
bHltdXJfdXNiNDNkcF9wY3NfdXNiX3RibCwKPj4+ICvCoMKgwqAgLnBjc191c2JfdGJsX251bcKg
wqDCoCA9IEFSUkFZX1NJWkUoZ2x5bXVyX3VzYjQzZHBfcGNzX3VzYl90YmwpLAo+Pj4gK8KgwqDC
oCAucGNzX21pc2NfdGJswqDCoMKgwqDCoMKgwqAgPSBnbHltdXJfdXNiNDNkcF9wY3NfbWlzY190
YmwsCj4+PiArwqDCoMKgIC5wY3NfbWlzY190YmxfbnVtwqDCoMKgID0gQVJSQVlfU0laRShnbHlt
dXJfdXNiNDNkcF9wY3NfbWlzY190YmwpLAo+Pj4gKwo+Pj4gK8KgwqDCoCAuZHBfc2VyZGVzX3Ri
bMKgwqDCoMKgwqDCoMKgID0gcW1wX3Y2X240X2RwX3NlcmRlc190YmwsCj4+PiArwqDCoMKgIC5k
cF9zZXJkZXNfdGJsX251bcKgwqDCoCA9IEFSUkFZX1NJWkUocW1wX3Y2X240X2RwX3NlcmRlc190
YmwpLAo+Pj4gK8KgwqDCoCAuZHBfdHhfdGJswqDCoMKgwqDCoMKgwqAgPSBxbXBfdjZfbjRfZHBf
dHhfdGJsLAo+Pj4gK8KgwqDCoCAuZHBfdHhfdGJsX251bcKgwqDCoMKgwqDCoMKgID0gQVJSQVlf
U0laRShxbXBfdjZfbjRfZHBfdHhfdGJsKSwKPj4+ICsKPj4+ICvCoMKgwqAgLnNlcmRlc190Ymxf
cmJywqDCoMKgwqDCoMKgwqAgPSBxbXBfdjZfbjRfZHBfc2VyZGVzX3RibF9yYnIsCj4+PiArwqDC
oMKgIC5zZXJkZXNfdGJsX3Jicl9udW3CoMKgwqAgPSBBUlJBWV9TSVpFKHFtcF92Nl9uNF9kcF9z
ZXJkZXNfdGJsX3JiciksCj4+PiArwqDCoMKgIC5zZXJkZXNfdGJsX2hicsKgwqDCoMKgwqDCoMKg
ID0gcW1wX3Y2X240X2RwX3NlcmRlc190YmxfaGJyLAo+Pj4gK8KgwqDCoCAuc2VyZGVzX3RibF9o
YnJfbnVtwqDCoMKgID0gQVJSQVlfU0laRShxbXBfdjZfbjRfZHBfc2VyZGVzX3RibF9oYnIpLAo+
Pj4gK8KgwqDCoCAuc2VyZGVzX3RibF9oYnIywqDCoMKgID0gcW1wX3Y2X240X2RwX3NlcmRlc190
YmxfaGJyMiwKPj4+ICvCoMKgwqAgLnNlcmRlc190YmxfaGJyMl9udW3CoMKgwqAgPSBBUlJBWV9T
SVpFKHFtcF92Nl9uNF9kcF9zZXJkZXNfdGJsX2hicjIpLAo+Pj4gK8KgwqDCoCAuc2VyZGVzX3Ri
bF9oYnIzwqDCoMKgID0gcW1wX3Y2X240X2RwX3NlcmRlc190YmxfaGJyMywKPj4+ICvCoMKgwqAg
LnNlcmRlc190YmxfaGJyM19udW3CoMKgwqAgPSBBUlJBWV9TSVpFKHFtcF92Nl9uNF9kcF9zZXJk
ZXNfdGJsX2hicjMpLAo+Pj4gKwo+Pj4gK8KgwqDCoCAuc3dpbmdfaGJyX3JicsKgwqDCoMKgwqDC
oMKgID0gJnFtcF9kcF92Nl92b2x0YWdlX3N3aW5nX2hicl9yYnIsCj4+PiArwqDCoMKgIC5wcmVf
ZW1waGFzaXNfaGJyX3JicsKgwqDCoCA9ICZxbXBfZHBfdjZfcHJlX2VtcGhhc2lzX2hicl9yYnIs
Cj4+PiArwqDCoMKgIC5zd2luZ19oYnIzX2hicjLCoMKgwqAgPSAmcW1wX2RwX3Y1X3ZvbHRhZ2Vf
c3dpbmdfaGJyM19oYnIyLAo+Pj4gK8KgwqDCoCAucHJlX2VtcGhhc2lzX2hicjNfaGJyMsKgwqDC
oCA9ICZxbXBfZHBfdjVfcHJlX2VtcGhhc2lzX2hicjNfaGJyMiwKPj4+ICsKPj4+ICvCoMKgwqAg
LmRwX2F1eF9pbml0wqDCoMKgwqDCoMKgwqAgPSBxbXBfdjRfZHBfYXV4X2luaXQsCj4+PiArwqDC
oMKgIC5jb25maWd1cmVfZHBfdHjCoMKgwqAgPSBxbXBfdjRfY29uZmlndXJlX2RwX3R4LAo+Pj4g
K8KgwqDCoCAuY29uZmlndXJlX2RwX3BoecKgwqDCoCA9IHFtcF92NF9jb25maWd1cmVfZHBfcGh5
LAo+Pj4gK8KgwqDCoCAuY2FsaWJyYXRlX2RwX3BoecKgwqDCoCA9IHFtcF92NF9jYWxpYnJhdGVf
ZHBfcGh5LAo+Pgo+PiBTbyBJIHNlZSB5b3UgYXJlIGFkZGluZyB0aGUgRFAgcmVsYXRlZCBjb25m
aWcgaGVyZSBhcyB3ZWxsLCBidXQgaXQgaXMKPj4gZGVmaW5pdGVseSBub3QgY29tcGF0aWJsZSB3
aXRoIHY2IE40LiBJJ20gYXNzeXVtaW5nIHlvdSBwaWNrZWQgdjYgTjQgCj4+IGFzIGEgZGVmYXVs
dAo+PiBqdXN0IHRvIGFsbG93IHRoZSBVU0IgcGFydCB3b3JrIGZvciBub3csIHJpZ2h0ID8KPj4K
Pj4gSSBkb24ndCBzdXBwb3NlIHdlIGNhbiBkcm9wIHRoZSBEUCByZWxhdGVkIGNvbmZpZyBmcm9t
IHRoaXMgcGF0Y2ggYW5kCj4+IHN0aWxsIGhhdmUgdGhlIFVTQiBwYXJ0IHdvcmtpbmcsIHJpZ2h0
Pwo+Pgo+PiBPdGhlcndpc2UsIHdlIG5lZWQgdG8gbWVudGlvbiB0aGUgZmFjdCB0aGF0IGV2ZW4g
dGhvdWdoIHRoZSBEUCBwYXJ0Cj4+IGlzIGFsc28gYmVpbmcgYWRkZWQsIGl0IGlzIGJyb2tlbi4K
PiAKPiBIaSBBYmVsLAo+IAo+IFRoYXQgaXMgY29ycmVjdC7CoCBXaXRob3V0IHRoZXNlIGRlZmlu
ZWQsIHRoZSBVU0IgcGF0aCB3b24ndCB3b3JrLCBhbmQgCj4gd2UnbGwgbmVlZCB0byBzdXBwbGVt
ZW50IHRoaXMgaWYgd2Ugd2FudGVkIHRvIGFkZCBEUCBzdXBwb3J0LsKgIEhlbmNlLCAKPiB3aHkg
SSBkaWRuJ3QgYWRkIGFueSBtZW50aW9uIG9mIERQIGFsdG1vZGUgaW4gdGhlIGNvbW1pdCB0ZXh0
LsKgIEkgY2FuIAo+IGNsYXJpZnkgdGhhdCB3ZSBhZGRlZCBEUCBwbGFjZWhvbGRlcnMgaWYgdGhh
dCBtYWtlcyBpdCBtb3JlIGNsZWFyIGluIHRoZSAKPiBjb21taXQgdGV4dC4KPiAKCkhpIEFiZWws
CgpJIHRha2UgdGhhdCBiYWNrLi4uSSB3ZW50IGJhY2sgYW5kIHJldmlld2VkIHRoZSBRTVAgY29t
Ym8gZHJpdmVyIGFnYWluLCAKYW5kIGdhdmUgaXQgYSB0cnkgdy9vIGFueSBvZiB0aGUgRFAgaW5p
dCB0YWJsZXMuICBTUyBVU0IgaXMgd29ya2luZyAKZmluZS4gIEkgd2lsbCB1cGRhdGUgdGhlIHBh
dGNoIHRvIHJlbW92ZSB0aGUgRFAgZW50cmllcy4gIFRoYW5rcyBmb3IgCmNhdGNoaW5nIHRoaXMu
CgpUaGFua3MKV2VzbGV5IENoZW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
