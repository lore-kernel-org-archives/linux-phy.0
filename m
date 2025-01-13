Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B08DCE7719F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 02:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GxcLQmiWjIIQ+WQINICKNVNgLN7/Q8AolJ7FexGdTk=; b=t1V4pRb0+ARlgt
	S0z5BG3MQfGzt1XBiTpC3IRpKUsdv9155H/yaHk7xwo7PaWsVB4S2iQO/eI+uaau+iMFG6rds1Fs3
	1bF0kLwsNzeQunJOs9q8kJ+fILxjzfpPZTll9WbPS89AxIaiRQBpiJ6KfIgCzhP+Oa9PFBxcIXZc+
	sEAi/YiNqNOdFvzihWICUsy7gPrNEzDp0NDTkCVy+zQUbN/hDUurRQcUcQzMSyE9kopdTmTCY3djA
	75S5a8u1Og8n5KopQP/Gz3oT/8k0cdhRdnyHP+flzdvUT88havoYHcZ2UahX1JsdX41pHYu525VvW
	4DXnFVjTApgkMEiqIm3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX9mn-00000003mpA-1bYe;
	Mon, 13 Jan 2025 02:02:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tX9mk-00000003moj-1iWA
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 02:02:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50CNvRND003059;
	Mon, 13 Jan 2025 02:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	smyvzChallDQJfeC8eAycmxPdwqXH9DJKBHXPjHQm0w=; b=UmcpwbZ3zpNAYrCa
	O0BwoQ8iQIb0MrXKvnRpvPPifS6LdfRrvFUn9C6cpftd66f2fa8r01d2R42BhS3o
	hkKOKBT2P3ron+gJdRRfXmWB6VV6Ey0ni6YlwZfuOZvpRliLoNNVTdGbZ92IdPX6
	lNtT/YwmGpCydkxVDA3ZFQi2Hnv/EODVC0uEKkEM9UcmyKOBXaXb15TSLsw1731i
	jrQoR8aY3OZDn/l5VtDqa04MNT5WSLEUzcq08QyI35lbDe4/E/+4/DVTqyu1JiNi
	Nb6/COVessAVm+v1fbBnjmOROKwIocO77m3RyC3gtmMLt4Ul+Hww9e9QDKdzMhgh
	1VT9QQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 443hkfjvg6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 02:02:15 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D22ExT013125
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 02:02:14 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 12 Jan
 2025 18:02:08 -0800
Message-ID: <6292f709-ca4b-423f-8d78-e7e0531b3026@quicinc.com>
Date: Mon, 13 Jan 2025 10:02:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/3] Enable UFS on QCS615
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
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <173631142070.110881.10056360680137751835.b4-ty@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hBBXQh83RqyAJLc45RFRwip2KZaM9Lni
X-Proofpoint-ORIG-GUID: hBBXQh83RqyAJLc45RFRwip2KZaM9Lni
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 mlxscore=0 adultscore=0 clxscore=1015 bulkscore=0
 mlxlogscore=999 impostorscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501130015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_180234_585139_4B34AFC6 
X-CRM114-Status: GOOD (  10.11  )
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

VGhpcyBwYXRjaCBoYXMgYmVlbiByZXZpZXdlZCBvbmUgbW9udGggYWdvLCBkbyB5b3UgaGF2ZSBh
bnkgb3RoZXIgCmNvbW1lbnRzPyBUaGFuayB5b3UgdmVyeSBtdWNoLgoKaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDI0MTIxNjA5NTQzOS41MzEzNTctMi1xdWljX2xpdXhp
bkBxdWljaW5jLmNvbS8KCuWcqCAyMDI1LzEvOCAxMjo0MywgQmpvcm4gQW5kZXJzc29uIOWGmemB
kzoKPiAKPiBPbiBNb24sIDE2IERlYyAyMDI0IDE3OjU0OjM2ICswODAwLCBYaW4gTGl1IHdyb3Rl
Ogo+PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPj4K
Pj4gQWRkIFVGUyBzdXBwb3J0IHRvIHRoZSBRQ1M2MTUgUmlkZSBwbGF0Zm9ybS4gVGhlIFVGUyBo
b3N0IGNvbnRyb2xsZXIgYW5kCj4+IFFNUCBVRlMgUEhZIGhhcmR3YXJlIG9mIFFDUzYxNSBhcmUg
ZGVyaXZlZCBmcm9tIFNNNjExNS4gSW5jbHVkZSB0aGUKPj4gcmVsZXZhbnQgYmluZGluZyBkb2N1
bWVudHMgYWNjb3JkaW5nbHkuIEFkZGl0aW9uYWxseSwgY29uZmlndXJlIFVGUy1yZWxhdGVkCj4+
IGNsb2NrLCBwb3dlciwgYW5kIGludGVyY29ubmVjdCBzZXR0aW5ncyBpbiB0aGUgZGV2aWNlIHRy
ZWUuCj4+Cj4+IFsuLi5dCj4gCj4gQXBwbGllZCwgdGhhbmtzIQo+IAo+IFsyLzNdIGFybTY0OiBk
dHM6IHFjb206IHFjczYxNTogYWRkIFVGUyBub2RlCj4gICAgICAgIGNvbW1pdDogYTZhOWQxMGU3
OTY5NTdhZWZiYzRjOGQ1M2VkNzY3MzcxNGU4M2IzMQo+IFszLzNdIGFybTY0OiBkdHM6IHFjb206
IHFjczYxNS1yaWRlOiBFbmFibGUgVUZTIG5vZGUKPiAgICAgICAgY29tbWl0OiA0YjEyMGVmNjJl
ZDY1M2Y0YmMwNWU1ZjY4ODMyZDJkMmFjNTQ4YjYwCj4gCj4gQmVzdCByZWdhcmRzLAoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
