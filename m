Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD1CC83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 09:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oYEv7WgnJ03vWOCaMIrgp1o/iTUOYICE2MejblfHII=; b=4LWH2MDNQ2YJeK
	bM2Q7fBi2mCO1WthmN61pSnOnFrYwwBuokKzhw+r1EKxMxqt6IPJp3g5vlyOJ/jRS8ShEzjb0aiyv
	uyRdqCUhOdVXdoGo5j3k39dN5XwK1UMFao727vB2xPW9KXkTcFzjVJFZjWjO3VGT0afaS/vT3zZMd
	YzL9fwZ6ZVjVwQpc+hdBTFZ+n+eCKkHAgWJL/sNCDIn9JEewEFoqvEycu0W95t0ypa5LYsP06XFTp
	9TB3msw9ZSDyEJ94lubG+GUXPX4Uf8L2K19D4tco6vbYrnfiCpaSFzveGObJUJ4uv/NEjEoelGbJd
	7qzF+bU6BZEjB7o23Euw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcPf-00000004lyr-0ppn;
	Tue, 15 Jul 2025 09:57:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubc26-00000004gi4-1tWo
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 09:33:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5cNc6011111
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 09:33:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZVKYKZI50CRu8kFfLOssIBGcOuWlmDEa2DIvNCnCY7s=; b=g7TU44qqEKoX/E5n
	ZKw1/jZstXtfBQHMJMHbVLubG83iuy6I0tciArG0dzRrmhqtd5iTMIECYqHxJTRQ
	E0jKB0fnVz0DSd+bjwfry8J7clWxezfgy4FwA24Xbm5PPMRmeZt9W+4vMbQ+2rPO
	lLubHRW5bG3WLSTyrw1yiX0N0yBK8yYAz7qVcu248c63jvhiFYTCtfdejJdpRKdl
	9t49INgET1aFb3cC0HodaSR6Nrjhn66WTsftXNipBlUJXExsYt9Bf1vP5Hl66Hts
	uCA8QrYgYtyBlvjLDuIFOnGK8MhjBYh2kOooco14zUgmFTY2w7xp63t2QE3Mby1B
	T0SqdA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyje2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 09:33:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab716c33cdso7200231cf.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 02:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752571984; x=1753176784;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVKYKZI50CRu8kFfLOssIBGcOuWlmDEa2DIvNCnCY7s=;
        b=qeV5q51m8ujxryoiEZw8IgES+TfsA97AYafRi3lZvafik89iE0rfOekx0EJyNGm16h
         5ojDuaN/o8hZJkMtzIC34EX21qaqEmuk++8t9Q+uk4/vb/l7M9uIGh2HvZmPIn8ARDz8
         pRFKQXgiak7+k1xV5zU8pwmNJsOO0wFB07I5olhu/xP0eTUSVW2JqE+UuH8GHFuaHdSJ
         rgKLl2mJr2Df6sG1K9Fbv9dqN8yloCqCyRKPZSGGmKnvhuJgFLbbWRiQKmJCCoB99dsq
         UJhuJi8xhlHRdRukBI6WdCCtOM0qcYUYXPEo9nYARlF0apKt6lEQuD4TlUlemygO66zf
         pHag==
X-Forwarded-Encrypted: i=1; AJvYcCV75VCP136NHsA0YGa/uhh9mJHbOzsWnm1u2mDiK6LCcK4XwA6E8PRS0uktPkUaXQ4Gi5pAF6qp/ME=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv6ME0x5GMIK0rv4cGO9LOe4/Z55ufda/MIH7mATIRbEor174e
	e4GP5efz/RBoHZ45Gvsdd2U4UgnDeqaDHF/qC9JZR46gIfTOd5zLoG9ViPBSFy1Vyw1zHqXwrij
	VyacCeiRgvXrI+tC6QeZQ9lhrLAO05jv7XlEsrpXXJTqp4zTM3aaNVi1SZ05k025irGED
X-Gm-Gg: ASbGncsQUzbO+XRiRl/3iN+hGtwO34QaSAU79v0cMqwkNMbIQBmpyY1JfJGx3aUbCpd
	x8DSKT3SQTPUvqeqJeChXQNp1Pq4oWx3IMNLBvPG+m9yyh8dBii97lvpk1NSQxcOQ24EevuDKTt
	xGL/7WSg5+ZzBETXaBKHwBXBMeLMfNQqocDGmSUPNhZwWC6Rss37cZh79mmzmnu0WnJ/q3Pvfzw
	erENFkxRf8FY9PuLSnmDiwE9MbgM1RXr/42qimgiPJHIG5gP5FNMF9XowsOsno/FzoqIvUfs9AK
	0CVSlwIGdgZJ7VS+6EnwNvyAVBuEGwnD7bqyvqJtEwzzd7M7YL6dGli3XmMrzF6GSffF5dKXfKL
	2Av/ot2SLL6VkqychnDHS
X-Received: by 2002:a05:622a:82:b0:4a9:e326:277a with SMTP id d75a77b69052e-4ab86e207f0mr4752221cf.5.1752571983983;
        Tue, 15 Jul 2025 02:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCcr4nANIHsBRbxeeXFSYzXrr7BOuMOwD02ol+PSNYDc+EIBk8wmnfYeAHim0Yt70dnuwwlg==
X-Received: by 2002:a05:622a:82:b0:4a9:e326:277a with SMTP id d75a77b69052e-4ab86e207f0mr4752121cf.5.1752571983473;
        Tue, 15 Jul 2025 02:33:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82652b9sm980622966b.78.2025.07.15.02.33.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 02:33:02 -0700 (PDT)
Message-ID: <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 11:33:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
X-Proofpoint-ORIG-GUID: Ua0VomxxuloDArPaiITYE8SX9F_m8vGM
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=68762051 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=93KYx9Pn6tzsntpFjOoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA4NiBTYWx0ZWRfX5WpGxKkFcjP5
 Xjdp/I48pRk1dKXBz/dlHgq3dkD2Lw5NsLx0oS2yIDbS2SVkvINRSLe4Tgr6TQYwmGQsXHOtSUo
 4Q/tdfWvrlhiJAirbygflJ9vXkzFvtLeZVGHNHwROkFh8V1aeWbrSBdPOvW611EFlSvnYCT/ki4
 nHHhRFzk6thJJ7eMPPvmRKuo15fqvSj0/MfqftLg6JKHpyclyhZ+7SR4nJA4Xke4zMWVLQ+RJ+b
 iZICByUwNHzX455zWUDUSsPAdPdK+1gQzAjopm2dj7Ns4WPrtymtNfwXJUsJcdwddw5KhEmwb5F
 seVe7ZbZ+utlXtgpEU6ZfOKj2ZFqefS3buxAOMypWuwlS9dzqR4l5nY5yWP2or7SnsrgWmOOQqa
 V+pJzyO49R8qOILlEubOcIihqkdQ7rXVoUvWfuw2LPXyf+KkGtqEd0BZjPoVbE4gIphTtUBD
X-Proofpoint-GUID: Ua0VomxxuloDArPaiITYE8SX9F_m8vGM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_023306_499052_6A52A565 
X-CRM114-Status: GOOD (  21.49  )
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

T24gNy8xNS8yNSAxMToyMCBBTSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IE9uIDcvMTUv
MjUgMTI6MDEsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDcvMTUvMjUgODozNSBBTSwgVmxh
ZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4gT24gNy8xNS8yNSAwMzoxMywgQnJ5YW4gTydEb25v
Z2h1ZSB3cm90ZToKPj4+PiBPbiAxNC8wNy8yMDI1IDE2OjMwLCBWbGFkaW1pciBaYXBvbHNraXkg
d3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gSSB0aGluayB0aGF0IGlzIGdlbnVpbmVseSBzb21ldGhpbmcg
d2Ugc2hvdWxkIGhhbmRsZSBpbiBjYW1zcy1jc2lkLmMKPj4+Pj4+IG1heWJlIHdpdGggc29tZSBt
ZXRhLWRhdGEgaW5zaWRlIG9mIHRoZSBwb3J0cy9lbmRwb2ludHMuLgo+Pj4+Pj4KPj4+Pj4KPj4+
Pj4gVGhpcyBpcyBhIENTSVBIWSBwcm9wZXJ0eSwgYSBDU0lQSFkgaGFyZHdhcmUgY29uZmlndXJh
dGlvbiBhbmQgYSB3aXJpbmcKPj4+Pj4gb2Ygc2Vuc29ycyB0byBhIENTSVBIWS4gV2hlcmUgaXMg
dGhlIHJlbGF0aW9uIHRvIENTSUQgaGVyZT8gVGhlcmUgaXMgbm8uCj4+Pj4KPj4+PiBBbGwgdGhl
IFBIWSByZWFsbHkgbmVlZHMgdG8ga25vdyBpcyB0aGUgIyBvZiBsYW5lcyBpbiBhZ2dyZWdhdGUs
IHdoaWNoCj4+Pj4gcGh5c2ljYWwgbGFuZXMgdG8gbWFwIHRvIHdoaWNoIGxvZ2ljYWwgbGFuZXMg
YW5kIHRoZSBwaXhlbCBjbG9jay4KPj4+Pgo+Pj4+IFdlIHNob3VsZCBhZGQgYWRkaXRpb25hbCBz
dXBwb3J0IHRvIHRoZSBLZXJuZWwncyBELVBIWSBBUEkgcGFyYW1ldGVycwo+Pj4+IG1lY2hhbmlz
bSB0byBzdXBwb3J0IHRoYXQgcGh5c2ljYWwtdG8tbG9naWNhbCBtYXBwaW5nIGJ1dCwgdGhhdCdz
IG5vdAo+Pj4+IHJlcXVpcmVkIGZvciB0aGlzIHNlcmllcyBvciBmb3IgYW55IGN1cnJlbnRseSBr
bm93IHVwc3RyZWFtIHVzZXIgb2YgQ0FNU1MuCj4+Pj4KPj4+Pj4gUGxlYXNlIHNoYXJlIGF0IGxl
YXN0IGEgZGV2aWNlIHRyZWUgbm9kZSBkZXNjcmlwdGlvbiwgd2hpY2ggc3VwcG9ydHMKPj4+Pj4g
YSBjb25uZWN0aW9uIG9mIHR3byBzZW5zb3JzIHRvIGEgc2luZ2xlIENTSVBIWSwgbGlrZSBpdCBz
aGFsbCBiZSBkb25lCj4+Pj4+IGV4cGVjdGVkbHkuCj4+Pj4gJmNhbXNzIHsKPj4+PiDCoMKgwqDC
oMKgwqAgcG9ydEAwIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVzMDFf
ZXA6IGVuZHBvaW50MCB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkYXRhLWxh
bmVzID0gPDAgMT47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5k
cG9pbnQgPSA8JnNlbnNvcjBfZXA+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4K
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjc2lwaHkwX2xhbmVzMjNfZXA6IGVuZHBvaW50MCB7
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkYXRhLWxhbmVzID0gPDIgMz47Cj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnNlbnNv
cjFfZXA+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4gwqDCoMKgwqDCoMKgwqAg
fTsKPj4+PiB9Owo+Pj4KPj4+IERvbid0IHlvdSB1bmRlcnN0YW5kIHRoYXQgdGhpcyBpcyBicm9r
ZW4/Li4gVGhhdCdzIG5vIGdvb2QuCj4+Pgo+Pj4gUGxlYXNlIGxpc3RlbiBhbmQgcmVyZWFkIHRo
ZSBtZXNzYWdlcyBnaXZlbiB0byB5b3UgYWJvdmUsIHlvdXIgcHJvcG9zZWQKPj4+ICJzb2x1dGlv
biIgZG9lcyBub3Qgc3VwcG9ydCBieSBkZXNpZ24gYSB2YWxpZCBoYXJkd2FyZSBzZXR1cCBvZiB0
d28KPj4+IHNlbnNvcnMgY29ubmVjdGVkIHRvIHRoZSBzYW1lIENTSVBIWS4KPj4+Cj4+PiBJIHdv
dWxkIHByb3Bvc2UgdG8gc3RvcCBmb3JjZSBwdXNoaW5nIGFuIHVuY29ycmVjdGFibGUgZHQgc2No
ZW1lLCBpdAo+Pj4gbWFrZXMgbm8gc2Vuc2UuCj4+Cj4+IElmIGFsbCB5b3UncmUgYXNraW5nIGZv
ciBpcyBhbiBhYmlsaXR5IHRvIGdyYWIgYW4gb2ZfZ3JhcGggcmVmZXJlbmNlCj4+IGZyb20gdGhl
IGNhbXNzICh2NGwyKSBkcml2ZXIsIHlvdSBjYW4gc2ltcGx5IGRvIHNvbWV0aGluZyBhbG9uZyB0
aGUKPj4gbGluZXMgb2Ygb2ZfZ3JhcGhfZ2V0X3JlbW90ZV9wb3J0KHBoeS0+ZGV2LT5vZl9ub2Rl
KQo+Pgo+IAo+IEl0J3Mgbm90IGFib3V0IHRoZSBkcml2ZXIgc3BlY2lmaWNzLCBteSBjb21tZW50
IGlzIGFib3V0IGEgcHJvcGVyCj4gaGFyZHdhcmUgZGVzY3JpcHRpb24gaW4gZHRzIG5vdGF0aW9u
LCBwbGVhc2Ugc2VlIHRoZSBkZXZpY2UgdHJlZSBub2RlCj4gbmFtZXMuCgpJJ20gYSBsaXR0bGUg
bG9zdCBvbiB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gYXJndWUgZm9yLi4KCkkgY291bGQgbWFrZSBv
dXQ6CgoxLiAidGhlIHBoeSBzaG91bGQgYmUgYSBtdWx0aW1lZGlhIGRldmljZSIKMi4gIlRoZXJl
IGlzIG5vIHBvcnRzIGF0IGFsbCwgd2hpY2ggbWFrZXMgdGhlIGRldmljZSB0cmVlIG5vZGUgdW51
c2FibGUsCiAgc2luY2UgeW91IGNhbiBub3QgcHJvdmlkZSBhIHdheSB0byBjb25uZWN0IGFueSBz
ZW5zb3JzIHRvIHRoZSBwaHkuIgoKSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCAjMS4uIG1heWJl
IHRoYXQgY291bGQgYmUgdGhlIGNhc2UgaWYgdGhlIFBIWQpoYXMgYSBtdWx0aXR1ZGUgb2YgdHVu
YWJsZXMgKHdoaWNoIEkgZG9uJ3Qga25vdyBpZiBpdCBkb2VzLCBidXQgd291bGRuJ3QKYmUgZXhh
Y3RseSBzdXJwcmlzZWQgaWYgaXQgZGlkKSB0aGF0IG1heSBiZSB1c2VjYXNlL3BpcGVsaW5lLXNw
ZWNpZmljCgpBcyBmb3IgIzIsIEkgZG8gdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gY29ubmVjdCB0
aGUgc2Vuc29ycyB0byB0aGUgUEhZLAphcyB0aGF0J3MgYSByZXByZXNlbnRhdGlvbiBvZiBlbGVj
dHJpY2FsIHNpZ25hbHMgdHJhdmVsbGluZyBmcm9tIHRoZQpwcm9kdWNlciB0byB0aGUgY29uc3Vt
ZXIgKHBsdXMgdGhlIGRhdGEgcGFzc2VkIGluIGUuZy4gZGF0YS1sYW5lcyBpcwpkaXJlY3RseSBy
ZWxhdGVkIHRvIHRoZSBQSFkgYW5kIG5lY2Vzc2FyaWx5IGNvbnN1bWVkIGJ5IGl0cyBkcml2ZXIp
CgpLb25yYWQgCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
