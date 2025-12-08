Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F67D3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 12:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgg9NNh2qUWaWCOrD0WiLkYy4NJAV46rSaBiJz1iT00=; b=c4i3IwkQR7w3tB
	J06vlyIeX8ehQ8J2+I6zB/EjNosQbQq4G88Rpw8+lUR0ylooA+Uyym8BA3Fn1GOyQDiBObG3pYilp
	BPfMR6Noe40jTs0EOZiWyrapIw2PJpT/cUjkVALa1iBYA+W+FsyJQZ8FD8QvRfLllfPRChOLpx93K
	frZP71O54L0bor82B8DYtQPaNvEAPvSLy+ZeXA4qJ2B5+DFaceBigCfdZ3/TxbXP7iqS3FnkU+9XP
	/nMukV+TLSORZq14/m7yPK8o2L5esJG+BUPLHJjVSqZ1ykGPEmfphrCDUuZ8CiKdx+iWYo4QQ9Tzx
	fgLRO9tBbXuenjqGd0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSal9-0000000D5xW-3Hd2;
	Mon, 08 Dec 2025 12:54:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSal6-0000000D5wb-2SHn
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 12:54:33 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B88vWMc4183867
	for <linux-phy@lists.infradead.org>; Mon, 8 Dec 2025 12:54:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=; b=BN/V7dPqmQC9jA2l
	IRTU196kIEPTxOZc9KjsiqFibOPwrZAx8CNrO4ucRh8CDCZNPrTcrStK9gP6MQWQ
	q/LUj384d5sSVNXeGIp4AJpfvryvRpF6ObGHzcjcZLGCU5rjeNbi34aOWOaSXrkB
	ChTu7EmLKz6Y9DrBWBeQQisFoE99fCJsmPX8yrdYTe86FSgWJKZfEm/4Oe1u6Lvh
	B/shU+iKu3faxk97qwkg5En1XJeYI/l0wTmYFf+4q9eQpIzZLldggwlpwDqTx4Ol
	RHOQAc/YBkW8B2NYs1AA/DtondkrwadudTB+eIJjfThOqsOqesWNW7dnLIno46st
	YWjCYg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awume8p05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 12:54:31 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-884821f01a2so11816616d6.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 04:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765198471; x=1765803271; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=;
        b=S2HQgCSbMzHtArbHkJPeqEG3F9WPI3vpzrsA2tERr1fkHjFWywm5uaj3+m6CCXwOKw
         DYc+YCrBYKkfr4mQafBUTW1QuGC9CR3eKCvxQyVtF7iVPmAAjp2/WvDMyFuaMAWQc6Ea
         I7iomb0BDmulRljhjxBGhSsVzBIlv43RJYJ4d3JYXJVcukOck6XruJ8e0+X6ti7TjEs6
         XZ8fiu9YoGaEVQplarU3as/CueuUVa1nXZSP3g4xT+icol8hkzPidjG4/VbNvss+b0WF
         icjHud5svbWVOQUdgGno8RtN8yzXzNSIPDeO5koe/jGmrVfg2mHuOLhVOSM1SNwUtI8e
         7K9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765198471; x=1765803271;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=;
        b=sSbKe6qwI7E1ubFGQ2w+IRyA/ePsJOAfEGw3X92RJlB3mkUzSPCQzjTJAG6I5kbWXx
         7B6bxPOruR+QTE2MwMKZsrU30oqHR+6YpfOyz89Jiygji3nusqRAg2huVS/prnGcwTYU
         vufDuaca27/5Strg9iGn1HrWwCLQjBrdHTEqxqhqs4nv9XrNuaOv1Jie7Ixrkp2/ib18
         BKU4KezpXB20g3MFGtSMLp0prMS+JAqveqlJboY+kVfhfVJR/dp1w+OKwVUXi9kgDZ+G
         sSRF5jSumsKMm7Z8I07HERPttuJTKjsFof4S5GrUXvrFzRM8WOxw5NfVjTFmr2ndtDCk
         e4mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf8laAnRpyjO0cLhL1MYAodeiTxCp3bVthXQKjyI/Zg2YohnHb9cK6og2E1fekWxJ7yXzmKfcIr2c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhCtqtVwy5aLuQlT3crA1Va2H7v0Jg4H/01O/2zP+I09zx0Vas
	s8ivaVJm3BKoPTKKJppE29NSbmvZT6kjbW7KUCg+49s79RHZM3ZAG+TxY9gH4XDIlrJaB72hFU/
	1BNmCPenqtXJPqAztQw5W/V05QaWhKH/D4/DIIZD+P+gN8CCDja2amNmlOSebhbRXG8Xm
X-Gm-Gg: ASbGncsrkNEBJScgbSCZqxhV/yx+deVjRHDy59Bjs7yNPX1RxW2jlHwivzf1NrJTtjE
	R7aiDN41F+XDumAVkO6wgfiQmmbjYsLItKEuwv+WenXDr6izN6nsq7Eijc95FTYv/1IAvwxKuD2
	MuLVsbMe/XLKR6g+4gvBafHYVw/apWEz+CDh05Mzb+J7Nafm2A1pn+z1n8gJfvfO6vtFf2jFW05
	Q5UEoleAC82dsOWHLNhVor2gTSkKJpMwhfAHG6nM+nPS7GFGhZUl1DdW/vgteWGrF5Vi8P1tJNq
	+FRsRy76R2d83hPL7FFwUWDRRNldRRxXfQU5Fo8uWtjBSsm9rQZVek9aUa8fapI6pdoTc90i7xV
	k8XbRBnirfTfLzTQXhezcA2x+Ad+0pFZ1832zCuUIp0OtpSfJ+P2403AzYp7kb9kUFw==
X-Received: by 2002:a05:622a:1105:b0:4f0:2b7e:c5c3 with SMTP id d75a77b69052e-4f03fc876a7mr89445601cf.0.1765198470541;
        Mon, 08 Dec 2025 04:54:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0gW5HREx87/vjahlRMbtYsg+iw5KQvZGmCzt+n533CjTg5/76ejBvrrzJ+IipzoGePsVXmA==
X-Received: by 2002:a05:622a:1105:b0:4f0:2b7e:c5c3 with SMTP id d75a77b69052e-4f03fc876a7mr89445281cf.0.1765198470018;
        Mon, 08 Dec 2025 04:54:30 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2edf72asm10759405a12.11.2025.12.08.04.54.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 04:54:29 -0800 (PST)
Message-ID: <65efffcc-195d-41c9-953c-e3f6c0b0ed5d@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 13:54:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
 <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
 <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEwOSBTYWx0ZWRfX36c0nPKn7tyn
 azm6NP/1dVJ6rkgqVWbRKBA4yuxMcS/Fp19ccuH6+nRTyrvuDDeiw8fzfcBaGyLKKP2xKeVUswe
 BhDL3ic+2yXuijWqa2tWRwBFG1czOPCXZaNFo54bXpZKNpEu0YcX5T6aVBfLjrgbL9uCdN4qOkp
 +BkxJCBXfK5Sl75kiTk0ermyD0+YDQFRFt+/quqfTB4YX58plMNH+pbFs7xTNjxUDz/2dsZpcUM
 Zgau2Ye2G4xadztvNF2qpeN540kWDDskIenl7yGKc6MLaTZ5phltI/FjgvmGd+RR7vR33tT5HE8
 NN03c9AM29c/AV7GUTUXYPfdyP58L3D3HgX+bMZRmaqfe8aYBtyflfVNiU8LpiXCnwp6bn5uMT4
 kHClN2w9LqIOvHbft4DGAHwpx+ZcPw==
X-Proofpoint-GUID: Vb3A2Dhz5S2SYfEuH90w2JgKQ0OHaGRI
X-Proofpoint-ORIG-GUID: Vb3A2Dhz5S2SYfEuH90w2JgKQ0OHaGRI
X-Authority-Analysis: v=2.4 cv=SvadKfO0 c=1 sm=1 tr=0 ts=6936ca87 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=805bfMFN-6O86olI7_EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_045432_628368_2A1A46DA 
X-CRM114-Status: GOOD (  12.49  )
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

T24gMTIvNi8yNSA1OjEyIFBNLCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+IAo+IAo+IE9uIDEy
LzUvMjAyNSA3OjAxIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+PiBPbiAxMi80LzI1IDU6NDYg
QU0sIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4+PiBBZGQgc3VwcG9ydCBmb3Igb3ZlcnJpZGlu
ZyBTcXVlbGNoIERldGVjdCBwYXJhbWV0ZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS3Jpc2hu
YSBLdXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgo+Pj4gLS0tCj4+
PiDCoCAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmPCoMKgwqAgfCAy
MiArKysrKysrKysrKysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9u
cygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1l
dXNiMi1yZXBlYXRlci5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVw
ZWF0ZXIuYwo+Pj4gaW5kZXggNjUxYTEyYjU5YmM4Li5hNzViMzdkNGUxNmQgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jCj4+PiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jCj4+PiBA
QCAtMzcsNiArMzcsMTcgQEAKPj4+IMKgICNkZWZpbmUgRVVTQjJfVFVORV9FVVNCX0VRVcKgwqDC
oMKgwqDCoMKgIDB4NUEKPj4+IMKgICNkZWZpbmUgRVVTQjJfVFVORV9FVVNCX0hTX0NPTVBfQ1VS
wqDCoMKgIDB4NUIKPj4+IMKgICtzdGF0aWMgY29uc3QgaW50IHNxdWVsY2hfZGV0ZWN0b3JbXSA9
IHsKPj4+ICvCoMKgwqAgWzBdID0gLTYwMDAsCj4+PiArwqDCoMKgIFsxXSA9IC01MDAwLAo+Pj4g
K8KgwqDCoCBbMl0gPSAtNDAwMCwKPj4+ICvCoMKgwqAgWzNdID0gLTMwMDAsCj4+PiArwqDCoMKg
IFs0XSA9IC0yMDAwLAo+Pj4gK8KgwqDCoCBbNV0gPSAtMTAwMCwKPj4+ICvCoMKgwqAgWzZdID0g
MCwKPj4+ICvCoMKgwqAgWzddID0gMTAwMCwKPj4+ICt9Owo+Pgo+PiBJIGZvcmdvdCB0byBhc2ss
IGRvIHRoZXNlIHZhbHVlcyBhcHBseSB0byBhbGwgb2YgdGhlIHN1cHBvcnRlZCByZXBlYXRlcnM/
Cj4+Cj4gCj4gSSBjaGVja2VkIHNtYjIzNjAvcG1paDAxMHhfZXVzYjJfcmVwZWF0ZXIgYW5kIHBt
ODU1MGIgcmVwZWF0ZXJzIChTTTh7NS82Lzd9NTAvIEthYW5hcGFsaS8gSGFtb2EpLiBGb3IgYWxs
IG9mIHRoZW0sIHRoZSBhYm92ZSB0YWJsZSBpcyBzYW1lLgoKVGhhbmtzCgpLb25yYWQKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
