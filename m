Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3EBAC83F22
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 11:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9408CCHnYb3ylzAbAx/PC27kgI1SQaxWWfEBSCJJwU=; b=bVL4KTxktoY716
	ZzdEJRkenne92zZtNJjOL6EnV08Ik26fJghMEwhnVRRyfPcdhUEada79vpuRWqzzOEYz4rb13GJ0f
	JBn9/wkJjnkCkvu6NdXRe56vSZFFHI/FjQhZLHojSi3JDz9sVekur5F7S2G0ZSmgk4XapzQmyZYaD
	AjFEqkFRJFuFjEn/i+BcWB0aeHcF1nWZfZdjZupxy+88Lb978uaPm1IGuPEBNlON6X4F2XiXnAgNt
	/ZuF7r8XCQeP55z0FDySUYHlbOF9JzRFmLVaBky3IEAH/tDtXywHqpZCTbAw69dKC0/XTopzQMNON
	Og1lJLJ3Qg9a6Xyn64mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaC5u-0000000EcAN-1ha6;
	Fri, 11 Jul 2025 11:39:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaBwV-0000000EbO1-2zRP
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 11:29:29 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAkHHJ031125
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 11:29:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i5aWZtfTrotjSQzciDUe2VP7mxGgTnkhIuB0Hn3Bzk0=; b=PYDFRzHZTOYUvM3v
	kVjRwV8ngddyYOyhi7S9UmmZHyqGNYikLE5zJq3DG+1tJU13hZKRsSBnmHbVHtCD
	0DSuzs4JL1MRq79DF1LlCM2binigPXZFIsCn8lPvmOMy9uWrnE7BMVsE1SlQeBox
	T8aGdMkInvwLZ8wvQK41VVZXGc/Hoq5FS+2dgVwt9xh98dNNTg2DTmBoXnj9ljQQ
	z0OdrlHO9sMB7sD1cEV+nQHq3NsIhAu7xUSQxGts4ja79Smtpt1QtEx50oIaPbj1
	mwykvSnGa5Sn4vvm+pHxwrOfqMcb9dHrXYPhhI54WgHKPDLlByZHXi2iCDVFCu0O
	BWmEBA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47u15ar3sh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 11:29:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dea67756f4so16564285a.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Jul 2025 04:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752233365; x=1752838165;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i5aWZtfTrotjSQzciDUe2VP7mxGgTnkhIuB0Hn3Bzk0=;
        b=fSWnw0cVcf+XlIdn+m8l27k2hYIa8GhpuojhyxUW/jszdcyGH8A7OZRBi99GnXYAH+
         9t13bfn6WDhskB5Ddg4nYKnOLbxtOwBCPalqmY0j2RibmSPPgNXUg75M+n7mxXUIkr5V
         K0aIgTqj1fSkbjkvQQQ0VcxYdkIGQ4mU22q+bqCPZBdc+OervM2a0BKc/+djfFVo+B/4
         A2146n++g1+hk2IJQBexEbHblMSFc3vZQsIpYxRSyGDpPRrdsIXVRq4I+dY4PFjE2EWd
         5mLPIHLbLW7En11rDM1yp/Zyf3//YMJsjZYxh2TW8Yp9Kt/vbWKcIN5CJsHnaJi730Uc
         MJkA==
X-Forwarded-Encrypted: i=1; AJvYcCUunQBHXMLSIi0tx5ZBZpFliT2j+7G/HZ18o6Rc+J+OOkPoZ3r1Zd6oXQ6+GdSrSvJK614yrwTib1k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQfWPw6mMYv0TYnGmThZ072pzX+II+rBSc3gInWIS42dAD7wFa
	WiSupYvBef874h4vP7SvAdDWBLMg8B2UDm03VJ4EjIXv7I1QnwlgwwtBHLEJCHZwp0ik/8Bq8zI
	waWUuyatLHXvNqc88SLTUngpE2YP92b/A05XTnTiOGXthRVnyrDPEGUV9iNj4VPrh8ani
X-Gm-Gg: ASbGnctkqI5Rj4OTbAFCgHhaON8/teFqPTa+ripOsNw6C/4fyhP9wmod+MV7yXXeOgt
	oEYcoeSlq+d/7xZx1n1AKmZOKeyf716opGjbIk/he5elJcEm0ns44oNWWu93/+zOIdzVnSXrtGI
	NOd0IdEJovGsdh9l1UJAN3MhBbbcPvNNMMJl+18oH8BqdP1+s4BYw4snh3u/dHbbz664su1HTHq
	gyyYHBOfHG5XdjQq8iCZdNwts2tkLLnwFqgYnPf4fo/0dCtOV6sRYVwvP7qTtutBtiyiggf+HcM
	/fb/sODvjg2qaXOzx/17ZJLpnFddOs8rtuscOswEPHl10MxwzGAAaPKX6SdGcrvC+j7HDK2hH1Q
	dI98YUU34vLyGmmkXesAR
X-Received: by 2002:a05:620a:1909:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7de9726f01bmr140370285a.2.1752233364554;
        Fri, 11 Jul 2025 04:29:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYdqE0Om2cu0c0kLyxmfloyWnnavJ47GrA13ApiSIxZgloG/rqSLlcukJAO98TijxJUrBMpw==
X-Received: by 2002:a05:620a:1909:b0:7d2:89c2:eddb with SMTP id af79cd13be357-7de9726f01bmr140367485a.2.1752233364058;
        Fri, 11 Jul 2025 04:29:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8264613sm287256966b.91.2025.07.11.04.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 04:29:23 -0700 (PDT)
Message-ID: <6260de79-65b8-4f5f-abf9-54059276d5f6@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 13:29:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <895b931d-15a4-4922-b52f-6c6cf7fc6243@oss.qualcomm.com>
 <8377b6bf-8823-4bcc-aee1-af17db0fbfdf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8377b6bf-8823-4bcc-aee1-af17db0fbfdf@linaro.org>
X-Proofpoint-GUID: dBXW0iz7ISyi3mftx9kAW5hK_WtQDXPm
X-Proofpoint-ORIG-GUID: dBXW0iz7ISyi3mftx9kAW5hK_WtQDXPm
X-Authority-Analysis: v=2.4 cv=RtzFLDmK c=1 sm=1 tr=0 ts=6870f596 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=vnREMb7VAAAA:8 a=KKAkSRfTAAAA:8
 a=O1Gb7EYU182xN6YJ8DMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4MSBTYWx0ZWRfXy+x31sErnkho
 Yfj+nrujIJIgTx2Zc+b+4knP0PCEG5h5W3jtsHNCCQYj4Ey+sB0e1ONLdQRLDuN0VRfnpzUwDuN
 J6eZFHZonudDDLuIURVuwpzsp/SO8rBlXIKkh2WwW+uuu+c84VqfPcZgwdofdrlxAhATnaUJDdL
 QftKjBFnpYNWUbvalbqZ0WPcdzvY+JSrdHkG45Ioq87Jhs4wAcM2Bss/nS2pJ5FIhfII5qtu0VO
 zrWm3oAArmFXlxHpWzk0aM1okpGA6mZSHKxlzvBTGppcv3YVnEocru+1fSjGPx9mHOcqe/47sf1
 M9YIVaHrGIgMacqZ9r0M5YcsNds8qZjsfIvyg5wwqPyyvP6QvyBoqLxRHHH8e4jxITBiRC0nnJK
 L6JxGHGjUG1560XsBwqeW8uBZnGbBAsvFQ2aMax0kdnvX00rCiSCa11qgSz6E4BpkEE2gc1c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 mlxscore=0 impostorscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_042927_868449_665A97B7 
X-CRM114-Status: GOOD (  28.16  )
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

T24gNy8xMS8yNSAxMToxNCBBTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxMC8wNy8y
MDI1IDE4OjA4LCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiA3LzEwLzI1IDY6MTYgUE0sIEJy
eWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+PiBBZGQgYSBuZXcgTUlQSSBDU0kyIGRyaXZlciBpbiBE
LVBIWSBtb2RlIGluaXRpYWxseS4gVGhlIGVudGlyZSBzZXQgb2YKPj4+IGV4aXN0aW5nIENBTVNT
IENTSSBQSFkgaW5pdCBzZXF1ZW5jZXMgYXJlIGltcG9ydGVkIGluIG9yZGVyIHRvIHNhdmUgdGlt
ZQo+Pj4gYW5kIGVmZm9ydCBpbiBsYXRlciBwYXRjaGVzLgo+Pj4KPj4+IEluLWxpbmUgd2l0aCBv
dGhlciBQSFkgZHJpdmVycyB0aGUgcHJvY2VzcyBub2RlIG5hbWUgaXMgb21pdHRlZCBmcm9tIHRo
ZQo+Pj4gY29tcGF0IHN0cmluZyB3aGlsZSB0aGUgc29jIG5hbWUgaXMgaW5jbHVkZWQuCj4+Pgo+
Pj4gQXQgdGhlIG1vbWVudCB3ZSBmb2xsb3cgdGhlIGFzc2lnbm1lbnQgb2YgbGFuZSBwb3NpdGlv
bnMgLSB0aGUgYml0bWFwIG9mCj4+PiBwaHlzaWNhbCBpbnB1dCBsYW5lcyB0byBsb2dpY2FsIGxh
bmUgbnVtYmVycyBhcyBhIGxpbmVhciBsaXN0IHBlciB0aGUKPj4+IGV4aXN0aW5nIERQSFkgQGxh
bmVzIGRhdGEtbWVtYmVyLgo+Pj4KPj4+IFRoaXMgaXMgZmluZSBmb3IgdXMgaW4gdXBzdHJlYW0g
c2luY2Ugd2UgYWxzbyBtYXAgdGhlIGxhbmVzIGNvbnRpZ3VvdXNseQo+Pj4gYnV0LCBvdXIgaGFy
ZHdhcmUgY2FuIHN1cHBvcnQgZGlmZmVyZW50IGxhbmUgbWFwcGluZ3Mgc28gd2Ugc2hvdWxkIGlu
IHRoZQo+Pj4gZnV0dXJlIGV4dGVuZCBvdXQgdGhlIERQSFkgc3RydWN0dXJlIHRvIGNhcHR1cmUg
dGhlIG1hcHBpbmcuCj4+Pgo+Pj4gVGhlIFF1YWxjb21tIDNQSCBjbGFzcyBvZiBQSFlzIGNhbiBk
byBib3RoIEQtUEhZIGFuZCBDLVBIWSBtb2RlLiBGb3Igbm93IG9ubHkKPj4+IEQtUEhZIGlzIHN1
cHBvcnRlZC4KPj4+Cj4+PiBJbiBwb3J0aW5nIHNvbWUgb2YgdGhlIGxvZ2ljIG92ZXIgZnJvbSBj
YW1zcy1jc2lwaHkqLmMgdG8gaGVyZSBpdHMgYWxzbwo+Pj4gcG9zc2libGUgdG8gcmF0aW9uYWxp
c2Ugc29tZSBvZiB0aGUgY29kZS4KPj4+Cj4+PiBJbiBwYXJ0aWN1bGFyIHVzZSBvZiByZWd1bGF0
b3JfYnVsayBhbmQgY2xrX2J1bGsgYXMgd2VsbCBhcyBkcm9wcGluZyB0aGUKPj4+IHNlZW1pbmds
eSB1c2VsZXNzIGFuZCB1bnVzZWQgaW50ZXJydXB0IGhhbmRsZXIuCj4+Pgo+Pj4gVGhlIFBIWSBz
ZXF1ZW5jZXMgYW5kIGEgbG90IG9mIHRoZSBsb2dpYyB0aGF0IGdvZXMgd2l0aCB0aGVtIGFyZSB3
ZWxsIHByb3Zlbgo+Pj4gaW4gQ0FNU1MgYW5kIG1hdHVyZSBzbyB0aGUgbWFpbiB0aGluZyB0byB3
YXRjaCBvdXQgZm9yIGhlcmUgaXMgaG93IHRvIGdldAo+Pj4gdGhlIHJpZ2h0IHNlcXVlbmNpbmcg
b2YgcmVndWxhdG9ycywgY2xvY2tzIGFuZCByZWdpc3Rlci13cml0ZXMuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+
PiAtLS0KClsuLi5dCgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsKPj4+ICvC
oMKgwqDCoMKgwqDCoCBjYXNlIENTSVBIWV9ETlBfUEFSQU1TOgo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29udGludWU7Cj4+Cj4+ICJkbyBub3QgcHJvZ3JhbSI/IHdoeSBhcmUgdGhleSBp
biB0aGUgdGFibGVzIHRoZW4/Cj4gCj4gV2UgdHJ5IHRvIGltcG9ydCBkb3duc3RyZWFtIGluaXQg
c2VxdWVuY2VzLCB3aGljaCB0aGVtc2VsdmVzIGFyZSBzb21ldGltZXMgMToxIGZyb20gdGhlIG9y
aWdpbmFsIFNpIHRlc3RiZW5jaGVzIHVubW9kaWZpZWQsIEROUF9QQVJBTVMgY29tZSBmcm9tIHRo
b3NlIHNlcXVlbmNlcy4KCk5vdCBzdXJlIGFib3V0IGNhbWVyYSBzcGVjaWZpY2FsbHksIGJ1dCB1
c2luZyB0aGUgdGVzdGJlbmNoIHNlcXVlbmNlcwpmb3Igb3RoZXIga2luZHMgb2YgUEhZcyBpcyBz
dXBwb3NlZGx5IG5vdCBhIGdvb2QgaWRlYSwgYXMgdGhleSBhcmUvbWF5CmJlIHR1bmVkIGRpZmZl
cmVudGx5IGZvciBhY3R1YWwgKHJlZmVyZW5jZSkgYm9hcmRzIAoKPiAKPiBJIHRoaW5rIHRoZSB0
ZXN0YmVuY2gvZG93bnN0cmVhbSBpZGVhIGhlcmUgaXMgdG8gYWxsb3cgYSBzZXJpZXMgb2YgZGVs
YXlzIGFuZC9vciByZWFkYmFjayBwb3N0IHdyaXRlLgo+IAo+IEknbSBjZXJ0YWlubHkgd2lsbGlu
ZyB0byBkcm9wIGFueXRoaW5nIG5vdCBpbiB0aGUgX2N1cnJlbnRfIGluaXQgc2VxdWVuY2UgbGlz
dC4KCklmIHRoZXJlJ3MgYSBkZWxheSBuZWNlc3NhcnksIHlvdSBhbHJlYWR5IGFkZGVkIHRoZSBp
bmZyYSB0byBpbmplY3Qgb25lCgpbLi4uXQoKPj4+ICtzdGF0aWMgdm9pZAo+Pj4gK3BoeV9xY29t
X21pcGlfY3NpMl9sYW5lc19kaXNhYmxlKHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlICpjc2ky
cGh5LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBtaXBpX2Nz
aTJwaHlfc3RyZWFtX2NmZyAqY2ZnKQo+Pj4gK3sKPj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IG1p
cGlfY3NpMnBoeV9kZXZpY2VfcmVncyAqcmVncyA9IGNzaTJwaHlfZGV2X3RvX3JlZ3MoY3NpMnBo
eSk7Cj4+PiArCj4+PiArwqDCoMKgIHdyaXRlbF9yZWxheGVkKDAsIGNzaTJwaHktPmJhc2UgKwo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1P
Tl9DVFJMbihyZWdzLT5vZmZzZXQsIDUpKTsKPj4+ICsKPj4+ICvCoMKgwqAgd3JpdGVsX3JlbGF4
ZWQoMCwgY3NpMnBoeS0+YmFzZSArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ1NJ
UEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMbihyZWdzLT5vZmZzZXQsIDYpKTsKPj4KPj4gRG9l
cyB0aGUgZm9ybWVyIHdyaXRlIG5lZWQgdG8gY29tcGxldGUgYmVmb3JlIHRoZSBsYXR0ZXI/Cj4g
Cj4gT25lIGFzc3VtZXMgc28uIEFsbCBvZiB0aGlzIF9yZWxheGVkKCkgc3R1ZmYgaXMgd2F5IHRv
byBmbGFpdGhpw7psYWNoIGZvciBtZS4gV2UgdG9sZXJhdGUgaXQgYXMgbGVnYWN5IGNvZGUgaW4g
Q0FNU1MgYnV0LCB5b3UncmUgcmlnaHQsIEkgZG9uJ3QgdGhpbmsgaXRzIGxvZ2ljYWwgYXQgYWxs
Lgo+IAo+IERyb3BwZWQuCgpPcmRlcmluZyBhbmQgY29tcGxldGlvbiBhcmUgbm90IHRoZSBzYW1l
LCBzZWU6Cmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9aTZEYXlnaGhBOFEKClsuLi5d
Cgo+Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBwaHlfcWNvbV9taXBpX2NzaTJfYWRkX2Nsb2NrX21h
cmdpbih1NjQgKnJhdGUpCj4+PiArewo+Pj4gK8KgwqDCoCAqcmF0ZSAqPSBDQU1TU19DTE9DS19N
QVJHSU5fTlVNRVJBVE9SOwo+Pj4gK8KgwqDCoCAqcmF0ZSA9IGRpdl91NjQoKnJhdGUsIENBTVNT
X0NMT0NLX01BUkdJTl9ERU5PTUlOQVRPUik7Cj4+PiArfQo+Pgo+PiBJIGNhbid0IGZpbmQgZG93
bnN0cmVhbSBkb2luZyB0aGF0Cj4gCj4gSW5oZXJpdGVkIGZyb20gQ0FNU1Mgd2hlcmUgaXQgcmVh
bGx5IGRvZXMgc29tZXRoaW5nIHVzZWZ1bC4KPiAKPiBJJ20gcmVsdWNhbnQgdG8gY2hhbmdlIHRo
aXMuLi4gSSdsbCB0cnkgaXQgdGhvdWdoLgoKVGhlcmUncyBubyByb29tIGZvciBndWVzc2luZywg
dGhpcyBhZmZlY3RzIHRoZSBjbG9jayByYXRlIG9mIGEKY29tcG9uZW50IHRoYXQgaW50ZXJmYWNl
cyBhIHBoeXNpY2FsIGJ1cywgcGxlYXNlIHRyeSB0byBnZXQgYW4gYW5zd2VyCm9uZSB3YXkgb3Ig
dGhlIG90aGVyCgo+IAo+Pgo+PiBbLi4uXQo+Pgo+Pj4gK8KgwqDCoCAvKgo+Pj4gK8KgwqDCoMKg
ICogcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeS5sYW5lcyBzdGFydHMgZnJvbSB6ZXJvIHRv
Cj4+PiArwqDCoMKgwqAgKiB0aGUgbWF4aW11bSBudW1iZXIgb2YgZW5hYmxlZCBsYW5lcy4KPj4+
ICvCoMKgwqDCoCAqCj4+PiArwqDCoMKgwqAgKiBUT0RPOiBhZGQgc3VwcG9ydCBmb3IgYml0bWFz
ayBvZiBlbmFibGVkIGxhbmVzIGFuZCBwb2xhcml0aWVzCj4+PiArwqDCoMKgwqAgKiBvZiB0aG9z
ZSBsYW5lcyB0byB0aGUgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSBzdHJ1Y3QuCj4+PiAr
wqDCoMKgwqAgKiBGb3Igbm93IHRha2UgdGhlIHBvbGFyaXRpZXMgYXMgemVybyBhbmQgdGhlIHBv
c2l0aW9uIGFzIGZpeGVkCj4+PiArwqDCoMKgwqAgKiB0aGlzIGlzIGZpbmUgYXMgbm8gY3VycmVu
dCB1cHN0cmVhbSBpbXBsZW1lbnRhdGlvbiBtYXBzIG90aGVyd2lzZS4KPj4+ICvCoMKgwqDCoCAq
Lwo+Pgo+PiBDYW4gd2UgYXQgbGVhc3QgZ3JhYiB0aGUgZGF0YSBhbmQgbWFrZSBzdXJlIGl0IG1h
dGNoZXMgdGhlCj4+IGRlZmF1bHQgaHcgY29uZmlndXJhdGlvbiBub3csIHNvIHRoYXQgd2Ugd29u
J3QgYnJlYWsgYmFkCj4+IERUcyBpbiB0aGUgZnV0dXJlPwo+IAo+IEhtbS4gSSdsbCBoYXZlIGEg
dGhpbmsgYWJvdXQgdGhhdC4KCldlIGNlcnRhaW5seSBkb24ndCB3YW50IHRoZSB2ZW51cyBzaXR1
YXRpb24gYWxsIG92ZXIgYWdhaW4uLgoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
