Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDF0C71155
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwPyUAeI6RzLErM0m2x9WXZhc9AyYJIfXO24meQ/2uw=; b=cA+/k3i8/ds3Sf
	uJq4pKZFI2gQLWD1NXU5gmg7/Xayh7rGNRFWFr1/++9+F2uImVjcSf5CNWGcRigL14NQ9CvOXKu3f
	CpGT57oU0n5Pw507EvNCxxJfMY2yrVQpYEab6RSvQwyk95sN2Cd7XUVeMggB72pdus8vvRGQw+F9C
	V0qv/FySDsWV/7hMQCSeNykbNrnUBFPcGUFdiof3BnZhZ09zXFhgDeCFn6T1ejg9eL7t1OiUoGo8l
	PRV2qxlanepSihlVjcYjfidfH9OHPAorNzEV5cUFLN4FoyDEo0SglZrjPm8kgT9c+zbB1rbKq7k7C
	HvDGNXfqKM0KC+f7lG3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8aN-00000004Iuf-1MnB;
	Mon, 16 Jun 2025 12:05:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7NB-000000047Fv-2h3h
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 10:47:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8TWXl025998;
	Mon, 16 Jun 2025 10:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pVoXjpsfwQSE3a+lpBhScYzkZsvWjpI8XcyTjY56B+E=; b=H1IoBz+psq6931Z4
	7A7BUtUW4aKB9eSM49lm0B4gNKGe2Yd64Gbuus2kKe/ZnmcOgK5YoTFa/nbM3JSI
	cIHkctRi7Zdo5ak6orwQE1rKv47O7lNPY3maz3jIDQ8MAJNsE+7W3/ADtBRTe1Y+
	CFoxa9LuH3NDf0ISOscsEUMQoMd9g54sZFIDAg8EKHikHqnUHk0z0YZMnVTNJYlP
	ENNpyyM1wJ48EcfzSU/bdvX7LAO/0k7mknFi6EeRjkpPXNU9EkbnaGq+0HDx/ACV
	+77y2DevPNV9+yjoT5m4f1i08VfaZcktBaT9eCU39tVi2/Wzc6tnke1IGSoWX5sS
	zRNKYA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h9463a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Jun 2025 10:47:21 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 55GAlJgl016618
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Jun 2025 10:47:19 GMT
Received: from [10.253.79.108] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 16 Jun
 2025 03:47:13 -0700
Message-ID: <9ea68c8b-59ed-48a5-9289-861ae6077fcf@quicinc.com>
Date: Mon, 16 Jun 2025 18:47:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <jingoohan1@gmail.com>, <mani@kernel.org>,
        <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
        <bhelgaas@google.com>, <johan+linaro@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <manivannan.sadhasivam@linaro.org>, <neil.armstrong@linaro.org>,
        <abel.vesa@linaro.org>, <kw@linux.com>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <qiang.yu@oss.qualcomm.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
 <c24314dd-229f-4e26-befb-1491a5ca4037@oss.qualcomm.com>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <c24314dd-229f-4e26-befb-1491a5ca4037@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 8LJfrerG8c1opMcQiaovC795OGelrsaa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA2NyBTYWx0ZWRfXxBBRb/eK/o5Q
 HqQ0DNtooDndzlhXWc0gkjtz87y2loGbHchaoqD1d52G5DihuvtMY7fajacifmV4krb+NvqNSYs
 IMRk+fCQrDdKbxlpF+hGt6LALY02QJHmPv8YKQB2G+JIIBVsm0Gr5dSBEYg1bymxfWR1rkpRBiC
 P2K7EEvVxmW28QIh/cAZNW2e7a6iIiXTzThViLtBueESwUi1ogcn6Fsy3YHUal1czx/2480jNIw
 L2JjVb7ziromU1vz+O3sFHu//NPNcGLfPX4d3ym5OMKIqwkY2jTfZEob4OOpRZPlG8yhdK5Pnhv
 P9UXluBFeZqd5vAI6yaBV8Xi0aKfwxxX+WVoS0czhOhRR7S/UD0abNk9aBuT2iEXUzoa5ITN45b
 3R8vUwl/e1WqmCXOY5KfHuI4XhnCJ87ipZvTc6A1lCFvFgHSVKP1qDa837BGSXdj98ZQZJeA
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=684ff639 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=Ci0Lskn0Otf-CQ4wiN4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8LJfrerG8c1opMcQiaovC795OGelrsaa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_04,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506160067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_034729_814269_51395CFF 
X-CRM114-Status: GOOD (  16.98  )
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

Ck9uIDYvMTEvMjAyNSAxMTozMSBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA2LzExLzI1
IDEyOjAzIFBNLCBaaXl1ZSBaaGFuZyB3cm90ZToKPj4gQWRkaW5nIGxhbmUgZXF1YWxpemF0aW9u
IHNldHRpbmcgZm9yIDguMCBHVC9zIHRvIGVuaGFuY2UgbGluayBzdGFiaWxpdHkKPj4gYW5kIGZp
eCBBRVIgY29ycmVjdGFibGUgZXJyb3JzIHJlcG9ydGVkIG9uIHNvbWUgcGxhdGZvcm1zIChlZy4g
U0E4Nzc1UCkuCj4+Cj4+IDguMCBHVC9zIGFuZCAxNi4wR1QvcyByZXF1aXJlIHRoZSBzYW1lIGVx
dWFsaXphdGlvbiBzZXR0aW5nLiBUaGlzIHNldHRpbmcKPj4gaXMgcHJvZ3JhbW1lZCBpbnRvIGEg
Z3JvdXAgb2Ygc2hhZG93IHJlZ2lzdGVycywgd2hpY2ggY2FuIGJlIHN3aXRjaGVkIHRvCj4+IGNv
bmZpZ3VyZSBlcXVhbGl6YXRpb24gZm9yIGRpZmZlcmVudCBHRU4gc3BlZWRzIGJ5IHdyaXRpbmcg
MDBiLCAwMWIKPj4gdG8gYFJBVEVfU0hBRE9XX1NFTGAuCj4+Cj4+IEhlbmNlIHByb2dyYW0gZXF1
YWxpemF0aW9uIHJlZ2lzdGVycyBpbiBhIGxvb3AgdXNpbmcgbGluayBzcGVlZCBhcyBpbmRleCwK
Pj4gc28gdGhhdCBlcXVhbGl6YXRpb24gc2V0dGluZyBjYW4gYmUgcHJvZ3JhbW1lZCBmb3IgYm90
aCA4LjAgR1QvcyBhbmQKPj4gMTYuMCBHVC9zLgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IFFpYW5n
IFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZ
dSA8cWlhbmcueXVAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhh
bmcgPHF1aWNfeml5dXpoYW5AcXVpY2luYy5jb20+Cj4+IC0tLQo+IFsuLi5dCj4KPj4gLXZvaWQg
cWNvbV9wY2llX2NvbW1vbl9zZXRfMTZndF9lcXVhbGl6YXRpb24oc3RydWN0IGR3X3BjaWUgKnBj
aSkKPj4gK3ZvaWQgcWNvbV9wY2llX2NvbW1vbl9zZXRfZXF1YWxpemF0aW9uKHN0cnVjdCBkd19w
Y2llICpwY2kpCj4+ICAgewo+PiAgIAl1MzIgcmVnOwo+PiArCXUxNiBzcGVlZCwgbWF4X3NwZWVk
ID0gUENJRV9TUEVFRF8xNl8wR1Q7Cj4+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7
Cj4+ICAgCj4+ICAgCS8qCj4+ICAgCSAqIEdFTjNfUkVMQVRFRF9PRkYgcmVnaXN0ZXIgaXMgcmVw
dXJwb3NlZCB0byBhcHBseSBlcXVhbGl6YXRpb24KPj4gQEAgLTE4LDMzICsyMCw0MyBAQCB2b2lk
IHFjb21fcGNpZV9jb21tb25fc2V0XzE2Z3RfZXF1YWxpemF0aW9uKHN0cnVjdCBkd19wY2llICpw
Y2kpCj4+ICAgCSAqIEdFTjNfRVFfKi4gVGhlIFJBVEVfU0hBRE9XX1NFTCBiaXQgZmllbGQgb2Yg
R0VOM19SRUxBVEVEX09GRgo+PiAgIAkgKiBkZXRlcm1pbmVzIHRoZSBkYXRhIHJhdGUgZm9yIHdo
aWNoIHRoZXNlIGVxdWFsaXphdGlvbiBzZXR0aW5ncyBhcmUKPj4gICAJICogYXBwbGllZC4KPj4g
KwkgKgo+PiArCSAqIFRPRE86Cj4+ICsJICogRVEgc2V0dGluZ3MgbmVlZCB0byBiZSBhZGRlZCBm
b3IgMzIuMCBUL3MgaW4gZnV0dXJlCj4+ICAgCSAqLwo+PiAtCXJlZyA9IGR3X3BjaWVfcmVhZGxf
ZGJpKHBjaSwgR0VOM19SRUxBVEVEX09GRik7Cj4+IC0JcmVnICY9IH5HRU4zX1JFTEFURURfT0ZG
X0dFTjNfWlJYRENfTk9OQ09NUEw7Cj4+IC0JcmVnICY9IH5HRU4zX1JFTEFURURfT0ZGX1JBVEVf
U0hBRE9XX1NFTF9NQVNLOwo+PiAtCXJlZyB8PSBGSUVMRF9QUkVQKEdFTjNfUkVMQVRFRF9PRkZf
UkFURV9TSEFET1dfU0VMX01BU0ssCj4+IC0JCQkgIEdFTjNfUkVMQVRFRF9PRkZfUkFURV9TSEFE
T1dfU0VMXzE2XzBHVCk7Cj4+IC0JZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwgR0VOM19SRUxBVEVE
X09GRiwgcmVnKTsKPj4gKwlpZiAocGNpZV9saW5rX3NwZWVkW3BjaS0+bWF4X2xpbmtfc3BlZWRd
IDwgUENJRV9TUEVFRF8zMl8wR1QpCj4+ICsJCW1heF9zcGVlZCA9IHBjaWVfbGlua19zcGVlZFtw
Y2ktPm1heF9saW5rX3NwZWVkXTsKPj4gKwllbHNlCj4+ICsJCWRldl93YXJuKGRldiwgIlRoZSB0
YXJnZXQgc3VwcG9ydHMgMzIuMCBHVC9zLCBidXQgdGhlIEVRIHNldHRpbmcgZm9yIDMyLjAgR1Qv
cyBpcyBub3QgY29uZmlndXJlZC5cbiIpOwo+PiAgIAo+PiAtCXJlZyA9IGR3X3BjaWVfcmVhZGxf
ZGJpKHBjaSwgR0VOM19FUV9GQl9NT0RFX0RJUl9DSEFOR0VfT0ZGKTsKPj4gLQlyZWcgJj0gfihH
RU4zX0VRX0ZNRENfVF9NSU5fUEhBU0UyMyB8Cj4+IC0JCUdFTjNfRVFfRk1EQ19OX0VWQUxTIHwK
Pj4gLQkJR0VOM19FUV9GTURDX01BWF9QUkVfQ1VTUk9SX0RFTFRBIHwKPj4gLQkJR0VOM19FUV9G
TURDX01BWF9QT1NUX0NVU1JPUl9ERUxUQSk7Cj4+IC0JcmVnIHw9IEZJRUxEX1BSRVAoR0VOM19F
UV9GTURDX1RfTUlOX1BIQVNFMjMsIDB4MSkgfAo+PiAtCQlGSUVMRF9QUkVQKEdFTjNfRVFfRk1E
Q19OX0VWQUxTLCAweGQpIHwKPj4gLQkJRklFTERfUFJFUChHRU4zX0VRX0ZNRENfTUFYX1BSRV9D
VVNST1JfREVMVEEsIDB4NSkgfAo+PiAtCQlGSUVMRF9QUkVQKEdFTjNfRVFfRk1EQ19NQVhfUE9T
VF9DVVNST1JfREVMVEEsIDB4NSk7Cj4+IC0JZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwgR0VOM19F
UV9GQl9NT0RFX0RJUl9DSEFOR0VfT0ZGLCByZWcpOwo+PiArCWZvciAoc3BlZWQgPSBQQ0lFX1NQ
RUVEXzhfMEdUOyBzcGVlZCA8PSBtYXhfc3BlZWQ7ICsrc3BlZWQpIHsKPj4gKwkJcmVnID0gZHdf
cGNpZV9yZWFkbF9kYmkocGNpLCBHRU4zX1JFTEFURURfT0ZGKTsKPj4gKwkJcmVnICY9IH5HRU4z
X1JFTEFURURfT0ZGX0dFTjNfWlJYRENfTk9OQ09NUEw7Cj4+ICsJCXJlZyAmPSB+R0VOM19SRUxB
VEVEX09GRl9SQVRFX1NIQURPV19TRUxfTUFTSzsKPj4gKwkJcmVnIHw9IEZJRUxEX1BSRVAoR0VO
M19SRUxBVEVEX09GRl9SQVRFX1NIQURPV19TRUxfTUFTSywKPj4gKwkJCSAgc3BlZWQgLSBQQ0lF
X1NQRUVEXzhfMEdUKTsKPj4gKwkJZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwgR0VOM19SRUxBVEVE
X09GRiwgcmVnKTsKPj4gICAKPj4gLQlyZWcgPSBkd19wY2llX3JlYWRsX2RiaShwY2ksIEdFTjNf
RVFfQ09OVFJPTF9PRkYpOwo+PiAtCXJlZyAmPSB+KEdFTjNfRVFfQ09OVFJPTF9PRkZfRkJfTU9E
RSB8Cj4+IC0JCUdFTjNfRVFfQ09OVFJPTF9PRkZfUEhBU0UyM19FWElUX01PREUgfAo+PiAtCQlH
RU4zX0VRX0NPTlRST0xfT0ZGX0ZPTV9JTkNfSU5JVElBTF9FVkFMIHwKPj4gLQkJR0VOM19FUV9D
T05UUk9MX09GRl9QU0VUX1JFUV9WRUMpOwo+PiAtCWR3X3BjaWVfd3JpdGVsX2RiaShwY2ksIEdF
TjNfRVFfQ09OVFJPTF9PRkYsIHJlZyk7Cj4+ICsJCXJlZyA9IGR3X3BjaWVfcmVhZGxfZGJpKHBj
aSwgR0VOM19FUV9GQl9NT0RFX0RJUl9DSEFOR0VfT0ZGKTsKPj4gKwkJcmVnICY9IH4oR0VOM19F
UV9GTURDX1RfTUlOX1BIQVNFMjMgfAo+PiArCQkJR0VOM19FUV9GTURDX05fRVZBTFMgfAo+PiAr
CQkJR0VOM19FUV9GTURDX01BWF9QUkVfQ1VTUk9SX0RFTFRBIHwKPj4gKwkJCUdFTjNfRVFfRk1E
Q19NQVhfUE9TVF9DVVNST1JfREVMVEEpOwo+PiArCQlyZWcgfD0gRklFTERfUFJFUChHRU4zX0VR
X0ZNRENfVF9NSU5fUEhBU0UyMywgMHgxKSB8Cj4+ICsJCQlGSUVMRF9QUkVQKEdFTjNfRVFfRk1E
Q19OX0VWQUxTLCAweGQpIHwKPj4gKwkJCUZJRUxEX1BSRVAoR0VOM19FUV9GTURDX01BWF9QUkVf
Q1VTUk9SX0RFTFRBLCAweDUpIHwKPj4gKwkJCUZJRUxEX1BSRVAoR0VOM19FUV9GTURDX01BWF9Q
T1NUX0NVU1JPUl9ERUxUQSwgMHg1KTsKPj4gKwkJZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwgR0VO
M19FUV9GQl9NT0RFX0RJUl9DSEFOR0VfT0ZGLCByZWcpOwo+PiArCj4+ICsJCXJlZyA9IGR3X3Bj
aWVfcmVhZGxfZGJpKHBjaSwgR0VOM19FUV9DT05UUk9MX09GRik7Cj4+ICsJCXJlZyAmPSB+KEdF
TjNfRVFfQ09OVFJPTF9PRkZfRkJfTU9ERSB8Cj4+ICsJCQlHRU4zX0VRX0NPTlRST0xfT0ZGX1BI
QVNFMjNfRVhJVF9NT0RFIHwKPj4gKwkJCUdFTjNfRVFfQ09OVFJPTF9PRkZfRk9NX0lOQ19JTklU
SUFMX0VWQUwgfAo+PiArCQkJR0VOM19FUV9DT05UUk9MX09GRl9QU0VUX1JFUV9WRUMpOwo+PiAr
CQlkd19wY2llX3dyaXRlbF9kYmkocGNpLCBHRU4zX0VRX0NPTlRST0xfT0ZGLCByZWcpOwo+PiAr
CX0KPiB0aGlzIGZ1bmN0aW9uIGNvdWxkIHJlY2VpdmUgYHNwZWVkYCBhcyBhIHBhcmFtZXRlciBp
bnN0ZWFkLCBzbyB0aGF0Cj4gaXQncyBlYXNpZXIgdG8gcGFyc2UKPgo+IEtvbnJhZAoKSGkgS29u
cmFkLAoKT24gdGhlIGN1cnJlbnQgcGxhdGZvcm0sIHRoZSByZWdpc3RlciB3cml0ZSBjb25maWd1
cmF0aW9ucyBmb3IgYm90aAo4LjAgR1QvcyBhbmQgMTYuMCBHVC9zIGFyZSBpZGVudGljYWwsIHNv
IHdlIGJlbGlldmUgaXQncyB1bm5lY2Vzc2FyeSB0bwpwYXNzIOKAmHNwZWVk4oCZIGFzIGEgcGFy
YW1ldGVyIGF0IHRoaXMgc3RhZ2UuCgpIb3dldmVyLCBJIGFncmVlIHRoYXQgaWYgZnV0dXJlIHBs
YXRmb3JtcyBvciBzcGVlZCBtb2RlcyBpbnRyb2R1Y2UKY29uZmlndXJhdGlvbiBkaWZmZXJlbmNl
cywgaXQgd291bGQgbWFrZSBzZW5zZSB0byByZXZpc2l0IHRoaXMgYW5kCmNvbnNpZGVyIGFkZGlu
ZyBzcGVlZCBhcyBhIHBhcmFtZXRlciBmb3IgYmV0dGVyIGZsZXhpYmlsaXR5LgoKQlJzClppeXVl
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
