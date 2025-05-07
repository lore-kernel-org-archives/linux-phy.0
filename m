Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320A5C3ABC5
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0eNqK6JmMJLQ30gK2LBA6TKbZB6ozO7PfeT8BtBa+w=; b=I/YgCT1JjO0zF+
	JUXM11cI+BIlMT643l7iocnlmizXVt3hLBDwLCUCV38ssGQ9vZNB7qgIiFyEbAjszurcCr1fzE+EG
	I9lVRDlvOeTgI5agYnfSOVfdAGfIKaChiZdTCAqI/U58JuGvcG/KGReomT9yvjuNehrgLxb/twynS
	rH4Q4YngguB8GLrX5wb9/KGVUzn17JjOBIcS31FeVZapLDXyl6TVujJ2roz1LeqAnT/DI3CflUkx2
	kT9WZ/e4rfkDdrbSPv5aC6BMyUWOHSV0Zkb5YAJli8QEoyRC9PYUJqQFtm3K1hdkmVT6ujTPjNHyj
	s6lZWjo8Gaw7iZvH3f/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCZyp-0000000EhYE-3vp9;
	Wed, 07 May 2025 08:18:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCZ48-0000000EUr4-3nPo
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 07:19:42 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471Grwg018997;
	Wed, 7 May 2025 07:19:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GSak/6RCspJolLSOvtTAIV6025PG+X7hMUnK6M4R8yU=; b=aXbIy/PBePDmAHIw
	UB1H7JwheZxWXsE0Yrd+71lRdtKYEzR+/IkiRPcLlP+td23pLdIo0xipsSpDHTzc
	0oCrlauJtBP0tXDZxj117zzv8EAsMJmf6yqnrL86t1dCTxR32Owt8e0bV9B0clsI
	TP+K+2wLBzpRFfEanmcBSx4mY/Wu06Id7GkOGcpqB/4J+xUd7WG641wqXPXNFGor
	P4ACZGVGK7l7s+H8mQ2E0YtgCE37eCEmrvAQDVCMZiuzyBkkbCDzWMoS9ezpITTV
	eJIR1ttRfYNyPpfTOOEu3EKkEvEroztUx391SMxdN4QZeQqQ364fimr8is6jZXxU
	lA00lQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5wg4q03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 07:19:33 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5477JQi8024774
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 May 2025 07:19:31 GMT
Received: from [10.253.13.113] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 7 May 2025
 00:19:19 -0700
Message-ID: <43e6fc1a-95ac-4eec-9776-fc39ae91a4a8@quicinc.com>
Date: Wed, 7 May 2025 15:18:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for sa8775p
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <neil.armstrong@linaro.org>,
        <abel.vesa@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <quic_qianyu@quicinc.com>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
 <20250507031019.4080541-2-quic_ziyuzhan@quicinc.com>
 <20250507-obedient-copperhead-from-arcadia-4b052e@kuoka>
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250507-obedient-copperhead-from-arcadia-4b052e@kuoka>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 2mrKWO7swPWHAhCxNNPTrB6Dtsd2weKv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDA2NyBTYWx0ZWRfX3ZLKUTs7ko7+
 /Phgy2NPzkHBR3VLvbslWf7afnqIiQNxoYC9swS+2jkDY8H2NQYRcgJak+oelcyXYatn9r5PxR5
 xOtE87yL5vUJCLqwa+QX8x1Hsv8mKqzVYLF7s8oyNaEY0VEf1pbSXYxahDR6wg+UsxUDjUs+pLf
 VI2o+mKAKRaPDXwIRfO3LWFvUK+RDY0L/QrH45Cui7oEIR/eM7Me935LRCmtfxCs7XjeGZbG6tD
 wCFwSR48lmua0UHYbiwQYEM0zoc8zBDKO/Ptv+lDAeBpEcsxJT8d7lDQm/ya/qPjAe/b9M/X/Cf
 ldcnT7Turx1fLGguVdROzQ3iRMF2rQ7w6y0EQpeJaqtONlNSG1xKgG+sgek6yJSAItOMz/NfZHV
 439BxMdutaRvYIceZZfYxILVUS+Le8WlMgywO6UYAWH6sngWLVxxWwzNuXLOfDkUI7k38RIQ
X-Authority-Analysis: v=2.4 cv=dPemmPZb c=1 sm=1 tr=0 ts=681b0985 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=9Ld5B2VTqtJkQkrtWcQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: 2mrKWO7swPWHAhCxNNPTrB6Dtsd2weKv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_02,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 mlxscore=0 clxscore=1011 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_001941_057949_EF87E4FD 
X-CRM114-Status: GOOD (  14.44  )
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

SGkgS3J6eXN6dG9mCgpJbiB0aGUgZmlyc3QgcGxhY2UgSSB1cHN0cmVhbWVkIHRoZSBkdC1iaW5k
aW5ncyBmb3IgUUNTODMwMCBQQ0llIFBIWSwgSSAKZGlkIHRoZSBjaGVja2luZyBmb3IgYm90aCBE
VEJzIGFuZCB5YW1sLiBUaGUgZHQtYmluZGluZyBwYXRjaCBnb3QgCmFwcGxpZWQgYnV0IGdjY19h
dXhfY2xrIGlzIHJlY29tbWVuZGVkIHRvIGJlIHJlbW92ZWQgZnJvbSBQQ0llIFBIWSAKZGV2aWNl
IHRyZWUgbm9kZSwgc28gSSBuZWVkIHRvIHVwZGF0ZSB0aGUgYmluZGluZ3MsIG51bWJlciBvZiBj
bG9ja3MgCnJlcXVpcmVkIGJ5IHRoZSBQSFkgaXMgY2hhbmdlZCB0byA2IGZyb20gNy4gQlJzIFpp
eXVlCgrlnKggNS83LzIwMjUgMTowOSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4g
T24gV2VkLCBNYXkgMDcsIDIwMjUgYXQgMTE6MTA6MTRBTSBHTVQsIFppeXVlIFpoYW5nIHdyb3Rl
Ogo+PiBxY3M4MzAwIHBjaWUxIHBoeSB1c2UgdGhlIHNhbWUgY2xvY2tzIGFzIHNhODc3NXAsIGlu
IHRoZSByZXZpZXcgY29tbWVudHMKPj4gb2YgcWNzODMwMCBwYXRjaGVzLCBnY2MgYXV4IGNsb2Nr
IHNob3VsZCBiZSByZW1vdmVkIGFuZCByZXBsYWNlIGl0IHdpdGgKPj4gcGh5X2F1eCBjbG9jay5T
byBtb3ZlICJxY29tLHNhODc3NXAtcW1wLWdlbjR4NC1wY2llLXBoeSIgY29tcGF0aWJsZSBmcm9t
Cj4+IDcgY2xvY2tzJyBsaXN0IHRvIDYgY2xvY2tzJyBsaXN0IHRvIHNvbHZlIHRoZSBkdGIgY2hl
Y2sgZXJyb3IuCj4+Cj4+IHFjczgzMDAgcGNpZSBwaHkgb25seSB1c2UgNiBjbG9ja3MsIHNvIG1v
dmUgcWNzODMwMCBnZW40eDIgcGNpZSBwaHkKPj4gY29tcGF0aWJsZSBmcm9tIDcgY2xvY2tzJyBs
aXN0IHRvIDYgY2xvY2tzJyBsaXN0Lgo+IEkgZG9uJ3QgdW5kZXJzdGFuZCBhbnkgb2YgdGhpcy4g
WW91IGp1c3Qgc3VibWl0dGVkIHRoZSBiaW5kaW5ncyBub3Qgc28KPiBmYXIgYWdvLiBEb2VzIHRo
aXMgbWVhbiB0aGV5IHdlcmUgbmV2ZXIgdGVzdGVkPwo+Cj4gV2hhdCBkb2VzIGl0IG1lYW4gdGhh
dCBnY2MgYXV4IGNsb2NrIHNob3VsZCBiZSByZW1vdmVkIGluIHRoZSByZXZpZXcKPiBjb21tZW50
cz8KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
