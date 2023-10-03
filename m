Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58422E7AD58
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv0uTOPfFGhtWazE/fGc/pmvfW2bwMVvpO7YAnK5fD8=; b=zsxDgj5CjRZHHG
	z9QwZSuu2NLr5rqO0+BBL3SjXku7O5uKG2VMo8Pe4t/rgCVaRERNYCr4yNHsdq4VmXxzRePyzxO+d
	1IqdZNl3sitE2Bynw+GTO8aSyuAcaXDnfR9ZMN697zWKyUwq8+xo22b6hlYLHnvrlc5W2JYv3vJ4H
	dZBZZB7JJIlVENVsqowGCQJ8e5wR5wxNzBdTWrgDVyKx0SQ79K9/qP4/05PmTgR3Xm08eZxeeghRa
	TCkAw7aA8mW/rspttIjMKyouqK5OnCQbRWGG0OGG/NmsNp9g1apyTlUDrZUUyLkN7YfH33kPpO3Gj
	QBJ9DV1WFnnsBGsPenYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qngQh-00Engc-39;
	Tue, 03 Oct 2023 14:31:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qngQd-00EngC-1T;
	Tue, 03 Oct 2023 14:31:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393E2Fux010357;
	Tue, 3 Oct 2023 14:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=c2Cp9OddIEL1kWONxLBIDhUo5rcQSS3r5qyCIgC8rKg=;
 b=Hm5neSyzLcG86uBS5KlELSXNOpwinWo4Q3ku88MHWxF0NVQKVfrE52L0Vu/Pswa5wA8T
 XJHrt9utbnYV6+JCx0GpRhsa/jBdU2AJxrjPllQRf9CtGmLWEOh918z6UPaLFwO9kK5a
 3dZqCHIE25qaqqqsG5rif47mVpzcV7aUF9KbnzE3zxoECVl2Rk6Y0M/meNWDb6fZ3Qv+
 /8DILrKue6JbKPwh1hF2hNg+7jh/qcE6Wh6ODOoHPNJRCw71AC+D4Z44wr3nzX1CfR18
 7CB0goxhuLibmKSmv314+lO+XHWnhdOsJB5pXp3QmxPS8O1c7qnMTfrZ2HFoGgj+rtw7 3w== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tg77esj54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 14:31:02 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393EV0jw024246
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 14:31:00 GMT
Received: from [10.216.32.208] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 3 Oct
 2023 07:30:50 -0700
Message-ID: <9addc1e2-0101-4068-9e0f-857a5a88ef90@quicinc.com>
Date: Tue, 3 Oct 2023 20:00:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] dt-bindings: usb: dwc3: Add clocks on Qualcomm
 IPQ5332
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
 <20230929084209.3033093-5-quic_ipkumar@quicinc.com>
 <c0abfa16-92f3-41e6-afb2-e542131ae67b@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <c0abfa16-92f3-41e6-afb2-e542131ae67b@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: zyLHtK8CyW2RL-zvwKDi8PzaBwsna2VW
X-Proofpoint-GUID: zyLHtK8CyW2RL-zvwKDi8PzaBwsna2VW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_11,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 priorityscore=1501 mlxlogscore=822 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_073115_614263_B1F4F94C 
X-CRM114-Status: GOOD (  14.74  )
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

CgpPbiA5LzMwLzIwMjMgMTA6NTMgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gMjkv
MDkvMjAyMyAxMTo0MiwgUHJhdmVlbmt1bWFyIEkgd3JvdGU6Cj4+IEFkZCBhdXggYW5kIGxmcHMg
Y2xvY2tzIGluIFF1YWxjb21tIElQUTUzMzIuIFRoZXNlIGNsb2NrcyBhcmUgcmVxdWlyZWQKPj4g
Zm9yIFVTQiBTdXBlci1TcGVlZCBzdXBwb3J0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQcmF2ZWVu
a3VtYXIgSSA8cXVpY19pcGt1bWFyQHF1aWNpbmMuY29tPgo+PiAtLS0KPj4gwqAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sZHdjMy55YW1swqDCoMKgIHwgMjAgKysrKysrKysrKysr
KysrKysrLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3VzYi9xY29tLGR3YzMueWFtbCAKPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdXNiL3Fjb20sZHdjMy55YW1sCj4+IGluZGV4IDY3NTkxMDU3ZjIzNC4uMThhZjI4ODdiOTg0
IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fj
b20sZHdjMy55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvcWNvbSxkd2MzLnlhbWwKPj4gQEAgLTE0OSw2ICsxNDksMjUgQEAgYWxsT2Y6Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHNsZWVwCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gY29uc3Q6IG1vY2tfdXRtaQo+PiDCoCArwqAgLSBpZjoKPj4gK8KgwqDCoMKg
wqAgcHJvcGVydGllczoKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20saXBxNTMzMi1kd2MzCj4+ICvCoMKg
wqAgdGhlbjoKPj4gK8KgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gK8KgwqDCoMKgwqDCoMKgIGNs
b2NrczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBtYXhJdGVtczogNgo+PiArwqDCoMKgwqDCoMKg
wqAgY2xvY2stbmFtZXM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNvcmUKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSBjb25zdDogaWZhY2UKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogc2xlZXAK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogbW9ja191dG1pCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGF1eAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IGNvbnN0OiBsZnBzCj4KPiBDb3VsZCB5b3UgcGxlYXNlIGFsc28gZGVzY3JpYmUgdGhlIGxmcHMg
Y2xvY2sgaW4gdGhlIHRvcC1sZXZlbCBjbG9ja3MgCj4gZW50cnk/ClN1cmUsIHdpbGwgYWRkLgo+
Cj4+ICsKPj4gwqDCoMKgIC0gaWY6Cj4+IMKgwqDCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+PiBAQCAtMjM4LDcgKzI1Nyw2IEBAIGFsbE9m
Ogo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZToKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb250YWluczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxpcHE1MzMyLWR3YzMKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxtc204OTk0LWR3YzMKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxxY3M0MDQtZHdjMwo+PiDCoMKgwqDCoMKgIHRoZW46
Cj4KLS0KVGhhbmtzLApQcmF2ZWVua3VtYXIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
