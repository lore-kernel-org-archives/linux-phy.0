Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E61C87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 18:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4axp6VbCa7SB4GCUr8FAVaxR+RWzrUW/oZT8sotU1k=; b=22mM8uL/Sx/wWx
	Tb2Ve5xVrf8OM3jpGBS+g39yiOlb4THO1w8wLbstIxFbk8YyvuVHzImTpncWMEU7K2UKUjoDlUAVY
	t4Ip/2zjaWSe7MsBQdXNDwO2JNidKVn4B+2L+kD3D3RMBl7iDoNQlgvLf1ID0jFiWce4WCWMDPJTv
	1KwbD4gMdSCAHDtSZmBHc2gyk3/NZ9Uj3/79Dmp2V1GL3hof8XZ62IPsXCLxEYYYZ52Oo+17Ecguj
	W4jvVwFwnr2nquRP7PXhLltJK/ibGrom59e3hxGS1mwCSE9xvCjd6RSeH5w6gHUmm3BNKxsmjZ/p5
	5OrZYw8qUx7SEyxBNG4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhBeB-00000002DTv-2Al8;
	Wed, 30 Jul 2025 18:35:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhBdr-00000002DPf-3rMk
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 18:35:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbBqg006658
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 18:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qeQ+Jwe6tBBCJ8zRzKqHqrhVE6H4UDXs7p1wpuAs4qc=; b=O+CYcpTfRbYTk7Xh
	A9SWB9rFELy7Ac3OLCeqDGcCI6KVWgBr/LPeFbMiOt9JZ13wZfBPCfZbgXMnBEEo
	om/oJ9wmENdmayGiMQmifFpMSn86wR4kErWgS89X1wu9rdt5Mg2MHLKpMDTF309U
	cSTYJ1kp3bhAboa7D9i1MQ5qyjQkwoSbkddn3G15fAs59WBFPZKP30gbFm54bvLl
	NY0cucQFhWCNYeBYZXpHue/3fpcwaIsYYSKCxSQ5WRHCgOEEYG9gLeNNxKvEym78
	UzYZaUHeQTlhXKUk969kFoFsvtBsb0do4OlJ1tattxK/s7xo9lwUmOSaw0ghob16
	Ac5Olw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xjc4y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 18:35:06 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70741fda996so1642316d6.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 11:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753900505; x=1754505305;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qeQ+Jwe6tBBCJ8zRzKqHqrhVE6H4UDXs7p1wpuAs4qc=;
        b=QI2CRiMhCCnChcp3+I9igsC6C/3VmB1BZ1tPeFBiH5Iia3jJ1vvIAGJKmhSh1ZzJoc
         yOa5Izt/u7cb2f5j52onbzVqj8tauCRRlyTyOtaTPZe3nWwAl6vk8zR9pLkSXQbnohD0
         1/kpC+Dz6YLe6hDLlm3pLzpKYxlxKIuqZL2ufhfPux/3xdfUdWQxhBXn/sxI4BNPbz9n
         ogLD+0EUabIl9/xwrSENUnVC5tgEWPdXxS97eKQ5btwtUcZxYweGBRvPronUIC4GQIrL
         qOyE382CUwcKYZOK3qOAymJDBMDBW6lr2DmmH+vUqCcY/swCzAhNnF8kSIRPgCq7T8xa
         xOEw==
X-Forwarded-Encrypted: i=1; AJvYcCU5wwev9FBa17gE+Bd6jT3xQWwspZiQbXlxBN/eTG5VGiqqsRb8E3yksHKc1WddMSgxgw04ENEcaAc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKe/axsLy8qVhVK1kWHJdKQV6tOL/iefnXCwGIeqQrO9o5ZraY
	hrDXN9bq7VT557NNQHV5oF5IJsaXGd+zEmGDHFuG1nSMoRY88UUFxIGNJ1HNqZShDqa/u1NSnoE
	8bd2IaUh6Ad8qDB3QuVte9m7W/x3mrj1eqfWcGnW7Xh6KNQ9mFsblK9f/9craaWZeD72g
X-Gm-Gg: ASbGncshZQYg9oD3bsISnkTR0J1Fg53+CM0BSdmAU9298pMsFreFw5aEA+Go+kuvVEd
	Qhb1ZtKN+FFnPSWINZIpe+6U2ldfXWMr64LqNiIMGkGASAr2tjkiX3rW+F9yjAWSmhWkX+VpNvk
	3wYjmQkreyTZ5CYt4MbdmzFj72xDaoGCvPgHUn/r4EjMP6jxV1SjTs8xStxS8Jms8fma+9qg9fk
	HnU+Cdfxw9LBw8EM/WKONQxvD1Sp8wy1ebafMKUxiX+csPLDcQKbQm81rQzSacwuImx/yY9l8qF
	wHxOjWCqs9RdHOjC9qpb+EVIIEZaEaXk1hmB82EEJvFieaXgEpVj5mCrFmRap16JLaJ2KohYbb6
	CYUfowobFoyXIqbj7ASHY6CZyxY+IdLONpzwXYMv5Pe2xTT486zwB
X-Received: by 2002:a05:6214:4705:b0:707:75cb:60b4 with SMTP id 6a1803df08f44-70775cb6130mr14420816d6.41.1753900504939;
        Wed, 30 Jul 2025 11:35:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyD8wbKesTPaUNkvnO8IF3mRX3OX9dDMnWFlB/T+fN/kELAp+CAVujEZjIvCvLTQWvOmHIFg==
X-Received: by 2002:a05:6214:4705:b0:707:75cb:60b4 with SMTP id 6a1803df08f44-70775cb6130mr14420266d6.41.1753900504174;
        Wed, 30 Jul 2025 11:35:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316d9f2sm2223927e87.12.2025.07.30.11.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 11:35:03 -0700 (PDT)
Date: Wed, 30 Jul 2025 21:35:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
Message-ID: <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDEzNSBTYWx0ZWRfXxpe/pqPIt4jn
 hbLu0KRvCFSxdVPa04eqmANhLaOsBy0YhvYVLV09k7dM/vPJBHVHfTrOeZr4FKcvJUhDbyIxlKN
 tegFq5t8dXGMFIszasiVysvrCDz/INBaT6I1AWQ+3xrIDzRwBvDKiIqEcp5GMRalghUHF1KcS4q
 Dxav95kdrJQ/VL6b2BvOr9dq5x5Xrc15Ao2h329yUwi+oc1XeHNIBKjMo1lS+zAvlIwoAT20S3G
 ePHeAs6Q7u0QdhMC46Y2PblUx4GZtXoFjGoSw9OIU/uFLbtYECzp6F0g5XO6YsI4TAxRUxUOpS9
 tsKn9vOZA0zqrnsCe0MHhLQQkkz2CLb6pKGtbN3vKcXpnpePe16Sl8ZOt03FpYn1Oqf/Mydmvdm
 8R9Zs3BbLnQ3JEIqOzX8zWkkdDtI5c3GPnySF8srp5nmrnAnEssokvElvGR7ZJSeP+7palRo
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688a65da cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8 a=9txEVjketrlP7N9thScA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-ORIG-GUID: tolcp_R9ju9BkeAYWNoN-wJ6IQuw_3-Z
X-Proofpoint-GUID: tolcp_R9ju9BkeAYWNoN-wJ6IQuw_3-Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_113507_973212_EDF9D3E7 
X-CRM114-Status: GOOD (  51.14  )
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

T24gV2VkLCBKdWwgMzAsIDIwMjUgYXQgMDQ6NTM6MTZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gNy8yMi8yMDI1IDg6NDEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBUdWUsIEp1bCAyMiwgMjAyNSBhdCAwODowNTowNlBNICswODAwLCBYaWFuZ3h1IFlpbiB3
cm90ZToKPiA+PiBPbiA3LzIyLzIwMjUgNDozOCBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+Pj4gT24gVHVlLCBKdWwgMjIsIDIwMjUgYXQgMDM6MjI6MDNQTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4+PiBJbnRyb2R1Y2UgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0
aW9uIGZvciB0aGUgUXVhbGNvbW0gUU1QIERQIFBIWQo+ID4+Pj4gb24gUUNTNjE1IFNvQ3MuIFRo
aXMgUEhZIHN1cHBvcnRzIERpc3BsYXlQb3J0IGZ1bmN0aW9uYWxpdHkgYW5kIGlzCj4gPj4+PiBk
ZXNpZ25lZCB0byBvcGVyYXRlIGluZGVwZW5kZW50bHkgZnJvbSB0aGUgVVNCMyBQSFkuCj4gPj4+
Pgo+ID4+Pj4gVW5saWtlIGNvbWJvIFBIWXMgZm91bmQgb24gb3RoZXIgcGxhdGZvcm1zLCB0aGUg
UUNTNjE1IERQIFBIWSBpcwo+ID4+Pj4gc3RhbmRhbG9uZSBhbmQgZG9lcyBub3Qgc3VwcG9ydCBV
U0IvRFAgbXVsdGlwbGV4aW5nLiBUaGUgYmluZGluZwo+ID4+Pj4gZGVzY3JpYmVzIHRoZSByZXF1
aXJlZCBjbG9ja3MsIHJlc2V0cywgVENTUiBjb25maWd1cmF0aW9uLCBhbmQgY2xvY2svUEhZCj4g
Pj4+PiBjZWxscyBmb3IgcHJvcGVyIGludGVncmF0aW9uLgo+ID4+PiBTaW1wbHkgcHV0OiBubywg
dGhpcyBpcyBub3QgY29ycmVjdC4gRXZlbiBpZiB5b3UgZ28gdG8gdGhlIFNNNjE1MCBibG9jawo+
ID4+PiBkaWFncmFtLCBpdCBwb2ludHMgb3V0IHRoYXQgRFAgdXNlcyB0aGUgVVNCMyBQSFksIG5v
dCBhIHNlcGFyYXRlIERQIFBIWS4KPiA+Pj4KPiA+Pj4gSSB0aG91Z2h0IHRoYXQgd2UgaGF2ZSBk
aXNjdXNzZWQgaXQgYmVmb3JlaGFuZC4KPiA+Pj4KPiA+Pj4gSSBjYW4gcXVvdGUgbXkgY29tbWVu
dCBmcm9tIHRoZSBwcmV2aW91cyB0aHJlYWQ6Cj4gPj4+Cj4gPj4+Pj4gTm8uIEl0IG1lYW5zIHJl
cGxhY2luZyBleHRlbmRpbmcgZXhpc3RpbmcgZW50cmllcyB3aXRoIGJpZ2dlciByZWcgYW5kCj4g
Pj4+Pj4gI3BoeS1jZWxscyA9IDwxPi4gVGhlIGRyaXZlciBtdXN0IGtlZXAgd29ya2luZyB3aXRo
IG9sZCBub2RlIGRlZmluaXRpb25zCj4gPj4+Pj4gYXMgaXMgdG8gZW5zdXJlIGJhY2t3YXJkcyBj
b21wYXRpYmlsaXR5LiBOZXcgbm9kZXMgc2hvdWxkIG1ha2UgaXQKPiA+Pj4+PiByZWdpc3RlciB0
d28gUEhZcyAoVVNCMyBhbmQgRFApLiBPbiB0aGUgZHJpdmVyIHNpZGUgbW9kaWZ5IGdlbmVyaWMg
Y29kZQo+ID4+Pj4+IHBhdGhzLCBhbGwgcGxhdGZvcm1zIHN1cHBvcnRlZCBieSB0aGUgZHJpdmVy
IHNob3VsZCBiZSBhYmxlIHRvIHN1cHBvcnQKPiA+Pj4+PiBVU0IzK0RQIGNvbWJpbmF0aW9uLgo+
ID4+PiBMb29raW5nIGF0IHRoZSBoYXJkd2FyZSBtZW1vcnkgbWFwczoKPiA+Pj4KPiA+Pj4gTVNN
ODk5ODogVVNCMyBQSFkgcmVncyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4YzAxMTAw
MAo+ID4+PiBTRE02NjA6IFVTQjMgUEhZIHJlZ3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVncyBh
dCAweGMwMTEwMDAKPiA+Pj4gUUNNMjI5MDogVVNCMyBQSFkgcmVncyBhdCAweDE2MTUwMDAsIERQ
IFBIWSByZWdzIGF0IDB4MTYxNjAwMAo+ID4+PiBTTTYxMTU6IFVTQjMgUEhZIHJlZ3MgYXQgMHgx
NjE1MDAwLCBEUCBQSFkgcmVncyBhdCAweDE2MTYwMDAKPiA+Pj4KPiA+Pj4gTm93Ogo+ID4+PiBT
TTYxNTA6IFVTQjMgUEhZIHJlZ3MgYXQgMHg4OGU2MDAwCj4gPj4+ICAgICAgICAgVVNCMyBQSFkg
cmVncyBhdCAweDg4ZTgwMDAsIERQIFBIWSByZWdzIGF0IDB4ODhlOTAwMAo+ID4+Pgo+ID4+PiBJ
IGRvIG5vdCBrbm93LCB3aHkgbXNtLTQuMTQgZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBI
WS4gTWF5YmUgeW91Cj4gPj4+IGNhbiBjb21tZW50IG9uIGl0Lgo+ID4+Pgo+ID4+PiBCdXQgYmFz
ZWQgb24gdGhhdCBsaXN0LCB0aGUgb25seSBzcGVjaWFsIGNhc2UgdGhhdCB3ZSBuZWVkIHRvIGhh
bmRsZSBpcwo+ID4+PiB0aGUgZmlyc3QgVVNCMyBQSFksIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhIGNv
cnJlc3BvbmRpbmcgRFAgUEhZIGJsb2NrLiBCdXQKPiA+Pj4gaXQgd2lsbCBiZSBoYW5kbGVkIGFu
eXdheSBieSB0aGUgY29kZSB0aGF0IGltcGxlbWVudHMgc3VwcG9ydCBmb3IgdGhlCj4gPj4+IGV4
aXN0aW5nIERUIGVudHJpZXMuIEFsbCBvdGhlciBoYXJkd2FyZSBibG9ja3MgYXJlIGNvbWJvIFVT
QitEUCBQSFlzLgo+ID4+Pgo+ID4+PiBIYXZpbmcgYWxsIG9mIHRoYXQgaW4gbWluZCwgcGxlYXNl
LCBmb3IgdjMgcGF0Y2hzZXQgaW1wbGVtZW50IFVTQitEUAo+ID4+PiBzdXBwb3J0IGluIHRoZSBw
aHktcWNvbS1xbXAtdXNiYyBkcml2ZXIgYW5kIGFkZCB0aGUgZm9sbG93aW5nIGxvZ2ljCj4gPj4+
IHRoYXQgYWxzbyB3YXMgcmVxdWVzdGVkIGluIHYxIHJldmlldzoKPiA+Pj4KPiA+Pj4+PiBOb3Qg
cXVpdGUuIEJvdGggVVNCMyBhbmQgRFAgZHJpdmVycyBzaG91bGQgYmUgY2FsbGluZyBwb3dlcl9v
biAvIF9vZmYuCj4gPj4+Pj4gSWYgVVNCMyBpcyBvbiwgcG93ZXJpbmcgb24gRFAgUEhZIHNob3Vs
ZCBmYWlsLiBWaWNlIHZlcnNhLCBpZiBEUCBpcyBvbiwKPiA+Pj4+PiBwb3dlcmluZyBvbiBVU0Ig
c2hvdWxkIGZhaWwuCj4gPj4+IEkgdGhpbmsgb3VyIHVuZGVyc3RhbmRpbmcgbWlnaHQgbm90IGJl
IGZ1bGx5IGFsaWduZWQuIAo+ID4gSSBkaWQgbm90IHdyaXRlIHRoaXMuIFBsZWFzZSBmaXggeW91
ciBtYWlsZXIgdG8gcXVvdGUgbWVzc2FnZXMgcHJvcGVybHkuCj4gPiBBcyB5b3UgYXJlIHVzaW5n
IFRodW5kZXJiaXJkLCBJJ20gbm90IHN1cmUgd2hlcmUgdGhlIGlzc3VlIGNvbWVzIGZyb20uCj4g
Pgo+ID4gQWxzbyBwbGVhc2UgZml4IGl0IHRvIHdyYXAgeW91ciByZXNwb25zZXMgc29td2hlcmUg
bG9naWNhbGx5Lgo+ID4KPiA+Pj4gUGVyaGFwcyB0aGlzIGlzIGJlY2F1c2UgSSBkaWRu4oCZdCBh
Y2N1cmF0ZWx5IHVwZGF0ZSB0aGUgbXV0dWFsIGV4Y2x1c2lvbiByZWxhdGlvbnNoaXBzIGFuZCB0
ZXN0IHJlc3VsdHMgZm9yIHRoZSBkaWZmZXJlbnQgUEhZcy4gCj4gPj4+IExldCBtZSBjbGFyaWZ5
IG15IGxhdGVzdCBmaW5kaW5ncyBhbmQgZXhwbGFpbiB3aHkgSSBiZWxpZXZlIHRoZXNlIGFyZSBz
ZXBhcmF0ZSBQSFlzIHRoYXQgcmVxdWlyZSBtdXR1YWwgZXhjbHVzaW9uIHZpYSBUQ1NSLgo+ID4+
Pgo+ID4+PiAxLiBBYm91dCB0aGUgVENTUiBEUF9QSFlNT0RFIFJlZ2lzdGVycwo+ID4+Pgo+ID4+
PiBNU004OTk4L1NETTY2MDoKPiA+Pj4gCU9ubHkgb25lIFRDU1JfVVNCM19EUF9QSFlNT0RFIHJl
Z2lzdGVyIGF0IDB4MUZDQjI0OC4KPiA+Pj4gUUNNMjI5MC9TTTYxMTU6Cj4gPj4+IAlUQ1NSX1VT
QjNfMF9EUF9QSFlNT0RFIGF0IDB4M0NCMjQ4Cj4gPj4+IAlUQ1NSX1VTQjNfMV9EUF9QSFlNT0RF
IGF0IDB4M0NCMjRDCj4gPj4+IFNNNjE1MDoKPiA+Pj4gCVRDU1JfVVNCM18wX0RQX1BIWU1PREUg
YXQgMHgxRkNCMjQ4Cj4gPj4+IAlUQ1NSX1VTQjNfMV9EUF9QSFlNT0RFIGF0IDB4MUZDQjI0Qwo+
ID4gU002MTUwIGhhcyB0d28gZGlmZmVyZW50IHNldHMgb2Ygb3V0cHV0IHBpbnMsIHNvIHRoZSBm
aXJzdCByZWdpc3Rlcgo+ID4gY292ZXJzIGZpcnN0IHNldCBvZiBTUyBsYW5lcyAod2hpY2ggYXJl
IHJvdXRlZCB0byB0aGUgZG9jdW1lbnRlZCBTUwo+ID4gUEhZKSwgdGhlIHNlY29uZCByZWdpc3Rl
ciBjb3ZlcnMgdGhlIHNlY29uZCBzZXQgb2YgU1MgbGFuZXMgKHdoaWNoIGFyZQo+ID4gcm91dGVk
IHRvIHRoZSBEUCBhbmQgc2Vjb25kYXJ5IFVTQiBQSFkpLgo+ID4KPiA+IEkgY2FuIG9ubHkgYXNz
dW1lIHRoYXQgdGhlIHNhbWUgY29uZmlndXJhdGlvbiB3YXMgc3VwcG9zZWQgdG8gYmUKPiA+IGFw
cGxpY2FibGUgdG8gUUNNMjI5MCAvIFNNNjExNSwgYnV0IHdhcyBsYXRlciByZW1vdmVkIC8gZGlz
YWJsZWQsIHdoaWxlCj4gPiB0aGUgcmVnaXN0ZXJzIHdlcmUga2VwdCBpbiB0aGUgVENTUiBibG9j
ay4KPiA+Cj4gPj4+IEV2ZW4gdGhvdWdoIE1TTTg5OTgsIFNETTY2MCwgUUNNMjI5MCwgYW5kIFNN
NjExNSBhbGwgaGF2ZSBvbmUgVVNCMyBQSFkgYW5kIG9uZSBEUCBQSFksIHRoZSBUQ1NSIERQX1BI
WU1PREUgcmVnaXN0ZXIgY29uZmlndXJhdGlvbiBpcyBkaWZmZXJlbnQgb24gZWFjaCBwbGF0Zm9y
bS4KPiA+Pj4KPiA+Pj4gQWRkaXRpb25hbGx5LCBJIGZvdW5kIHNvbWUgaW50ZXJlc3RpbmcgcmVn
aXN0ZXIgZG9jdW1lbnRhdGlvbiBmb3IgUUNNMjI5MC9TTTYxMTU6Cj4gPj4+IAlUQ1NSX1VTQjNf
MF9EUF9QSFlNT0RFOiDigJxJbiBrYW1vcnRhIHRoaXMgb25lIGlzIGZvciBtb2JpbGUgdXNiLiBE
UCBub3Qgc3VwcG9ydGVkLuKAnQo+ID4+PiAJVENTUl9VU0IzXzFfRFBfUEhZTU9ERTog4oCcRFAg
bW9kZSBzdXBwb3J0ZWQgZm9yIEF1dG8gdXNiIGluIGthbW9ydGEu4oCdCj4gPj4+IEkgdGhpbmsg
dGhlIHJlYXNvbiBmb3IgaGF2aW5nIHR3byBkaWZmZXJlbnQgVENTUiByZWdpc3RlcnMgaXMgdG8g
YWxsb3cgYm90aCB0aGUgVVNCMy4wIGFuZCBEUCBQSFlzIHRvIGJlIHVzZWRzIGF0IHRoZSBzYW1l
IHRpbWUgaW4gY2VydGFpbiBwcm9kdWN0IGNvbmZpZ3VyYXRpb25zLgo+ID4gU3VyZS4gT25lIGZv
ciB0aGUgZmlyc3QgUEhZIChVU0IpLCBvbmUgZm9yIHRoZSBzZWNvbmQgUEhZIChVU0IrRFApLgo+
ID4gSWYgeW91IGNoZWNrIHRoZSBtZW1vcnkgbWFwLCB5b3Ugd2lsbCBmaW5kIHRoZSBzZWNvbmQg
VkxTIENMQU1QIHJlZ2lzdGVyCj4gPiBmb3IgdGhlIHNlY29uZCBVU0IgUEhZLgo+ID4KPiA+Pj4g
Mi4gU002MTUwIFRlc3QgUmVzdWx0cwo+ID4+PiBXaGVuIFRDU1JfRFBfUEhZTU9ERV8wIGlzIHN3
aXRjaGVkIHRvIERQLCB0aGUgVVNCMyBwcmltYXJ5IFBIWSBjYW5ub3Qgd29yaywgYW5kIHRoZSBE
UCBQSFkgaXMgYWxzbyBub3QgZnVuY3Rpb25hbCAocG9zc2libHkgZHVlIHRvIGNsb2NrIGxhY2sg
b3Igb3RoZXIgY29uZmlndXJhdGlvbiBtaXNtYXRjaCB3aXRoIHRoaXMgVENTUiBzZXR0aW5nKS4K
PiA+Pj4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMSBpcyBzd2l0Y2hlZCB0byBEUCwgYm90aCB0aGUg
VVNCMyBwcmltYXJ5IFBIWSBhbmQgdGhlIERQIFBIWSB3b3JrIG5vcm1hbGx5Lgo+ID4+PiBJIHRo
aW5rICJ3aHkgbXNtLTQuMTQgZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWSIsIGJlY2F1
c2UgVENTUl9EUF9QSFlNT0RFXzEgYWx3YXlzIHdvcmtzIGluIERQIG1vZGUuCj4gPj4+IGh0dHBz
Oi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5lbC9tc20vKy9hZjAzZWVmN2Q0YzNjYmQx
ZmUyNmM2N2Q0ZjE5MTViMDVkMGMxNDg4L2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY2F0YWxv
Z192MjAwLmMKPiA+IEhlcmUgaXQgc3RpbGwgcHJvZ3JhbXMgdGhlIFRDU1IgcmVnaXN0ZXIuCj4g
Pgo+ID4+PiBCYXNlZCBvbiB0aGVzZSBpbmZvLCBJIGJlbGlldmUgdGhlc2UgYXJlIHNlcGFyYXRl
IFBIWXMsIGFuZCBvbmx5IHRoZQo+ID4+PiBUQ1NSIERQX1BIWU1PREUgcmVnaXN0ZXJzIGRldGVy
bWluZSB3aGljaCBVU0IzL0RQIFBIWXMgYXJlIHBhaXJlZCBvcgo+ID4+PiBtdXR1YWxseSBleGNs
dXNpdmUuIFRoaXMgaXMgd2h5IEkgaGF2ZSBtYWludGFpbmVkIHNlcGFyYXRlIHByaXZhdGUKPiA+
Pj4gZGF0YSBmb3IgZWFjaCBQSFkgYW5kIGltcGxlbWVudGVkIFBvd2VyIG9uIG11dGV4IGNvbnRy
b2wgdmlhIFRDU1IsCj4gPj4+IHJhdGhlciB0aGFuIHVzaW5nIGEgcW1wX2NvbWJvLWxpa2Ugc3Ry
dWN0dXJlLgo+ID4gU3RpbGwsIG5vLiBDaGVjayB0aGUgYmxvY2sgZGlhZ3JhbSBvZiBTTTYxNTAu
Cj4gPgo+ID4+PiBHaXZlbiB0aGUgYWJvdmUsIGRvIHlvdSB0aGluayB3ZSBzdGlsbCBuZWVkIHRv
IGZvcmNlIFVTQiBhbmQgRFAgdG8gYmUgc3RyaWN0bHkgYm91bmQgdG9nZXRoZXIgbGlrZSBhIGNv
bWJvIFBIWT8KPiA+IFllcy4KPiAKPiBJIGNoZWNrZWQgdGhlIHJlbGF0ZWQgUEhZIHNlcmllcyBh
bmQgYmxvY2sgZGlhZ3JhbXMgYWdhaW4uCj4gCj4gUFJJIGFuZCBTRUMgZ28gdG8gZGlmZmVyZW50
IG5vZGVzIGJhc2VkIG9uIHRoZSBTb0MgZGVzaWduLCBhbmQgdGhlcmUgYXJlIHR3byB0eXBlcyBv
ZiBjb25maWd1cmF0aW9uczogVVNCMy1vbmx5IGFuZCBVU0IzK0RQIHBhaXJpbmcuCj4gCj4gQmVm
b3JlIHByb2NlZWQgdGhlIHYzIHBhdGNoc2V0LCBJ4oCZZCBsaWtlIHRvIGRvdWJsZS1jb25maXJt
IHdoZXRoZXIgdGhlIGZvbGxvd2luZyBzdHJ1Y3R1cmUgaXMgd2hhdCB5b3UgZXhwZWN0Ogo+IAo+
IHVzYl9xbXBwaHlfMTogcGh5QDg4ZTYwMDAgewo+IMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20s
c202MTUwLXFtcC11c2IzLXByaW0tcGh5IjsgPD09IHJlbmFtZSB0byBQUklNCgpObywgd2UgYWxy
ZWFkeSBoYXZlIGEgY29tcGF0aWJsZSBuYW1lIGFuZCBEVCBzY2hlbWEgZm9yIHRoaXMgZGV2aWNl
LgoKPiDCoMKgwqAgLi4uCj4gwqDCoMKgIHFjb20sdGNzci1yZWcgPSA8JnRjc3IgMHhiMjQ0Piwg
PCZ0Y3NyIDB4YjI0OD47Cj4gwqDCoMKgIHFjb20sdGNzci1uYW1lcyA9ICJ2bHNfY2xhbXAiLCAi
ZHBfcGh5X21vZGUiOwoKTm8gbmVlZCBmb3IgcWNvbSx0Y3NyLW5hbWVzLiBTZWNvbmQgVENTUiBy
ZWdpc3RlciBzaG91bGQgYmUgb3B0aW9uYWwgaW4KdGhlIGRyaXZlci4KCj4gwqDCoCDCoAo+IMKg
wqDCoCAjY2xvY2stY2VsbHMgPSA8MT47Cj4gwqDCoMKgICNwaHktY2VsbHMgPSA8MT47CgojY2xv
Y2stY2VsbHMgPSA8MD47CiNwaHktY2VsbHMgPSA8MD47Cgo+IMKgwqDCoCAuLi4KPiB9Owo+IAo+
IHVzYl9xbXBwaHlfMjogcGh5QDg4ZTgwMDAgewo+IMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20s
c202MTUwLXFtcC11c2IzZHAtc2VjLXBoeSI7IDw9PSBTRUMgU1MsIHVzZSB1c2IzZHAgdG8gaW5k
aWNhdGUgRFAgY2FwYWJpbGl0eQoKcWNvbSxzbTYxNTAtcW1wLXVzYjMtZHAtcGh5Cgo+IAo+IMKg
wqDCoCByZWcgPSA8MHgwIDB4MDg4ZTgwMDAgMHgwIDB4MjAwMD47IDw9PSBTUzIgYmFzZSBhZGRy
ZXNzIGFuZCBvZmZzZXQgZGVmaW5lIGluIGRyaXZlciBjb25maWcKPiAKPiDCoMKgwqAgY2xvY2tz
ID0gPCZnY2MgR0NDX0FIQjJQSFlfV0VTVF9DTEs+LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZnY2MgR0NDX1VTQjNfU0VDX0NMS1JFRl9DTEs+OyA8PT0gVGhpcyBTb0MgaGFzIG5vIFVTQjMu
MCBTRUMgU1MgY2xrCj4gwqDCoMKgIGNsb2NrLW5hbWVzID0gImNmZ19haGIiLAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicmVmIjsKPiDCoMKgwqAgY2xvY2stb3V0cHV0LW5hbWVz
ID0gImRwX3BoeV9saW5rX2NsayIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgImRwX3BoeV92Y29fZGl2X2NsayI7CgpObyBuZWVkIHRvLCB0aGUgZHJpdmVyIGNhbiBn
ZW5lcmF0ZSBuYW1lcyBvbiBpdHMgb3duLgoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgwqAKPiDCoMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQjNQSFlfUEhZX1NFQ19C
Q1IgPiwKPiDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX0RQX1BIWV9TRUNfQkNSPjsK
PiDCoMKgwqAgcmVzZXQtbmFtZXMgPSAicGh5IiwgInBoeV9waHkiOwoKInBoeV9waHkiLCAiZHBf
cGh5Ii4gSXMgdGhlcmUgbm8gR0NDX1VTQjNfUEhZX1NFQ19CQ1I/Cgo+IAo+IMKgwqDCoCBxY29t
LHRjc3ItcmVnID0gPCZ0Y3NyIDB4YmZmMD4sIDwmdGNzciAweGIyNGM+Owo+IMKgwqDCoCBxY29t
LHRjc3ItbmFtZXMgPSAidmxzX2NsYW1wIiwgImRwX3BoeV9tb2RlIjsgPD09IGFkZGVkIGZvciBi
YWNrd2FyZCBjb21wYXRpYmlsaXR5IHdpdGggbGVnYWN5IGNvbmZpZ3MgdGhhdCBvbmx5IGhhZCB2
bHNfY2xhbXAKCk5vIG5lZWQgZm9yIHFjb20sdGNzci1uYW1lcywgY29ycmVjdCBvdGhlcndpc2Uu
Cgo+IAo+IMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8MT47Cj4gwqDCoMKgICNwaHktY2VsbHMgPSA8
MT47Cj4gCj4gwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gfTsKPiAKPiA+Cj4gPj4+PiBT
aWduZWQtb2ZmLWJ5OiBYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4K
PiA+Pj4+IC0tLQo+ID4+Pj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLWRwLXBo
eS55YW1sICAgICAgIHwgMTExICsrKysrKysrKysrKysrKysrKysrKwo+ID4+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMTEgaW5zZXJ0aW9ucygrKQo+ID4+Pj4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRt
aXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
