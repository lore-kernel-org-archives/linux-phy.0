Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB471CD5BD5
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 13:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noOrDp0zrWTnH2S9vIcdRPv/UdlVAtOzfwPk3Pz08/A=; b=VPO8ciCIPfg0HT
	245IZ4dLaWvEiKxZ8kbke8rzdwwchH7e8Tl3pneT8q95NQ1Q12227Dswtb4uVRKKey43307d+t/L2
	EVj9AJ/Z7PFPJPAtUs2LmdQK92aB8FCcJIlKrtfFLGWEyjYtxqQ4jsgrpDvc8JUovm9xV6ikXLSh2
	ALWxrzwQU0nSV4UwiOCNUpSUxJaoBPDY3mbtFRB5B4C7U3euwUwZCQ52ULTfbramyLm3IuAXp0wqd
	FQSciChMxOYKP6irgTryIc4btIAeQKqlRNIn2aOK29Replu33Qpn2Uwc8tMhlcZ05E9M2jxwuGjdj
	8ultrDbGyDZWVJUgd+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEfo-00000004Equ-2AqJ;
	Wed, 27 May 2026 13:51:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSEfl-00000004EqA-202X
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 13:51:50 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64R8n72t1178516
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 13:51:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NquEXa+wXS0JZmWbAUizRlERWzjLifHKVTda41vYocQ=; b=XrGw6F0/2xToLL1h
	h3AZWF6ktGDptzqrljIuR1E6Q5QFZAhdyn3fyBVhlUA3vVUz+PQniHIR5ZrnYr0/
	Ns0T5uJAzrcpdtaWOBqMlsWyT1TDgme1cVjI8yqucZ2msNOpqnXAxzcBYv6HQuRC
	AKN0DkMxoxez4Pn0d+PUr/Ym3Vue5u7LYxKNmVAzLxL3/wr3xt0zt3P52HDf84ac
	9GQLSDXdk7zpmr4qrPhqNtWUYgU8hAOG/ga6BH5f82+/XgO6wOwi2fSTqKuFSUgd
	FqLxKbwwBVQfg9+1MXN7ItiDZZFUltQYtysCq24EnpY80WEr842h7tpV4Wvuq80N
	29JHPw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edndnjrk1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 13:51:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bd6cc53fd6so121263305ad.3
        for <linux-phy@lists.infradead.org>; Wed, 27 May 2026 06:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779889907; x=1780494707; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NquEXa+wXS0JZmWbAUizRlERWzjLifHKVTda41vYocQ=;
        b=LY0Rfmyd3//4/rQo7ej3qAbFCHuuBRxsO2Vkf38sGSukfpGcMjcV3orzVMtzVJ6WkP
         jqHg5xKV6SbYLB47p7ltExy/jeVS+hz9flxcyuxLrnPyjg99cnLSPqnyt/B17cgFdiSO
         +jXo8yYakWcLhiIsBHqUoidhXkoDozv/zOISQN/ePVBFdGKU4mZENNZInDUpJlHaN1HK
         Pq+uAp2p1rXvm43t9LqXnzZOLf8YFzvu3BptB9U5y8kPHgJkPqsPxlJYop9mvv0OEr5H
         ISicVg/qTSsyiJ08H9LcWWELrlgqiMuTQlt5X88wJPlJPDBqow7O/MVL7UCkVLrFW1dr
         3/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779889907; x=1780494707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NquEXa+wXS0JZmWbAUizRlERWzjLifHKVTda41vYocQ=;
        b=dg7uw6zwUKhn39aV4+govE35rfTWlgCUCg1OM1+uD7k53CqbS4p+vW3A88lUOpW0UB
         xGv8Ey3EK9dCAv/bXT1dcy51jdwT00lEbGpwmKIkqlBP4w5MrYAkCWg7MdY5eDw+deTo
         9JqUALDdJxui8tK22myvJdXt5NvkJXC0NAezyQGQjqCjIbdlvurNJ/m6sWAXuDn/CLuh
         iQ/7a4XZ9fVX3rcaXY7ABWzprjr8tyGILdH20tzqQZ1iqgJVWRz/klyojlAk1vLPAZiM
         4QXhhdWjpRox1YC3+nx2kouHGVRJtRVjP4Es1/dtmFSCOXpw6cJbTtp59AirLjUOt6IJ
         7FpA==
X-Forwarded-Encrypted: i=1; AFNElJ8kZw//FPeT2TW97syBcUH46ASU4/AXkm3kaTegYMOfuxK3FQQ5NqkUhkldB5Tn8lPq51ezCJs14qw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWcaa/ne23D/V054xDBdLQzZwtmmxBdlEwmRLzChMPyTv1eFyM
	AhbxjZv8AD+ahYkowwleQP55nmJsjQ0NzuH9oMbOcKybIBDvjOMSl6DKA1kRiPPJZx9P+J5IOOm
	BeZ4clkurhzW4fLt2u1yldlQ95DqC719AwOwthtQcDlJmvpqI6DCZkdWXnt5wgdkZGT06
X-Gm-Gg: Acq92OF1u+/zcGZqoE/1Of0XVmrodLRIL1IsHozCBJgcMszN+i0GJbPO4WqDipGRuYF
	w9ICCnfv1HcPT6i44CCmDeS3oADrUiAUZ8/WoQxe30/BdTRzh/TDnzjW7u1dhIQD29YgNuKBWi0
	arJnX+vjOcSRmaMWlgXNCH58ukIsUkCjMciYTUJc5ayr4IY3b1Ao+vjNc39QupN2kgGQN41X6l9
	Sh7wOQcA6PkVku3oXXAyUBAD3IEHf/+xiPN1I6Z9DDEXpJDrRIVwq39jj1Sk95FDrWV/K0EyK9X
	rROtap4dzey4I8AVhEgvrqfRDMazzJWFQsS4v/GRb9QJ170rMqKAMO/VMHAPE5HpGNL7GEc0ZoX
	ydsu0KC637jh6gjJZxNuUtbXkgEjilmkguhkeF88jnPthI0jqPAXWyF/BHbQ=
X-Received: by 2002:a17:903:354b:b0:2bc:db91:f5a7 with SMTP id d9443c01a7336-2beb0735023mr265126475ad.11.1779889906584;
        Wed, 27 May 2026 06:51:46 -0700 (PDT)
X-Received: by 2002:a17:903:354b:b0:2bc:db91:f5a7 with SMTP id d9443c01a7336-2beb0735023mr265125955ad.11.1779889906099;
        Wed, 27 May 2026 06:51:46 -0700 (PDT)
Received: from [10.219.57.29] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm205407535ad.36.2026.05.27.06.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 06:51:45 -0700 (PDT)
Message-ID: <68027ef8-6182-479e-ade4-9c19b048b337@oss.qualcomm.com>
Date: Wed, 27 May 2026 19:21:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] arm64: dts: qcom: Add initial device tree support
 for Shikra
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <ad5e2d91-6166-4fb6-a9da-1464b161da24@oss.qualcomm.com>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <ad5e2d91-6166-4fb6-a9da-1464b161da24@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=PpSjqQM3 c=1 sm=1 tr=0 ts=6a16f6f3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ov8QOwxTnn4yD7v_06kA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: B6-kq6pRUv8TRa1_TG9cJZSC_naGxOw7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI3MDEzNiBTYWx0ZWRfX6U4qHIExYW4L
 tMHeUZsaze5P6UhyO5EwvDHFrAuyv2HaLMiNRz0wf6bju33I0vSOMLxfjTOQus7oVUNhkeZCq2Y
 Bmsz8BgUQi3+ciV140XWUC8gsYaOpBDsxXk+PFquedclIJAK1DNM7Jw+KZ10syovg4tenz6zY+E
 9n3xZlyvmYoxmsLBhtlbPspNg6hj8xN4KMCt9TVMsTeYeSN0p3M+AX5iB1AOd0AiKzbv7v2GaTs
 Nyis4zONvm6LmTIGb0MAuMi3pZM2tfYUrScDKAtuyEangTxzTuKXY40F+l0aeUWMEICI/hJUAX/
 iWASgIU6rCnQijvKLI0IYcwlRaStQaeX1uOZ/lBaKDOagjL7TsZ1LP0nEYu9u6LbITW+1vODLIb
 ySsj4ED7gwelu6HcDjabuZRSsm1RRoDVJKQlcTuSNotSv34Rj1MWhic4KRnDN2nR4aUiwkFBNb1
 98Jdu1wY/2yCo5p755w==
X-Proofpoint-GUID: B6-kq6pRUv8TRa1_TG9cJZSC_naGxOw7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-27_02,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 clxscore=1015
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605270136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_065149_638381_C5676D06 
X-CRM114-Status: GOOD (  14.55  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNS8yNS8yMDI2IDY6NDQgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gT24gNS8yMi8yNiA4
OjAyIFBNLCBLb21hbCBCYWphaiB3cm90ZToKPj4gQWRkIGluaXRpYWwgZGV2aWNlIHRyZWUgc3Vw
cG9ydCBmb3IgdGhlIFF1YWxjb21tIFNoaWtyYSBTb0MuCj4+IFNoaWtyYSBzaGlwcyBpbiBhIFNv
TSBmb3JtIGZhY3RvcjsgdGhpcyBzZXJpZXMgY292ZXJzIHRoZSBDUTIzOTBNLAo+PiBDUTIzOTBT
IGFuZCBJUTIzOTBTIFNvTSB2YXJpYW50cyBhbmQgdGhlaXIgRVZLIGJvYXJkcy4KPj4gVGhlIHNl
cmllcyBhZGRzOgo+PiAtIGR0LWJpbmRpbmdzIGZvciB0aGUgU2hpa3JhIFNvQywgQ1EyMzkwTS9D
UTIzOTBTL0lRMjM5MFMgRVZLIGJvYXJkcwo+PiAtIFNvQyBiYXNlIERUU0kKPj4gLSBDUTIzOTBN
IFNvTSBEVFNJIHdpdGggUE00MTI1IGFuZCBQTTgwMDUgUE1JQyByZWd1bGF0b3IgZGVmaW5pdGlv
bnMKPj4gLSBJUTIzOTBTIFNvTSBEVFNJIHdpdGggUE04MTUwIFBNSUMgcmVndWxhdG9yIGRlZmlu
aXRpb25zCj4+IC0gRVZLIERUUyBmaWxlcyBlbmFibGluZyBVQVJUIGFuZCBlTU1DIG9uIHRoZSBj
YXJyaWVyIGJvYXJkCj4+Cj4+IE5vdGU6IFVTQiBzdXBwb3J0IGlzIGludGVudGlvbmFsbHkgZHJv
cHBlZCBmcm9tIHRoaXMgc2VyaWVzLiBJdCB3aWxsIGJlCj4+IHNlbnQgc2VwYXJhdGVseSBvbmNl
IHRoZSBVU0IgZHJpdmVyIGNoYW5nZXMgZm9yIFNoaWtyYSBhcmUgY29uY2x1ZGVkLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBLb21hbCBCYWphaiA8a29tYWwuYmFqYWpAb3NzLnF1YWxjb21tLmNvbT4K
Pj4KPj4gLS0tCj4+IENoYW5nZXMgaW4gdjM6Cj4+IC0gRHJvcCBVU0Igbm9kZXMgZnJvbSB0aGlz
IHNlcmllczsgd2lsbCBiZSBzZW50IHNlcGFyYXRlbHkgcGVuZGluZwo+PiAgICBjb25jbHVzaW9u
IG9mIFVTQiBkcml2ZXIgY2hhbmdlcyBmb3IgU2hpa3JhCj4+IC0gRml4IENQVTMgcmVnIGFkZHJl
c3MgKDB4MzAwIC0+IDB4MTAwMDApCj4gVGhpcyBwYXJ0IHNlZW1zIHRvIG5vdCBoYXZlIGdvbmUg
dGhyb3VnaCAoaGF2ZSB5b3UgdmVyaWZpZWQgaXQgYXQgcnVudGltZSwKPiBlLmcuIHZpYSByZWFk
aW5nIHRoZSBNUElEUl9FTDEgcmVnaXN0ZXI/CgpUaGFua3MgZm9yIHBvaW50aW5nIG91dCB0aGlz
LCBJIG1pc3NlZCB0byB1cGRhdGUgdGhlIGNvdmVyIGxldHRlciwgdGhlIAp2YWx1ZSBpcyBzdGls
bCB1bmNoYW5nZWQuCihDb3JlM8KgIGJvb3R1cCBmYWlsZWQgd2l0aCByZWcgYWRkcmVzcyAweDEw
MDAwKSBbMV0uCgo+Cj4+IGFuZCBtZW1vcnkgYmFzZSAoMHhhMDAwMDAwMCAtPiAweDgwMDAwMDAw
KSAoc2FzaGlrby1ib3QpPiAtIEZpeCBwb3dlci1kb21haW4gbWFjcm86IFFDTTIyOTBfVkREQ1gg
LT4gUlBNUERfVkREQ1ggZm9yIHNkaGMgKHNhc2hpa28tYm90KQo+PiAtIEZpeCBNUE0gaW50ZXJy
dXB0IG51bWJlciBmb3Igc3NfcGh5X2lycSAoOCAtPiA5KSAoc2FzaGlrby1ib3QpCj4gSG0/IEkg
ZG9uJ3Qgc2VlIGEgOCBvciBhIDkgaW4gZWl0aGVyIHRoaXMgb3IgcHJldmlvdXMgcmV2aXNpb25z
CgpUaGlzIGlzIGEgbWlzcyBmcm9tIG15IHNpZGUgd2hpbGUgdXBkYXRpbmcgdGhlIGNvdmVyLsKg
IEl0J3MgaW50ZXJydXB0IApjb250cm9sbGVyJ3MgaW50ZXJydXB0IHZlY3RvcsKgIGluc3RlYWQg
b2YgTVBNIGludGVycnVwdCB2ZWN0b3JbMV0uCldpbGwgcmV2aWV3IGFuZCBmaXggYWxsIHRoZSBj
b3ZlciBjb250ZW50cyBpbiBuZXh0IHJldmlzaW9uLgoKWzFdOiAKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsL2FmODBjY2YzLWIyNmItNDhmNy1iYTk0LTA4MzBjMDczMGE5NEBvc3MucXVhbGNv
bW0uY29tLwoKVGhhbmtzCktvbWFsCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
