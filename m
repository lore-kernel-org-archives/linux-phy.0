Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B078AC54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 18:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCLlSR4hnO4w/n5XbC4MSMk28hizZJw+364/SreljvM=; b=qLOiPn+CRQM/lp+qamHoRvLm2y
	d6xyzgN7EfvUn9PZWE9HVc4C1FIPQKewNBTXV9nx6t4ZZVODASY+lVe2JwffUoRojnCXs2F2BcYSt
	r6sGJVl/iXt7l5Ic9L0fmZ5FleB0OHlr42bgCG/tz4SrMMkfri9X/45mJ0Z791m6GCXfdnc2hYHK3
	JKWUW9kh5mPrjZBg9T8xUDhP9pF7jbAvesEF8hHyhPkaAz3yMN4HmQR1cpBTqHoQn+JeZWzvq9ayx
	QjfxKVmY13EGJR00hiNksOcEEPTTmliQYlX9Oq/AI71s4J0j0OdtGWN0UwIBCqpEt1fwd/hVcTWTs
	kFYBU7VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZTk-0000000EqU6-1Ai6;
	Tue, 05 Mar 2024 18:25:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhZTh-0000000EqRi-0K7z
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 18:25:26 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 425Fm2T2030069;
	Tue, 5 Mar 2024 18:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:from:to:references
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=2kl5tMFEKrj+g3qzJ7Yn8a+ESpyaPJUxELxULpjiqso=; b=pi
	x2NniezncgxxR80ZzKSp058LQQKAD4JPUS2xx8OeytsP9oRnA3vOLAcFttNHaQfO
	newmEnUbCBHrZVR3+aCdbeGFXeY9dd+rpuju75EkGWYWRyOGfq5PbuoqQ4Vnp5/l
	s50wej/d7nt0mOw53pXJkZ/x/wNEZVJbhrKV866EXYlj+QpCzNh1kXlowe1U1U2c
	zPje5nmBIb2MBftKHDwlOHhgDmJp4cDhBD6oySJHZIp1sgDFkj9LONTEdpWx7K2w
	oRFwV9UB14ZTtWIx1R55e+qGb0VneRlBqZC9taPwsAlMTSs0hfc732B/AnCVEZEj
	svPMN2CNW9c4x0KN3L2A==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wp6bv8cps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Mar 2024 18:25:16 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 425IPFLH009942
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Mar 2024 18:25:15 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 5 Mar
 2024 10:25:08 -0800
Message-ID: <a2e863e2-9c8b-47c2-b4d8-5664d954cd49@quicinc.com>
Date: Tue, 5 Mar 2024 23:55:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 3/3] arm64: dts: qcom: sa8775p-ride: Enable support for
 firmware managed resources
Content-Language: en-US
From: Sriram Dash <quic_sriramd@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <quic_psodagud@quicinc.com>, <quic_nkela@quicinc.com>,
        <manivannan.sadhasivam@linaro.org>, <ulf.hansson@linaro.org>,
        <sudeep.holla@arm.com>, <quic_shazhuss@quicinc.com>,
        <devicetree@vger.kernel.org>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-4-git-send-email-quic_sriramd@quicinc.com>
 <b9142874-0afb-40a6-9008-b33bd8f56840@linaro.org>
 <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
In-Reply-To: <399555e8-d8fa-46b7-8b15-3d3a4a30809b@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Fg58HcmEETQqSWqLAm75O0fTg6deT8lC
X-Proofpoint-ORIG-GUID: Fg58HcmEETQqSWqLAm75O0fTg6deT8lC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-05_15,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0 clxscore=1015
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403050147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_102525_280496_2F60AA4B 
X-CRM114-Status: GOOD (  13.77  )
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

T24gMy81LzIwMjQgMTE6MzMgUE0sIFNyaXJhbSBEYXNoIHdyb3RlOgo+IE9uIDMvNS8yMDI0IDEw
OjM4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAwNS8wMy8yMDI0IDE3OjU3
LCBTcmlyYW0gRGFzaCB3cm90ZToKPj4+IEVzdGFibGlzaCB0aGUgY2hhbm5lbCBhbmQgZG9tYWlu
IG1hcHBpbmcgZm9yIHRoZSBwb3dlciBkb21haW5zIHRvIAo+Pj4gY29ubmVjdAo+Pj4gd2l0aCBm
aXJtd2FyZSwgZW5hYmxpbmcgdGhlIGZpcm13YXJlIHRvIGhhbmRsZSB0aGUgYXNzaWduZWQgcmVz
b3VyY2VzLgo+Pj4gU2luY2UgdGhlc2UgZGVsZWdhdGVkIHJlc291cmNlcyB3aWxsIHJlbWFpbiBp
bnZpc2libGUgdG8gdGhlIG9wZXJhdGluZwo+Pj4gc3lzdGVtLCBlbnN1cmUgdGhhdCBhbnkgcmVm
ZXJlbmNlcyB0byB0aGVtIGFyZSByZW1vdmVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFNyaXJh
bSBEYXNoIDxxdWljX3NyaXJhbWRAcXVpY2luYy5jb20+Cj4+PiAtLS0KPj4+IMKgIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLXJpZGUuZHRzIHwgOTYgCj4+PiArKysrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygr
KSwgMTkgZGVsZXRpb25zKC0pCj4+Cj4+IERvIG5vdCBtaXggRFRTIHBhdGNoZXMgd2l0aCBzdWJt
aXNzaW9ucyB0byBuZXRkZXYgb3IgVVNCLgo+Pgo+PiBQbGVhc2UgcHV0IGl0IGluc2lkZSB5b3Vy
IGludGVybmFsIGd1aWRlcywgc28geW91IHdpbGwgbm90IGJlIHJlcGVhdGluZwo+PiB0aGlzIG92
ZXIgYW5kIG92ZXIuCj4+Cj4gCj4gU3VyZS4gV2lsbCB0YWtlIGNhcmUuIFRoYW5rcy4KPiAKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NhODc3NXAtcmlkZS5k
dHMgCj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLXJpZGUuZHRzCj4+PiBp
bmRleCAyNmFkMDViLi5iNmM5Y2FjIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NhODc3NXAtcmlkZS5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9zYTg3NzVwLXJpZGUuZHRzCj4+PiBAQCAtNzY0LDggKzc2NCwxOCBAQAo+Pj4gwqAgfTsKPj4+
IMKgICZ1c2JfMCB7Cj4+PiAtwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiAt
wqDCoMKgIHBpbmN0cmwtMCA9IDwmdXNiMF9lbl9zdGF0ZT47Cj4+PiArwqDCoMKgIC9kZWxldGUt
cHJvcGVydHkvIGNsb2NrczsKPj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gY2xvY2stbmFt
ZXM7Cj4+PiArwqDCoMKgIC9kZWxldGUtcHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKPj4+ICvC
oMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gYXNzaWduZWQtY2xvY2stcmF0ZXM7Cj4+PiArwqDCoMKg
IC9kZWxldGUtcHJvcGVydHkvIHJlcXVpcmVkLW9wcHM7Cj4+PiArwqDCoMKgIC9kZWxldGUtcHJv
cGVydHkvIHJlc2V0czsKPj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gaW50ZXJjb25uZWN0
czsKPj4+ICvCoMKgwqAgL2RlbGV0ZS1wcm9wZXJ0eS8gaW50ZXJjb25uZWN0LW5hbWVzOwo+Pj4g
Kwo+Pj4gK8KgwqDCoCBwb3dlci1kb21haW5zID0gPFRPRE8+LCA8VE9ETz47Cj4+Cj4+IFRoaXMg
d2Fzbid0IGV2ZW4gdGVzdGVkLgo+Pgo+IAo+IFRoaXMgaXMgdGVzdGVkIHdpdGggdGhlIHNwZWNp
ZmljIHBvd2VyIGRvbWFpbnMgaW4gcGxhY2UKPiBvZiA8VE9ETz4uIFNDTUkgaW50ZXJmYWNlIGlz
IHVzZWQgZm9yIHRoZSBwb3dlciBkb21haW5zLgo+IAo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlz
enRvZgo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
