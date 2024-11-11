Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9494D12D6D
	for <linux-phy@archiver.kernel.org>; Mon, 11 Nov 2024 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcvWTj3sPrkMb4rmIweljOrqYO3jJU9cmJyXE6p6QMw=; b=KbJr9pEsXcKiuy
	5RQLiQL3ek74Msmb2LVbPpAiX6+MFAbbERO/5w/9jpP6Cx0Xi0aM3jOCkWMUpvY0yVHnFv5LNO0bB
	HjfUmf7sXBxvVdHsndkBTaoRZ+FDTxy8GBRaglqG5Dwwz6X9radyDvNWK7+4VDtqnWGMyBs8gkA3E
	E1DMjam/hDZFmO/S2+YqQB6JP873TZhjIpGz/1Mz/gvshcEKD7erhGO1qcphUtsRlrMerbF26nJFd
	HgvKMY0ZbtwNp9vDCl8tTIdbPd6wShwGHoToW3pZxtmy9fOcW0s288bXYleezJbQh6MLS5PdOTtMK
	I/rKN58v0yttd5oJzi8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tALSZ-0000000GG03-26mA;
	Mon, 11 Nov 2024 03:51:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tALQ9-0000000GFll-3FUq
	for linux-phy@lists.infradead.org;
	Mon, 11 Nov 2024 03:48:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AALvacq006661;
	Mon, 11 Nov 2024 03:44:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yG/N73WbiaCBaSJcWEGfw81oQaDhMKagaRX64zNWUEc=; b=mGdTcS622VVvDrus
	B80zcKvpYLLPGDHp1YhUMeE0KnVCmgAW+jHtSRIJb7NWjDujywkWkEyhR20t1fCH
	JioSJpMb2d8oTwXKHisT0qkYA2/gu3tZWb/pWDCGprGjlTZpDzL9Z69+MQ+WGz3J
	eWzNqpHZzbia8z+vvnuyVh9yy8Z2r2DGc0oOxI7zcSYB/DwEkYolEkSJVBLUArFp
	xIMo3J9W1gCMSt/uwLpJuQ+40fXQufEoX6Ai5YFeJlo4ra1aLGI/b8R4Nw5IwDHp
	WkpoNyHq7GIhxAc+P3OFkIaDbU0vbdzSdhdQqC5jgyZ/CYLRG/JuBAiq/POOwDBP
	Vn0l6w==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42t046340j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Nov 2024 03:44:26 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AB3iPnm020632
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Nov 2024 03:44:25 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 10 Nov
 2024 19:44:20 -0800
Message-ID: <c558f9eb-d190-4b77-b5a3-7af6b7de68d8@quicinc.com>
Date: Mon, 11 Nov 2024 11:44:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
From: Qiang Yu <quic_qianyu@quicinc.com>
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <johan+linaro@kernel.org>
References: <20241101030902.579789-1-quic_qianyu@quicinc.com>
 <20241101030902.579789-6-quic_qianyu@quicinc.com>
 <ZyjbrLEn8oSJjaZN@hovoldconsulting.com>
 <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
Content-Language: en-US
In-Reply-To: <de5f40ab-90b7-4c75-b981-dd5824650660@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6CLDlkiXpATCHQED5YVP_aSUHQtsFrX9
X-Proofpoint-ORIG-GUID: 6CLDlkiXpATCHQED5YVP_aSUHQtsFrX9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 mlxlogscore=999 impostorscore=0 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411110030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_194857_969908_5D28ABD5 
X-CRM114-Status: GOOD (  11.12  )
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

Ck9uIDExLzUvMjAyNCAxOjI4IFBNLCBRaWFuZyBZdSB3cm90ZToKPgo+IE9uIDExLzQvMjAyNCAx
MDozNSBQTSwgSm9oYW4gSG92b2xkIHdyb3RlOgo+PiBPbiBUaHUsIE9jdCAzMSwgMjAyNCBhdCAw
ODowOTowMlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPj4+IERlc2NyaWJlIFBDSWUzIGNvbnRy
b2xsZXIgYW5kIFBIWS4gQWxzbyBhZGQgcmVxdWlyZWQgc3lzdGVtIAo+Pj4gcmVzb3VyY2VzIGxp
a2UKPj4+IHJlZ3VsYXRvcnMsIGNsb2NrcywgaW50ZXJydXB0cyBhbmQgcmVnaXN0ZXJzIGNvbmZp
Z3VyYXRpb24gZm9yIFBDSWUzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWlj
X3FpYW55dUBxdWljaW5jLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4+PiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPj4+IFJldmlld2Vk
LWJ5OiBKb2hhbiBIb3ZvbGQgPGpvaGFuK2xpbmFyb0BrZXJuZWwub3JnPgo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHBjaWUzOiBwY2llQDFiZDAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2aWNlX3R5cGUgPSAicGNpIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGli
bGUgPSAicWNvbSxwY2llLXgxZTgwMTAwIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDAgMHgwMWJkMDAwMCAweDAgMHgzMDAwPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDwweDAgMHg3ODAwMDAwMCAweDAgMHhmMWQ+LAo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MCAweDc4MDAwZjQwIDB4MCAweGE4PiwKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHg3ODAwMTAwMCAweDAg
MHgxMDAwPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwweDAgMHg3
ODEwMDAwMCAweDAgMHgxMDAwMDA+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPDB4MCAweDAxYmQzMDAwIDB4MCAweDEwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmVnLW5hbWVzID0gInBhcmYiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJkYmkiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJlbGJpIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiYXR1IiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY29u
ZmlnIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAibWhpIjsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDM+Owo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByYW5nZXMgPSA8MHgwMTAwMDAwMCAweDAgMHgwMDAwMDAwMCAweDAgMHg3ODIw
MDAwMCAweDAgCj4+PiAweDEwMDAwMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPDB4MDIwMDAwMDAgMHgwIDB4NzgzMDAwMDAgMHgwIDB4NzgzMDAwMDAgMHgwIAo+Pj4g
MHgzZDAwMDAwPiwKPj4gQ2FuIHlvdSBkb3VibGUgY2hlY2sgdGhlIHNpemUgaGVyZSBzbyB0aGF0
IGl0IGlzIGluZGVlZCBjb3JyZWN0IGFuZCBub3QKPj4ganVzdCBjb3BpZWQgZnJvbSB0aGUgb3Ro
ZXIgbm9kZXMgd2hpY2ggaW5pdGlhbGx5IGdvdCBpdCB3cm9uZzoKPj4KPj4gwqDCoMKgwqBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwNzEwLXRvcGljLWJhcm1hbi12MS0xLTVmNjNm
Y2E4ZDBmY0BsaW5hcm8ub3JnLwpCVFcsIHJlZ2lvbnMgb2YgUENJZTZhLCBQQ0llNCwgUENJZTUg
YXJlIDY0TUIsIDMyTUIsIDMyTUIsIHJlc3BlY3RpdmVseS4KV2h5IHJhbmdlIHNpemUgaXMgc2V0
IHRvIDB4MWQwMDAwMCBmb3IgUENJZTZhLCBhbnkgaXNzdWUgaXMgcmVwb3J0ZWQgb24gClBDSWU2
YT8KClRoYW5rcywKUWlhbmcgWXUKPiBGcm9tIG1lbW9yeSBtYXBzLCByZWdpb24gb2YgUENJZTMg
aXMgNjRNQiwgdGhlIHNpemUgaGVyZSBpcyBjb3JyZWN0Lgo+Cj4gVGhhbmtzLAo+IFFpYW5nIFl1
Cj4+Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDB4MDMwMDAwMDAgMHg3
IDB4NDAwMDAwMDAgMHg3IDB4NDAwMDAwMDAgMHgwIAo+Pj4gMHg0MDAwMDAwMD47Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBidXMtcmFuZ2UgPSA8MHgwMCAweGZmPjsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzNfQVVYX0NMSz4sCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1BDSUVfM19DRkdfQUhC
X0NMSz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1BD
SUVfM19NU1RSX0FYSV9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDwmZ2NjIEdDQ19QQ0lFXzNfU0xWX0FYSV9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19QQ0lFXzNfU0xWX1EyQV9BWElfQ0xLPiwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfQ0ZHX05PQ19QQ0lFX0FOT0Nf
Tk9SVEhfQUhCX0NMSz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZn
Y2MgR0NDX0NOT0NfUENJRV9OT1JUSF9TRl9BWElfQ0xLPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNsb2NrLW5hbWVzID0gImF1eCIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICJjZmciLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiYnVzX21hc3RlciIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJidXNfc2xhdmUiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAic2xhdmVfcTJhIiwKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm5vY19hZ2dyIiwKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNub2Nfc2ZfYXhpIjsKPj4+ICsKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lF
XzNfQVVYX0NMSz47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhc3NpZ25lZC1jbG9jay1y
YXRlcyA9IDwxOTIwMDAwMD47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRl
cmNvbm5lY3RzID0gPCZwY2llX3NvdXRoX2Fub2MgTUFTVEVSX1BDSUVfMyAKPj4+IFFDT01fSUND
X1RBR19BTFdBWVMKPj4gVGhpcyBzaG91bGQgYmUgJnBjaWVfbm9ydGhfYW5vYwo+Pgo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJm1jX3ZpcnQgU0xBVkVfRUJJ
MSBRQ09NX0lDQ19UQUdfQUxXQVlTPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmdlbV9ub2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFHX0FMV0FZ
Uwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmNub2NfbWFp
biBTTEFWRV9QQ0lFXzMgUUNPTV9JQ0NfVEFHX0FMV0FZUz47Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpbnRlcmNvbm5lY3QtbmFtZXMgPSAicGNpZS1tZW0iLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3B1LXBjaWUiOwo+PiBXaXRo
IHRoZSBhYm92ZSBhZGRyZXNzZWQsIGZlZWwgZnJlZSB0byBrZWVwIG15IFJldmlld2VkLWJ5IHRh
Zy4KPj4KPj4gSm9oYW4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
