Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C9DBC47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 10:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DatucXtTNYuGaB3e7bOr4P8U1as5Vg8sSM30sj4Mwjk=; b=ge/ZJ/ZVZvCdOQ
	blF3DtJxri78aztS1WZSfpnPISKwmHlobuYrzFEHJ/JgYqmrSCj/d9f9BNPj5FcXwKCyArfjnwbdb
	NFPaOcFnXcS2SgQvs8N49vVa4IMaYWLhpL5YiPmNDBuDJa5t8NLan3YFpjVxQZnc1gC2eUqtSidMP
	SBR6SVWlx1gUuPXC2vm6go/K68kv5/TWNQfM2xlELv1K3d7ofph4eFK8RSJqu99ct022dLgaTXeYt
	x5qrzp6tJ9GLxbXjSDUk6UNLHfSzRmvbQSa0usBDMl/cHXYSTQ4fp+8SO4b4HAu88pjc9o19zoCxF
	3eFHTc3xhyzXWJ0CWAtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwje-0001eJ-2t;
	Thu, 25 Jan 2024 10:13:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwjb-0001d8-2w
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 10:13:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40P31JFo006530;
	Thu, 25 Jan 2024 10:13:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=/Lmt658XHei/YTYu+MA0LY9n7IDvawBEOz497OhPBCk=; b=HD
	uo/eueXSHH/+6KL4HzvFfvIthBKNZus1t3Uj5Hlafpd4Ubmo7FmoDnXyZpyQXKka
	TUJGu9gIXXyVNVlm4dLpnZUdrnRWs9X69U+nO1kt/tSMG8AxfO+kzQcTHaEHKuRS
	4dHbUZLb4FIjpnFpH4qnKjXIUGhst26lCnY6j60gqZn2r6F/rs5vlyZDgftSF6Kj
	+obAQT/17/cY6bDuxqQ76ZcDuWDPDhvIvnL/w6HR30K8FwCKcacJLM6/vP44Qcpw
	VMW/sF/gm+3k5ijvx8VkMQ7mdF0LTejLVzeSQZy+hIuBGxaj7mXJm4RIswHJQH/b
	Ms7QQW5/xsRXkPJoEE3g==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vufc80va1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jan 2024 10:13:16 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40PADFmK002157
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jan 2024 10:13:15 GMT
Received: from [10.239.34.220] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 25 Jan
 2024 02:13:12 -0800
Message-ID: <b214fc0c-8beb-4e5e-b8d8-e4c609106448@quicinc.com>
Date: Thu, 25 Jan 2024 18:13:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <neil.armstrong@linaro.org>,
        <agross@kernel.org>, <andersson@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <quic_cang@quicinc.com>,
        <quic_mrana@quicinc.com>
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
 <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
 <0a3f486d-0135-454e-9da6-b888e516a39e@quicinc.com>
 <aa445a92-e640-4f1d-969c-20cafefcf44e@linaro.org>
 <aa2d61d5-ada1-485a-aed8-7cd360adf744@linaro.org>
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <aa2d61d5-ada1-485a-aed8-7cd360adf744@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: y9RrHQIh0438GnlteZ4yndHiNo-vDIH0
X-Proofpoint-GUID: y9RrHQIh0438GnlteZ4yndHiNo-vDIH0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-25_05,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=642 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401190000 definitions=main-2401250069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_021324_094152_7318013C 
X-CRM114-Status: GOOD (  11.92  )
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

Ck9uIDEvMjUvMjAyNCA1OjUxIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+Cj4KPiBPbiAxLzI1
LzI0IDA4OjUzLCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+PiBPbiAyNS8wMS8y
MDI0IDAzOjU5LCBRaWFuZyBZdSB3cm90ZToKPj4+Cj4+PiBPbiAxLzI0LzIwMjQgNDo1OCBQTSwg
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4+PiBPbiAyOC8xMi8yMDIzIDA2OjQy
LCBRaWFuZyBZdSB3cm90ZToKPj4+Pj4gQWxpZ24gUENJZTAvUENJZTEgUEhZIHNldHRpbmdzIHdp
dGggU004NTUwIGxhdGVzdCBQQ0llIFBIWSBIYXJkd2FyZQo+Pj4+PiBQcm9ncmFtbWluZyBHdWlk
ZS4KPj4+Pj4KPj4+Pj4gQ2FuIEd1byAoMSk6Cj4+Pj4+IMKgwqAgcGh5OiBxY29tOiBxbXAtcGNp
ZTogVXBkYXRlIFBDSWUxIFBIWSBzZXR0aW5ncyBmb3IgU004NTUwCj4+Pj4+Cj4+Pj4+IFFpYW5n
IFl1ICgxKToKPj4+Pj4gwqDCoCBwaHk6IHFjb206IHFtcC1wY2llOiBVcGRhdGUgUENJZTAgUEhZ
IHNldHRpbmdzIGZvciBTTTg1NTAKPj4+Pj4KPj4+Pj4gwqAgZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjaWUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDIwIAo+Pj4+PiAr
KysrKysrKysrKysrKy0tLS0tLQo+Pj4+PiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtcGNzLXBjaWUtdjYuaMKgwqDCoMKgwqAgfCAyICsrCj4+Pj4+IMKgIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtcGNpZS12Nl8yMC5owqDCoCB8IDIgKysKPj4+Pj4g
wqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12Nl8yMC5owqDCoMKgwqDC
oMKgwqAgfCAxICsKPj4+Pj4gwqAgLi4uL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRl
cy10eHJ4LXY2XzIwLmjCoMKgIHwgMiArKwo+Pj4+PiDCoCA1IGZpbGVzIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4KPj4+PiAtIE9uIFNNODU1MC1I
REs6Cj4+Pj4gIyBsc3BjaQo+Pj4+IDAwMDA6MDA6MDAuMCBQQ0kgYnJpZGdlOiBRdWFsY29tbSBE
ZXZpY2UgMDExMwo+Pj4+IDAwMDA6MDE6MDAuMCBOZXR3b3JrIGNvbnRyb2xsZXI6IFF1YWxjb21t
IERldmljZSAxMTA3IChyZXYgMDEpCj4+Pj4gMDAwMTowMDowMC4wIFBDSSBicmlkZ2U6IFF1YWxj
b21tIERldmljZSAwMTEzCj4+Pj4gMDAwMTowMTowMC4wIE5vbi1Wb2xhdGlsZSBtZW1vcnkgY29u
dHJvbGxlcjogUGhpc29uIEVsZWN0cm9uaWNzIAo+Pj4+IENvcnBvcmF0aW9uIEUxMiBOVk1lIENv
bnRyb2xsZXIgKHJldiAwMSkKPj4+Pgo+Pj4+Cj4+Pj4gIyBsc3BjaSAtbnZ2Cj4+Pj4gMDAwMDow
MDowMC4wIDA2MDQ6IDE3Y2I6MDExMyAocHJvZy1pZiAwMCBbTm9ybWFsIGRlY29kZV0pCj4+Pj4g
wqDCoMKgwqDCoMKgwqAgTG5rQ2FwOsKgwqDCoCBQb3J0ICMwLCBTcGVlZCA4R1QvcywgV2lkdGgg
eDIsIEFTUE0gTDBzIEwxLCAKPj4+PiBFeGl0IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPj4+
PiDCoMKgwqDCoMKgwqDCoCBMbmtTdGE6wqDCoMKgIFNwZWVkIDVHVC9zLCBXaWR0aCB4Mgo+Pj4+
IDAwMDE6MDA6MDAuMCAwNjA0OiAxN2NiOjAxMTMgKHByb2ctaWYgMDAgW05vcm1hbCBkZWNvZGVd
KQo+Pj4+IMKgwqDCoMKgwqDCoMKgIExua0NhcDrCoMKgwqAgUG9ydCAjMCwgU3BlZWQgMTZHVC9z
LCBXaWR0aCB4MiwgQVNQTSBMMHMgTDEsIAo+Pj4+IEV4aXQgTGF0ZW5jeSBMMHMgPDR1cywgTDEg
PDh1cwo+Pj4+IMKgwqDCoMKgwqDCoMKgIExua1N0YTrCoMKgwqAgU3BlZWQgOEdUL3MsIFdpZHRo
IHgyCj4+Pj4KPj4+PiBUZXN0ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0Bs
aW5hcm8ub3JnPiAjIG9uIFNNODU1MC1IREsKPj4+Pgo+Pj4+IC0gT24gU004NTUwLVFSRDoKPj4+
PiAjIGxzcGNpCj4+Pj4gMDA6MDAuMCBQQ0kgYnJpZGdlOiBRdWFsY29tbSBEZXZpY2UgMDExMwo+
Pj4+IDAxOjAwLjAgTmV0d29yayBjb250cm9sbGVyOiBRdWFsY29tbSBEZXZpY2UgMTEwNyAocmV2
IDAxKQo+Pj4+Cj4+Pj4gIyBsc3BjaSAtbnZ2Cj4+Pj4gwqDCoMKgwqDCoMKgwqAgTG5rQ2FwOsKg
wqDCoCBQb3J0ICMwLCBTcGVlZCA4R1QvcywgV2lkdGggeDIsIEFTUE0gTDBzIEwxLCAKPj4+PiBF
eGl0IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPj4+PiDCoMKgwqDCoMKgwqDCoCBMbmtTdGE6
wqDCoMKgIFNwZWVkIDVHVC9zLCBXaWR0aCB4Mgo+Pj4+Cj4+Pj4gVGVzdGVkLWJ5OiBOZWlsIEFy
bXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gIyBvbiBTTTg1NTAtUVJECj4+Pj4K
Pj4+PiBUaGFua3MsCj4+Pj4gTmVpbAo+Pj4KPj4+IEhpIE5laWwsCj4+Pgo+Pj4gVGhhbmtzIGZv
ciB0ZXN0aW5nIHRoaXMgcGF0Y2guIEkgdmVyaWZpZWQgb24gYWltMzAwLCBkaWQgbm90IHNlZSAK
Pj4+IHNwZWVkIGRvd25ncmFkZS4gTGV0IG1lIGhhdmUgYSB0cnkgb24gSERLODU1MC4KPj4KPj4g
SSBoYXZlbid0IHNlZW4gc3BlZWQgZG93bmdyYWRlIGVpdGhlciBvbiB0aGUgSERLODU1MAo+Cj4g
SSdtIGd1ZXNzaW5nIHRoZSA1IEdUL3MgbGluayBnb2VzIHRvIHRoZSBXaS1GaSBjaGlwLCB3aGlj
aCBtYXkKPiBiZSBuZWdvdGlhdGluZyBhIGxvd2VyIFBDSWUgZ2VuIGluIG9yZGVyIHRvIHNhdmUg
cG93ZXIuCj4KPiBLb25yYWQKCkhpIEtvbnJhZCxOZWlsLiBPSywgSSBzZWUuIEkgbWlzdW5kZXJz
dG9vZC4gVGhhbmtzLgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
