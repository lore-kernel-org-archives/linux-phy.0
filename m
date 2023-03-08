Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B3DC678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4HYZO+NehYlkbcqjRi6ItHLh4Y3nAJ3J3pPTWtvJ6M=; b=0YVj4QowDwz1jd
	bordW8ZiRx7rW/iGb8LwY+2/YBi2Oq2CMUpxCaJOAhYSsEnISE9vZ5eSI/nfjNExYrjEj5SXSklqC
	SPON4D2vA32cjcFa+3DVIsplpF90PNGKLU7/2ySwMvwK+WECU4ePZYcEALcMmkpQ2rJxZrSGa5oeN
	28RAvkdRe72g4jatnkBmt9Aj7qB81hdMSRyHT2mNh1aleal/sX4JQmYpbWDluiJ9aXgWfdcl3GuIz
	mwNMNPZihj0Ut8dwi6VyqK8rqusemXZsA3/LwcAmzP36LRudzWtG4qMpx7avMifAcfyoT/OCmgFUp
	0vXQUkHA17FHoNVHiPIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpVF-0043nI-Tq; Wed, 08 Mar 2023 08:50:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpVC-0043li-Pr
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:50:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3285ZZbf020714;
	Wed, 8 Mar 2023 08:50:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=+QZf7jsqZCz/mjUR8sKf9eOaujlmzzUJO/yJGxi9XBY=;
 b=ojN6dUALKEyWJx+ed10wpYxRNad8rpfxY21M0xIjaoAxMaQm7KpHeDHBnCABrBxdfHs0
 S0MtyqcmDnOw2SBdst+MLXIqh9BTj+uNJWydsJ9lZiS219q092FQtYMuUKvGg05oKLI2
 scWt09XLInYdfwc8AWcg8C718BA3JRUiuTwx6l6dX3B8MRq1HZPZm4KEcLS61ThemiTp
 v7wKNAKMD4CJ/ywxUHNJ7Otd+nGEqwDSDqN3nB5T3TKXut+i4xnT0bPP20zDdwEVN8ap
 iyf5FgDleQemxiFxdVmwVuYYXIKSvmmBC8WNJLYba97OgG7vaajEfxEiNsBMAObPiGgQ tw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p6fets179-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Mar 2023 08:50:17 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3288oGdY014924
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Mar 2023 08:50:16 GMT
Received: from [10.216.47.125] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Wed, 8 Mar 2023
 00:50:07 -0800
Message-ID: <dd48782f-e5ff-2bbe-93d0-cfdd491d5292@quicinc.com>
Date: Wed, 8 Mar 2023 14:19:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Manivannan Sadhasivam <mani@kernel.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <p.zabel@pengutronix.de>,
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
 <2afe8c7e-7e54-460f-7206-64a290beccfb@quicinc.com>
 <CAA8EJpo-_PXhBnKWD-TWEqY8+uAEjbRsrhJ7XO1PTcYV-MHV9Q@mail.gmail.com>
Content-Language: en-US
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <CAA8EJpo-_PXhBnKWD-TWEqY8+uAEjbRsrhJ7XO1PTcYV-MHV9Q@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3FS99f6BK8LW-UQxleOQcX1kBEicXoD_
X-Proofpoint-ORIG-GUID: 3FS99f6BK8LW-UQxleOQcX1kBEicXoD_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-08_04,2023-03-08_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 impostorscore=0 phishscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303080076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_005026_884608_C51E04B5 
X-CRM114-Status: GOOD (  24.38  )
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

CgpPbiAzLzcvMjAyMyA4OjI2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFR1ZSwg
NyBNYXIgMjAyMyBhdCAxNjo0MCwgRGV2aSBQcml5YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNv
bT4gd3JvdGU6Cj4+Cj4+Cj4+Cj4+IE9uIDMvNy8yMDIzIDY6MjYgUE0sIE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSB3cm90ZToKPj4+IE9uIFR1ZSwgTWFyIDA3LCAyMDIzIGF0IDAzOjE1OjA4UE0gKzA1
MzAsIERldmkgUHJpeWEgd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDMvMy8yMDIzIDExOjEwIFBN
LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+IE9uIEZyaSwgTWFyIDAzLCAyMDIz
IGF0IDA1OjE2OjU4UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+PiAyOCDR
hNC10LLRgNCw0LvRjyAyMDIzINCzLiAwODozMzo1OCBHTVQrMDI6MDAsIE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPiDQv9C40YjQtdGCOgo+Pj4+Pj4+IE9uIFR1ZSwgRmVi
IDI4LCAyMDIzIGF0IDEwOjU2OjUzQU0gKzA1MzAsIERldmkgUHJpeWEgd3JvdGU6Cj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDIvMjQvMjAyMyAxOjUzIFBNLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gd3JvdGU6Cj4+Pj4+Pj4+PiBPbiBUdWUsIEZlYiAxNCwgMjAyMyBhdCAxMDoxMToyOVBN
ICswNTMwLCBEZXZpIFByaXlhIHdyb3RlOgo+Pj4+Pj4+Pj4+IERvY3VtZW50IHRoZSBjb21wYXRp
YmxlIGZvciBJUFE5NTc0Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4gSGkgTWFuaSwgVGhhbmtzIGZvciB0
YWtpbmcgdGltZSB0byByZXZpZXcgdGhlIHBhdGNoLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFlvdSBk
aWRuJ3QgbWVudGlvbiBhYm91dCB0aGUgIm1zaS1wYXJlbnQiIHByb3BlcnR5IHRoYXQgaXMgYmVp
bmcgYWRkZWQKPj4+Pj4+Pj4+IGJ5IHRoaXMgcGF0Y2gKPj4+Pj4+Pj4gU3VyZSwgd2lsbCB1cGRh
dGUgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBuZXh0IHNwaW4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4gU2lnbmVkLW9mZi1ieTogRGV2aSBQcml5YSA8cXVpY19kZXZpcHJpeUBxdWljaW5jLmNvbT4K
Pj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4+PiAgICAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9xY29tLHBjaWUueWFtbCAgICB8IDcyICsrKysrKysrKysrKysrKysrKy0KPj4+Pj4+Pj4+PiAg
ICAgIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4+Pj4+Pj4+Pj4gaW5kZXggODcyODE3ZDZkMmJkLi5k
YWJkZjI2ODRlMmQgMTAwNjQ0Cj4+Pj4+Pj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+Pj4+Pj4+Pj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPj4+Pj4+Pj4+PiBA
QCAtMjYsNiArMjYsNyBAQCBwcm9wZXJ0aWVzOgo+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgIC0g
cWNvbSxwY2llLWlwcTgwNjQtdjIKPj4+Pj4+Pj4+PiAgICAgICAgICAgICAgICAtIHFjb20scGNp
ZS1pcHE4MDc0Cj4+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NC1n
ZW4zCj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+Pj4+Pj4+Pj4g
ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtbXNtODk5Ngo+Pj4+Pj4+Pj4+ICAgICAgICAgICAg
ICAgIC0gcWNvbSxwY2llLXFjczQwNAo+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgIC0gcWNvbSxw
Y2llLXNhODU0MHAKPj4+Pj4+Pj4+PiBAQCAtNDQsMTEgKzQ1LDExIEBAIHByb3BlcnRpZXM6Cj4+
Pj4+Pj4+Pj4gICAgICAgIHJlZzoKPj4+Pj4+Pj4+PiAgICAgICAgICBtaW5JdGVtczogNAo+Pj4+
Pj4+Pj4+IC0gICAgbWF4SXRlbXM6IDUKPj4+Pj4+Pj4+PiArICAgIG1heEl0ZW1zOiA2Cj4+Pj4+
Pj4+Pj4gICAgICAgIHJlZy1uYW1lczoKPj4+Pj4+Pj4+PiAgICAgICAgICBtaW5JdGVtczogNAo+
Pj4+Pj4+Pj4+IC0gICAgbWF4SXRlbXM6IDUKPj4+Pj4+Pj4+PiArICAgIG1heEl0ZW1zOiA2Cj4+
Pj4+Pj4+Pj4gICAgICAgIGludGVycnVwdHM6Cj4+Pj4+Pj4+Pj4gICAgICAgICAgbWluSXRlbXM6
IDEKPj4+Pj4+Pj4+PiBAQCAtMTA1LDYgKzEwNiw4IEBAIHByb3BlcnRpZXM6Cj4+Pj4+Pj4+Pj4g
ICAgICAgICAgaXRlbXM6Cj4+Pj4+Pj4+Pj4gICAgICAgICAgICAtIGNvbnN0OiBwY2llcGh5Cj4+
Pj4+Pj4+Pj4gKyAgbXNpLXBhcmVudDogdHJ1ZQo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+PiAgICAg
ICAgcG93ZXItZG9tYWluczoKPj4+Pj4+Pj4+PiAgICAgICAgICBtYXhJdGVtczogMQo+Pj4+Pj4+
Pj4+IEBAIC0xNzMsNiArMTc2LDI3IEBAIGFsbE9mOgo+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAg
ICAgLSBjb25zdDogcGFyZiAjIFF1YWxjb21tIHNwZWNpZmljIHJlZ2lzdGVycwo+Pj4+Pj4+Pj4+
ICAgICAgICAgICAgICAgICAgLSBjb25zdDogY29uZmlnICMgUENJZSBjb25maWd1cmF0aW9uIHNw
YWNlCj4+Pj4+Pj4+Pj4gKyAgLSBpZjoKPj4+Pj4+Pj4+PiArICAgICAgcHJvcGVydGllczoKPj4+
Pj4+Pj4+PiArICAgICAgICBjb21wYXRpYmxlOgo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgY29udGFp
bnM6Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgIGVudW06Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAg
ICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+Pj4+Pj4+Pj4+ICsgICAgdGhlbjoKPj4+Pj4+Pj4+PiAr
ICAgICAgcHJvcGVydGllczoKPj4+Pj4+Pj4+PiArICAgICAgICByZWc6Cj4+Pj4+Pj4+Pj4gKyAg
ICAgICAgICBtaW5JdGVtczogNQo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgbWF4SXRlbXM6IDYKPj4+
Pj4+Pj4+PiArICAgICAgICByZWctbmFtZXM6Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICBtaW5JdGVt
czogNQo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAg
IC0gY29uc3Q6IGRiaSAjIERlc2lnbldhcmUgUENJZSByZWdpc3RlcnMKPj4+Pj4+Pj4+PiArICAg
ICAgICAgICAgLSBjb25zdDogZWxiaSAjIEV4dGVybmFsIGxvY2FsIGJ1cyBpbnRlcmZhY2UgcmVn
aXN0ZXJzCj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF0dSAjIEFUVSBhZGRyZXNz
IHNwYWNlCj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHBhcmYgIyBRdWFsY29tbSBz
cGVjaWZpYyByZWdpc3RlcnMKPj4+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogY29uZmln
ICMgUENJZSBjb25maWd1cmF0aW9uIHNwYWNlCj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29u
c3Q6IGFnZ3Jfbm9jICNQQ0llIGFnZ3Jfbm9jCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV2h5IGRvIHlv
dSBuZWVkIHRoaXMgcmVnaW9uIHVubGlrZSBvdGhlciBTb0NzPyBJcyB0aGUgZHJpdmVyIG1ha2lu
ZyB1c2Ugb2YgaXQ/Cj4+Pj4+Pj4+IFdlIGhhdmUgdGhlIGFnZ3Jfbm9jIHJlZ2lvbiBpbiBpcHE5
NTc0IHRvIGFjaGlldmUgaGlnaGVyIHRocm91Z2hwdXQgJiB0bwo+Pj4+Pj4+PiBoYW5kbGUgbXVs
dGlwbGUgUENJZSBpbnN0YW5jZXMuIFRoZSBkcml2ZXIgdXNlcyBpdCB0byByYXRlIGFkYXB0IDEt
bGFuZSBQQ0llCj4+Pj4+Pj4+IGNsb2Nrcy4gTXkgYmFkLCBtaXNzZWQgaXQuIFdpbGwgYWRkIHRo
ZSBkcml2ZXIgY2hhbmdlcyBpbiBWMi4KPj4+Pj4+Pgo+Pj4+Pj4+IEhtbSwgdGhpcyBpcyBzb21l
dGhpbmcgbmV3LiBIb3cgY2FuIHlvdSBhY2hpZXZlIGhpZ2hlciB0aHJvdWdocHV0IHdpdGggdGhp
cwo+Pj4+Pj4+IHJlZ2lvbj8gQ2FuIHlvdSBleHBsYWluIG1vcmUgb24gaG93IGl0IGlzIHVzZWQ/
Cj4+Pj4+Pgo+Pj4+Pj4gQmFzZWQgb24gdGhlIG5hbWUgb2YgdGhlIHJlZ2lvbiwgaXQgbG9va3Mg
bGlrZSBpdCBpcyBhbiBpbnRlcmNvbm5lY3QgcmVnaW9uLgo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gV2Vs
bCwgd2Ugb25seSBoYXZlIEJDTSBiYXNlZCBpbnRlcmNvbm5lY3RzIHNvIGZhci4gVGhhdCdzIHdo
eSBJIHdhcyBjdXJpb3VzCj4+Pj4+IGFib3V0IHRoaXMgcmVnaW9uIGFuZCBpdHMgcHVycG9zZS4K
Pj4+PiBGb3IgY29ubmVjdGVkIFBDSWUgc2xhdmUgZGV2aWNlcyB0aGF0IGFyZSBydW5uaW5nIGF0
IGZyZXF1ZW5jeSBsZXNzZXIKPj4+PiB0aGFuIHRoZSBBTk9DIGZyZXF1ZW5jeSAoMzQyTUh6KSwg
dGhlIHJhdGUgYWRhcHRlciBvZiBBTk9DIG5lZWRzIHRvIGJlCj4+Pj4gY29uZmlndXJlZAo+Pj4+
Pgo+Pj4+Pj4gRGV2aSwgaWYgdGhpcyBpcyB0aGUgY2FzZSwgdGhlbiB5b3UgaGF2ZSB0byBoYW5k
bGUgaXQgdGhyb3VnaCB0aGUgaW50ZXJjb25uZWN0IGRyaXZlciwgcmF0aGVyIHRoYW4gcG9raW5n
IGRpcmVjdGx5IGludG8gdGhlc2UgcmVnaXN0ZXJzLgo+Pj4+Pgo+Pj4+PiBJZiB0aGF0IHNvLCBp
dCBkb2Vzbid0IG5lZWQgdG8gYmUgYWRkZWQgaW4gdGhpcyBzZXJpZXMgaXRzZWxmLiBJIGJlbGll
dmUgdGhhdAo+Pj4+PiB3aXRob3V0IGFnZ3Jfbm9jIHJlZ2lvbiwgdGhlIFBDSWUgY29udHJvbGxl
ciBjYW4gc3RpbGwgZnVuY3Rpb24gcHJvcGVybHkgd2l0aAo+Pj4+PiByZWR1Y2VkIHBlcmZvcm1h
bmNlLiBCdXQgeW91IGNhbiBhZGQgdGhlIGludGVyY29ubmVjdCBzdXBwb3J0IGxhdGVyIGFzIGEK
Pj4+Pj4gc2VwYXJhdGUgc2VyaWVzLgo+Pj4+IFN1cmUsIG9rYXkuIFRoZSBBTk9DIHJ1bnMgYXQg
YSBmaXhlZCBmcmVxdWVuY3kgb2YgMzQyTUh6IGFuZCB0aGUKPj4+PiBpbnRlcmNvbm5lY3QgY2xv
Y2tzIGFyZSBub3Qgc2NhbGVkLiBUaGUgYWdncl9ub2MgcmVnaXN0ZXIgaXMganVzdCBhIG1hZ2lj
Cj4+Pj4gcmVnaXN0ZXIgZm9yIGNvbmZpZ3VyaW5nIGl0J3MgcmF0ZSBhZGFwdGVyIHRvIGVuc3Vy
ZSBubyB3YWl0IGN5Y2xlcyBhcmUKPj4+PiBpbnNlcnRlZC4KPj4+Pgo+Pj4KPj4+IElmIHRoZSBw
dXJwb3NlIG9mIHRoZSBhZ2dyX25vYyByZWdpb24gaXMgdG8gY29uZmlndXJlIHRoZSBpbnRlcmNv
bm5lY3QgY2xvY2ssCj4+PiB0aGVuIGl0IHNob3VsZCBiZSBtb2RlbGVkIGFzIGFuIGludGVyY29u
bmVjdCBkcml2ZXIuCj4+IENhbiB3ZSB1c2UgJ3N5c2NvbicgaGVyZSwgYXMgd2UgYXJlIG5vdCBz
Y2FsaW5nIHRoZSBpbnRlcmNvbm5lY3QKPj4gZnJlcXVlbmN5IGFuZCB0aGlzIGlzIGp1c3QgYSBz
aW5nbGUgcmVnaXN0ZXIgd3JpdGUgZm9yIHNldHRpbmcKPj4gdGhlIHJhdGUgYWRhcHRlcj8KPiAK
PiBJdCBzaG91bGQgYmUgZG9uZSBvdXRzaWRlIG9mIHRoZSBQQ0llIGRyaXZlci4KPiBJdCBpcyBu
b3QgImp1c3QgYSBzaW5nbGUgcmVnaXN0ZXIiLiBJdCBpcyBhbHNvIHNldHRpbmcgdGhlIGFub2Mv
c25vYwo+IGNsb2NrcyBmb3IgVVNCLiBBbmQgbWF5YmUgc29tZXRoaW5nIGVsc2UsIHdoaWNoIHdl
IGhhdmVuJ3Qgc2VlbiBhdAo+IHRoaXMgbW9tZW50LiBZb3UgYXJlIHN0aWxsIHNldHRpbmcgdXAg
dGhlIE5vQywgZXZlbiBpZiB0aGUgaWNjCj4gZnJlcXVlbmN5IGlzIG5vdCBzY2FsZWQuCj4gClN1
cmUgRG1pdHJ5LCBHb3QgaXQKClJlZ2FyZHMsCkRldmkgUHJpeWEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
