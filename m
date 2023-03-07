Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE36BC678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 15:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+l+VJwsRwMQlSJJ0HrFSsA0yOqS2eLcmw9gxctbIsM=; b=Crgn6cleg9SJD/
	QOBIZHtg+e+POTfyMUPpNRaZeC9DqKqIv4qBj1LrKhY/qSbzN3FndsP6VmeV39dFs7HptlY7ed7Th
	Bw8jjujE4V3CL4YEfljIdkHObq+xd1BmaRgrVf6lGxaiwwPigBFhLFn01JGDRr6LhhPxGBC7a2rGT
	5ymHTBFF/VZvAQega0EKvBk/r4qCZmEdQVwc569yDuIURrk5q1VFq1nJFITsyFGmhtEE01Nxdu42l
	r+2qjQRDPjHEbfx3tBAxYsLaNA3dqEGeTildQWSWbXaIw02IfMlllb4isiTpmWGipWTL3Yr3FJLdc
	qOuRlLCRKfZMpmrUwJQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZ1Q-0019HK-Ui; Tue, 07 Mar 2023 15:14:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZYUP-000ssI-N1
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 14:40:33 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 327BlGoi015461;
	Tue, 7 Mar 2023 14:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=i53QPVYIrmTCbrDijnOlfxobhbAk3r0Ggu4cMMF63Wo=;
 b=PabwuxuEG6F1OTPXRJgThesE36PLS34QhGNjpdjgphbXxHv6O1HcoJkmk2GHEiG42tM0
 pBwMsAd6aKFvuYFbRzWLLteqA6DSW0i5vbuYwDjpr+XbW6K3fvVl191jrBxmnPHpAfBG
 jAqDOvTJZfQXibJ8mL6kEF6zzjgXkWRTEToBnJow8vMx28blT+Bn02H5Hsyz6BGyWrPa
 skMbTYn3YY+g1wW7hCSG1Ul1QQBy0KQ7nIx8XD8WKIUQRgSbyx4VASQ+LwiqXeP+Gcfg
 O6PdranzkEjplNA9FIZkRC3b9qt+Dp9cjiSOt4Xa1fyh/7PFZBFQb6ZknlxWbJkN6Kht lw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p417k0b4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Mar 2023 14:40:18 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 327EeGMW010062
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Mar 2023 14:40:16 GMT
Received: from [10.216.11.93] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Tue, 7 Mar 2023
 06:40:07 -0800
Message-ID: <2afe8c7e-7e54-460f-7206-64a290beccfb@quicinc.com>
Date: Tue, 7 Mar 2023 20:10:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <p.zabel@pengutronix.de>, <svarbanov@mm-sol.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>,
        <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com>
 <20230224082332.GA5443@thinkpad>
 <bd153038-4427-1f11-1941-5f13fec01cf7@quicinc.com>
 <20230228063358.GA4839@thinkpad>
 <9BD62D8E-4E14-4269-B72D-C83EF4D43040@linaro.org>
 <20230303174036.GB6782@thinkpad>
 <30cf9717-dcca-e984-c506-c71b7f8e32cd@quicinc.com>
 <20230307125655.GC5599@thinkpad>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <20230307125655.GC5599@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Q4-Eiiz-2ugI2HN_PIW6ud0SaG_cRLwk
X-Proofpoint-ORIG-GUID: Q4-Eiiz-2ugI2HN_PIW6ud0SaG_cRLwk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_08,2023-03-07_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 clxscore=1015 adultscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303070130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_064029_932353_D52F7583 
X-CRM114-Status: GOOD (  23.18  )
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

CgpPbiAzLzcvMjAyMyA2OjI2IFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
VHVlLCBNYXIgMDcsIDIwMjMgYXQgMDM6MTU6MDhQTSArMDUzMCwgRGV2aSBQcml5YSB3cm90ZToK
Pj4KPj4KPj4gT24gMy8zLzIwMjMgMTE6MTAgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90
ZToKPj4+IE9uIEZyaSwgTWFyIDAzLCAyMDIzIGF0IDA1OjE2OjU4UE0gKzAyMDAsIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4gMjgg0YTQtdCy0YDQsNC70Y8gMjAyMyDQsy4gMDg6MzM6NTgg
R01UKzAyOjAwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4g0L/QuNGI
0LXRgjoKPj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMTA6NTY6NTNBTSArMDUzMCwgRGV2
aSBQcml5YSB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gT24gMi8yNC8yMDIzIDE6NTMgUE0s
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4+Pj4+PiBPbiBUdWUsIEZlYiAxNCwgMjAy
MyBhdCAxMDoxMToyOVBNICswNTMwLCBEZXZpIFByaXlhIHdyb3RlOgo+Pj4+Pj4+PiBEb2N1bWVu
dCB0aGUgY29tcGF0aWJsZSBmb3IgSVBROTU3NAo+Pj4+Pj4+Pgo+Pj4+Pj4gSGkgTWFuaSwgVGhh
bmtzIGZvciB0YWtpbmcgdGltZSB0byByZXZpZXcgdGhlIHBhdGNoLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
WW91IGRpZG4ndCBtZW50aW9uIGFib3V0IHRoZSAibXNpLXBhcmVudCIgcHJvcGVydHkgdGhhdCBp
cyBiZWluZyBhZGRlZAo+Pj4+Pj4+IGJ5IHRoaXMgcGF0Y2gKPj4+Pj4+IFN1cmUsIHdpbGwgdXBk
YXRlIHRoZSBjb21taXQgbWVzc2FnZSBpbiB0aGUgbmV4dCBzcGluCj4+Pj4+Pj4KPj4+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogRGV2aSBQcml5YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNvbT4KPj4+
Pj4+Pj4gLS0tCj4+Pj4+Pj4+ICAgICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxw
Y2llLnlhbWwgICAgfCA3MiArKysrKysrKysrKysrKysrKystCj4+Pj4+Pj4+ICAgICAxIGZpbGUg
Y2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4+Pj4KPj4+Pj4+
Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNv
bSxwY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS55YW1sCj4+Pj4+Pj4+IGluZGV4IDg3MjgxN2Q2ZDJiZC4uZGFiZGYyNjg0ZTJkIDEwMDY0
NAo+Pj4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fj
b20scGNpZS55YW1sCj4+Pj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPj4+Pj4+Pj4gQEAgLTI2LDYgKzI2LDcgQEAgcHJvcGVy
dGllczoKPj4+Pj4+Pj4gICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDY0LXYyCj4+Pj4+
Pj4+ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NAo+Pj4+Pj4+PiAgICAgICAgICAg
ICAgIC0gcWNvbSxwY2llLWlwcTgwNzQtZ2VuMwo+Pj4+Pj4+PiArICAgICAgICAgIC0gcWNvbSxw
Y2llLWlwcTk1NzQKPj4+Pj4+Pj4gICAgICAgICAgICAgICAtIHFjb20scGNpZS1tc204OTk2Cj4+
Pj4+Pj4+ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtcWNzNDA0Cj4+Pj4+Pj4+ICAgICAgICAg
ICAgICAgLSBxY29tLHBjaWUtc2E4NTQwcAo+Pj4+Pj4+PiBAQCAtNDQsMTEgKzQ1LDExIEBAIHBy
b3BlcnRpZXM6Cj4+Pj4+Pj4+ICAgICAgIHJlZzoKPj4+Pj4+Pj4gICAgICAgICBtaW5JdGVtczog
NAo+Pj4+Pj4+PiAtICAgIG1heEl0ZW1zOiA1Cj4+Pj4+Pj4+ICsgICAgbWF4SXRlbXM6IDYKPj4+
Pj4+Pj4gICAgICAgcmVnLW5hbWVzOgo+Pj4+Pj4+PiAgICAgICAgIG1pbkl0ZW1zOiA0Cj4+Pj4+
Pj4+IC0gICAgbWF4SXRlbXM6IDUKPj4+Pj4+Pj4gKyAgICBtYXhJdGVtczogNgo+Pj4+Pj4+PiAg
ICAgICBpbnRlcnJ1cHRzOgo+Pj4+Pj4+PiAgICAgICAgIG1pbkl0ZW1zOiAxCj4+Pj4+Pj4+IEBA
IC0xMDUsNiArMTA2LDggQEAgcHJvcGVydGllczoKPj4+Pj4+Pj4gICAgICAgICBpdGVtczoKPj4+
Pj4+Pj4gICAgICAgICAgIC0gY29uc3Q6IHBjaWVwaHkKPj4+Pj4+Pj4gKyAgbXNpLXBhcmVudDog
dHJ1ZQo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICAgICAgIHBvd2VyLWRvbWFpbnM6Cj4+Pj4+Pj4+ICAg
ICAgICAgbWF4SXRlbXM6IDEKPj4+Pj4+Pj4gQEAgLTE3Myw2ICsxNzYsMjcgQEAgYWxsT2Y6Cj4+
Pj4+Pj4+ICAgICAgICAgICAgICAgICAtIGNvbnN0OiBwYXJmICMgUXVhbGNvbW0gc3BlY2lmaWMg
cmVnaXN0ZXJzCj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAtIGNvbnN0OiBjb25maWcgIyBQQ0ll
IGNvbmZpZ3VyYXRpb24gc3BhY2UKPj4+Pj4+Pj4gKyAgLSBpZjoKPj4+Pj4+Pj4gKyAgICAgIHBy
b3BlcnRpZXM6Cj4+Pj4+Pj4+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4+Pj4+Pj4+ICsgICAgICAg
ICAgY29udGFpbnM6Cj4+Pj4+Pj4+ICsgICAgICAgICAgICBlbnVtOgo+Pj4+Pj4+PiArICAgICAg
ICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+Pj4+Pj4+ICsgICAgdGhlbjoKPj4+Pj4+Pj4g
KyAgICAgIHByb3BlcnRpZXM6Cj4+Pj4+Pj4+ICsgICAgICAgIHJlZzoKPj4+Pj4+Pj4gKyAgICAg
ICAgICBtaW5JdGVtczogNQo+Pj4+Pj4+PiArICAgICAgICAgIG1heEl0ZW1zOiA2Cj4+Pj4+Pj4+
ICsgICAgICAgIHJlZy1uYW1lczoKPj4+Pj4+Pj4gKyAgICAgICAgICBtaW5JdGVtczogNQo+Pj4+
Pj4+PiArICAgICAgICAgIGl0ZW1zOgo+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogZGJp
ICMgRGVzaWduV2FyZSBQQ0llIHJlZ2lzdGVycwo+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25z
dDogZWxiaSAjIEV4dGVybmFsIGxvY2FsIGJ1cyBpbnRlcmZhY2UgcmVnaXN0ZXJzCj4+Pj4+Pj4+
ICsgICAgICAgICAgICAtIGNvbnN0OiBhdHUgIyBBVFUgYWRkcmVzcyBzcGFjZQo+Pj4+Pj4+PiAr
ICAgICAgICAgICAgLSBjb25zdDogcGFyZiAjIFF1YWxjb21tIHNwZWNpZmljIHJlZ2lzdGVycwo+
Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogY29uZmlnICMgUENJZSBjb25maWd1cmF0aW9u
IHNwYWNlCj4+Pj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBhZ2dyX25vYyAjUENJZSBhZ2dy
X25vYwo+Pj4+Pj4+Cj4+Pj4+Pj4gV2h5IGRvIHlvdSBuZWVkIHRoaXMgcmVnaW9uIHVubGlrZSBv
dGhlciBTb0NzPyBJcyB0aGUgZHJpdmVyIG1ha2luZyB1c2Ugb2YgaXQ/Cj4+Pj4+PiBXZSBoYXZl
IHRoZSBhZ2dyX25vYyByZWdpb24gaW4gaXBxOTU3NCB0byBhY2hpZXZlIGhpZ2hlciB0aHJvdWdo
cHV0ICYgdG8KPj4+Pj4+IGhhbmRsZSBtdWx0aXBsZSBQQ0llIGluc3RhbmNlcy4gVGhlIGRyaXZl
ciB1c2VzIGl0IHRvIHJhdGUgYWRhcHQgMS1sYW5lIFBDSWUKPj4+Pj4+IGNsb2Nrcy4gTXkgYmFk
LCBtaXNzZWQgaXQuIFdpbGwgYWRkIHRoZSBkcml2ZXIgY2hhbmdlcyBpbiBWMi4KPj4+Pj4KPj4+
Pj4gSG1tLCB0aGlzIGlzIHNvbWV0aGluZyBuZXcuIEhvdyBjYW4geW91IGFjaGlldmUgaGlnaGVy
IHRocm91Z2hwdXQgd2l0aCB0aGlzCj4+Pj4+IHJlZ2lvbj8gQ2FuIHlvdSBleHBsYWluIG1vcmUg
b24gaG93IGl0IGlzIHVzZWQ/Cj4+Pj4KPj4+PiBCYXNlZCBvbiB0aGUgbmFtZSBvZiB0aGUgcmVn
aW9uLCBpdCBsb29rcyBsaWtlIGl0IGlzIGFuIGludGVyY29ubmVjdCByZWdpb24uCj4+Pj4KPj4+
Cj4+PiBXZWxsLCB3ZSBvbmx5IGhhdmUgQkNNIGJhc2VkIGludGVyY29ubmVjdHMgc28gZmFyLiBU
aGF0J3Mgd2h5IEkgd2FzIGN1cmlvdXMKPj4+IGFib3V0IHRoaXMgcmVnaW9uIGFuZCBpdHMgcHVy
cG9zZS4KPj4gRm9yIGNvbm5lY3RlZCBQQ0llIHNsYXZlIGRldmljZXMgdGhhdCBhcmUgcnVubmlu
ZyBhdCBmcmVxdWVuY3kgbGVzc2VyCj4+IHRoYW4gdGhlIEFOT0MgZnJlcXVlbmN5ICgzNDJNSHop
LCB0aGUgcmF0ZSBhZGFwdGVyIG9mIEFOT0MgbmVlZHMgdG8gYmUKPj4gY29uZmlndXJlZAo+Pj4K
Pj4+PiBEZXZpLCBpZiB0aGlzIGlzIHRoZSBjYXNlLCB0aGVuIHlvdSBoYXZlIHRvIGhhbmRsZSBp
dCB0aHJvdWdoIHRoZSBpbnRlcmNvbm5lY3QgZHJpdmVyLCByYXRoZXIgdGhhbiBwb2tpbmcgZGly
ZWN0bHkgaW50byB0aGVzZSByZWdpc3RlcnMuCj4+Pgo+Pj4gSWYgdGhhdCBzbywgaXQgZG9lc24n
dCBuZWVkIHRvIGJlIGFkZGVkIGluIHRoaXMgc2VyaWVzIGl0c2VsZi4gSSBiZWxpZXZlIHRoYXQK
Pj4+IHdpdGhvdXQgYWdncl9ub2MgcmVnaW9uLCB0aGUgUENJZSBjb250cm9sbGVyIGNhbiBzdGls
bCBmdW5jdGlvbiBwcm9wZXJseSB3aXRoCj4+PiByZWR1Y2VkIHBlcmZvcm1hbmNlLiBCdXQgeW91
IGNhbiBhZGQgdGhlIGludGVyY29ubmVjdCBzdXBwb3J0IGxhdGVyIGFzIGEKPj4+IHNlcGFyYXRl
IHNlcmllcy4KPj4gU3VyZSwgb2theS4gVGhlIEFOT0MgcnVucyBhdCBhIGZpeGVkIGZyZXF1ZW5j
eSBvZiAzNDJNSHogYW5kIHRoZQo+PiBpbnRlcmNvbm5lY3QgY2xvY2tzIGFyZSBub3Qgc2NhbGVk
LiBUaGUgYWdncl9ub2MgcmVnaXN0ZXIgaXMganVzdCBhIG1hZ2ljCj4+IHJlZ2lzdGVyIGZvciBj
b25maWd1cmluZyBpdCdzIHJhdGUgYWRhcHRlciB0byBlbnN1cmUgbm8gd2FpdCBjeWNsZXMgYXJl
Cj4+IGluc2VydGVkLgo+Pgo+IAo+IElmIHRoZSBwdXJwb3NlIG9mIHRoZSBhZ2dyX25vYyByZWdp
b24gaXMgdG8gY29uZmlndXJlIHRoZSBpbnRlcmNvbm5lY3QgY2xvY2ssCj4gdGhlbiBpdCBzaG91
bGQgYmUgbW9kZWxlZCBhcyBhbiBpbnRlcmNvbm5lY3QgZHJpdmVyLgpDYW4gd2UgdXNlICdzeXNj
b24nIGhlcmUsIGFzIHdlIGFyZSBub3Qgc2NhbGluZyB0aGUgaW50ZXJjb25uZWN0CmZyZXF1ZW5j
eSBhbmQgdGhpcyBpcyBqdXN0IGEgc2luZ2xlIHJlZ2lzdGVyIHdyaXRlIGZvciBzZXR0aW5nCnRo
ZSByYXRlIGFkYXB0ZXI/Cj4gCj4gVGhhbmtzLAo+IE1hbmkKPiAKPj4+Cj4+PiBUaGFua3MsCj4+
PiBNYW5pCj4+Pgo+Pj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4gVGhhbmtzLAo+Pj4+PiBNYW5pCj4+Pj4+
Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4gTWFuaQo+Pj4+Pj4+Cj4+Pj4+Pj4+ICsK
Pj4+Pj4+Pj4gICAgICAgLSBpZjoKPj4+Pj4+Pj4gICAgICAgICAgIHByb3BlcnRpZXM6Cj4+Pj4+
Pj4+ICAgICAgICAgICAgIGNvbXBhdGlibGU6Cj4+Pj4+Pj4+IEBAIC0zNjUsNiArMzg5LDM5IEBA
IGFsbE9mOgo+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgLSBjb25zdDogYWhiICMgQUhCIFJlc2V0
Cj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFz
dGVyIFN0aWNreSByZXNldAo+Pj4+Pj4+PiArICAtIGlmOgo+Pj4+Pj4+PiArICAgICAgcHJvcGVy
dGllczoKPj4+Pj4+Pj4gKyAgICAgICAgY29tcGF0aWJsZToKPj4+Pj4+Pj4gKyAgICAgICAgICBj
b250YWluczoKPj4+Pj4+Pj4gKyAgICAgICAgICAgIGVudW06Cj4+Pj4+Pj4+ICsgICAgICAgICAg
ICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPj4+Pj4+Pj4gKyAgICB0aGVuOgo+Pj4+Pj4+PiArICAg
ICAgcHJvcGVydGllczoKPj4+Pj4+Pj4gKyAgICAgICAgY2xvY2tzOgo+Pj4+Pj4+PiArICAgICAg
ICAgIG1pbkl0ZW1zOiA2Cj4+Pj4+Pj4+ICsgICAgICAgICAgbWF4SXRlbXM6IDYKPj4+Pj4+Pj4g
KyAgICAgICAgY2xvY2stbmFtZXM6Cj4+Pj4+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4+Pj4+Pj4+
ICsgICAgICAgICAgICAtIGNvbnN0OiBhaGIgICMgQUhCIGNsb2NrCj4+Pj4+Pj4+ICsgICAgICAg
ICAgICAtIGNvbnN0OiBhdXggICMgQXV4aWxpYXJ5IGNsb2NrCj4+Pj4+Pj4+ICsgICAgICAgICAg
ICAtIGNvbnN0OiBheGlfbSAjIEFYSSBNYXN0ZXIgY2xvY2sKPj4+Pj4+Pj4gKyAgICAgICAgICAg
IC0gY29uc3Q6IGF4aV9zICMgQVhJIFNsYXZlIGNsb2NrCj4+Pj4+Pj4+ICsgICAgICAgICAgICAt
IGNvbnN0OiBheGlfYnJpZGdlICMgQVhJIGJyaWRnZSBjbG9jawo+Pj4+Pj4+PiArICAgICAgICAg
ICAgLSBjb25zdDogcmNobmcKPj4+Pj4+Pj4gKyAgICAgICAgcmVzZXRzOgo+Pj4+Pj4+PiArICAg
ICAgICAgIG1pbkl0ZW1zOiA4Cj4+Pj4+Pj4+ICsgICAgICAgICAgbWF4SXRlbXM6IDgKPj4+Pj4+
Pj4gKyAgICAgICAgcmVzZXQtbmFtZXM6Cj4+Pj4+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4+Pj4+
Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBwaXBlICMgUElQRSByZXNldAo+Pj4+Pj4+PiArICAg
ICAgICAgICAgLSBjb25zdDogc3RpY2t5ICMgQ29yZSBTdGlja3kgcmVzZXQKPj4+Pj4+Pj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IGF4aV9zX3N0aWNreSAjIEFYSSBTbGF2ZSBTdGlja3kgcmVzZXQK
Pj4+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9zICMgQVhJIFNsYXZlIHJlc2V0Cj4+
Pj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFzdGVyIFN0
aWNreSByZXNldAo+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFz
dGVyIHJlc2V0Cj4+Pj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdXggIyBBVVggUmVzZXQK
Pj4+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+Pj4+Pj4+PiAr
Cj4+Pj4+Pj4+ICAgICAgIC0gaWY6Cj4+Pj4+Pj4+ICAgICAgICAgICBwcm9wZXJ0aWVzOgo+Pj4+
Pj4+PiAgICAgICAgICAgICBjb21wYXRpYmxlOgo+Pj4+Pj4+PiBAQCAtNjgxLDYgKzczOCwxNiBA
QCBhbGxPZjoKPj4+Pj4+Pj4gICAgICAgICAgICAgLSBpbnRlcmNvbm5lY3RzCj4+Pj4+Pj4+ICAg
ICAgICAgICAgIC0gaW50ZXJjb25uZWN0LW5hbWVzCj4+Pj4+Pj4+ICsgIC0gaWY6Cj4+Pj4+Pj4+
ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+Pj4+PiArICAgICAgICBjb21wYXRpYmxlOgo+Pj4+Pj4+
PiArICAgICAgICAgIGNvbnRhaW5zOgo+Pj4+Pj4+PiArICAgICAgICAgICAgZW51bToKPj4+Pj4+
Pj4gKyAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+Pj4+Pj4+PiArICAgIHRoZW46
Cj4+Pj4+Pj4+ICsgICAgICByZXF1aXJlZDoKPj4+Pj4+Pj4gKyAgICAgICAgLSBtc2ktcGFyZW50
Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gICAgICAgLSBpZjoKPj4+Pj4+Pj4gICAgICAgICAgIG5vdDoK
Pj4+Pj4+Pj4gICAgICAgICAgICAgcHJvcGVydGllczoKPj4+Pj4+Pj4gQEAgLTY5Myw2ICs3NjAs
NyBAQCBhbGxPZjoKPj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4
MDY0djIKPj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDc0Cj4+
Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NC1nZW4zCj4+Pj4+
Pj4+ICsgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+Pj4+Pj4+PiAgICAgICAg
ICAgICAgICAgICAgIC0gcWNvbSxwY2llLXFjczQwNAo+Pj4+Pj4+PiAgICAgICAgIHRoZW46Cj4+
Pj4+Pj4+ICAgICAgICAgICByZXF1aXJlZDoKPj4+Pj4+Pj4gLS0gCj4+Pj4+Pj4+IDIuMTcuMQo+
Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+PiBUaGFua3MsCj4+Pj4+PiBEZXZpIFByaXlhCj4+Pj4+Cj4+
Pj4KPj4+Cj4+IFRoYW5rcywKPj4gRGV2aSBQcml5YQo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
