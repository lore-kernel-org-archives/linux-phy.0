Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A6CE77188
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 02:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z679S5pNRtQd2bn/BUDmk3yX9ivvBPVjlwqjBT6gCtE=; b=RboCqJgIqYzVOv
	TyQrmpukxisH2UXkh1rwQ0bjVWj+VodGacs5o2mgqH1KvmgNW19i+ZPUAvK0f/tljyCOjmHr5aHjE
	j2/6nDI1WtI6SN8/ke3JS0+1aR3/tQ3G9zQlqezG9DIIph8DVH4jVI/i0ZrpWsN73q6FBMFxyrRLX
	9U14/IY4iJqu+W8b0VUBYM8US7gLyQ1IgLwX4DE6/kRxz6MdLJDAxpQkW581kpYBBztM7nO+ki5AT
	BKZr+H2zgirN0fSabi2xm+5vI75KgBWy3PJbSzagLUNWiP3s0jEqlLiBy8JR2kQHPa1uDyZn62K2s
	tUPrZ1jyB1aXyeja416Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXAfv-00000003rlm-0hSj;
	Mon, 13 Jan 2025 02:59:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXAfs-00000003rlI-3ZXW
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 02:59:34 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D2sIJO030898;
	Mon, 13 Jan 2025 02:59:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rw1HisMX7BaCF0HZd08xQbXqYY/N4Tw0QDxlmJ/5qaU=; b=KS0DsQsMwQR9cMV0
	bNYkzdEfZzhLu0lJN8LmQw8OQLp8MeR7eZeKyMadG/bps2Iu9Rdn8BzbkrJloZJr
	h9PEr+yE2qXvNfiozIiibNpRv9678N0PNVAwtwT8iLeqYBfTs5TGrnNp7tsfPELy
	OucNqR+QqJQj4QJonwYf2HnSbX78yZKZDIL8ynAqmVGcQ6h68HTijnJPeioPHy5U
	5uWGVoZVZK1fSurbAxB9VBLrGnD/72/f7NLrQQTUMOQExQZmBjGCVT3WHPlvF8DP
	Oi7jVQTxAhIsRTiU23jk2wkWzWqWo4r4GK06TVRBS+rl7RbP1s1uQlogYBj+qxmR
	VDQAmQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444tevr0c7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 02:59:14 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D2xDuY019382
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 02:59:13 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 12 Jan
 2025 18:59:06 -0800
Message-ID: <c1128991-29fe-47e2-887e-10f63cb4f7f5@quicinc.com>
Date: Mon, 13 Jan 2025 10:59:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/3] Enable UFS on QCS615
From: Xin Liu <quic_liuxin@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio
	<konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
 <173631142070.110881.10056360680137751835.b4-ty@kernel.org>
 <6292f709-ca4b-423f-8d78-e7e0531b3026@quicinc.com>
In-Reply-To: <6292f709-ca4b-423f-8d78-e7e0531b3026@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GQaxR1X0zUXOyUkGHu0vCt0EOlg2OMFb
X-Proofpoint-GUID: GQaxR1X0zUXOyUkGHu0vCt0EOlg2OMFb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 mlxscore=0 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 adultscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_185933_014212_882578B4 
X-CRM114-Status: GOOD (  10.98  )
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

SSBtZWFuIHRoZSBtb2RpZmljYXRpb24gb2YgYmluZGluZy4KZHQtYmluZGluZ3M6IHVmczogcWNv
bTogQWRkIFVGUyBIb3N0IENvbnRyb2xsZXIgZm9yIFFDUzYxNQoKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjQxMjE2MDk1NDM5LjUzMTM1Ny0yLXF1aWNfbGl1eGluQHF1aWNpbmMuY29t
LwoK5ZyoIDIwMjUvMS8xMyAxMDowMiwgWGluIExpdSDlhpnpgZM6Cj4gVGhpcyBwYXRjaCBoYXMg
YmVlbiByZXZpZXdlZCBvbmUgbW9udGggYWdvLCBkbyB5b3UgaGF2ZSBhbnkgb3RoZXIgCj4gY29t
bWVudHM/IFRoYW5rIHlvdSB2ZXJ5IG11Y2guCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtYXJtLW1zbS8yMDI0MTIxNjA5NTQzOS41MzEzNTctMi0gCj4gcXVpY19saXV4aW5AcXVp
Y2luYy5jb20vCj4gCj4g5ZyoIDIwMjUvMS84IDEyOjQzLCBCam9ybiBBbmRlcnNzb24g5YaZ6YGT
Ogo+Pgo+PiBPbiBNb24sIDE2IERlYyAyMDI0IDE3OjU0OjM2ICswODAwLCBYaW4gTGl1IHdyb3Rl
Ogo+Pj4gRnJvbTogU2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4+
Pgo+Pj4gQWRkIFVGUyBzdXBwb3J0IHRvIHRoZSBRQ1M2MTUgUmlkZSBwbGF0Zm9ybS4gVGhlIFVG
UyBob3N0IGNvbnRyb2xsZXIgYW5kCj4+PiBRTVAgVUZTIFBIWSBoYXJkd2FyZSBvZiBRQ1M2MTUg
YXJlIGRlcml2ZWQgZnJvbSBTTTYxMTUuIEluY2x1ZGUgdGhlCj4+PiByZWxldmFudCBiaW5kaW5n
IGRvY3VtZW50cyBhY2NvcmRpbmdseS4gQWRkaXRpb25hbGx5LCBjb25maWd1cmUgVUZTLSAKPj4+
IHJlbGF0ZWQKPj4+IGNsb2NrLCBwb3dlciwgYW5kIGludGVyY29ubmVjdCBzZXR0aW5ncyBpbiB0
aGUgZGV2aWNlIHRyZWUuCj4+Pgo+Pj4gWy4uLl0KPj4KPj4gQXBwbGllZCwgdGhhbmtzIQo+Pgo+
PiBbMi8zXSBhcm02NDogZHRzOiBxY29tOiBxY3M2MTU6IGFkZCBVRlMgbm9kZQo+PiDCoMKgwqDC
oMKgwqAgY29tbWl0OiBhNmE5ZDEwZTc5Njk1N2FlZmJjNGM4ZDUzZWQ3NjczNzE0ZTgzYjMxCj4+
IFszLzNdIGFybTY0OiBkdHM6IHFjb206IHFjczYxNS1yaWRlOiBFbmFibGUgVUZTIG5vZGUKPj4g
wqDCoMKgwqDCoMKgIGNvbW1pdDogNGIxMjBlZjYyZWQ2NTNmNGJjMDVlNWY2ODgzMmQyZDJhYzU0
OGI2MAo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
