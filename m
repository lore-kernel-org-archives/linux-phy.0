Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23586E7AD57
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97DvvJqeNNe7NCn3KFv3ExTWvbz1Z8EoXP5JJgPcmpQ=; b=gbQImw8F3BeG6U
	pCXkIEN1PShOPF/b0YGfw5rVtZzKZ0XV3RDdO6oTeit6LGKnlTktcx44UrDVf17Fl2bvCL8VqWqwN
	trz3yb6kACbWYjkt5Q1N2Q5o+wTSHR6xnKpeadnIxw6DM3oWk42xe+tckgPZ6s7UY1OuLqV+hbLNf
	XNyp8o8mqn1m+f0A0cr6gHkP7IvMWLuGvDRhkqJGLh+pwXWXV3pn5k+0Rl1TpTTiotSPuOJ9jozhR
	LIgGJNXpqf8f7YindPZzhiQLjqEQ6deUJPKAZCZYakk/BfNlf0DctdI0LP7JVxav8s0pfWNwWBgzs
	5/Q4qG1gvzDQmrGUmnww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngd5-00EogB-2g;
	Tue, 03 Oct 2023 14:44:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngd2-00EofW-1h;
	Tue, 03 Oct 2023 14:44:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393DsPL3012012;
	Tue, 3 Oct 2023 14:43:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=tfLOe0VjA/rPVml+32m2VjdMp1XlyYfrkQaY6Acrs8o=;
 b=C3/5Ao1DaefIvRBcGR1t3k5+eN2IplmCGWvUPvLHrJqUZ5HD/KmroJrL3DvmFgnapR/M
 ajZVtp7LQw14rgTvMA+Kzu0s0iRMOVfb6FtLuGOv+WVnnguqjzw0siszURKIw2ziYqxj
 qRgvMO7P8et7USA3Dpwy0txbxNGwG5kJuiEj4Ig5abLs3JWJnOfUGsm4y5cXuAlcpA50
 VMw0U6J3ywlpTZ23NP4cCvyf0sBLpC8dZiTc+ebGm+ipwECuPe9+oDxcaQVoTUDceQjJ
 LpzXZWNqHEvf496TcSqITHHBdYx678o3rZp8fAWkWCWUSg0T4Lj1M8oaBmA/v2NwuVOb oA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tg98rhhyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 14:43:47 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393Ehk06028126
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 14:43:46 GMT
Received: from [10.216.32.208] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 3 Oct
 2023 07:42:49 -0700
Message-ID: <896c7657-e93e-4bd5-8a58-ad15cbfa834f@quicinc.com>
Date: Tue, 3 Oct 2023 20:12:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] arm64: dts: qcom: ipq5332: Add clocks for USB
 Super-Speed
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-6-quic_ipkumar@quicinc.com>
 <356a4f97-a483-4202-a6da-b48351d9b209@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <356a4f97-a483-4202-a6da-b48351d9b209@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: X9RCbhZsRxiLPaii1C6N1RQd0ATVyCbP
X-Proofpoint-GUID: X9RCbhZsRxiLPaii1C6N1RQd0ATVyCbP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_12,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 mlxscore=0 malwarescore=0 phishscore=0
 mlxlogscore=768 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_074404_572359_57E91DF2 
X-CRM114-Status: GOOD (  18.39  )
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

CgpPbiA5LzMwLzIwMjMgMTA6NTUgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMjkv
MDkvMjAyMyAxMTo0MiwgUHJhdmVlbmt1bWFyIEkgd3JvdGU6Cj4+IEFkZCBhdXggYW5kIGxmcHMg
Y2xvY2tzIGluIFVTQiBub2RlIGZvciBTdXBlci1TcGVlZCBzdXBwb3J0Lgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBQcmF2ZWVua3VtYXIgSSA8cXVpY19pcGt1bWFyQHF1aWNpbmMuY29tPgo+PiAtLS0K
Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzIuZHRzaSB8IDkgKysrKysrKy0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi5kdHNpIAo+
PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLmR0c2kKPj4gaW5kZXggYjA4ZmZk
OGMwOTRlLi4xODEzYjlmYTRiYjUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9pcHE1MzMyLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUz
MzIuZHRzaQo+PiBAQCAtMzM2LDExICszMzYsMTYgQEAgdXNiOiB1c2JAOGFmODgwMCB7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19VU0IwX01BU1RFUl9D
TEs+LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1NO
T0NfVVNCX0NMSz4sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8Jmdj
YyBHQ0NfVVNCMF9TTEVFUF9DTEs+LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZnY2MgR0NDX1VTQjBfTU9DS19VVE1JX0NMSz47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCMF9NT0NLX1VUTUlfQ0xLPiwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IwX0FVWF9DTEs+LAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VTQjBfTEZQU19DTEs+Owo+
Cj4gVGhpcyBsb29rcyBsaWtlIGEgc3RyYW5nZSBjaGFuZ2UuIFVzdWFsbHkgdGhlIERUQiBpcyBj
b25zaWRlcmVkIHRvIGJlIAo+IHRoZSBBQkksIHNvIG9sZGVyIERUQnMgc2hvdWxkIGNvbnRpbnVl
IHRvIHdvcmsgd2l0aCBuZXdlciBrZXJuZWxzLiBJcyAKPiB0aGVyZSBhIHJlYXNvbiB3aHkgdGhl
IEFVWCBhbmQgTEZQUyBjbG9ja3Mgd2VyZSBub3QgYSBwYXJ0IG9mIHRoZSAKPiBvcmlnaW5hbCBz
dWJtaXNzaW9uPwpUaGlzIEFVWCBhbmQgTEZQUyBjbG9ja3MgYXJlIHJlcXVpcmVkIG9ubHkgd2hl
biBVU0IgY29udHJvbGxlciB1c2VzIHRoZSAKVU5JUEhZIGFuZCB3b3JrcyBpbiAzLjAuIE9yaWdp
bmFsIGNoYW5nZSBhZGRlZCAyLjAgc3VwcG9ydCBhbmQgdXNlZCBtMzEtcGh5Lgo+Cj4+ICsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiY29yZSIsCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImlmYWNlIiwKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAic2xlZXAiLAo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJtb2NrX3V0bWkiOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJtb2NrX3V0bWki
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJhdXgiLAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJsZnBzIjsKPj4g
wqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQl9CQ1I+
Owo+Ci0tClRoYW5rcywKUHJhdmVlbmt1bWFyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
