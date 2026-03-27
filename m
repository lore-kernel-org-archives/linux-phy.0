Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3467A10ED640
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 10:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2xA2fjovLr2yb/UMyV0fF/3NEp1ebvtIkXDgKSyv4w=; b=dfVv1cq+tf0bHY
	XDIxdrj/xE/eld0ZgIhEjufAFygEGJBEcDMEkLE35rks3Xzh5C0Tn+EKdH9cRVNQ+wjIfP1K+AuTh
	DV0axZRbxHOHg5ooEyckCFfb87+dPbaJTdcxvN7NscBGT9meAhMW3MKV6cj1nhJ6UxawEXuo0x4NB
	AyfGlKijxQGA1vA/su7wrvaNupZWPqbQ4seUC5OK4VZ+11IZTf7bhQfgf9jN4WT59d7KZ0yw6mKT8
	KG1Msaf1XIc6Kkgl5NrmeEkeuWeqaSSsSabqfPc9JPt6W1waeSl/aTWAmGkS0XfKbVGfDbdQ5AxCi
	M2zQTlqd3e4Pk8TKktjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w646k-00000007845-2cl1;
	Fri, 27 Mar 2026 10:08:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w646i-0000000783i-1egk
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 10:08:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R6vnQ23715853
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:07:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kscwhOT5CpzRfWGi0pFjmddQgBIrWxPFAh5RohhKchw=; b=FT/wylabdZGE7SJ5
	DEKjXFzk0VMzGmWsZe6QSEsvmbYbLztgl4fVm0PAv9uPxi8ayh7TQM1YM0aQzgUc
	pxUcQq1cYHAOR4CaovwX8VF4M52+kMYYIOTdG1wTNh2Jzpb/W9PMvKSlacM1rxct
	VI+aLko61YqkQEiOsEKmEXJoPXB/5lXVtjNMS/t88Ixd3PBlQycuTU74p6AMowWr
	ty08U5keaKn8qaJWwZbZj7z+sjKYdWY3mJ2L+TDAKusm/Zvm4XR0rt+9fp5NlgDl
	5SODxKs0c4rmj1YWzDgmYq5gkP47n/++kC7pbTocpV6RwheScGhrarUgkfhxCpTL
	R3NhGA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5dd6j974-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:07:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cfbd336c3eso64471485a.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 03:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774606078; x=1775210878; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kscwhOT5CpzRfWGi0pFjmddQgBIrWxPFAh5RohhKchw=;
        b=h0WVCCjZgNt4k0ocKJfvl7qdqjHnP510kzoALNPmwPyvg+lIMJ8HtNnPO5ia+iPyv/
         S6xjvxjPYfc2cr6RHFWlc+iAt8iyLTA6Wr/YhxmyHuKfELLEPfoxo0NFSP/UrfkeZ1Aq
         oDqVSRnqyAIqGavfxrG1ljdPa6E6LGnesPowz3043qyt4AsobnOmSEiqFQwjdt8pytrj
         hAh+85kTYeaTsmMVG5+rg+8nHzCjUQ5Hp9WF+nSG2m+KSdVEkpX6cZxdzXKN7snpiCxF
         tUjxVrz9pLzxRfso/bybvZuhjeTje7IzUUKhVoM4zjGa9jPMEPoI9tC3seuybVfSJaa4
         euxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774606078; x=1775210878;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kscwhOT5CpzRfWGi0pFjmddQgBIrWxPFAh5RohhKchw=;
        b=V9USaflnOcNybGct6UbIGQ5PefdcWu4o6/QTelSM70HE8aiI8yP8agg33yFmGzfN8v
         pHYb8wGWdrEtvtpSMttwkpiIGG3az1ybTOozvo4sjHJn3utVWedNaOGYe5Xfs/bwA23D
         +eDyRlJEknqJ6Q6PARrRzEhq0VX+c2kri4eDa9U8lQlTH94ixmNX5xeGqYzNugzlKjOw
         OOgg1Xf5NsHHzTMjuMtYx3Jd708ayQNwc3SeCr5PA3U02JeFo+s0QCiVqJ7YpieJqL1o
         tLBEChvidOuy5JVRoK/ayG+Ecv7PX9Uq/P6/1Gawq4h6m8EB9SHpVkz7kozI8l3flNFS
         IODA==
X-Forwarded-Encrypted: i=1; AJvYcCW67Z6FOUCfamc2uUCRIujRlQlkV6eWGlUiG9mHSfu70cY8FeKvs3iTV1Fvv2RUoNILV3vSwbmbHR4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZovrh0vZYyaTU8AEWt28iImtyfo8wMdiomsw3ssOXmvpnbTZ+
	Hs+cFdEiGJL8NtaPQ+QEATVBc7xiV6T2AaYxI2/rIIOb08bd818fIo6AyQdiDe8PxK+Vhvcj0rm
	1f9OiEFSRs/0Ua2P49D4w54QFCRk6BWHguKIIxQm/qPbp79mRKcsrKZ9mav/eJ2FmQvR7
X-Gm-Gg: ATEYQzyci6gbnGv7P6hZyATn6W3gG46WX6Rq1IdBgn9hS1vNCabQpK2LebS1BeGOcU1
	cCXS/xt4BPqpRwJjBtpBA+oW9vrf0OqXwG7fEJ4RK413T1RH4Xh4DJ2GK4KkDR7wII7/Dx+Llwa
	OJTT0HVxTEPVuWvZAY+v1D2gJKQRGBBfm/Pi7yKwo1xUQjwd3H9ugLkyRkckn9OUMCMhhNN6npQ
	plgcjhkWN6QIts3s7suxFYuIwM2nL9VjmsndUo++XEzAlZbqqVFATLMSGcb1EEuouj6es7bv+kN
	tHM2+WN2HhqNM3ziaBApok6JxT7rkGGAa5DN060zFYglU/aRhSe4dlkaoR0JN0qOV1cIriqFVsO
	uPJaRaHWAduApMXaUlX2qqDeuKEFXDLMn4d9CGOMSZ6nb+LzUoFJm08MgPDhfdfGv9NzQxGb4GV
	M8auI=
X-Received: by 2002:a05:622a:60e:b0:50b:2275:8c1f with SMTP id d75a77b69052e-50ba36a09f8mr18854691cf.0.1774606077647;
        Fri, 27 Mar 2026 03:07:57 -0700 (PDT)
X-Received: by 2002:a05:622a:60e:b0:50b:2275:8c1f with SMTP id d75a77b69052e-50ba36a09f8mr18854441cf.0.1774606077116;
        Fri, 27 Mar 2026 03:07:57 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b202663c6sm238521366b.23.2026.03.27.03.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 03:07:56 -0700 (PDT)
Message-ID: <27adcbd2-0ec3-4a8f-84d6-ba381a66772d@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 11:07:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
 <bc6abd24-d56a-4fc0-89e9-8986e8d8b3b7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bc6abd24-d56a-4fc0-89e9-8986e8d8b3b7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NenrFmD4 c=1 sm=1 tr=0 ts=69c656fe cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=anbA2sijppV0hw6aPocA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: uS1D2MP9yVvZzsy3_6daYl5bVKM6cM7E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA3NCBTYWx0ZWRfXxH9RMV8S1B2t
 D+TF5ofuNrhi6nZctnnU+nlAc0vpnKDDDpjB30XolXI/t9uhPxVycI79i8vqv5+IOtW4tEA+ga0
 ZIJ41XIvKrN0f2OUAjjtcWW8BqQvsyi+ro/Z5w7oCA2YWn62AU62QqnaEW8PyqN50HEoYRIeT22
 A8WvKQEpbVxc0yI816+jqoC+vEThGc1rX0ols6LtCJYzTbBSqVQ5OWYyn2gXXQZJgsQHapj4cfv
 h8FxKnXIGoe6pAo+lP1AU12jkuzJRLBRmBXxCygJF/9VohVi6fIer7pIvmCObe+fD4QJYYdC6HF
 MwXDzV051vdUTRl1pN8NTGQyMTb9SU/rMPtxnkij/A7uHJIPEVS+inYxqkCKTt2s5kjW0FuHXoJ
 DljF6n6JrbQt3z2b+ZU67wq+9dJrMVJTSJnw1yCX3z0rJPBuMRagpm6osGjtA+yzJcsV4NLvtNq
 qRGte9nhvZi4MYU+7Ow==
X-Proofpoint-ORIG-GUID: uS1D2MP9yVvZzsy3_6daYl5bVKM6cM7E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_030800_554502_413EE12E 
X-CRM114-Status: GOOD (  15.58  )
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

T24gMy8yNy8yNiAzOjIzIEFNLCBIYW5neGlhbmcgTWEgd3JvdGU6Cj4gT24gMy8yNi8yMDI2IDk6
MDQgQU0sIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+ICsjaW5jbHVkZSA8bGludXgvZGVsYXku
aD4KPj4gKyNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9p
by5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3RpbWU2NC5oPgo+PiArCj4+ICsjaW5jbHVkZSAicGh5
LXFjb20tbWlwaS1jc2kyLmgiCj4+ICsKPj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NP
TU1PTl9DVFJMbihvZmZzZXQsIG4pwqDCoMKgICgob2Zmc2V0KSArIDB4NCAqIChuKSkKPj4gKyNk
ZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMMF9QSFlfU1dfUkVTRVTCoMKgwqAg
QklUKDApCj4+ICsjZGVmaW5lIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fQ1RSTDVfQ0xLX0VO
QUJMRcKgwqDCoCBCSVQoNykKPj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9D
VFJMNl9DT01NT05fUFdSRE5fQsKgwqDCoCBCSVQoMCkKPj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9D
TU5fQ1NJX0NPTU1PTl9DVFJMNl9TSE9XX1JFVl9JRMKgwqDCoCBCSVQoMSkKPj4gKyNkZWZpbmUg
Q1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMMTBfSVJRX0NMRUFSX0NNRMKgwqDCoCBCSVQo
MCkKPj4gKyNkZWZpbmUgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9TVEFUVVNuKG9mZnNldCwg
binCoMKgwqAgKChvZmZzZXQpICsgMHhiMCArIDB4NCAqIChuKSkKPj4KPiBIaSBCcnlhbiwgb25l
IG1pbm9yIG9ic2VydmF0aW9uIG9uIHRoZSBmb2xsb3dpbmcgbWFjcm86Cj4gCj4gwqDCoMKgwqBD
U0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX1NUQVRVU24KPiAKPiBUaGUgMHhiMCBvZmZzZXQgaW1w
bGljaXRseSBhc3N1bWVzIGEgZml4ZWQgZGlzdGFuY2UgYmV0d2VlbiB0aGUKPiBjb21tb25fY3Ry
bCBhbmQgY29tbW9uX3N0YXR1cyByZWdpc3RlciBibG9ja3MuIFRoaXMgaG9sZHMgZm9yIHRoZSBQ
SFlzCj4gY292ZXJlZCBieSB0aGlzIHNlcmllcywgYnV0IG9uIHNvbWUgb3RoZXIgcGxhdGZvcm1z
IChlLmcuIEthYW5hcGFsaSwKPiBQYWthbGEpIHRoZSBvZmZzZXQgZGlmZmVycy4KPiAKPiBUaGF0
IHNhaWQsIEkgdGhpbmsga2VlcGluZyB0aGlzIGZpeGVkIHZhbHVlIGlzIHJlYXNvbmFibGUgZm9y
IHRoZSBzY29wZQo+IG9mIHRoZSBjdXJyZW50IFBIWSBzZXJpZXMsIGFuZCBpdCBkb2VzIGhlbHAg
a2VlcCB0aGUgbWFjcm8gc2V0IHNpbXBsZS4KPiBJdCBtaWdodCBqdXN0IGJlIHdvcnRoIGRvY3Vt
ZW50aW5nIHRoaXMgYXNzdW1wdGlvbiAoZS5nLiB2aWEgYSBjb21tZW50Cj4gb3IgaW4gdGhlIGNv
bW1pdCBtZXNzYWdlKS4KPiAKPiBBbHRlcm5hdGl2ZWx5LCBpZiBmdXR1cmUgUEhZIHZhcmlhbnRz
IG5lZWQgdG8gc3VwcG9ydCBkaWZmZXJlbnQgbGF5b3V0cywKPiB0aGlzIGNvdWxkIGJlIG1hZGUg
bW9yZSBleHRlbnNpYmxlIGJ5IG1vdmluZyB0aGUgc3RhdHVzIGJhc2Ugb2Zmc2V0IGludG8KPiB0
aGUgcGVyLVBIWSBkYXRhIChzaW1pbGFyIHRvIG90aGVyIHJlZ2lzdGVyIGxheW91dCBwYXJhbWV0
ZXJzKS4gQnV0IEkKPiBkb27igJl0IHRoaW5rIHRoYXQgbmVlZHMgdG8gYmxvY2sgdGhlIGN1cnJl
bnQgc2VyaWVzLgoKSWYgdGhlIHJlZ2lzdGVyIGNvbnRlbnRzIGFyZSBnZW5lcmFsbHkgc2ltaWxh
ciBidXQgdGhlIGJpdCBwb3NpdGlvbnMKYW5kL29yIHJlZyBvZmZzZXRzIGRpZmZlciwgcmVnbWFw
X2ZpZWxkcyBtYXkgYmUgdXNlZnVsCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
