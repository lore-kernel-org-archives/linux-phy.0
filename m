Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FA3DE77173
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 07:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wv4MPtxPjnODD0vGCSepJWTRrfPIBA26YE1tomhLQkM=; b=D3s9ZE71670P88
	FgauBtiKcoYdYbjRqVwcZBOT56F0U/mQXnba5yzAPcalmkLzycQ6vAjmiZKis5QJYe+9XWb4vWdXC
	j91nmm8sfdpJTyplWysX6R+Lsz38qZPV/A0pqUR68Fquc5lsaFs2Nd7WHGBkERUS4Fdq7gtSZZFfm
	ztRNnknheNpr7/vGVAFk6iqsrCGd1Mwryhf2/DYm4fpHUEv64UEnv/SQbWFTzGWvgtOE4YIhrU0Ho
	or5ChcZww36gg85KXBaaVD8urrTU0ampU7P2JQQzc64uyi+8SmuzuqSCy8bWwA7MNRvpMuO8QRM+j
	vz0pSIwekS9rvC8iXpQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYeF-00000006nN1-3JHj;
	Mon, 09 Dec 2024 07:57:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYdM-00000006nAw-3e3q
	for linux-phy@bombadil.infradead.org;
	Mon, 09 Dec 2024 07:56:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=//fyAi5zWyKw6AlYlMQlperLUy5r1PNdg265IdOPf3I=; b=cCJpJDWjkfbCC+o6lpdmoRKIKi
	aT6/L6s8N5c4MJ1r0oKoZiIhSEjKIJPRT/tcvh6FgcJ5sUmHzXhhypc8dqUhh1QjsDDR5fpYAm0x1
	brKU6RfMrAei6pQhR06WVE6c9datFUYb3jEG6tJjvLdYtCkpSmt6iNGXS5DETXc7MvLKiBnPXycev
	X65ODAb554Nssp97XTZep1j3XX/F34VXKhWCY0QAYQ8FbX3S/aGhuxQ748F6aCQEXrM2kQlb0XbJ9
	eLXoVom6gjJboKcVEfgYkQ4ZUsiff3DZqJHnCOtTuVAw1w0S6ILGHfNTa+HW72TdHxNqRcLe1NYM4
	Oj6FRfjg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKYdJ-00000003VDt-1lYI
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 07:56:47 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B8NHupS027535;
	Mon, 9 Dec 2024 07:56:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	//fyAi5zWyKw6AlYlMQlperLUy5r1PNdg265IdOPf3I=; b=pii0iYuF6CfLIWnm
	fJSWkR5b0XDIZIdEe3BZPqUO4ZDF+x/BkWr2ovOxRRp3qGzgYxpz9fNrz74uyCcy
	ahFlRRc6NhrExD5575dhvqfRPI7N+qQ8Vq66qRc0LWPXXC2cJGJhSt+8RPMiXzy9
	nFaYi07iC3b2lAjIon5ktYDtnW7CaG6wwBPIQMCVuCakLHIIYbPeg/Ptm/9lp669
	Vx9ui+GcexLvnOkF/FmdOhtriRrgc8j3a7K2SWbtWo7crqb9uVo6Vk966FPuOFHN
	CTjAn8qjIzqIbpahcQ1gg9qemoAO1wKbV2DAy/JIOqCVMS6YUQRO+AfL630CtJrX
	nAx4Jw==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43cdxxbswb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 07:56:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B97uL0V012615
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Dec 2024 07:56:21 GMT
Received: from [10.64.68.72] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 8 Dec 2024
 23:56:15 -0800
Message-ID: <677251eb-d3c3-48e1-ba79-fb8ec1e29c6f@quicinc.com>
Date: Mon, 9 Dec 2024 15:56:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs615: add UFS node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-3-quic_liuxin@quicinc.com>
 <d4f7ca97-b37e-4b8f-918c-9976e4a9cf41@oss.qualcomm.com>
From: Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <d4f7ca97-b37e-4b8f-918c-9976e4a9cf41@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: fhcH6imOFbF_y0RnyThXz3P6qCy6QLoS
X-Proofpoint-GUID: fhcH6imOFbF_y0RnyThXz3P6qCy6QLoS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_075645_883290_5C3B4D84 
X-CRM114-Status: GOOD (  11.16  )
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

CgrlnKggMjAyNC8xMi82IDU6MjEsIEtvbnJhZCBEeWJjaW8g5YaZ6YGTOgo+IE9uIDIyLjExLjIw
MjQgNzo0NCBBTSwgWGluIExpdSB3cm90ZToKPj4gRnJvbTogU2F5YWxpIExva2hhbmRlIDxxdWlj
X3NheWFsaWxAcXVpY2luYy5jb20+Cj4+Cj4+IEFkZCB0aGUgVUZTIEhvc3QgQ29udHJvbGxlciBu
b2RlIGFuZCBpdHMgUEhZIGZvciBRQ1M2MTUgU29DLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTYXlh
bGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPj4gQ28tZGV2ZWxvcGVkLWJ5
OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogWGlu
IExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4+IC0tLQo+IAo+IFsuLi5dCj4gCj4+ICsK
Pj4gKwkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JnVmc19vcHBfdGFibGU+Owo+PiArCQkJaW50
ZXJjb25uZWN0cyA9IDwmYWdncmUxX25vYyBNQVNURVJfVUZTX01FTSBRQ09NX0lDQ19UQUdfQUxX
QVlTCj4+ICsJCQkJCSAmbWNfdmlydCBTTEFWRV9FQkkxIFFDT01fSUNDX1RBR19BTFdBWVM+LAo+
PiArCQkJCQk8JmdlbV9ub2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFHX0FMV0FZUwo+
PiArCQkJCQkgJmNvbmZpZ19ub2MgU0xBVkVfVUZTX01FTV9DRkcgUUNPTV9JQ0NfVEFHX0FMV0FZ
Uz47Cj4gCj4gUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZIGZvciB0aGUgY3B1IHBhdGgKSSBuZWVk
IHRvIGFzayB5b3UgZm9yIGFkdmljZS4gSSBoYXZlIHJldmlld2VkIHRoZSB1ZnNfbWVtX2hjIG9m
IG1hbnkgCmRldmljZXMgYW5kIGZvdW5kIHRoYXQgYWxsIG9mIHRoZW0gdXNlIFFDT01fSUNDX1RB
R19BTFdBWVMgZm9yIHRoZWlyIAppbnRlcmNvbm5lY3RzIGNwdSBwYXRoLiBXaHkgZG8gSSBuZWVk
IHRvIHVzZSBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFkgaGVyZT8KPiAKPj4gKwkJCWludGVyY29u
bmVjdC1uYW1lcyA9ICJ1ZnMtZGRyIiwKPj4gKwkJCQkJICAgICAiY3B1LXVmcyI7Cj4+ICsKPj4g
KwkJCXBvd2VyLWRvbWFpbnMgPSA8JmdjYyBVRlNfUEhZX0dEU0M+Owo+PiArCQkJcmVxdWlyZWQt
b3BwcyA9IDwmcnBtaHBkX29wcF9ub20+Owo+IAo+IHRoaXMgY29udHJhZGljdHMgdGhlIGxldmVs
cyBpbiB0aGUgT1BQIHRhYmxlOgpUaGUgcmVxdWlyZWQtb3BwcyBoZXJlIGNvcnJlc3BvbmRzIHRv
IG9wcC0yMDAwMDAwMDAgaW4gdGhlIG9wcF90YWJsZSAKYmVsb3cuIFNpbWlsYXJseSwgSSByZWZl
cnJlZCB0byBzbTg1NTAuZHRzaSwgd2hvc2UgcmVxdWlyZWQtb3BwcyBhbHNvIApjb3JyZXNwb25k
cyB0byB0aGUgb3BwIHRhYmxlLgo+IAo+PiArCj4+ICsJCQlpb21tdXMgPSA8JmFwcHNfc21tdSAw
eDMwMCAweDA+Owo+PiArCQkJZG1hLWNvaGVyZW50Owo+PiArCj4+ICsJCQlsYW5lcy1wZXItZGly
ZWN0aW9uID0gPDE+Owo+PiArCj4+ICsJCQlwaHlzID0gPCZ1ZnNfbWVtX3BoeT47Cj4+ICsJCQlw
aHktbmFtZXMgPSAidWZzcGh5IjsKPj4gKwo+PiArCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+PiAr
Cj4+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCj4+ICsJCQl1ZnNfb3BwX3RhYmxlOiBv
cHAtdGFibGUgewo+PiArCQkJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+
ICsKPj4gKwkJCQlvcHAtNTAwMDAwMDAgewo+PiArCQkJCQlvcHAtaHogPSAvYml0cy8gNjQgPDUw
MDAwMDAwPiwKPj4gKwkJCQkJCSAvYml0cy8gNjQgPDA+LAo+PiArCQkJCQkJIC9iaXRzLyA2NCA8
MD4sCj4+ICsJCQkJCQkgL2JpdHMvIDY0IDwzNzUwMDAwMD4sCj4+ICsJCQkJCQkgL2JpdHMvIDY0
IDw3NTAwMDAwMD4sCj4+ICsJCQkJCQkgL2JpdHMvIDY0IDwwPiwKPj4gKwkJCQkJCSAvYml0cy8g
NjQgPDA+LAo+PiArCQkJCQkJIC9iaXRzLyA2NCA8MD47Cj4+ICsJCQkJCXJlcXVpcmVkLW9wcHMg
PSA8JnJwbWhwZF9vcHBfbG93X3N2cz47Cj4+ICsJCQkJfTsKPj4gKwo+IAo+IEtvbnJhZAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
