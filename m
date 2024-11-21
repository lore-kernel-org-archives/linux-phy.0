Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E8CD6E2A4
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 10:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOFAEsl9TiJmezN7vezcfa/+8xKdatvo8WDwCoh72vM=; b=Rfdp6gj14CKdoh
	jc+ZHeqhja1L2CLq6PFbQniYeDMImNIRalwvqcT1nwzy0TDVcTBT6hBwVEBCdOdq72R3LcnunlPDp
	CZHBaA54kTsUhAq1KRAeA+ubklBkmBumL39N9zNnnyVdB419AV7abHH236f9jFKXzq0dMxqSJd1Oa
	FeBjFR8/zlDps9RIqoZGFZetqiRL2qqnMDon6GrBKM6X2Pdkx5GRLNxp+ROoMWQywXHB5f7KalBAS
	nnUikR+DmDrikpeN+8dCETTU5e6mfAGKu5jfyrR5IjthJxSvbjPtBwwz0NfBYWMYCdy+7vS6DG6Ch
	v8e+l5Ix/NmOFkCpcevg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE45B-0000000HJMd-1CGE;
	Thu, 21 Nov 2024 10:06:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE458-0000000HJME-2qVJ
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 10:06:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AKNoJAx004593;
	Thu, 21 Nov 2024 10:06:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I7eWYK4VpUeRAISJcRupsnAVr6kAA451IJVT2RVjCwU=; b=I0ROKMk+7u1ACLrJ
	WZGQfakpiUM8kxg8myfKG1LMURm0cF/77VUNdfB8HwIlSBLtI8KDHdP9OU8Bvuoy
	4b+ybErvLQhGnifoN5oAi04LTeQ1EPmIlFkfi7S0BUdz7Ty2jhctH6TuwhykzSfr
	zp4uNf3Hcvw0xeSqHU97Phwqk+QfCiM6tFkhejyDgrGQDoA7974DU54d06/EYP1m
	rtTUwLOIfEdvWy9rCqQ26uDAhrIbBCQ7Umr4NB2Dluzm+2aj3QQApB019I3q7MDV
	x67AqdRRcGj1gRB8gLq52iZ8gI5NHTl4w/5LvpNOxJiLRFWRLzhcGqPXF6WyyJXO
	iUErfw==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431ea739ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 10:06:21 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4ALA6G1t016773
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 10:06:16 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 21 Nov
 2024 02:06:09 -0800
Message-ID: <e3bbd5de-af15-4b23-b956-8c69243b4955@quicinc.com>
Date: Thu, 21 Nov 2024 18:06:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski
	<krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Manivannan
 Sadhasivam" <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-2-quic_liuxin@quicinc.com>
 <d9c3dc82-24e5-465d-bd1c-7a7c97e17136@kernel.org>
 <eae9d141-9c88-4856-9287-2ba6ea6f4a06@kernel.org>
 <242451d6-2b77-417c-bd98-4455f739dc0d@quicinc.com>
 <26392a7f-82c6-4b7b-829e-76f3d78115d1@linaro.org>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <26392a7f-82c6-4b7b-829e-76f3d78115d1@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: j-5MxRfCbNe_sa-ky-Vi8gcR8UQvWs7Y
X-Proofpoint-ORIG-GUID: j-5MxRfCbNe_sa-ky-Vi8gcR8UQvWs7Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 mlxlogscore=889
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411210079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_020638_719307_EAA685CB 
X-CRM114-Status: GOOD (  12.82  )
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

CgrlnKggMjAyNC8xMS8yMSAxODowMSwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4gT24g
MjEvMTEvMjAyNCAwOTozNywgWGluIExpdSB3cm90ZToKPj4KPj4KPj4g5ZyoIDIwMjQvMTEvMjEg
MTU6NDAsIEtyenlzenRvZiBLb3psb3dza2kg5YaZ6YGTOgo+Pj4gT24gMjAvMTEvMjAyNCAxNzo1
NywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxOS8xMS8yMDI0IDAzOjIwLCBY
aW4gTGl1IHdyb3RlOgo+Pj4+PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBx
dWljaW5jLmNvbT4KPj4+Pj4KPj4+Pj4gRG9jdW1lbnQgdGhlIFVuaXZlcnNhbCBGbGFzaCBTdG9y
YWdlKFVGUykgSG9zdCBDb250cm9sbGVyIG9uIHRoZSBRdWFsY29tbQo+Pj4+PiBRQ1M2MTUgUGxh
dGZvcm0uCj4+Pj4+Cj4+Pj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5
c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4+Pj4+IEFja2VkLWJ5OiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPj4+Pj4g
Q28tZGV2ZWxvcGVkLWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4+Pj4g
U2lnbmVkLW9mZi1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4+Pj4gVGhh
dCdzIGEgYml0IG9kZCBTb0IgY2hhaW4uIEZpcnN0LCB0aGVzZSBhcmUganVzdCBvbmUtbGluZXJz
LiBTZWNvbmQsCj4+Pj4gd2hvIGF1dGhvcmVkIHRoZSBwYXRjaGVzPwo+Pj4gVG8gYmUgY2xlYXI6
IFNvQiByZWdhcmRpbmcgYXV0aG9yc2hpcCBpcyBjb3JyZWN0LCBidXQgcmVnYXJkaW5nIEFja3Mg
YW5kCj4+PiBSZXZpZXdzIGlzIG5vdC4gU2F2YWxpIGRpZCBub3QgcmVjZWl2ZSB0aGVzZSB0YWdz
LiBJZiBzbywgcGxlYXNlIHBvaW50Cj4+PiB0byBsb3JlIGRpc2N1c3Npb24gd2l0aCBpdC4KPj4+
Cj4+PiBBbGwgdGhpcyBuZWVkcyBmaXhpbmcuCj4+IFRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50
cy4gVGhlc2UgYXJlIHRoZSB0d28gcmV2aWV3cyBJIHJlY2VpdmVkLiBPbmUKPj4gaXMgeW91ciBy
ZXZpZXdkLWJ5LCBhbmQgdGhlIG90aGVyIGlzIE1hbml2YW5uYW4ncyBhY2tlZC1ieS5JIGhhdmUg
YWxzbwo+PiBjYyBTYXlhbGkgb24gdGhlIGVtYWlsLgo+Pgo+PiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1hcm0tbXNtL3J2M3VrejZyaGdwM3gzMnM3NG5iZnRtb3FtZHhqeG1vaWkzenNk
NHdpcG1odWR5cTdxQGhhNGwyc3ZsNWxpbS8KPj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtYXJtLW1zbS8yMDI0MTExMjA3NTYxOS4yaWxzY2Nubms0bGVxbWR5QHRoaW5rcGFkLwo+
IAo+IEkgbWVhbnQgb3JkZXIgb2YgdGFncy4gV2hvIHJlY2VpdmVkIHRoZW0/IFlvdSwgbm90IFNh
eWFsaS4gVGhlbiB0aGV5Cj4gY2Fubm90IGJlIGJlZm9yZSBTYXlhbGkgU29CLgo+IApUaGFuayB5
b3UgZm9yIHlvdXIgY29tbWVudHMuIEkgd2lsbCBmaXggaXQgbmV4dCB2ZXJzaW9uLgo+IAo+IEJl
c3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
