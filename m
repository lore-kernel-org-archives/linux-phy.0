Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A099CC64ED8
	for <linux-phy@archiver.kernel.org>; Mon, 20 Feb 2023 13:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/1Ydg2F/P4DMCRihArfzS2w/fDbbhEEdC+FzRrMxSg=; b=Uyigtny/4Pa5Gb
	qQdMOvH10wX6B1eAlFK6iJW5VUE+x70PFYgH6yiKws68qEDwRs4+405WEgqcLRV5VWHHKY5PF0J95
	9xnzOG+DXnZsS5B9VrFpB0Xd+l+dH5OJtdCezyLO/Kbo2Mv8MfKKv6S3bNVmt9LI2+9D8qbPPt6MD
	RomSj0qAhBPzlPOlbKhBauTKYM7B5WOUXG62QmnQ1Ho9Zxn4zuyUikdcWmY0CQXVvL9o3T6frsxEv
	pu+QFiCzDt1M8JHokHjwJTWP1B0WtMcHHSc28Dr+xqsJQhdfhY5lveqTTtbmIfaTnSTHLRKOBm1aX
	62oxVMkpG+ez+X61vCvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6SL-004Dqr-QO; Mon, 20 Feb 2023 13:43:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU6SJ-004DqO-K1
	for linux-phy@lists.infradead.org; Mon, 20 Feb 2023 13:43:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31K7TDcm019094;
	Mon, 20 Feb 2023 13:43:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=f5VUsOSf3KVSNPG4/Zu+k0CL0pyJH9jedB/7l9p/SCQ=;
 b=E6/C+Xrj5HgYOqXojyuLd/sh3ktnl5h65EHTmFbpay/c/ll3NLTGet8GXpYwdZiVQgKA
 IRJNnoOEKNGZfmgGlX9btT7PtQJp8uK0wmzsqhrvv6vytfxRQ8CvQ/A1gUC3Li4o1Bz4
 ohGKEshhRM/nsEs/zRgck771eEdEQ4yw+uC63sl+QdRaU4C7rUI5SdxQSa+StkTlXcH1
 vPXs12vAkcAmKzRL8fcIWs3xkHPZvAfVfGmvaTchZfqlXKiCES5CQSNs1GoxQbVbhFL+
 5+SegNGU3dX5VVZLAaNBJpZj6pCTYDOBWeCn4uG0+nfUsvOLc1jj1sTAm0HbO7Z5PuDN vg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ntnpgd9q0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:43:40 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31KDhdac023233
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Feb 2023 13:43:39 GMT
Received: from [10.216.11.20] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Mon, 20 Feb
 2023 05:43:30 -0800
Message-ID: <424878d3-7937-ae90-9d79-fef4a5c9c419@quicinc.com>
Date: Mon, 20 Feb 2023 19:13:27 +0530
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
 <53f42026-26af-9f5f-e6a0-6e08d2f272f6@quicinc.com>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <53f42026-26af-9f5f-e6a0-6e08d2f272f6@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hgyPxtIntYlIFzDFNAwYShBXPaHik6d4
X-Proofpoint-GUID: hgyPxtIntYlIFzDFNAwYShBXPaHik6d4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-20_11,2023-02-20_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 mlxlogscore=906 adultscore=0 spamscore=0 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302200125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_054347_798215_255B2372 
X-CRM114-Status: GOOD (  14.39  )
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

CgpPbiAyLzE3LzIwMjMgMjoxMSBQTSwgU3JpY2hhcmFuIFJhbWFiYWRocmFuIHdyb3RlOgo+IEhp
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
fTsKPj4gKwo+PiDCoCBzdGF0aWMgc3RydWN0IGNsa19yZWdtYXBfcGh5X211eCBwY2llMV9waXBl
X2Nsa19zcmMgPSB7Cj4+IMKgwqDCoMKgwqAgLnJlZyA9IDB4MjkwNjQsCj4+IMKgwqDCoMKgwqAg
LmNsa3IgPSB7Cj4+IEBAIC0xNTUyLDYgKzE1NzAsMjQgQEAgc3RhdGljIHN0cnVjdCBjbGtfcmVn
bWFwX3BoeV9tdXggCj4+IHBjaWUxX3BpcGVfY2xrX3NyYyA9IHsKPj4gwqDCoMKgwqDCoCB9LAo+
PiDCoCB9Owo+PiArc3RhdGljIHN0cnVjdCBjbGtfYnJhbmNoIGdjY19wY2llMV9waXBlX2NsayA9
IHsKPj4gK8KgwqDCoCAuaGFsdF9yZWcgPSAweDI5MDQ0LAo+PiArwqDCoMKgIC5oYWx0X2NoZWNr
ID0gQlJBTkNIX0hBTFRfREVMQVksCj4+ICvCoMKgwqAgLmNsa3IgPSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCAuZW5hYmxlX3JlZyA9IDB4MjkwNDQsCj4+ICvCoMKgwqDCoMKgwqDCoCAuZW5hYmxlX21h
c2sgPSBCSVQoMCksCj4+ICvCoMKgwqDCoMKgwqDCoCAuaHcuaW5pdCA9ICYoc3RydWN0IGNsa19p
bml0X2RhdGEpewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAubmFtZSA9ICJnY2NfcGNpZTFf
cGlwZV9jbGsiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAucGFyZW50X2h3cyA9IChjb25z
dCBzdHJ1Y3QgY2xrX2h3ICpbXSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICZwY2llMV9waXBlX2Nsa19zcmMuY2xrci5odwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
LAo+PiArwqDCoMKgwqDCoMKgwqAgLm51bV9wYXJlbnRzID0gMSwKPj4gK8KgwqDCoMKgwqDCoMKg
IC5mbGFncyA9IENMS19TRVRfUkFURV9QQVJFTlQsCj4+ICvCoMKgwqDCoMKgwqDCoCAub3BzID0g
JmNsa19icmFuY2gyX29wcywKPj4gK8KgwqDCoMKgwqDCoMKgIH0sCj4gCj4gIMKgTG9va3MgbGlr
ZSBpbmRlbnRhdGlvbiBpc3N1ZSBmb3IgdGhlIGFib3ZlIGh1bmsuClN1cmUsIHdpbGwgdXBkYXRl
IHRoaXMgaW4gVjIKCkJlc3QgUmVnYXJkcywKRGV2aSBQcml5YQo+IAo+IFJlZ2FyZHMsCj4gIMKg
U3JpY2hhcmFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
