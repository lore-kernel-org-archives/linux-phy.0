Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 190A3CA0EE0
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 21:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIvtmgu+U4lJYadKFETOzLADSCScjUKQziuq11i8hxw=; b=UmZMYa7zhvvd2i
	OfbbKBKfDXdObkYr6P884KbXXiMBOOQUBvL6YBSl4jTcGvT8Ipfcbp2/7KY1hAshRIwCOSyv7FoMl
	PnWNPQvvuIfpShcU0UCldPc1k0up+GwveEapfuTVSyByQ52Z20woAzci7AoYQ04VllMvavtemv2gw
	MlV1+6tg3CoMrGLK0E/pNaRDcgEQqkUxzWrCDecGwtjMArY4UINMwIgCV68lXv1mbaLpwRlJneec0
	ktJrbQNiBh2RTmcZCSbzvBmwScH1pmqaIXfaf18Tvlg3yZ5o12q+UTvD6NgeNb0D3NcuZDX7/DvlW
	v5SzFlzEYXePO+VD8w7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIbP-0000000EyeY-3LhO;
	Wed, 13 Aug 2025 21:01:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umIbN-0000000Eydf-0Ooe
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 21:01:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLdHA023974;
	Wed, 13 Aug 2025 21:01:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rZkAh7aOlglWCrpyUB48asdjXVLQmajgdjNHXeqwaVA=; b=Cr3RZjnbxTqyV0Fm
	HMD3/3KO5VpoWF0P4m+i2UHbc9wqhkgwL5ulFKDRmW+k+2RIIC0BgnCgJlcPNOAr
	VICLzUqd4mQ7+6WH5B3Ay11jpAL4ezNiBTWISusluthCs3zVr9ZKPugvgYo8UUUD
	v1VztULgBgRmapGVgSLpPc8MnY8a6Fa2uDzBTLyrf7DUvTH8njQ5uEOfOXzIByDA
	tICi2184GN2M3ZLN/2Wx5m80gGnMvBsGLnfhnQnAWGEPUNqu+406n62j4ZGaseQQ
	Ouh6d1jWGx0Eu41bJomlUQLjGzlHexaWwJUC/WZwE8KdDDNAk8KddzlxjlZ9JZXR
	WjY3yw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rsw9j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Aug 2025 21:01:32 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 57DL1VKr008529
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Aug 2025 21:01:31 GMT
Received: from [10.216.55.173] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 13 Aug
 2025 14:01:25 -0700
Message-ID: <2dc54d35-4811-4153-bd36-843a374d9c4f@quicinc.com>
Date: Thu, 14 Aug 2025 02:31:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>, Mark Brown <broonie@kernel.org>
CC: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <mani@kernel.org>, <conor+dt@kernel.org>,
        <bvanassche@acm.org>, <neil.armstrong@linaro.org>,
        <dmitry.baryshkov@oss.qualcomm.com>, <konradybcio@kernel.org>,
        <krzk+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
 <14566f49-7f7b-4583-98b7-8a473054f7c3@sirena.org.uk>
 <kwp3q4r5rzahzro5f6l6ml24vbiutyxokrhjsbtzcb5kvanx5e@elagxv6w5dq7>
 <d072b19d-bc01-45c8-8cf3-bceb53ca9b2c@quicinc.com>
Content-Language: en-US
In-Reply-To: <d072b19d-bc01-45c8-8cf3-bceb53ca9b2c@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfXwb5sofLS7ooy
 w9vhdBpRMnzCGHdYBC992Gm97tPkCeN38o9bC3ssT6Qg83unWtySq+oPJzZ6Akgwe1UlAjIZjHG
 l5DSIp/1a1Wx/D9uSNsi7HkjGtEp280vvg824mGZkFHZuEptIRRfGrdCYkisAKY8vYhwGomapXs
 kcTERdE2EkTXA2JTCgH20TihdrW2s05tnUaCv+wslfpWvx2j81gADGrgUZTW/vWhEr1s717p9bJ
 NpM7CjhGAhB7ycshtVrt8n9jaK8+yaNNfgJfNO/YIB5AuS04OhkGpTfXSkRAFb66szcRqJrWior
 sUEmAnDW87rlufPpCMauH11dduPyIoA7FGW2/Smw/bapM3focyOY4IZTs60FfaZmWR+/L/YDPZQ
 11U3BtiQ
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689cfd2c cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=ULkvDhI3a0wY5DhI7wsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: 59E_3mNuvokWRgEuwNcnI43mszk0FYe8
X-Proofpoint-GUID: 59E_3mNuvokWRgEuwNcnI43mszk0FYe8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_140141_146190_966A33E3 
X-CRM114-Status: GOOD (  34.81  )
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

CgpPbiA4LzEyLzIwMjUgMToxOCBBTSwgTml0aW4gUmF3YXQgd3JvdGU6Cj4gCj4gCj4gT24gOC8x
MS8yMDI1IDk6MjAgUE0sIEJqb3JuIEFuZGVyc3NvbiB3cm90ZToKPj4gT24gVGh1LCBBdWcgMDcs
IDIwMjUgYXQgMDg6MDk6NTZQTSArMDEwMCwgTWFyayBCcm93biB3cm90ZToKPj4+IE9uIFRodSwg
QXVnIDA3LCAyMDI1IGF0IDA3OjQzOjE1UE0gKzAyMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+
Pj4gT24gOC83LzI1IDc6MjYgUE0sIE1hcmsgQnJvd24gd3JvdGU6Cj4+Pgo+Pj4+PiBOb3RlIHRo
YXQgdGhhdCdzIHNwZWNpZnlpbmcgT1BQcyB3aGljaCBpcyBkaWZmZXJlbnQuLi4KPj4+Cj4+Pj4g
VGhlIG1pY3JvYW1wIHByb3BlcnRpZXMgYXJlIGluIHRoZSB0b3AtbGV2ZWwsIG5vdCB1bmRlciBP
UFAgaWYKPj4+PiB0aGF0J3Mgd2hhdCB5b3UgbWVhbnQKPj4+Cj4+PiBJIG1lYW4gdGhlIE9QUHMg
dXNlIGNhc2UgaXMgYW4gZXhpc3Rpbmcgd2VsbCBrbm93biBvbmUgZm9yIGR1bXBpbmcgc3R1ZmYK
Pj4+IGludG8gRFQuCj4+Pgo+Pj4+PiBUaGF0IGRvZXNuJ3QgbWVhbiB0aGF0IGl0J3MgYSBnb29k
IGlkZWEgdG8gcHV0IHRoYXQgaW5mb3JtYXRpb24gaW4gdGhlCj4+Pj4+IERULCBub3IgaWYgaXQg
aXMgc2Vuc2libGUgdG8gcHV0IGluIERUIGRvZXMgaXQgbWVhbiB0aGF0IGl0J3MgYSBnb29kCj4+
Pj4+IGlkZWEgdG8gZGVmaW5lIGEgZ2VuZXJpYyBwcm9wZXJ0eSB0aGF0IGFwcGxpZXMgdG8gYWxs
IHJlZ3VsYXRvcgo+Pj4+PiBjb25zdW1lcnMgd2hpY2ggaXMgd2hhdCBJIG5vdyB0aGluayBLb25y
YWQgaXMgcHJvcG9zaW5nLgo+Pj4KPj4+PiBZZWFoLCB0aGF0J3Mgd2hhdCBJIGhhZCBpbiBtaW5k
Cj4+Pgo+Pj4+IEkgd2FzIG5ldmVyIGFibGUgdG8gZ2V0IGEgcmVsaWFibGUgc291cmNlIGZvciB0
aG9zZSBudW1iZXJzIG15c2VsZmUKPj4+PiBlaXRoZXIuLiBBdCBsZWFzdCBzb21lIG9mIHRoZW0g
YXJlIHByb29vb29iYWJseT8gY2hvc2VuIGJhc2VkIG9uIHRoZQo+Pj4+IHVzZWQgcmVndWxhdG9y
IHR5cGUsIHRvIGVuc3VyZSBpdCdzIGFsd2F5cyBpbiBIUE0uLgo+Pj4KPj4+IFRoYXQncyB3aGF0
IHNldF9tb2RlKCkgaXMgZm9yLsKgIExpa2UgSSBzYXkgaXQncyBiZWNvbWluZyBsZXNzIGFuZCBs
ZXNzCj4+PiByZWxldmFudCB0aG91Z2guCj4+Pgo+Pgo+PiBzZXRfbW9kZSgpIGp1c3QgYXBwbGll
cyB0aGUgbW9kZSB0byB0aGUgcmVndWxhdG9yX2Rldiwgc28gaW4gY2FzZXMgd2hlcmUKPj4geW91
IGhhdmUgbXVsdGlwbGUgY29uc3VtZXJzIG9mIGEgcmVndWxhdG9yX2RldiB0aGluZ3Mgd291bGQg
YnJlYWsuCj4+Cj4+IEZ1cnRoZXIsIHRoZXJlIGFyZSBudW1lcm91cyBjYXNlcyB3aGVyZSB3ZSBo
YXZlIG11bHRpcGxlIGNvbnN1bWVycyBlYWNoCj4+IG5lZWRpbmcgYSAibG93IiBtb2RlLCBidXQg
dGhlaXIgY29tYmluZWQgbG9hZCByZXF1aXJlcyBhICJoaWdoIiBtb2RlLgo+Pgo+PiBzZXRfbG9h
ZCgpIGFuZCBpdHMgYWdncmVnYXRpb24gb2YgdGhlIGlucHV0cyBkZWFscyB3aXRoIGJvdGggb2Yg
dGhlc2UKPj4gaXNzdWVzLgo+Pgo+Pgo+PiBXaGV0aGVyIG1vZGUgc2V0dGluZyBpcyBiZWNvbWlu
ZyBsZXNzIHJlbGV2YW50IGluIG91ciBoYXJkd2FyZSwgdGhhdCBJCj4+IGRvbid0IGhhdmUgdGhl
IGRlZmluaXRpdmUgYW5zd2VyIHRvLgo+Pgo+Pj4+IFRoYXQgc2FpZCwgb3VyIGRyaXZlcnMgY292
ZXIgYSB3aWRlIHZhcmlldHkgb2YgaGFyZHdhcmUsIGJ1aWx0IG9uIGEKPj4+PiB3aWRlIHZhcmll
dHkgb2YgcHJvY2VzcyBub2Rlcywgd2l0aCBkaWZmZXJlbnQgY29uZmlndXJhdGlvbnMsIGV0Yy4s
Cj4+Pj4gc28gaXQncyBlaXRoZXIgcG9sbHV0aW5nIHRoZSBEVCwgb3IgcG9sbHV0aW5nIHRoZSBk
cml2ZXIgd2l0aAo+Pj4+IHBlci1jb21wYXRpYmxlIGhhcmRjb2RlZCBkYXRhIChhbmQgYWRkaXRp
b25hbCBjb21wYXRpYmxlcyBiZWNhdXNlCj4+Pj4gZmFsbGJhY2tzIHdvdWxkbid0IHdvcmsgbW9z
dCBvZiB0aGUgdGltZSkKPj4KPj4gSWYgdGhpcyBpcyBvdXIgcmVhc29uIGZvciBwdXR0aW5nIGl0
IGluIERldmljZVRyZWUsIHRoZW4gd2Ugc2hvdWxkIHdyaXRlCj4+IHRoYXQgaW4gdGhlIGNvbW1p
dCBtZXNzYWdlIDopCj4+Cj4+Pgo+Pj4gVGhhdCdzIHJlYWxseSBub3QgYSBwZXJzdWFzaXZlIGFy
Z3VtZW50IGZvciBhZGRpbmcgYSBnZW5yaWMgcHJvcGVydHkKPj4+IHRoYXQgYXBwbGllcyB0byBh
bGwgcmVndWxhdG9yIGNvbnN1bWVycy4uLgo+Pj4KPj4KPj4gSSBhZ3JlZSwgZXZlbiBpZiB3ZSBk
ZXRlcm1pbmUgdGhhdCB0aGlzIGJlbG9uZ3MgaW4gRFQsIGJlY2F1c2UgaXQgbmVlZHMKPj4gdG8g
YmUgdHdlYWtlZCBvbiBhIHBlci1ib2FyZCBiYXNpcywgaXQncyBzdGlsbCBvbmx5IGFwcGxpY2Fi
bGUgdG8gYQo+PiBmcmFjdGlvbiBvZiBvdXIgZGV2aWNlIG5vZGVzLgo+IAo+IEhpIEJqb3JuICYg
TWFyaywKPiAKPiBJIGhhZCBhIGZvbGxvdy11cCBkaXNjdXNzaW9uIHdpdGggdGhlIFBIWSBkZXNp
Z25lciB0byBjb25maXJtIHdoZXRoZXIgCj4gdGhpcyB2YWx1ZSBjb3VsZCB2YXJ5IGF0IHRoZSBi
b2FyZCBsZXZlbC4gQmFzZWQgb24gdGhlaXIgcmVzcG9uc2UsIGl0J3MgCj4gYSBmaXhlZCB2YWx1
ZSBmb3IgdGhlIFNvQyBhbmQgcmVtYWlucyBjb25zaXN0ZW50IGFjcm9zcyBkaWZmZXJlbnQgCj4g
Ym9hcmRzLiBUaGVyZWZvcmUsIEknbSBjb21mb3J0YWJsZSByZW1vdmluZyBpdCBmcm9tIHRoZSBk
ZXZpY2UgdHJlZSBhbmQgCj4gdXNpbmcgaGFyZGNvZGVkLCBwZXItY29tcGF0aWJsZSBkYXRhIGlu
IHRoZSBkcml2ZXIuCj4gCj4gVGhlIG9ubHkgY29uY2VybiBpcyB0aGF0IHRoaXMgYXBwcm9hY2gg
bWF5IGxlYWQgdG8gZHJpdmVyIGJsb2F0IG92ZXIgCj4gdGltZSwgYXMgbW9yZSBTb0NzIGFyZSBh
ZGRlZCBhbmQgZWFjaCByZXF1aXJlcyBpdHMgb3duIGhhcmRjb2RlZCAKPiBjb25maWd1cmF0aW9u
Lgo+IAo+IFJlZ2FyZHMsCj4gTml0aW4KPiAKPiAKQmFzZWQgb24gdGhlIGN1cnJlbnQgdW5kZXJz
dGFuZGluZywgSSBwbGFuIHRvIHBvc3QgYSByZXZpc2VkIHBhdGNoIHRoYXQgCnVzZXMgaGFyZGNv
ZGVkLCBwZXItY29tcGF0aWJsZSBkYXRhIHdpdGhpbiB0aGUgZHJpdmVyLCByYXRoZXIgdGhhbiAK
c3BlY2lmeWluZyBpdCBpbiB0aGUgZGV2aWNlIHRyZWUuIFBsZWFzZSBsZXQgbWUga25vdyBpZiBh
bnlvbmUgaGFzIGFueSAKY29uY2VybnMgd2l0aCB0aGlzIGFwcHJvYWNoLgoKVGhhbmtzLApOaXRp
bgoKCj4gCj4gCj4gCj4gCj4+Cj4+IFJlZ2FyZHMsCj4+IEJqb3JuCj4+Cj4+PiBNeSBpbnN0aW5j
dCB3aXRoIHRoaXMgc3R1ZmYgaXMgZ2VuZXJhbGx5IHRvIGF2b2lkIHB1dHRpbmcgaXQgaW4gdGhl
IERULAo+Pj4gd2Ugc2VlIGZhciB0b28gbWFueSBpbnN0YW5jZXMgd2hlcmUgc29tZW9uZSdzIHR5
cGVkIHNvbWUgbnVtYmVycyBpbgo+Pj4gd3JvbmdseSBvciBkaXNjb3ZlcnMgdGhlIGFiaWxpdHkg
dG8gZHJpdmUgdGhlIGhhcmR3YXJlIGhhcmRlciBhbmQgbmVlZHMKPj4+IHRvIHR1bmUgdGhlIG51
bWJlcnMgLSBvbmNlIHNvbWV0aGluZyBpcyBBQkkgeW91J3JlIHN0dWNrIGp1c3QgdHJ1c3RpbmcK
Pj4+IHRoZSBudW1iZXJzLsKgIFRoYXQgc2FpZCBJJ20gbm90IGdvaW5nIHRvIHN0b3AgeW91IHB1
dHRpbmcgc29tZXRoaW5nCj4+PiBzcGVjaWZpYyB0byB0aGlzIGRyaXZlciBpbiB0aGVyZSwgSSBq
dXN0IGRvbid0IHRoaW5rIHRoaXMgaXMgYSBnb29kIGlkZWEKPj4+IGFzIGEgZ2VuZXJpYyBwcm9w
ZXJ0eS4KPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
