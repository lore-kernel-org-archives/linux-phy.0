Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B8DCCA1013
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 07:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTfE4x52peFd2qjymw5kNEGBe6bOZRGojUI/etKInhU=; b=AJl76x4IQJUYWV
	/y5v7OXtuM1DiDy+JoHjbXxprju1w87766SB0pIAXZBoREZbzwJ/j7pPlGfMgXYbyssYEUA6VhGzr
	F+sChzbiP3GtuQ00d4dVVVeuTtRkkQmbAMWLe5mx1lvkD6QNHh84sJ8Vk0uZaIWlEzrl2olcWtvSR
	BTdpBYoH4XZh4PLsv9vKQm7oHlAjWMmr1I7eLnLB1o1kZq7EUA/XQY6VEISXs4p0gkGbe9m2ECIcg
	H2FJEkBDI3FybKdVtlN6PDVwXaDwouuP/CTdch7srlkFimlJmpAMStVDKuzSzqyobCO497MgBNltj
	mU6nGYmHL8/zaV86Uptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvW9A-0000000FEJg-2PjL;
	Mon, 08 Sep 2025 07:18:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvW7A-0000000FDWL-1KDO
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 07:16:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587NR1S3014735
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 07:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZaKwF3uTvV0qt8pO//IeFHi+qzIUMNGv1KFMfckt8OE=; b=E0BQAb9mPmuozXUc
	MZp6LbIFfcTrzbktlYQW0oNLK8BLL8KI2MvRVU0YCJtbe129HTqEYXKukEnXFeYY
	Z9AvQym7Y7G+HdSCWYqX8ybqUHztR6Af3q7nhZCrJUhkuhMyX5m8vxsGYm05QYgG
	tpuRvSvqEMo3lnOvY2DZ9r/5/uvIVoUYJmkzhor1rPdaNZL2yMTBdnmARetqLoD3
	RzbUOsVqDItmNWvoFwpRD4b4AnnGC70+r/EvSo999YHbXox4o6yvSD08BXGGL3qH
	OQ9peWMvvQ+aZkFq51+x95T5W26XMF1k6kn2R93slZIAroLRoTwUa6IjSVo/L847
	1JjhVg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfuh9y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 07:16:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b604c02383so6872371cf.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 00:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757315793; x=1757920593;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaKwF3uTvV0qt8pO//IeFHi+qzIUMNGv1KFMfckt8OE=;
        b=FuoRMmNWYqtjPTrWaXx/kXnAfvitYkGoGsplOtA9P+ao+qsYDxUunN4Rnm5WfZzwiV
         eGkPy75CvtE2bS3iam/uzp1f50ff5xgaxXcfPNJtW/b2FAtiqutkYN8B5zuOAaIzRyUL
         36w3ksatYRSjXlfYVrSJkUp6efe496IFjc8k+AjA5z3FT/e1FH3uhh/FGhigb9eJmQtW
         cRk6hTlcxYAkyPJnDLY7A1PCr9te28dUGZd3JzH6IjZNULUqTi0G9LJ23+SRAAm3L//C
         NTvqyLFEsiDiTAYo/xIUOxXcea3bAG5wyfhRN+qJrLm8jLAzuNx82Yscigz3g9/cffMA
         EU5A==
X-Forwarded-Encrypted: i=1; AJvYcCVyhNYFkIiLkA1h5e46VAleTWRbVWTzCJNnVYs+CO2zMyEdTNaooyA+ALtERcx0ZCe6tWwMcMS2/ug=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxa7ge2NNmn0iynt1PfgCPpWPuhlh2Fs31YNYzrSVp2ecWy8fRn
	KFr4f5tRogAW9yU1kOUA+84Zz0XLzl3wiDuz5SF/jtxdcdc4qqBoKKLf3e195qsyeKPrakePn2q
	lnEowpJOLS7iL8PV+ibsKEYSvHOoOX/HzGnEFQnaewnR805qTTeNNEl2u9Ds2rwh32YoJ
X-Gm-Gg: ASbGncsC6ez0WDDJTLJqeX5CCD9L6sG2dn9CHeig58ExupA0dzWCRbh2TCDVPpG1OgP
	a4sWcAzXUmW50VXJyJtPlLH8Q7Ye83Xcz5JOMp0n82A0Ub551Xpt8Is/5c8//kv1L6lj9Izu0d/
	XO2j/+l46qAaQiTLCV/mLvPn5NGpGzp6kS/6f20WrPgixZIiaKHP0dQI0mnqkDY3Xp1W8d0kVRB
	+qKRjg0B+7vuUQ9NOGhwIXTTgHbZmylbv53fn/ybO3s08nXHvZ1DhYcWSULM/qCTjJflPEfkGqT
	XphCA/jYVlJdyuEj5eQkVCvcl7ZtpzwMFuRjbdio0rDWkzJqGs6kDG25yy9hxVTsgz7vszS5OzD
	SmXs15apCJwYQu+mGwd2hDQ==
X-Received: by 2002:ac8:5981:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b5f83a513fmr52719171cf.4.1757315793087;
        Mon, 08 Sep 2025 00:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGleczMa2Q7omIjZHxAPAoUdrSH+RT9RzFZmldfPTQGN+mYVhUoCTb0CBLPp6B4wg1HrxnQCw==
X-Received: by 2002:ac8:5981:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b5f83a513fmr52718941cf.4.1757315792535;
        Mon, 08 Sep 2025 00:16:32 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff12a6b404sm2323810866b.88.2025.09.08.00.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:16:31 -0700 (PDT)
Message-ID: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 09:16:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
X-Proofpoint-ORIG-GUID: R9VTuxTewSjo8yzP8vwqMn9Wefj6Qem0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX+XGATRr3XGmn
 iCUHrP4Kr14hraAT1IMKIhOSjS4L8OfPqJWSD+rHDsIOmotkISukmwm25CvMX5aBDH/UDQBJArs
 e9sKC//WGTP0OXcsSt+aAKkl/bx/y200Ho2qGB/cGjfiErtbDzw4xPivN8zAOw5vmR1NVlDEiht
 +mf8qq/S/Yw09LaEqE2reFrsBO1SkBinzQuBsqBnU4Akdop3JAluqJRSNykA7I60Rs195GYlTpI
 yYrJkv2qgigZejNHjiiMLO52fIKUAr1EWENBGb3vpTNS3yzvo3T52sBfbfflMv0i3CvgFSA/rcW
 Ptymgcg/4AuSeqp/9E8QUahj9bqqSFkYRyU3kQA4M0Gd3kF8tzd1jPWvYA4wgF5whCap+7qXn0U
 gybHIUuy
X-Proofpoint-GUID: R9VTuxTewSjo8yzP8vwqMn9Wefj6Qem0
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68be82d3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=kc4OFxI6wrfgCCI0QPcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_001636_362011_C6175E75 
X-CRM114-Status: GOOD (  16.14  )
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

T24gOS82LzI1IDEwOjQxIEFNLCBKZW5zIEdsYXRoZSB3cm90ZToKPiBPbiAyMS4wOC4yNSAxNTo1
MywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IFRoZSBUaGlua3BhZCBUMTRzIGVtYmVkcyBhIHRy
YW5zcGFyZW50IDRsYW5lcyBEUC0+SERNSSB0cmFuc2NlaXZlcgo+PiBjb25uZWN0ZWQgdG8gdGhl
IHRoaXJkIFFNUCBDb21ibyBQSFkgNCBsYW5lcy4KPj4KPiBbLi4uXQo+PiDCoCAuLi4vZHRzL3Fj
b20veDFlNzgxMDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzacKgwqDCoCB8IDQ0ICsrKysrKysr
KysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKPiBb
Li4uXQo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4MTAwLWxl
bm92by10aGlua3BhZC10MTRzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlNzgx
MDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzaQo+PiBpbmRleCA0Y2Y2MWMyYTM0ZTMxMjMzYjFh
ZGM5MzMzMmJjYWJlZjIyZGUzZjg2Li41YjYyYjhjMzEyMzYzMzM2MGYyNDllM2VjZGM4ZWEyM2Y0
NGU4ZTA5IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlNzgxMDAt
bGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20veDFlNzgxMDAtbGVub3ZvLXRoaW5rcGFkLXQxNHMuZHRzaQo+IFsuLi5dCj4+ICsmbWRzc19k
cDIgewo+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZtZHNzX2Rw
Ml9vdXQgewo+PiArwqDCoMKgIGRhdGEtbGFuZXMgPSA8MCAxIDIgMz47Cj4+ICt9Owo+PiArCj4g
Cj4gSGkgTmVpbCwKPiAKPiBzaG91bGRuJ3QgbWRzc19kcDJfb3V0IGFsc28gaGF2ZSB0aGUgbGlu
ay1mcmVxdWVuY2llcyBwcm9wZXJ0eT8KPiAKPiArwqAgwqAgbGluay1mcmVxdWVuY2llcyA9IC9i
aXRzLyA2NCA8MTYyMDAwMDAwMCAyNzAwMDAwMDAwIDU0MDAwMDAwMDAgODEwMDAwMDAwMD47Cj4g
Cj4gT3IgaXMgaXQgc29tZXRoaW5nIHRoZSBicmlkZ2UgYWxyZWFkeSBuZWdvdGlhdGVzPwoKTm8s
IGl0IHNlZW1zIGxpa2Ugb3VyIGRyaXZlciBmYWxscyBiYWNrIHRvIEhCUjIgKDU0eHgpIGV2ZXIg
c2luY2UgdGhlCmRyaXZlciBoYXMgYmVlbiBtYWRlIGF3YXJlIG9mIHRoaXMgcHJvcGVydHk6Cgpj
b21taXQgMzgxNTE4YTE2NzdjNDk3NDJhODVmNTFlOGYwZTg5ZjRiOWI3ZDI5NwpBdXRob3I6IEt1
b2dlZSBIc2llaCA8cXVpY19raHNpZWhAcXVpY2luYy5jb20+CkRhdGU6ICAgVHVlIERlYyAyNyAw
OTo0NTowMiAyMDIyIC0wODAwCgogICAgZHJtL21zbS9kcDogQWRkIGNhcGFiaWxpdHkgdG8gcGFy
c2VyIGFuZCByZXRyaWV2ZSBtYXggRFAgbGluayBzdXBwb3J0ZWQgcmF0ZSBmcm9tIGxpbmstZnJl
cXVlbmNpZXMgcHJvcGVydHkgb2YgZHBfb3V0IGVuZHBvaW50CgpEbWl0cnksIGlzIHRoZXJlIGFu
eSByZWFzb24gbm90IHRvIGFsbG93IEhCUjMgYnkgZGVmYXVsdD8gSXMgb3VyIGRwCmNvbnRyb2xs
ZXIvZHJpdmVyIG5vdCBzbWFydCBlbm91Z2ggbm90IHRvIGFkdmVydGlzZSByYXRlcyBpdCBjYW4n
dApzdXBwb3J0LCBkdXJpbmcgbmVnb3RpYXRpb24/CgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
