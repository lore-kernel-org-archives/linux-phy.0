Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E87DCA0FEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H91e0rop86lJJiYkQ9twfJ5f5r/Ugxxh6Mm931+dHYo=; b=JS6mAH9tBKRKrw
	yqLwca4wmiLrdY8QNmoHBTe7aBxV+sfZTGTdIyN0dBCxyrJpLlKTme9H2jyKkVo9weQC+c1ovwiZg
	ozGX8pKNecrRO0clUJYYzwRJsG1ENf6AXn19rDXbIVecWnOtiPgG6MI/MMnHMWoobN89iSBAaru9f
	n4KjYVDb2GppKlLTp+cs3do/8BepsRFSm2hOAVCVZRyFPAVvtfzSzhtouWuutCEfGaTHcXc3xrXy4
	aYK3Ayya9PJM2AO0GOhDJUqKR/xZbQUQOUGxC4IdwLxUzF/BZrlfB2+PENQ/BzZqQLkt3AG66f274
	hjB6ybCD/FBG9QmM3BKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGR-00000002Nlc-2JuO;
	Fri, 22 Aug 2025 11:48:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upM5F-00000001nmf-2Wit
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 07:21:11 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6uR5M011420
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 07:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ImGhpDuxFOdCpj6FL5zsXgN4VeAkZyyrarFsrBei76o=; b=KvgaS3E/Lt9MS3O6
	7hWVXSobYXDo6BGn3yNaVXBPV9vzEUghgSp9HItmLap8Ntt43iPvglHC/5Q1kCXt
	7DCZfk7aIGfR14asnQzHXZWj94DQ3wIyIAKd1DfQq/KitAy+RjY3QYQLZoUOCGtT
	l3Uueb5hRaBmapCAD82Tpk/2S8+VFQhD2NI0yFGGa5kyCCi0dRf4sFNe/lT1icAn
	oCbiEOcqiQXCMQUG76HzjXGiqicHkQ0Z1/8qiNfdflzsRFXnlacqt4G+bskQ9H1m
	iSAycp3cXTysWszTi8vYjB0wKb27Vfk4de0oDc+356d2ilV1aHYwAcKrZgybUAbG
	EgwhzQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8e150-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 07:21:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2462ea2ed58so1768815ad.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 00:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755847267; x=1756452067;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ImGhpDuxFOdCpj6FL5zsXgN4VeAkZyyrarFsrBei76o=;
        b=urKfur7DCTMeh4H9htL2G+xCnrN0DTnuyVA9jtFpIr6zkiakMWi/huRbP5CDYJTOEb
         +gwfkHMSrkBfaM+PSW/7+dIjwIjJZWS8qRnJrnZTmiLHvolUaS30K12fZP6kdaJ2GlMk
         y4Ul6LT1OHzZXSLCOwCD8loPnf2JKGh71EiakEtjWQWrAdtibKn9w6LgZSrTnnOXWLxt
         RsnaDZLU8ZgLNX3zS9X8BiL/lhfgKpVPI6ZdC5HIeEJFm4g3JbLKuhxDyzDLfLuN7ivS
         aA1jXXLVQtZYH6iYZOwFZ0470hwSGAPxmw/M2BNbmR0tiaaYl2muCMza8mmcat+Iyz75
         qaKw==
X-Forwarded-Encrypted: i=1; AJvYcCVtgk8lVTbKqEGrZWlrMvRsJlsjlyCDLyCdVZv84tNWRJrSq/J8rWjpnP4upUHpHWmHF4B5nZMb0oo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwB1jCjznefbBHLIFQKU1j0rJuZIRKlDztdNcO58IblLWGlE371
	RxDW4I69y+UFowXIQncsulofMEjV0sM6S+2xbPbE7lhfI3gcFsuH+gOeBN63t+220zzJxLQ2qps
	smGRcX+VgUc7Rh5ApdVCiPH/fasl8hTsX+j6ioBg12fIZEIzaRKxVF0xAdE2tDpYvGOrJ
X-Gm-Gg: ASbGncucj76aZ8trGRbW+7yZKjQZgh/IxqiQWM6sNF+oEw3HajiRSe1RjyZO9ktmhXm
	UCFFK1ePKf1hYpR8wvgH7YQApMup4As3pmsuHZyxtw27tJQ9NuostbwCNPlcUYNt2+Oc9nelhy2
	6LqAZCMSMrYV/u+06OPofM57MaHzJXV7pmnd+xu2+zA9S3Eb/8s8TCLrl2M1GyTltCNJ5Uj0W7K
	f9jOE6nvoiYYYV8vyBM+nMBt0RPnfwEX0iDJK73L66fVtoZH1tYn3DusM1HT6JvItA+1emtUWMS
	vo+Ow+lNPC/WeoMEqvBTHC+oBOhMaR29tsmD/Oj8RT5SZEViWKvAWREcLGr7A6s5/2dK7OREpLc
	UBu4qL1uzj4azfk2I/0rIEIEk5W/Qew==
X-Received: by 2002:a17:902:cec3:b0:246:4df9:f63b with SMTP id d9443c01a7336-2464dfa1134mr2105615ad.8.1755847266991;
        Fri, 22 Aug 2025 00:21:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSWdZW0zZ6t/zVxusBsVUXuEAw3kOdKb6PHoaWrR1AfwMdSJKy4A+BerChkkW0gKyQEhOJRA==
X-Received: by 2002:a17:902:cec3:b0:246:4df9:f63b with SMTP id d9443c01a7336-2464dfa1134mr2105365ad.8.1755847266468;
        Fri, 22 Aug 2025 00:21:06 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed53e94esm74784355ad.162.2025.08.22.00.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 00:21:06 -0700 (PDT)
Message-ID: <1a2c38c6-0d49-4c47-9cc2-014b71e1e81e@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 15:20:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/14] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-6-a43bd25ec39c@oss.qualcomm.com>
 <bx3cumx7ej7taour6zhqufrzjdxuhvlx23ga3vmvokrlekayem@e5rfjbcwle2r>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <bx3cumx7ej7taour6zhqufrzjdxuhvlx23ga3vmvokrlekayem@e5rfjbcwle2r>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfX8mgbYCKsNVV8
 O7LGN2ug53QY5lfGb3aILj+1395hq+/XG96F4ynqY17te1LbneK2n99I1eDCQYg0K5ZO6WxGTIG
 tROkYFOh0uR8i+1GQ7lfUJidBCUxy1Oe0Q9Rba41TE3EYly0pTviFQyNFc/KIJMTDKhHyO8IXH3
 ghhjE9aB6fi5+7kaNdYMWwBVbhN22H/2vXDWxP6WV0hayvwtgqrx2HNz9sFvlJ9YFkS4QT5hi14
 KPWuGqIisGLVlbRrSnmEuJozH8gd5L8PVADd6Z5aVx3YPegWNlZU5oLvDw4IQseJ2zhcE9zT12V
 Pf4TThMWnMA0/LrQ48Ypjlc9PSMv70PZHA9YnyX54gPK+0UNmzMqBXorlukwAQpw/FrIgX6dSS9
 xvlWitWd1vfFzVtk4JJgaNbxVkMLAA==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a81a64 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=sVqeHFWDZcW2eLg-V-AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: _EDm6IDRS2DhUtZ-sqWOEtSLuiXjvI0F
X-Proofpoint-ORIG-GUID: _EDm6IDRS2DhUtZ-sqWOEtSLuiXjvI0F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_002109_759611_D5272D9C 
X-CRM114-Status: GOOD (  16.30  )
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

Ck9uIDgvMjAvMjAyNSA3OjI1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjQ4UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBJ
bnRyb2R1Y2UgUUNTNjE1IGhhcmR3YXJlLXNwZWNpZmljIGNvbmZpZ3VyYXRpb24gZm9yIERQIFBI
WSBtb2RlLAo+PiBpbmNsdWRpbmcgcmVnaXN0ZXIgb2Zmc2V0cywgaW5pdGlhbGl6YXRpb24gdGFi
bGVzLCB2b2x0YWdlIHN3aW5nCj4+IGFuZCBwcmUtZW1waGFzaXMgc2V0dGluZ3MuCj4gVGhpcyB3
aWxsIHRyaWdnZXIgdW51c2VkIHdhcm5pbmdzLiBQbGVhc2Ugc3F1YXNoIHRoaXMgaW50byB0aGUg
cGF0Y2gKPiBhZGRpbmcgY29tcGF0IHN0cmluZyB0byB0aGUgZHJpdmVyLgoKCk9rLAoKV2lsbCBz
cXVhc2ggdGhlIGNvbXBhdGlibGUgc3RyaW5nIGFkZGl0aW9uIGludG8gdGhpcyBwYXRjaCzCoAoK
YXMgdGhlIGZvbGxvd2luZyBjYWxsYmFjayBmdW5jdGlvbnMgd291bGQgYWxzbyB0cmlnZ2VyIHNp
bWlsYXIgdW51c2VkIHdhcm5pbmdzLgoKCj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4
aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC11c2JjLmMgfCAxMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEzOSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYwo+PiBpbmRleCA2YjBlODZlYzQzZGVkM2Q4
NTBmNjhmMjQ4YTc0YzM5Zjc0ZWNiNWJiLi42MTEyOGQ2MDYyMzgzMjFkMWI1NzM2NTViM2I5ODcy
MjZhYTJkNTk0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtdXNiYy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2Jj
LmMKPj4gQEAgLTI4NCw2ICsyODQsODYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2lu
aXRfdGJsIHFjbTIyOTBfdXNiM19wY3NfdGJsW10gPSB7Cj4+ICAJUU1QX1BIWV9JTklUX0NGRyhR
UEhZX1YzX1BDU19SWF9TSUdERVRfTFZMLCAweDg4KSwKPj4gIH07Cj4+ICAKPj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBxY3M2MTVfcW1wX2RwX3NlcmRlc190YmxbXSA9
IHsKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX1NWU19NT0RFX0NMS19TRUwsIDB4
MDEpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fU1lTQ0xLX0VOX1NFTCwgMHgz
NyksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9DTEtfU0VMRUNULCAweDAwKSwK
Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX1NZU19DTEtfQ1RSTCwgMHgwNiksCj4+
ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9CSUFTX0VOX0NMS0JVRkxSX0VOLCAweDNm
KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0NMS19FTkFCTEUxLCAweDBlKSwK
Pj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0JHX0NUUkwsIDB4MGYpLAo+PiArCVFN
UF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fU1lTQ0xLX0JVRl9FTkFCTEUsIDB4MDYpLAo+PiAr
CVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fQ0xLX1NFTEVDVCwgMHgzMCksCj4+ICsJUU1Q
X1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9QTExfSVZDTywgMHgwZiksCj4+ICsJUU1QX1BIWV9J
TklUX0NGRyhRU0VSREVTX0NPTV9QTExfQ0NUUkxfTU9ERTAsIDB4MjgpLAo+PiArCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19DT01fUExMX1JDVFJMX01PREUwLCAweDE2KSwKPj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0NQX0NUUkxfTU9ERTAsIDB4MGIpLAo+PiArCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19DT01fSU5URUdMT09QX0dBSU4wX01PREUwLCAweDQwKSwKPj4gKwlR
TVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0lOVEVHTE9PUF9HQUlOMV9NT0RFMCwgMHgwMCks
Cj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9WQ09fVFVORV9NQVAsIDB4MDApLAo+
PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fQkdfVElNRVIsIDB4MDgpLAo+PiArCVFN
UF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fQ09SRUNMS19ESVYsIDB4MDUpLAo+PiArCVFNUF9Q
SFlfSU5JVF9DRkcoUVNFUkRFU19DT01fVkNPX1RVTkVfQ1RSTCwgMHgwMCksCj4+ICsJUU1QX1BI
WV9JTklUX0NGRyhRU0VSREVTX0NPTV9WQ09fVFVORTFfTU9ERTAsIDB4MDApLAo+PiArCVFNUF9Q
SFlfSU5JVF9DRkcoUVNFUkRFU19DT01fVkNPX1RVTkUyX01PREUwLCAweDAwKSwKPj4gKwlRTVBf
UEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX1ZDT19UVU5FX0NUUkwsIDB4MDApLAo+PiArCVFNUF9Q
SFlfSU5JVF9DRkcoUVNFUkRFU19DT01fQ09SRV9DTEtfRU4sIDB4MGYpLAo+PiArCVFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19DT01fQ01OX0NPTkZJRywgMHgwMiksCj4+ICt9Owo+PiArCj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgcWNzNjE1X3FtcF9kcF9zZXJkZXNf
dGJsX3JicltdID0gewo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fSFNDTEtfU0VM
LCAweDJjKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0RFQ19TVEFSVF9NT0RF
MCwgMHg2OSksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9ESVZfRlJBQ19TVEFS
VDFfTU9ERTAsIDB4MDApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fRElWX0ZS
QUNfU1RBUlQyX01PREUwLCAweDgwKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09N
X0RJVl9GUkFDX1NUQVJUM19NT0RFMCwgMHgwNyksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VS
REVTX0NPTV9MT0NLX0NNUDFfTU9ERTAsIDB4YmYpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNF
UkRFU19DT01fTE9DS19DTVAyX01PREUwLCAweDIxKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFT
RVJERVNfQ09NX0xPQ0tfQ01QM19NT0RFMCwgMHgwMCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhR
U0VSREVTX1YzX1RYX0xBTkVfTU9ERV8xLCAweGM2KSwKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBxY3M2MTVfcW1wX2RwX3NlcmRlc190YmxfaGJy
W10gPSB7Cj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9IU0NMS19TRUwsIDB4MjQp
LAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fREVDX1NUQVJUX01PREUwLCAweDY5
KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0RJVl9GUkFDX1NUQVJUMV9NT0RF
MCwgMHgwMCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9ESVZfRlJBQ19TVEFS
VDJfTU9ERTAsIDB4ODApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fRElWX0ZS
QUNfU1RBUlQzX01PREUwLCAweDA3KSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09N
X0xPQ0tfQ01QMV9NT0RFMCwgMHgzZiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NP
TV9MT0NLX0NNUDJfTU9ERTAsIDB4MzgpLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19D
T01fTE9DS19DTVAzX01PREUwLCAweDAwKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNf
VjNfVFhfTEFORV9NT0RFXzEsIDB4YzQpLAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0
cnVjdCBxbXBfcGh5X2luaXRfdGJsIHFjczYxNV9xbXBfZHBfc2VyZGVzX3RibF9oYnIyW10gPSB7
Cj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9IU0NMS19TRUwsIDB4MjApLAo+PiAr
CVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fREVDX1NUQVJUX01PREUwLCAweDhjKSwKPj4g
KwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0RJVl9GUkFDX1NUQVJUMV9NT0RFMCwgMHgw
MCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9ESVZfRlJBQ19TVEFSVDJfTU9E
RTAsIDB4MDApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fRElWX0ZSQUNfU1RB
UlQzX01PREUwLCAweDBhKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfQ09NX0xPQ0tf
Q01QMV9NT0RFMCwgMHg3ZiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX0NPTV9MT0NL
X0NNUDJfTU9ERTAsIDB4NzApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19DT01fTE9D
S19DTVAzX01PREUwLCAweDAwKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjNfVFhf
TEFORV9NT0RFXzEsIDB4YzQpLAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBx
bXBfcGh5X2luaXRfdGJsIHFjczYxNV9xbXBfZHBfdHhfdGJsW10gPSB7Cj4+ICsJUU1QX1BIWV9J
TklUX0NGRyhRU0VSREVTX1YzX1RYX1RSQU5TQ0VJVkVSX0JJQVNfRU4sIDB4MWEpLAo+PiArCVFN
UF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WM19UWF9WTU9ERV9DVFJMMSwgMHg0MCksCj4+ICsJUU1Q
X1BIWV9JTklUX0NGRyhRU0VSREVTX1YzX1RYX1BSRV9TVEFMTF9MRE9fQk9PU1RfRU4sIDB4MzAp
LAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WM19UWF9JTlRFUkZBQ0VfU0VMRUNULCAw
eDNkKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjNfVFhfQ0xLQlVGX0VOQUJMRSwg
MHgwZiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1YzX1RYX1JFU0VUX1RTWU5DX0VO
LCAweDAzKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjNfVFhfVFJBTl9EUlZSX0VN
UF9FTiwgMHgwMyksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1YzX1RYX1BBUlJBVEVf
UkVDX0RFVEVDVF9JRExFX0VOLCAweDAwKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNf
VjNfVFhfVFhfSU5URVJGQUNFX01PREUsIDB4MDApLAo+PiArCVFNUF9QSFlfSU5JVF9DRkcoUVNF
UkRFU19WM19UWF9UWF9FTVBfUE9TVDFfTFZMLCAweDJiKSwKPj4gKwlRTVBfUEhZX0lOSVRfQ0ZH
KFFTRVJERVNfVjNfVFhfVFhfRFJWX0xWTCwgMHgyZiksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhR
U0VSREVTX1YzX1RYX1RYX0JBTkQsIDB4NCksCj4+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVT
X1YzX1RYX1JFU19DT0RFX0xBTkVfT0ZGU0VUX1RYLCAweDEyKSwKPj4gKwlRTVBfUEhZX0lOSVRf
Q0ZHKFFTRVJERVNfVjNfVFhfUkVTX0NPREVfTEFORV9PRkZTRVRfUlgsIDB4MTIpLAo+PiArfTsK
Pj4gKwo+PiAgZW51bSBxbXBfcGh5X3VzYmNfdHlwZSB7Cj4+ICAJUU1QX1BIWV9VU0JDX1VTQjNf
T05MWSwKPj4gIAlRTVBfUEhZX1VTQkNfVVNCM19EUCwKPj4gQEAgLTQ0OSw2ICs1MjksMzQgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfdXNiY19vZmZzZXRzIHFtcF91c2JjX29mZnNldHNfdjNf
cWNtMjI5MCA9IHsKPj4gIAkucngyCQk9IDB4ODAwLAo+PiAgfTsKPj4gIAo+PiArc3RhdGljIGNv
bnN0IHN0cnVjdCBxbXBfdXNiY19vZmZzZXRzIHFtcF91c2JjX3VzYjNkcF9vZmZzZXRzX3FjczYx
NSA9IHsKPj4gKwkuc2VyZGVzCQk9IDB4MCwKPj4gKwkucGNzCQk9IDB4YzAwLAo+PiArCS5wY3Nf
bWlzYwk9IDB4YTAwLAo+PiArCS50eAkJPSAweDIwMCwKPj4gKwkucngJCT0gMHg0MDAsCj4+ICsJ
LnR4MgkJPSAweDYwMCwKPj4gKwkucngyCQk9IDB4ODAwLAo+PiArCS5kcF9zZXJkZXMJPSAweDFj
MDAsCj4+ICsJLmRwX3R4YQkJPSAweDE0MDAsCj4+ICsJLmRwX3R4YgkJPSAweDE4MDAsCj4+ICsJ
LmRwX2RwX3BoeQk9IDB4MTAwMCwKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBjb25zdCB1OCBxbXBf
ZHBfcHJlX2VtcGhhc2lzX2hicjJfcmJyWzRdWzRdID0gewo+PiArCXsweDAwLCAweDBiLCAweDEy
LCAweGZmfSwKPj4gKwl7MHgwMCwgMHgwYSwgMHgxMiwgMHhmZn0sCj4+ICsJezB4MDAsIDB4MGMs
IDB4ZmYsIDB4ZmZ9LAo+PiArCXsweGZmLCAweGZmLCAweGZmLCAweGZmfQo+PiArfTsKPj4gKwo+
PiArc3RhdGljIGNvbnN0IHU4IHFtcF9kcF92b2x0YWdlX3N3aW5nX2hicjJfcmJyWzRdWzRdID0g
ewo+PiArCXsweDA3LCAweDBmLCAweDE0LCAweGZmfSwKPj4gKwl7MHgxMSwgMHgxZCwgMHgxZiwg
MHhmZn0sCj4+ICsJezB4MTgsIDB4MWYsIDB4ZmYsIDB4ZmZ9LAo+PiArCXsweGZmLCAweGZmLCAw
eGZmLCAweGZmfQo+PiArfTsKPj4gKwo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2Nm
ZyBtc204OTk4X3VzYjNwaHlfY2ZnID0gewo+PiAgCS5vZmZzZXRzCQk9ICZxbXBfdXNiY19vZmZz
ZXRzX3YzX3FjbTIyOTAsCj4+ICAJLnR5cGUJCQk9IFFNUF9QSFlfVVNCQ19VU0IzX09OTFksCj4+
IEBAIC01MDAsNiArNjA4LDM3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc2Rt
NjYwX3VzYjNwaHlfY2ZnID0gewo+PiAgCS5yZWdzCQkJPSBxbXBfdjNfdXNiM3BoeV9yZWdzX2xh
eW91dF9xY20yMjkwLAo+PiAgfTsKPj4gIAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5
X2NmZyBxY3M2MTVfdXNiM2RwX3BoeV9jZmcgPSB7Cj4+ICsJLm9mZnNldHMJCT0gJnFtcF91c2Jj
X3VzYjNkcF9vZmZzZXRzX3FjczYxNSwKPj4gKwkudHlwZQkJCT0gUU1QX1BIWV9VU0JDX1VTQjNf
RFAsCj4+ICsKPj4gKwkuc2VyZGVzX3RibAkJPSBxY20yMjkwX3VzYjNfc2VyZGVzX3RibCwKPj4g
Kwkuc2VyZGVzX3RibF9udW0JCT0gQVJSQVlfU0laRShxY20yMjkwX3VzYjNfc2VyZGVzX3RibCks
Cj4+ICsJLnR4X3RibAkJCT0gcWNtMjI5MF91c2IzX3R4X3RibCwKPj4gKwkudHhfdGJsX251bQkJ
PSBBUlJBWV9TSVpFKHFjbTIyOTBfdXNiM190eF90YmwpLAo+PiArCS5yeF90YmwJCQk9IHFjbTIy
OTBfdXNiM19yeF90YmwsCj4+ICsJLnJ4X3RibF9udW0JCT0gQVJSQVlfU0laRShxY20yMjkwX3Vz
YjNfcnhfdGJsKSwKPj4gKwkucGNzX3RibAkJPSBxY20yMjkwX3VzYjNfcGNzX3RibCwKPj4gKwku
cGNzX3RibF9udW0JCT0gQVJSQVlfU0laRShxY20yMjkwX3VzYjNfcGNzX3RibCksCj4+ICsKPj4g
KwkucmVncwkJCT0gcW1wX3YzX3VzYjNwaHlfcmVnc19sYXlvdXRfcWNtMjI5MCwKPj4gKwo+PiAr
CS5kcF9zZXJkZXNfdGJsCQk9IHFjczYxNV9xbXBfZHBfc2VyZGVzX3RibCwKPj4gKwkuZHBfc2Vy
ZGVzX3RibF9udW0JPSBBUlJBWV9TSVpFKHFjczYxNV9xbXBfZHBfc2VyZGVzX3RibCksCj4+ICsJ
LmRwX3R4X3RibAkJPSBxY3M2MTVfcW1wX2RwX3R4X3RibCwKPj4gKwkuZHBfdHhfdGJsX251bQkJ
PSBBUlJBWV9TSVpFKHFjczYxNV9xbXBfZHBfdHhfdGJsKSwKPj4gKwo+PiArCS5zZXJkZXNfdGJs
X3JicgkJPSBxY3M2MTVfcW1wX2RwX3NlcmRlc190YmxfcmJyLAo+PiArCS5zZXJkZXNfdGJsX3Ji
cl9udW0JPSBBUlJBWV9TSVpFKHFjczYxNV9xbXBfZHBfc2VyZGVzX3RibF9yYnIpLAo+PiArCS5z
ZXJkZXNfdGJsX2hicgkJPSBxY3M2MTVfcW1wX2RwX3NlcmRlc190YmxfaGJyLAo+PiArCS5zZXJk
ZXNfdGJsX2hicl9udW0JPSBBUlJBWV9TSVpFKHFjczYxNV9xbXBfZHBfc2VyZGVzX3RibF9oYnIp
LAo+PiArCS5zZXJkZXNfdGJsX2hicjIJPSBxY3M2MTVfcW1wX2RwX3NlcmRlc190YmxfaGJyMiwK
Pj4gKwkuc2VyZGVzX3RibF9oYnIyX251bQk9IEFSUkFZX1NJWkUocWNzNjE1X3FtcF9kcF9zZXJk
ZXNfdGJsX2hicjIpLAo+PiArCj4+ICsJLnN3aW5nX3RibAkJPSAmcW1wX2RwX3ZvbHRhZ2Vfc3dp
bmdfaGJyMl9yYnIsCj4+ICsJLnByZV9lbXBoYXNpc190YmwJPSAmcW1wX2RwX3ByZV9lbXBoYXNp
c19oYnIyX3JiciwKPj4gK307Cj4+ICsKPj4gIHN0YXRpYyBpbnQgcW1wX3VzYmNfY29tX2luaXQo
c3RydWN0IHBoeSAqcGh5KQo+PiAgewo+PiAgCXN0cnVjdCBxbXBfdXNiYyAqcW1wID0gcGh5X2dl
dF9kcnZkYXRhKHBoeSk7Cj4+Cj4+IC0tIAo+PiAyLjM0LjEKPj4KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
