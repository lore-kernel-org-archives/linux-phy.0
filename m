Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F266C05027
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 13:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLwG746wI6I0lV7Fi77kIy0s+b60NfpQrWeDRogYhAY=; b=zRH4GktGeXujGi
	uCh+mGHrfoUFMRgDFN9XIJLmBRrw2wD10Pbc9GBPbDIk6lBzXqmFHGyriKH/G+1vm7cUioN7wbwt9
	DAFoqP0RNZ+ucGpJJ38bBPyaXC+hjK/UbcRIxP6/ox8tRZVi37KHeq3G+LXOkAUgzGkuoNJD+bX4Y
	NI5eAh2ZGdd0XbgqPTzzFT2uaKlnuMIW+hzM/9DGVkx2jEqzBmjHY0iC658MO+AYX9SJxtVDaPmEF
	HJBwpVR1ozSBDW8EfxXPIUyMKaBzzbrg2CfuZaRfPHTEwBAOJc61Kgun/EUaVA3T5+nZirMJMuKe4
	2YWYigsqQoxJR+cLisqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6TL-004Dxh-LQ; Mon, 20 Feb 2023 13:44:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6TH-004DxG-RM
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 13:44:49 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31K5EKYc005194;
	Mon, 20 Feb 2023 13:44:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=jYkMyl5gn5qrmoMjcdhJ36GQx7v+D5e0l0Jxxi0TnHw=;
 b=pcbG2htr2uJpUGADtincUG51VoBWLTL9IrLOG9tNrvGpX0SFDxuMI3+7J371z6oz1yGY
 NkOtUJ91rycEar/3KISAORBXpQT6UvXHQwWOdVVeAon9plgzoQ1x+3ldV3vem4UhE1v0
 3JnWMcTXPDnThwo3JfL02HhyhBWGDQsP8NQLJCbw1t+x3zCpqJmRFWf7INNRqLRW4dju
 yPagXy8K0a29/oCnWptiU5GJ0+nIevbXYxw2m5Uxaeyt8FDVj8AhZ7vcbg8dl2v9IeVy
 Xe8IAMAk3WajgGZUAw+FM6e7BtKtSJsyG213h3vE5H7pFFNZt/Tqvq06n6mTL0AGwFPI JQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3nubb1u629-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:44:42 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KDifrc016945
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:44:41 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 05:44:32 -0800
Message-ID: <1ec15d17-9079-5577-757c-8113e394edef@quicinc.com>
Date: Mon, 20 Feb 2023 19:14:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 6/7] clk: qcom: gcc-ipq9574: Add PCIe related clocks
Content-Language: en-US
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <svarbanov@mm-sol.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: <quic_gokulsri@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-7-quic_devipriy@quicinc.com>
 <0d5f6df8-bb44-f9fe-8d5c-50e488ae4c53@quicinc.com>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <0d5f6df8-bb44-f9fe-8d5c-50e488ae4c53@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: afA5-XwtB0vxNeg9OKtxq-cn1MIxu_hV
X-Proofpoint-GUID: afA5-XwtB0vxNeg9OKtxq-cn1MIxu_hV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_11,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 priorityscore=1501 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302200125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_054447_915130_43CEE323 
X-CRM114-Status: GOOD (  14.65  )
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

CgpPbiAyLzE3LzIwMjMgMjoxMyBQTSwgU3JpY2hhcmFuIFJhbWFiYWRocmFuIHdyb3RlOgo+IEhp
IERldmksCj4gCj4gT24gMi8xNC8yMDIzIDEwOjExIFBNLCBEZXZpIFByaXlhIHdyb3RlOgo+PiBB
ZGQgdGhlIGNsb2NrcyBuZWVkZWQgZm9yIGVuYWJsaW5nIFBDSWUgaW4gSVBROTU3NAo+Pgo+PiBD
by1kZXZlbG9wZWQtYnk6IEFudXNoYSBSYW8gPHF1aWNfYW51c2hhQHF1aWNpbmMuY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBBbnVzaGEgUmFvIDxxdWljX2FudXNoYUBxdWljaW5jLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogRGV2aSBQcml5YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNvbT4KPj4gLS0t
Cj4+IMKgIGRyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTk1NzQuYyB8IDc2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDc2IGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTk1NzQuYyAKPj4g
Yi9kcml2ZXJzL2Nsay9xY29tL2djYy1pcHE5NTc0LmMKPj4gaW5kZXggYjJhMmQ2MThhNWVjLi4x
YmYzM2Q1ODJkYzIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xrL3Fjb20vZ2NjLWlwcTk1NzQu
Ywo+PiArKysgYi9kcml2ZXJzL2Nsay9xY29tL2djYy1pcHE5NTc0LmMKPj4gQEAgLTE1MzgsNiAr
MTUzOCwyNCBAQCBzdGF0aWMgc3RydWN0IGNsa19yZWdtYXBfcGh5X211eCAKPj4gcGNpZTBfcGlw
ZV9jbGtfc3JjID0gewo+PiDCoMKgwqDCoMKgIH0sCj4+IMKgIH07Cj4+ICtzdGF0aWMgc3RydWN0
IGNsa19icmFuY2ggZ2NjX3BjaWUwX3BpcGVfY2xrID0gewo+PiArwqDCoMKgIC5oYWx0X3JlZyA9
IDB4MjgwNDQsCj4+ICvCoMKgwqAgLmhhbHRfY2hlY2sgPSBCUkFOQ0hfSEFMVF9ERUxBWSwKPj4g
K8KgwqDCoCAuY2xrciA9IHsKPj4gK8KgwqDCoMKgwqDCoMKgIC5lbmFibGVfcmVnID0gMHgyODA0
NCwKPj4gK8KgwqDCoMKgwqDCoMKgIC5lbmFibGVfbWFzayA9IEJJVCgwKSwKPj4gK8KgwqDCoMKg
wqDCoMKgIC5ody5pbml0ID0gJihzdHJ1Y3QgY2xrX2luaXRfZGF0YSl7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC5uYW1lID0gImdjY19wY2llMF9waXBlX2NsayIsCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC5wYXJlbnRfaHdzID0gKGNvbnN0IHN0cnVjdCBjbGtfaHcgKltdKSB7Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnBjaWUwX3BpcGVfY2xrX3NyYy5jbGty
Lmh3Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC5udW1fcGFyZW50cyA9IDEsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5mbGFncyA9
IENMS19TRVRfUkFURV9QQVJFTlQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5vcHMgPSAm
Y2xrX2JyYW5jaDJfb3BzLAo+PiArwqDCoMKgwqDCoMKgwqAgfSwKPj4gK8KgwqDCoCB9LAo+PiAr
fTsKPj4gKwo+IAo+ICDCoCBBbHNvLCB0aGlzIHBhdGNoIHNob3VsZCBjb21lIGJlZm9yZSB5b3Vy
IHBoeSBkcml2ZXIgdXBkYXRlcy4KU3VyZSBnb3QgaXQsIHdpbGwgcmVvcmRlciB0aGUgcGF0Y2hl
cyBpbiBWMgo+IAo+IFJlZ2FyZHMsCj4gIMKgU3JpY2hhcmFuCj4gCkJlc3QgUmVnYXJkcywKRGV2
aSBQcml5YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
