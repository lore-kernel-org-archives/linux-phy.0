Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 023F1D75BD3
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 08:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFy7pKoDI9v8Goqb0g2lBQoRN+9CQ5L52kFZsdN3baI=; b=VmikBRUTgE++wD
	3EG1v9UOiiJwnu5QOVUUOoTAZxepgkAqPejk/jlq/bIW5SJh5V3ZWnVe5MFQSctrmj4YdWpvR8jg2
	S/k/ZX7CjO4I1dVlx34efDDkReY47M6suyiF43hljpNGBFnR1nsXrQTzBdvhSv81F1/zC+Pu4vSAr
	GCUA/hEEO+0g9hmUYdrXMML3UsI3gYHhCQqzTbt7unNOFgIhszHvnu+dWTfsZU1UM6+uW+B3XZDhG
	O4380lUT/snPymewuxFBMfQuUb11ge2wFoUCYsFEd+Pw5o+BHoy4s7AHHDGIbhIS2v4aLG9ZQdzfg
	y9TUHX6tx8tlJBbmWImw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE2hg-0000000H73c-0zDn;
	Thu, 21 Nov 2024 08:38:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE2he-0000000H72e-1G3K
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 08:38:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AL7xaoc015290;
	Thu, 21 Nov 2024 08:38:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tB0KnnanTcHNjDGVYNGLDMZfTGK9vcYncMo3+GSBNxU=; b=FpiIU6sb+Atbrrtv
	RvWijmTAK6Elnu3X0A5qS0tKbPyqKtxenRYT7/equZ1v7UEq97eOmw4TFRkj8+Vl
	c6LPJ0mltkgnisTCV0rrUFPwywopvDASrK5OwUjSbR4qVTvZIhtVRxXqebIZnh0+
	vEAXMLVLEZkOBezkpH1sTukf5QJSmc042DjkAAN7ZMl6FGadImoXQmeVEmHBs34T
	M0oYDADllPEn3efbnM8T9ncACL5Sssvk045Mj/cB4htm3pV178A+jl6DKjPYxBX8
	kmTUsX3gsmiH/TJR09O/Kw3TkdukvzouIsijyvlrb7ASsM7trnYzvqOJI7lMOd2a
	VLh/5Q==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4320y9g4tv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 08:38:01 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AL8c0LZ029995
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 08:38:00 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 21 Nov
 2024 00:37:53 -0800
Message-ID: <242451d6-2b77-417c-bd98-4455f739dc0d@quicinc.com>
Date: Thu, 21 Nov 2024 16:37:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
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
        <quic_sayalil@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
References: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
 <20241119022050.2995511-2-quic_liuxin@quicinc.com>
 <d9c3dc82-24e5-465d-bd1c-7a7c97e17136@kernel.org>
 <eae9d141-9c88-4856-9287-2ba6ea6f4a06@kernel.org>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <eae9d141-9c88-4856-9287-2ba6ea6f4a06@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: C-wGCnRF7NJ8TW3zITJPRtXg76QtxZEB
X-Proofpoint-ORIG-GUID: C-wGCnRF7NJ8TW3zITJPRtXg76QtxZEB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=861 spamscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411210067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_003818_343004_E3E14F23 
X-CRM114-Status: GOOD (  11.67  )
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

CgrlnKggMjAyNC8xMS8yMSAxNTo0MCwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4gT24g
MjAvMTEvMjAyNCAxNzo1NywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMTkvMTEv
MjAyNCAwMzoyMCwgWGluIExpdSB3cm90ZToKPj4+IEZyb206IFNheWFsaSBMb2toYW5kZSA8cXVp
Y19zYXlhbGlsQHF1aWNpbmMuY29tPgo+Pj4KPj4+IERvY3VtZW50IHRoZSBVbml2ZXJzYWwgRmxh
c2ggU3RvcmFnZShVRlMpIEhvc3QgQ29udHJvbGxlciBvbiB0aGUgUXVhbGNvbW0KPj4+IFFDUzYx
NSBQbGF0Zm9ybS4KPj4+Cj4+PiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+Pj4gQWNrZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPj4+IENvLWRl
dmVsb3BlZC1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4gVGhhdCdzIGEgYml0
IG9kZCBTb0IgY2hhaW4uIEZpcnN0LCB0aGVzZSBhcmUganVzdCBvbmUtbGluZXJzLiBTZWNvbmQs
Cj4+IHdobyBhdXRob3JlZCB0aGUgcGF0Y2hlcz8KPiBUbyBiZSBjbGVhcjogU29CIHJlZ2FyZGlu
ZyBhdXRob3JzaGlwIGlzIGNvcnJlY3QsIGJ1dCByZWdhcmRpbmcgQWNrcyBhbmQKPiBSZXZpZXdz
IGlzIG5vdC4gU2F2YWxpIGRpZCBub3QgcmVjZWl2ZSB0aGVzZSB0YWdzLiBJZiBzbywgcGxlYXNl
IHBvaW50Cj4gdG8gbG9yZSBkaXNjdXNzaW9uIHdpdGggaXQuCj4gCj4gQWxsIHRoaXMgbmVlZHMg
Zml4aW5nLgpUaGFuayB5b3UgZm9yIHlvdXIgY29tbWVudHMuIFRoZXNlIGFyZSB0aGUgdHdvIHJl
dmlld3MgSSByZWNlaXZlZC4gT25lIAppcyB5b3VyIHJldmlld2QtYnksIGFuZCB0aGUgb3RoZXIg
aXMgTWFuaXZhbm5hbidzIGFja2VkLWJ5LkkgaGF2ZSBhbHNvIApjYyBTYXlhbGkgb24gdGhlIGVt
YWlsLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS9ydjN1a3o2cmhncDN4
MzJzNzRuYmZ0bW9xbWR4anhtb2lpM3pzZDR3aXBtaHVkeXE3cUBoYTRsMnN2bDVsaW0vCgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIwMjQxMTEyMDc1NjE5LjJpbHNjY25u
azRsZXFtZHlAdGhpbmtwYWQvCj4gCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
