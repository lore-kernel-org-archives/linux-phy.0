Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EA8ACAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2a7/9G2MkE3iOBGltlpsGMtJ3/KFKcva4zLyrG/EpSg=; b=uRytYn2n34Erqn
	Hi14bazlq3E5gOA7gND8lUc8yWUPTe6i2QOFry8Xyb+/SczmekolJsbjcistZJJ15z2C1gRUcUZxP
	rQ9VraAEJjqtFO/xbCGbOMRUZ/IIzEsAg1I3SBoVWOxi7d9RG0AxsFRnkwsc1+Wk/yvUmwMUmAVLC
	7XL/Sg93YYvZxDAnLs/J2ybUfluBIBjapnmoOR2I0f8knmnZJnC2vzpBST7YSp9kbsPV2WX81OXTm
	dS8hEMvMFYbxWaryP9iRMWeyhqgNni1UXbP+RJYe1rHGxp7FrxdZFApnvp/8zVsHPVLvATIx2032m
	3ernSs6JuR7MAAWozujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Oed-0000000HP7Z-3Pso;
	Wed, 24 Sep 2025 12:31:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Oeb-0000000HP3v-0xzE
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 12:31:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iAMr002079
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 12:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xwfhLJM7vZetMpbxoYtWCEkWA/CPi3SZrs0IlYQ22wQ=; b=OitGnSsIYjF6hVaZ
	jnUPG6EEOq+VncD3lpxk11iS+Qt2WV04erAX3M2gisJcU93whrHAejcyEUECWlGd
	wYYMFjwXCiNL8W9lradRegTKgElm6yujuphFxKm8rGGu+tCs09kHgzMss5nBzR47
	MTS10cZ0KwUlvtIs1JqwIKyxBuiiL59mX/xki+DSrjw2L4ZtByo88HETNo4abTZ4
	IFdQaFB41o4DAhQHWC4cA+qRhsTDKTkd89EBMLdrMeiMRrdUlxSL0Yl5tpJly/n9
	xyJMEhaA8GEh4NtZwgPFpDHe5SIWRYaKACLz0NPX8gXCLP2iFH7wnlH7SjAu2+ts
	kZJjhg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98m8w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 12:31:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4c39b8cb20fso24878881cf.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 05:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758717083; x=1759321883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xwfhLJM7vZetMpbxoYtWCEkWA/CPi3SZrs0IlYQ22wQ=;
        b=SbOjEWmkrTTk6HTGBc7PSYDJypXSIeyR+36Pfgl7DKElCnHRab6YJo+VzT3eUaaECR
         kJP9F4QztN0kIbvCBychgPNojDgMDhsqqUNTHYroT/+ytu/NRiv84X6kwbV1KAr22glb
         KcQRb7IvhbW5DZMwKjSgvV8RVO67VCsoSuZWRuhn+cpfTKydtHps1GX7qi1/ZVtKU2T2
         zE4LMVy7z/+G7aKk7pFAOMerYNRjmDZtFpo5Uh4bzsKhSdfXU7pwopzD8i700f/XuIhe
         iI5DBi1YNgbDDmaSZKWiI2O1hVcUsJNkJT3pkiDsZCvIjkf+w+yVMrbeI772JKhRrJlR
         lssw==
X-Forwarded-Encrypted: i=1; AJvYcCX0f+X4xG093RDzF5CLxfwMWsqDfRpcSDDWtX0dHL1qb4XMY3Lq2QE9DtnXs/A2BlnHyoW8H+GMA5Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyC0UAhrRpWQ6w/YTG+nYYqPaGn7tlEXO+5KdzcacFMl3MJI87u
	B8OSsc0nasU7LfdzCSYXamMdLGsYbWllTQrPYSon+pKv8pZZ+aHQO6JIdveBamFYuem+17gHQ0x
	Xb2Unc8rJbqlCKzjuFsLQSfqyQCoqetmEpnjVaowb7z4JFeVv1OjVTfUKhNwjbLysKbS4
X-Gm-Gg: ASbGncsccf0SJkfHaOHjQqSpfxkMVkb4+9m0+UkMfRWTh4B4K4gZ8kKIlk64dPTy4qd
	KxaTBuXpilTlAQcorFjyVNHM9pl3CGO5fbguvsBgvIUQJ1qDiBGyA3XocFDdaeRxmzhVgnjSSYk
	3s16ZhRrFx6CyQN0j4I7T2kLbi2DHPaf6BG9znnQ48C8vO86x3KIKpW9FFEdvgK8WJlKqjxdK0Q
	Y5line0k5AZkMOukDTDIl4EjDaI3hA6FzIX2qU8mc6rO3RlFXXYiFD1taskvQP1vnhwx8MthzHK
	s5QqPq1jfoE4FGP2haxWpNOCbKxMwHEx55dSrnZC1SBO7oqIX1+J2iz/NYWDc1m/MvbSP4qY70p
	nYuRoFIIcHiiGqpOM3oSy+A==
X-Received: by 2002:a05:622a:13cd:b0:4c7:e39a:38a6 with SMTP id d75a77b69052e-4d367a28b78mr46510061cf.2.1758717082890;
        Wed, 24 Sep 2025 05:31:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQcfTvLtcu62bSP3Lg9uI9ifGA9q/bvAbF7bvmO2hQr8+QMmrVx//4OqCgPZmOlocZwoo7VQ==
X-Received: by 2002:a05:622a:13cd:b0:4c7:e39a:38a6 with SMTP id d75a77b69052e-4d367a28b78mr46509681cf.2.1758717082238;
        Wed, 24 Sep 2025 05:31:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fadb1ee79sm12382698a12.33.2025.09.24.05.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 05:31:21 -0700 (PDT)
Message-ID: <483e0f79-1725-435b-830c-9c1dba886186@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 14:31:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Glymur compatible
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
 <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
 <588fd98b-ed22-2940-a749-d4601f77b0b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <588fd98b-ed22-2940-a749-d4601f77b0b1@oss.qualcomm.com>
X-Proofpoint-GUID: tHY720npMh7Vfdib4FZUQC68RIAcee5l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX+TjimlnB1URj
 JP/srQ08QjrbIJq+AUaFP0EaMsR7uzykhrkuLKRPOZoEn3xPr72NbtShs533Nuccm3HvG2EVpnA
 7IMfbZOAETiLT7l+xkdJLTaD6dyBILi1ukKIecBmCXBdm+HZ6lMbiSDEt9bvECCd1TrpMY0qWrW
 WtRXFubHpW5KWvCG+hELmINXjDSVyGpZxBZtDg0W10p4uyCriy/JkHbK13Bfwbc+dr6CnWGVuKd
 50zsstR6wIIb9/wLQ2Hul9RBqY0jCMfxmhcXGrK7s9yegvOrOeHnlFDK/AgntKBi6x1ddE5+Vws
 j7wLTV7KM1QX1zUcBoy/P+7R1HRlA41t3G72weI4RChz0W9qw4YPW5DNBnk+uSBU8f16hUQzT9g
 F+46rmrK
X-Proofpoint-ORIG-GUID: tHY720npMh7Vfdib4FZUQC68RIAcee5l
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d3e49b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=DIBu_eTfnsobS-0nAiIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_053125_388243_0AB5D8D2 
X-CRM114-Status: GOOD (  16.15  )
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

T24gOS8yMi8yNSAxMDo1MiBQTSwgV2VzbGV5IENoZW5nIHdyb3RlOgo+IAo+IAo+IE9uIDkvMjAv
MjAyNSA4OjE4IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBPbiBGcmksIFNlcCAxOSwg
MjAyNSBhdCAwODoyMTowMFBNIC0wNzAwLCBXZXNsZXkgQ2hlbmcgd3JvdGU6Cj4+PiBEZWZpbmUg
YSBHbHltdXIgY29tcGF0aWJsZSBzdHJpbmcgZm9yIHRoZSBRTVAgUEhZIGNvbWJvIGRyaXZlciwg
YWxvbmcgd2l0aAo+Pj4gcmVzb3VyY2UgcmVxdWlyZW1lbnRzLsKgIEFkZCBhIGRpZmZlcmVudCBp
ZGVudGlmaWVyIGZvciB0aGUgcHJpbWFyeSBRTVAgUEhZCj4+PiBpbnN0YW5jZSBhcyBpdCBkb2Vz
IG5vdCByZXF1aXJlIGEgY2xrcmVmIGVudHJ5Lgo+Pgo+PiBBcmUgcmVnaXN0ZXIgcHJvZ3JhbW1p
bmcgdGhlIHNhbWUgZm9yIGJvdGggb2YgdGhlbSBvciBub3Q/IElmIGl0J3MgdGhlCj4+IHNhbWUs
IGl0IG1pZ2h0IGJlIG5vdCBuZWNlc3NhcnkgdG8gaGF2ZSBkaWZmZXJlbnQgY29tcGF0aWJsZXMu
Cj4+Cj4gCj4gSGkgRG1pdHJ5LAo+IAo+IFllcywgdGhlIHJlZ2lzdGVyIHByb2dyYW1taW5nIHNl
cXVlbmNlcyBhcmUgdGhlIHNhbWUsIGJ1dCB0aGUgbnVtYmVyIG9mIGNsb2NrcyBhcmUgZGlmZmVy
ZW50IGJldHdlZW4gdGhlIHByaW1hcnkgYW5kIHRoZSBvdGhlciBjb250cm9sbGVycy4gU3BlY2lm
aWNhbGx5LCBvbiB0aGUgcHJpbWFyeSBVU0IgY29udHJvbGxlciwgd2UgZG9uJ3QgaGF2ZSBhIGNs
a3JlZiBpbiB0aGUgVENTUi7CoCBXYXMganVzdCBhZGRpbmcgYSBzZXBhcmF0ZSBjb21wYXRpYmxl
IElEIHRvIGRlZmluZSB0aGUgbWF4IGNsb2NrIGl0ZW1zLsKgIEhvd2V2ZXIsIEkgZG8gc2VlIHRo
YXQgZXZlbiBpZiBJIG9ubHkgbmVlZCA0IGNsa3MgKGZvciB0aGUgcHJpbWFyeSkgaXQgdGVjaG5p
Y2FsbHkgZG9lc24ndCBicmVhayB0aGUgRFQgYmluZGluZ3MgZGVmaW5pdGlvbiwgYXMgbWluSXRl
bXMgPSA0IGFuZCBtYXhJdGVtcyA9IDUgZm9yIHRoZSBjbG9jayBhbmQgY2xvY2stbmFtZXMgZmll
bGRzLgoKV2UgY2FuIGp1c3Qgc3RpY2sgJnhvX2JvYXJkIGluIHRoZXJlIGFuZCBhdm9pZCB0aGUg
bWVzcwoKWE8gcGh5c2ljYWxseSBzdXBwbGllcyB0aGUgUEhZIGV2ZW4gaWYgaXQncyBub3QgcHJv
Z3JhbW1hdGljYWxseQpjb25maWd1cmFibGUgbGlrZSBvdGhlciBnYXRlL2JyYW5jaCBjbG9ja3MK
CktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
