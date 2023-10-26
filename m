Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD201C25B48
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 06:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nS1szxa8oeo4mmwkCwZ8k7XNUmfHkUjxewcfHps2QA=; b=vOJ6nMOmUREH2z
	Qs3k0ejubkWXJ/0URsktJjbBcbK31uaLof69EYpDY+K7PgYZ/rx7//yl/Jk8mBpsK8BiDEDIH80Ts
	aB3NLxoLy/9pV+/jiO3XtKcOk5c9BFj+93CgnbI73oZs+lvnh+xNbvI4xUO17C0u8AUuO7evAIwf8
	Pj1f1MkOjuuccncvcbN7HJWVGFOrkUCI/MZyQMkJGVnPr5KbXzYQcnkxdUKzovPLQUszGaSrWQ5bS
	z6iNwgPgrEtliDlUPaVMK28VBSTundzx/YregxLUZrlZydik0GKh9Qa88O6Q4dfmaN72mxFXTH6Ng
	7EBAJbIqAL6GnCC352Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvuLX-00DnzA-22;
	Thu, 26 Oct 2023 06:59:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvuLU-00Dnyn-1y
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 06:59:58 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q4LBEM025969;
	Thu, 26 Oct 2023 06:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=RvSu2wBlTyaSD4rRdyzHdiuXKRFtHzfpvGcgmEvfdi8=;
 b=Mm3H6XKxmd5uT50Wi9fpdzKVVVedUokbzNypEo330L0LypWhAUzZ2xq2AjEFQhwL2RJV
 UN+xBSeDHTGiFpQewp5JK82LOeD1Hsolkx3gEdPjWFQjdvjWTN6ANdSl9Bx18IX7Nlex
 WYvHR+sh3hEZziS9wVvlHExJNDbmdkQDRIZK2cPKliWNurusuLiS/DhE+zmTzSbqJv94
 mNQo6S8I/rDu2rwBrR7dITH58zA4cYy4BrPIWuDZRFw661oY+fEGswtoiYQ2dFIXYN7Z
 +37BKGzR5879Ihm6nflQ9IB0/6nIkqBfo0lRyhmbkk8J40WNXFH44urFBlSn1YGb1Nhv fw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tyfwfre7h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 06:59:47 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39Q6xlJ0009877
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 06:59:47 GMT
Received: from [10.216.45.182] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 23:59:34 -0700
Message-ID: <23f3f2a8-dcbd-6764-195b-49bcec451084@quicinc.com>
Date: Thu, 26 Oct 2023 12:29:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <quic_shazhuss@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nayiluri@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <robh@kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Lorenzo
 Pieralisi" <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
	<kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul
	<vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
 <20231025075317.GC3648@thinkpad>
 <adbca084-a74b-51be-67b5-a3b9e45da506@quicinc.com>
 <20231026061035.GA4915@thinkpad>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <20231026061035.GA4915@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4qyOtCkhD_4PxOxnlRidLfytKY9mAn1X
X-Proofpoint-GUID: 4qyOtCkhD_4PxOxnlRidLfytKY9mAn1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_04,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 malwarescore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 lowpriorityscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_235956_672319_9B7CD43C 
X-CRM114-Status: GOOD (  18.42  )
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

Ck9uIDEwLzI2LzIwMjMgMTE6NDAgQU0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBP
biBUaHUsIE9jdCAyNiwgMjAyMyBhdCAxMTowODowM0FNICswNTMwLCBNcmlubWF5IFNhcmthciB3
cm90ZToKPj4gT24gMTAvMjUvMjAyMyAxOjIzIFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4+PiBPbiBUaHUsIE9jdCAxOSwgMjAyMyBhdCAwNTowNzowN1BNICswNTMwLCBNcmlubWF5
IFNhcmthciB3cm90ZToKPj4+PiBBZGQgc3VwcG9ydCBmb3IgU0E4Nzc1UCBTb0MgdG8gdGhlIFF1
YWxjb21tIFBDSWUgRW5kcG9pbnQgQ29udHJvbGxlcgo+Pj4+IGRyaXZlci4gVGhlcmUgd2lsbCBi
ZSBzb21lIGNoYW5nZSBzcGVjaWZpYyB0byBTQTg3NzVQIHNvIGFkZGluZyBuZXcKPj4+PiBjb21w
YXRpYmxlIHN0cmluZy4KPj4+Pgo+Pj4gV2hhdCBhcmUgdGhvc2Ugc3BlY2lmaWMgY2hhbmdlcz8K
Pj4+Cj4+PiAtIE1hbmkKPj4gTmVlZCB0byBlbmFibGUgY2FjaGUgc25vb3BpbmcgbG9naWMgZm9y
IFNBODc3NVAgb25seS4KPj4KPiBUaGVuIHlvdSBjYW4gYWRkIHRoZSBjb21wYXRpYmxlIHRvIHRo
ZSBkcml2ZXIgYXQgdGhhdCB0aW1lIGFuZCB1c2UgdGhlIGZhbGxiYWNrCj4gdGlsbCB0aGVuIGku
ZS4sIGp1c3QgZG9jdW1lbnQgdGhlIFNBODc3NVAgY29tcGF0aWJsZSBpbiBiaW5kaW5ncyBhbmQg
dXNlIGJvdGgKPiBTQTg3NzVQIGFuZCBTTTg0NTAgY29tcGF0aWJsZXMgaW4gdGhlIGR0cyB3aGVy
ZSB0aGUgbGF0dGVyIHdpbGwgYWN0IGFzIGEKPiBmYWxsYmFjay4KPgo+IC0gTWFuaQoKSSBhbSBn
ZXR0aW5nIGJlbG93IGVycm9yIGluIGR0YiBjaGVja2luZyBpZiBJIGFkZCBTTTg0NTAgYXMgZmFs
bGJhY2sgCmNvbXBhdGlibGUgaW4gZHRzaS4gQXMgYm90aCBoYXMgZGlmZmVyZW50IHNldCBvZiBj
bG9ja3MuCgovL2xvY2FsL21udC93b3Jrc3BhY2UvTXJpbm1heS9uZXdfbGVtYW5zL25leHQtMjAy
MzEwMTgvbGludXgtbmV4dC9vdXQvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NhODc3NXAtcmlk
ZS5kdGI6IApwY2llLWVwQDFjMDAwMDA6IGNvbXBhdGlibGU6ICdvbmVPZicgY29uZGl0aW9uYWwg
ZmFpbGVkLCBvbmUgbXVzdCBiZSAKZml4ZWQ6Ly8KLy/CoMKgwqDCoMKgwqDCoCBbJ3Fjb20sc2E4
Nzc1cC1wY2llLWVwJywgJ3Fjb20sc204NDUwLXBjaWUtZXAnXSBpcyB0b28gbG9uZy8vCi8vwqDC
oMKgwqDCoMKgwqAgJ3Fjb20sc2R4NjUtcGNpZS1lcCcgd2FzIGV4cGVjdGVkLy8KLy/CoMKgwqDC
oMKgwqDCoCAncWNvbSxzZHg1NS1wY2llLWVwJyB3YXMgZXhwZWN0ZWQvLwovL8KgwqDCoMKgwqDC
oMKgIGZyb20gc2NoZW1hICRpZDogCmh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BjaS9x
Y29tLHBjaWUtZXAueWFtbCMvLwovLy9sb2NhbC9tbnQvd29ya3NwYWNlL01yaW5tYXkvbmV3X2xl
bWFucy9uZXh0LTIwMjMxMDE4L2xpbnV4LW5leHQvb3V0L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9zYTg3NzVwLXJpZGUuZHRiOiAKcGNpZS1lcEAxYzAwMDAwOiBjbG9ja3M6IFtbMzEsIDY2XSwg
WzMxLCA2OF0sIFszMSwgNjldLCBbMzEsIDc4XSwgWzMxLCAKNzldXSBpcyB0b28gc2hvcnQvLwov
L8KgwqDCoMKgwqDCoMKgIGZyb20gc2NoZW1hICRpZDogCmh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9z
Y2hlbWFzL3BjaS9xY29tLHBjaWUtZXAueWFtbCMvLwovLy9sb2NhbC9tbnQvd29ya3NwYWNlL01y
aW5tYXkvbmV3X2xlbWFucy9uZXh0LTIwMjMxMDE4L2xpbnV4LW5leHQvb3V0L2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zYTg3NzVwLXJpZGUuZHRiOiAKcGNpZS1lcEAxYzAwMDAwOiBjbG9jay1u
YW1lczogWydhdXgnLCAnY2ZnJywgJ2J1c19tYXN0ZXInLCAnYnVzX3NsYXZlJywgCidzbGF2ZV9x
MmEnXSBpcyB0b28gc2hvcnQvCgo+PiAtLU1yaW5tYXkKPj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBN
cmlubWF5IFNhcmthciA8cXVpY19tc2Fya2FyQHF1aWNpbmMuY29tPgo+Pj4+IC0tLQo+Pj4+ICAg
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jIHwgMSArCj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+Pj4+IGluZGV4IDMyYzhkOWUuLjRjMDFjMzQgMTAw
NjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMK
Pj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+Pj4+
IEBAIC04NTgsNiArODU4LDcgQEAgc3RhdGljIHZvaWQgcWNvbV9wY2llX2VwX3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4+ICAgIH0KPj4+PiAgICBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBxY29tX3BjaWVfZXBfbWF0Y2hbXSA9IHsKPj4+PiArCXsgLmNv
bXBhdGlibGUgPSAicWNvbSxzYTg3NzVwLXBjaWUtZXAiLCB9LAo+Pj4+ICAgIAl7IC5jb21wYXRp
YmxlID0gInFjb20sc2R4NTUtcGNpZS1lcCIsIH0sCj4+Pj4gICAgCXsgLmNvbXBhdGlibGUgPSAi
cWNvbSxzbTg0NTAtcGNpZS1lcCIsIH0sCj4+Pj4gICAgCXsgfQo+Pj4+IC0tIAo+Pj4+IDIuNy40
Cj4+Pj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
