Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D11C5B543
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 06:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SNy5fqCjtok9PDRNcv92lmcJkgX9P0IKckLw2sOnNg=; b=H7vZnTiBVT7PCR
	YxueD5DS5kk0o4uzEq8RxYPLRun6pearxXjgD4ay6BylEy0FhbYIlLarKH62c9mTVfCthN1pzBRLW
	ZAVXua0/Q0yndEjbridl8tDzF0eKfcWtGkPQ08H8Rv9nE0ybbExuK8UGylhDwkhleBA8hNIQTG8GA
	qjkCKTofSQs3f4SeNwICd9JlE5p2m2EHwr5Mrlh7b5/kyRGNEiCdT5zDRDcYfeuL+PXXKniIrlr+S
	iMwvsyjj8Y/G+9Q6lL5ggcL5Io0kytm9tx70JQa3TXO66AIKPVCyFMOiTVTdV6PonsUZC5ycj6fGL
	MrTjR9PlFYT/L7zmM+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhi8-0000000CgPJ-0EvP;
	Wed, 04 Jun 2025 06:34:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMhi5-0000000CgOt-1oxd
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 06:34:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 553KKnMs006331
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 06:34:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T9079cpPJMqy1lXX9Kc7OWLUoMW9Z59kC59hAowCd8E=; b=OYwo9iGNbz8rlG/f
	Zn8yg9Zbi+SZtqFfEkFy7SOpk0YH5F6VTtbtzD9NdA6Em3959IMxHbF/YxI8mr4s
	6bcSRPOdjpC8k9+Y4qRgqemf66HPvktkC3uhIjxzCk6ApfQiyrXpy8MqfZ9jGHhd
	YXz4gqfAW5YWQT4VT2mIJCqEt/7aaCu5hQm/6gef25+SZTaXUp5MmWVXzSLsWjUT
	YG4gjqYAfv+Ze5U7c+IFp3rNL4PR6Ou6WSKe4FQ12XcWStxIb9r1lqyBRfGDnXQj
	nn0Anetm0k5cgLqrxClXbMFCL+e2eY49AOyIp//MY7IHs7fYwiQSrr72bKOTg5R7
	hSK0Jg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8sw2xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 06:34:47 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-311d670ad35so5949732a91.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Jun 2025 23:34:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018887; x=1749623687;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9079cpPJMqy1lXX9Kc7OWLUoMW9Z59kC59hAowCd8E=;
        b=V8B4t6alu2mkghoDa/SoKwe+Fsgn8XJBh+ImBPAjBkuPeLuBsYmaKygb9bwh1HA9A+
         4VKUqYyKGLvlNyWTNuxNtMul963W2MVSUUAjMUtkkUFaQW0ohFyPe8WbSngl25tC70W+
         O2aI7sDN2Nm3I/lNGlf9TDIAP4Y9/cJF6dRPivxIRT2RGGIFBsEjeuN5l4t65GvQfSYf
         rVN7wcopWhe/IsgjN0/lhvXWnQ5lRsoVzujJ4UM6o0jadx6AdEOfVI/LmWx985JKOInR
         82LzU3kCSw3TkIW5zMcirI6jBwob1QhL8Cl8KZ+qnE//zxm8HPojndbaoKE7aTeCRiJn
         Rhsg==
X-Forwarded-Encrypted: i=1; AJvYcCW/Ti7mHSTfGQ3RE8EDtX5Y/k+y+7YKjoTTSpcuzk1BV7e0+vlb1LwkXjwu2DTy9DNu60aYYLaBjUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvNAYGx42XjmdqE+ASsPIEKAkfsG23YalLLlzaAUU35gusAmlL
	s2dZzNCWvOyULEBsoAybo0EetYhBg/3ArIwbEn1uZ9CdML6q91NwoB/2qimRA2lteiJFT/nZ2Ou
	l2gzl/IU5GdY74/8rsqs6FoVqssDF6UwvC0SeqE/9f5ImObEMOZbwoM2BaYbGIlOlXbW8aap35g
	fOGbiusaGDemJoQ7TnnsoBd+sgeJvHQDwh+h56bZ8iO0o=
X-Gm-Gg: ASbGncvh3gK/cCIhjQrEyA0axu+cbd8G/pqk6DnT+59tS4U+kr9ZFf2q0t8YrwPyKm1
	xNy7TYuM2LOYIpcgTmU8wJfjZK9dDRtx/M6Z4SYJ227A+ZcRXUOSxrrgCJm5irA4wFqK+2A==
X-Received: by 2002:a17:90b:2c8f:b0:312:29e:9ec9 with SMTP id 98e67ed59e1d1-3130cdad261mr2945204a91.24.1749018886649;
        Tue, 03 Jun 2025 23:34:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIuPluBDu4u5KGnxzBhJcv5mMUkl7EBUh/65kh9bW75WRsQbbaFMAdq4P0YI8KhX6NYIyU5JJbH9xVw242LSM=
X-Received: by 2002:a17:90b:2c8f:b0:312:29e:9ec9 with SMTP id
 98e67ed59e1d1-3130cdad261mr2945163a91.24.1749018886254; Tue, 03 Jun 2025
 23:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com> <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
 <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com> <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
 <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com> <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
In-Reply-To: <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 4 Jun 2025 12:04:35 +0530
X-Gm-Features: AX0GCFtUSo3xmhLJTp6kkLzM4r7UUUEdKvCLKhwD4KBE-wPI3JUeW_pADGCllGE
Message-ID: <CAMyL0qOhxKq8j1UXDX4xrWa8aVZoeqrhpWSVN2dC2hDLaqJoHw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
X-Proofpoint-ORIG-GUID: 5Xas7HM7pvX0XEVg3495WYgK_Gx7mYCk
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=683fe907 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=o19W8QfZZ25Kakzi4KgA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5Xas7HM7pvX0XEVg3495WYgK_Gx7mYCk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA1NSBTYWx0ZWRfX/3a8GXVgoOks
 Q4IuL/Wf4qIRUmevHfynESFCU+lDuVJwj8MFbUwvWjt2RTM6h+SYWPNVJ1UbnFBeniHXFbEdSZ2
 oZTfaBU75UGtXR1q+NUDUxI9lqbDEco+HPWTbw6bP40i6b+wLp1khQGmqKw0YSWrHLhRvFhjaHF
 1JMTaW2AKn/mhlVQZ7XX/yBJnzQPgnvCoNMJ7qiRSFkbFzyu8x6OVKCBmUyd3Ct5vBN5VdZPzU+
 kFaxc55mzIUwp8tbPJFQfSoFAMx7HuBRYlmLDF5jo9p+c5Et9tlapgBl0FcPGf7OtMS98j7S4Ko
 df3kQnS4cRl2pTVQYZ3gpU9pqKkcDdsfOHZaBcIvwV96Uxop/9umALYfYB3hTmI4igjGp6BPzo+
 F+Zz6VCLhYR3dMpogz39OOUGDyw6dWagCemhxi+WLSA/m+nO3suUOGdfChzUCJJWw2pmQs4U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=805 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_233449_478389_77854826 
X-CRM114-Status: GOOD (  24.83  )
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

T24gRnJpLCBNYXkgMzAsIDIwMjUgYXQgNDoyNuKAr1BNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiA1LzMwLzI1IDEyOjUwIFBNLCBL
b25yYWQgRHliY2lvIHdyb3RlOgo+ID4gT24gNS8zMC8yNSA3OjM4IEFNLCBNcmlubWF5IFNhcmth
ciB3cm90ZToKPiA+PiBPbiBUdWUsIE1heSAyNywgMjAyNSBhdCA0OjA24oCvUE0gS29ucmFkIER5
YmNpbwo+ID4+IDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+ID4+Pgo+
ID4+PiBPbiA1LzI1LzI1IDM6MjkgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+PiBP
biBTdW4sIE1heSAyNSwgMjAyNSBhdCAxMToyNzoxOEFNICswNTMwLCBNcmlubWF5IFNhcmthciB3
cm90ZToKPiA+Pj4+PiBGcm9tOiBNcmlubWF5IFNhcmthciA8bXJpbm1heS5zYXJrYXJAb3NzLnF1
YWxjb21tLmNvbT4KPiA+Pj4+Pgo+ID4+Pj4+IFRoZSBtYXhpbXVtIGxpbmsgc3BlZWQgd2FzIHBy
ZXZpb3VzbHkgcmVzdHJpY3RlZCB0byBHZW4zIGR1ZSB0byB0aGUKPiA+Pj4+PiBhYnNlbmNlIG9m
IEdlbjQgZXF1YWxpemF0aW9uIHN1cHBvcnQgaW4gdGhlIGRyaXZlci4KPiA+Pj4+Pgo+ID4+Pj4+
IEFkZCBjaGFuZ2UgdG8gcmVtb3ZlIG1heCBsaW5rIHNwZWVkIHByb3BlcnR5LCBTaW5jZSBHZW40
IGVxdWFsaXphdGlvbgo+ID4+Pj4+IHN1cHBvcnQgaGFzIGFscmVhZHkgYmVlbiBhZGRlZCBpbnRv
IHRoZSBkcml2ZXIuCj4gPj4+Pgo+ID4+Pj4gQXMgR2VuNCBlcXVhbGl6YXRpb24gaXMgYWxyZWFk
eSBzdXBwb3J0ZWQgYnkgdGhlIFhZWiBkcml2ZXIgcmVtb3ZlIHRoZQo+ID4+Pj4gbWF4LWxpbmst
c3BlZWQgcHJvcGVydHkuCj4gPj4+Pgo+ID4+Pj4gIkFkZCBjaGFuZ2UgdG8gcmVtb3ZlIiBpcyBh
IGJpdCBjbHVtc3kuCj4gPj4+Cj4gPj4+IEknbSBtb3JlIHdvcnJpZWQgYWJvdXQgdGhpcyBub2Rl
IG5vdCBoYXZpbmcgdGhlc2UgZ2VuNCBlcSBzZXR0aW5ncwo+ID4+PiAoaS5lLiB0aGUgcGFydCB0
YWxraW5nIGFib3V0IGRyaXZlciBzdXBwb3J0IGxhbmRpbmcgaXMgdHJ1ZSwgYnV0IGl0J3MKPiA+
Pj4gdW51c2VkIHdpdGhvdXQgdGhlIHByZXNldHMgYmVpbmcgZXhwbGljaXRseSBkZWZpbmVkIGlu
IGVxLXByZXNldHMtMTZndHMpCj4gPj4+Cj4gPj4+IEtvbnJhZAo+ID4+Cj4gPj4gSGkgS29ucmFk
LAo+ID4+Cj4gPj4gQWN0dWFsbHkgc3RhYmlsaXR5IGlzc3VlIHdhcyByZXNvbHZlZCBieSB0aGlz
IHBhdGNoIHNlcmllczoKPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAy
NDA5MTEtcGNpLXFjb20tZ2VuNC1zdGFiaWxpdHktdjctMy03NDNmNWMxZmQwMjdAbGluYXJvLm9y
Zy8KPiA+PiBhbmQgSSBkb24ndCB0aGluayB3ZSBuZWVkIHRvIGRlZmluZSBlcS1wcmVzZXRzLTE2
Z3RzIGZvciB0aGlzLgo+ID4KPiA+IE9rYXksIHNvIHRoZXJlJ3MgbXVsdGlwbGUgcGFydHMgdG8g
aXQuLgo+ID4KPiA+IEkgd2FzIHJlZmVycmluZyB0byB0aGlzIHNlcmllcwo+ID4KPiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDMyOC1wcmVzZXRfdjYtdjktMC0yMmNmYTA0OTA1
MThAb3NzLnF1YWxjb21tLmNvbS8KPiA+Cj4gPiBQbGVhc2UgY2hlY2sgaWYgeW91IG5lZWQgdGhp
cyBhcyB3ZWxsCj4KPiBJZiBub3QsIHdlIGNhbiBnZXQgdGhpcyBtZXJnZWQgYXMtaXMKPgo+IEtv
bnJhZAoKQWN0dWFsbHkgdGhlIHNlcmllcyB5b3UgYXJlIHJlZmVycmluZyB0byBpcyBub3QgcmVx
dWlyZWQuCgpUaGFua3MsCk1yaW5tYXkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
