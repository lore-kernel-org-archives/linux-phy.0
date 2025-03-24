Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E6DC36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 19:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjLLeTIazfKrKZbo/JEjo4Ra8ZJzY5wnOukOSiyitKo=; b=3GYWxjmxYG3J9d
	ya50HhXT4WeX+0YGJtB3zKCLvbboXD63AkbnH4zsvyRVOc08Wpc/qEd2hcSNfdF2NfYRQEbELmXxC
	H5f5ZhXsO/Fk+Qt8KqTZFKPkVyCtN0DRyEMkG4EDisTqMZG97yNrESvA2YRHnin3unT8sG1G2jv6N
	efe1jmZx8iDZUPln/ppzOYBgHr3H1Cx7oDabzDzsjhpRvD/3qIDlKxqSEGrAKUyteeKSCic+a1HL4
	YODUfL1OgVCzySvRkqHiNZYb8m40biO6r2/WlBuegJOm8obPAhve+i6SNS6P3rli6chpzBF5vzECG
	05TjNCPZsj1fGq/vRm1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twnuW-000000047xV-1FmG;
	Mon, 24 Mar 2025 19:56:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twndB-00000004649-0ilk
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 19:38:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OIXI6o030746
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aBh0fL/SicSEiTLTToe6kTlPeRIK9uUeY0ZMC5k7GRk=; b=SV2G+xjzZHxqvTcV
	Uln9/t2qQ+MPUJWnSBQcMk11cpkRmQgY82s/zU0iyjmsXiAW1DonHsPb+QfR3wiM
	bPyYE3Ockz9J+JDOflQKElsV9JxXsm05dYEEcs3b/eC4+M+N2tARXMuPAeqbjhsQ
	kBlI4bydY7t4KVsC1G1JyPHHe7HuQn6K587P5BTAO9J6+8FTXsHNRM5Cpv38Exxd
	DilPvi5fycyX/qB3dJWcqYIrhsKL8z3dYaCPU2Bq5Gl7clOOyuRJfM9v4euGIIdm
	j+FXEmfxU3XIFyNQSSp/0G02wGUDYjKNRHhYBk0cCcuNjMvfPTW8xcdUiVC7WLwX
	EXcGPQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hmt05duj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 19:38:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767ca7a333so6382681cf.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 12:38:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742845117; x=1743449917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBh0fL/SicSEiTLTToe6kTlPeRIK9uUeY0ZMC5k7GRk=;
        b=PnTX90GYDwC3V9FCzZt0n8lOQuujMEC0MT1teN/gyw5mN8wTQiDeD3MPnldXUYh8c1
         yetkxmtn3T+xbG3wO7IBLUUft3ngPR1ftSqhYEZI/J5/pMibd3QL9CU0E2cvfmhx21Ru
         kxxHbqaNgmRgi/QimzXyOe0xFCnV/VJ+4IUPokk0RvL8E96u/V6FvtlNrGOOtu838mrl
         txLWYPZHW3pzuFyrH3lFK9/uLnovWbK9bmOryscsZpkQf8Y6bvkE51EDPdCRluqjjhYA
         f7M6fQNBIV2wZDG7bv8AKfcM4SKGDvdWOkK1WEVOi6T9cCnoV5Y8AomwLqjn+p2DCNpm
         OSfA==
X-Forwarded-Encrypted: i=1; AJvYcCWLs2fSXyEJC8pOsKqQ4meHhXucz147ZdmbxQ2AAyHVQFDFboWeGsS3r5eEsg6PaBIkAq0Qw2OeBQ8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyL1jAvye4wRP+yqX7o4licCBBr4nfbzn72HrO7PBPAsUpTsfmU
	FxxgPNhGumgc7TwUjXS7n9QDcdpSkelaqTVFs5NCgtNpJJGRez/g28HfaQqlUggP3XtGCbRUymt
	SuZnkO5BLqQSpXC595VP2HUrCbeHUm24ylkval58RxzueGMc+LiMV1E/WSDrD8D5f
X-Gm-Gg: ASbGncsD4M2eUm2F6jR5rMjQo+XLE2Um/Y006raJhrxgBv6Fa69aeOsNaut9/joTB2a
	6udx1b2Lr2T93L2XE4FrsCAOu8wVoVGt/KNOuG/kugJxUvZG+BfZ7BNzO3o47x7dzCgGDAqHVq1
	fGefypTJwz+5KPCpfuJGP7W4ofE+72emw5/ibv+YayGwGd2nboYN8N97Guu2ShyBOCSa4MxJI1I
	jCB4hc7k5evXfDaTISMUL7wVowNJCJFOEKwuM2RinEJ5BIOtVx7z1EryrMFH3AhDthIapkpJLbQ
	sz7Ohzi2fqiO7ZUkI79NJcTPUObWdTMX75QuJvLUzAREfFMvceSOS+IqABIVBnuX++7pNA==
X-Received: by 2002:a05:622a:20c:b0:472:6bd:f620 with SMTP id d75a77b69052e-4771dd6623cmr79162851cf.5.1742845117126;
        Mon, 24 Mar 2025 12:38:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUwpN0XViT79nt7EFVGN3T7ufvhnHE1eIv6lYeU8pz/Y+KkxCyTSyNNdkbCp0+cFJ6e/LYgw==
X-Received: by 2002:a05:622a:20c:b0:472:6bd:f620 with SMTP id d75a77b69052e-4771dd6623cmr79162661cf.5.1742845116568;
        Mon, 24 Mar 2025 12:38:36 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfb12aesm6940821a12.46.2025.03.24.12.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 12:38:35 -0700 (PDT)
Message-ID: <9602e069-71c0-4feb-9c36-f1bf01c15a6f@oss.qualcomm.com>
Date: Mon, 24 Mar 2025 20:38:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
To: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
 <5seajsw64e7mber5yga3ezcnvip3e4o2wylg3uhvaiu5pob47i@ea3rnxqrigcx>
 <DS7PR19MB8883D7102C8A7BE2A87B77009DA42@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883D7102C8A7BE2A87B77009DA42@DS7PR19MB8883.namprd19.prod.outlook.com>
X-Proofpoint-GUID: plbfdcdjDkSUSyiDZwU1IedU9ARyETSJ
X-Proofpoint-ORIG-GUID: plbfdcdjDkSUSyiDZwU1IedU9ARyETSJ
X-Authority-Analysis: v=2.4 cv=aqGyCTZV c=1 sm=1 tr=0 ts=67e1b4be cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=DTJ1r2SVFqceE989MfgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=630 bulkscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 phishscore=0 adultscore=0
 spamscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_123841_332296_7BC98FF2 
X-CRM114-Status: GOOD (  16.47  )
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

T24gMy8yNC8yNSA5OjA2IEFNLCBHZW9yZ2UgTW91c3NhbGVtIHdyb3RlOgo+IAo+IAo+IE9uIDMv
MjEvMjUgMTg6MTMsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIEZyaSwgTWFyIDIxLCAy
MDI1IGF0IDA0OjE0OjQ0UE0gKzA0MDAsIEdlb3JnZSBNb3Vzc2FsZW0gdmlhIEI0IFJlbGF5IHdy
b3RlOgo+Pj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+
Pj4KPj4+IEVuYWJsZSB0aGUgUENJZSBjb250cm9sbGVyIGFuZCBQSFkgbm9kZXMgZm9yIFJEUCA0
MzItYzIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2Fy
QHF1aWNpbmMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogU3JpY2hhcmFuIFJhbWFiYWRocmFuIDxx
dWljX3NyaWNoYXJhQHF1aWNpbmMuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIE1vdXNz
YWxlbSA8Z2VvcmdlLm1vdXNzYWxlbUBvdXRsb29rLmNvbT4KPj4+IC0tLQo+Pj4gwqAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL2lwcTUwMTgtcmRwNDMyLWMyLmR0cyB8IDQwICsrKysrKysrKysr
KysrKysrKysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3Mu
cXVhbGNvbW0uY29tPgo+Pgo+PiBNaW5vciBxdWVzdGlvbiBiZWxvdy4KPj4KPj4+ICsKPj4+ICsm
cGNpZTBfcGh5IHsKPj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pgo+PiBJZiB5b3UgaGF2
ZSBzY2hlbWF0aWNzLCBhcmUgeW91IHN1cmUgdGhhdCB0aGVyZSBhcmUgbm8gc3VwcGxpZXMgZm9y
IHRoZQo+PiBQQ0llIFBIWSAvIFBDSWUgUExMcyBvbiB0aGlzIGJvYXJkPwo+IAo+IEkgZG9uJ3Qg
aGF2ZSB0aGUgc2NoZW1hdGljcywgYnV0IG5vbmUgb2YgdGhlIGJvYXJkcyBJJ3ZlIHBlcnNvbmFs
bHkgdGVzdGVkIChtb3N0bHkgTGlua3N5cyBkZXZpY2VzKSByZXF1aXJlIGFueSBzdXBwbHkuIEkn
dmUgYWxzbyBjaGVja2VkIHRoZSBkb3duc3RyZWFtIGJvYXJkIGZpbGVzIGRvY3VtZW50ZWQgb24g
Y29kZWxpbmFybyBmb3IgaXBxNTAxOCwgYW5kIG5vbmUgbWVudGlvbiBhIHN1cHBseS4KCkl0IGxv
b2tzIGxpa2Ugb24gdGhlIHJlZmVyZW5jZSBib2FyZCBpdCdzIGNvbm5lY3RlZCB0byBhbiBlc3Nl
bnRpYWxseQphbHdheXMtb24gc3VwcGx5LCBJJ2QgZXhwZWN0IHRoYXQgdG8gYmUgdGhlIGNhc2Ug
b24geW91cnMgYXMgd2VsbAoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
