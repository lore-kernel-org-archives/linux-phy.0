Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4976AC678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 09:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4e+9+bA6T9ZTP6UrgYmEMDJXO3Oh3aRdM4kZ0ccyzU=; b=2buYQwQSvzyuUr
	xQFyZqimsr1GVUNH2tCfOjKXHHTz2xvFC1MnpiCYExlF1COtDU+fpg92FNBKPvzaWPcKG2Kan5nLr
	fzaB4i8oYf9/ofKTtFL0lMnJve6cMq42V0zojcjfJTnQSzy/GraOimty/qc+lHwObv6DH+YbYZbPA
	t3hIgghrAWl/YB+gWTQwRSqDOR3W7iIUkLNZbjXi+4PbYx53f7Hw4y/98JXRKbFjma10zcWlzXAzZ
	6ljzPHAcTAplU9oloBrClDdeV38wl+Tgb2+lI6fQyW6gfXYBjXhOBdovZeTsVXlbJd7txkJYjnKVt
	IDRgEZ++b+I56vpb1TCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTt2-00H07a-NR; Tue, 07 Mar 2023 09:45:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZTsz-00H03u-CH
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 09:45:35 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3277IqHs017882;
	Tue, 7 Mar 2023 09:45:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : from : subject : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Mhno23f9v3er4tDoxC2ORjmssJ3m2pYGBAvzXv7SrWk=;
 b=oMws0QMgsjJuGR3VfFPkzXW4KYTBIZ8MrowdlxNTo/itd0EjkpyMtYRJg+FGS2IFrO4i
 s4VWi0z8Kwc2igTmr8XoA8Iel1CdxvAIQ8boVKDLOtwzjulByN7VGl08ebq5J7fn2cG9
 Y+qB0hTgzLMiUjq23bRLbK+oXLsOLjRoxYIyEkEzhniYVBW9Q/OJRwaAi2N9JWFxCdp6
 YA0laUVW30A81DhOediRmP6sf1KDipgO2gy+ozbx1nkicUZaUHi2moyKclkKIec6T3bx
 I03+Hwnratnz5hdXBzWqS5fmPJ5MR7ztzITQx1IsnBJrWhPpG2Y21iNmcaIZGpDitT48 Xg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p5wee8vu6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Mar 2023 09:45:21 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3279jKjN002603
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Mar 2023 09:45:20 GMT
Received: from [10.216.11.93] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Tue, 7 Mar 2023
 01:45:11 -0800
Message-ID: <30cf9717-dcca-e984-c506-c71b7f8e32cd@quicinc.com>
Date: Tue, 7 Mar 2023 15:15:08 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From: Devi Priya <quic_devipriy@quicinc.com>
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific
 compatible
To: Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
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
Content-Language: en-US
In-Reply-To: <20230303174036.GB6782@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: acFhR0WU2dnQYcCltNuR2nn7AUBIs0Ft
X-Proofpoint-ORIG-GUID: acFhR0WU2dnQYcCltNuR2nn7AUBIs0Ft
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_03,2023-03-06_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 mlxlogscore=999 priorityscore=1501 phishscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303070087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_014533_589872_8F95EDC2 
X-CRM114-Status: GOOD (  23.12  )
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

CgpPbiAzLzMvMjAyMyAxMToxMCBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9u
IEZyaSwgTWFyIDAzLCAyMDIzIGF0IDA1OjE2OjU4UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Yg
d3JvdGU6Cj4+IDI4INGE0LXQstGA0LDQu9GPIDIwMjMg0LMuIDA4OjMzOjU4IEdNVCswMjowMCwg
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+INC/0LjRiNC10YI6Cj4+PiBP
biBUdWUsIEZlYiAyOCwgMjAyMyBhdCAxMDo1Njo1M0FNICswNTMwLCBEZXZpIFByaXlhIHdyb3Rl
Ogo+Pj4+Cj4+Pj4KPj4+PiBPbiAyLzI0LzIwMjMgMTo1MyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIHdyb3RlOgo+Pj4+PiBPbiBUdWUsIEZlYiAxNCwgMjAyMyBhdCAxMDoxMToyOVBNICswNTMw
LCBEZXZpIFByaXlhIHdyb3RlOgo+Pj4+Pj4gRG9jdW1lbnQgdGhlIGNvbXBhdGlibGUgZm9yIElQ
UTk1NzQKPj4+Pj4+Cj4+Pj4gSGkgTWFuaSwgVGhhbmtzIGZvciB0YWtpbmcgdGltZSB0byByZXZp
ZXcgdGhlIHBhdGNoLgo+Pj4+Pgo+Pj4+PiBZb3UgZGlkbid0IG1lbnRpb24gYWJvdXQgdGhlICJt
c2ktcGFyZW50IiBwcm9wZXJ0eSB0aGF0IGlzIGJlaW5nIGFkZGVkCj4+Pj4+IGJ5IHRoaXMgcGF0
Y2gKPj4+PiBTdXJlLCB3aWxsIHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgaW4gdGhlIG5leHQg
c3Bpbgo+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRGV2aSBQcml5YSA8cXVpY19kZXZpcHJp
eUBxdWljaW5jLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gICAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3Fjb20scGNpZS55YW1sICAgIHwgNzIgKysrKysrKysrKysrKysrKysrLQo+Pj4+Pj4g
ICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+
Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
Y2kvcWNvbSxwY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNp
L3Fjb20scGNpZS55YW1sCj4+Pj4+PiBpbmRleCA4NzI4MTdkNmQyYmQuLmRhYmRmMjY4NGUyZCAx
MDA2NDQKPj4+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cWNvbSxwY2llLnlhbWwKPj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPj4+Pj4+IEBAIC0yNiw2ICsyNiw3IEBAIHByb3BlcnRp
ZXM6Cj4+Pj4+PiAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA2NC12Mgo+Pj4+Pj4gICAg
ICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQKPj4+Pj4+ICAgICAgICAgICAgICAtIHFjb20s
cGNpZS1pcHE4MDc0LWdlbjMKPj4+Pj4+ICsgICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+
Pj4+Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2llLW1zbTg5OTYKPj4+Pj4+ICAgICAgICAgICAg
ICAtIHFjb20scGNpZS1xY3M0MDQKPj4+Pj4+ICAgICAgICAgICAgICAtIHFjb20scGNpZS1zYTg1
NDBwCj4+Pj4+PiBAQCAtNDQsMTEgKzQ1LDExIEBAIHByb3BlcnRpZXM6Cj4+Pj4+PiAgICAgIHJl
ZzoKPj4+Pj4+ICAgICAgICBtaW5JdGVtczogNAo+Pj4+Pj4gLSAgICBtYXhJdGVtczogNQo+Pj4+
Pj4gKyAgICBtYXhJdGVtczogNgo+Pj4+Pj4gICAgICByZWctbmFtZXM6Cj4+Pj4+PiAgICAgICAg
bWluSXRlbXM6IDQKPj4+Pj4+IC0gICAgbWF4SXRlbXM6IDUKPj4+Pj4+ICsgICAgbWF4SXRlbXM6
IDYKPj4+Pj4+ICAgICAgaW50ZXJydXB0czoKPj4+Pj4+ICAgICAgICBtaW5JdGVtczogMQo+Pj4+
Pj4gQEAgLTEwNSw2ICsxMDYsOCBAQCBwcm9wZXJ0aWVzOgo+Pj4+Pj4gICAgICAgIGl0ZW1zOgo+
Pj4+Pj4gICAgICAgICAgLSBjb25zdDogcGNpZXBoeQo+Pj4+Pj4gKyAgbXNpLXBhcmVudDogdHJ1
ZQo+Pj4+Pj4gKwo+Pj4+Pj4gICAgICBwb3dlci1kb21haW5zOgo+Pj4+Pj4gICAgICAgIG1heEl0
ZW1zOiAxCj4+Pj4+PiBAQCAtMTczLDYgKzE3NiwyNyBAQCBhbGxPZjoKPj4+Pj4+ICAgICAgICAg
ICAgICAgIC0gY29uc3Q6IHBhcmYgIyBRdWFsY29tbSBzcGVjaWZpYyByZWdpc3RlcnMKPj4+Pj4+
ICAgICAgICAgICAgICAgIC0gY29uc3Q6IGNvbmZpZyAjIFBDSWUgY29uZmlndXJhdGlvbiBzcGFj
ZQo+Pj4+Pj4gKyAgLSBpZjoKPj4+Pj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+Pj4gKyAgICAg
ICAgY29tcGF0aWJsZToKPj4+Pj4+ICsgICAgICAgICAgY29udGFpbnM6Cj4+Pj4+PiArICAgICAg
ICAgICAgZW51bToKPj4+Pj4+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPj4+
Pj4+ICsgICAgdGhlbjoKPj4+Pj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+Pj4gKyAgICAgICAg
cmVnOgo+Pj4+Pj4gKyAgICAgICAgICBtaW5JdGVtczogNQo+Pj4+Pj4gKyAgICAgICAgICBtYXhJ
dGVtczogNgo+Pj4+Pj4gKyAgICAgICAgcmVnLW5hbWVzOgo+Pj4+Pj4gKyAgICAgICAgICBtaW5J
dGVtczogNQo+Pj4+Pj4gKyAgICAgICAgICBpdGVtczoKPj4+Pj4+ICsgICAgICAgICAgICAtIGNv
bnN0OiBkYmkgIyBEZXNpZ25XYXJlIFBDSWUgcmVnaXN0ZXJzCj4+Pj4+PiArICAgICAgICAgICAg
LSBjb25zdDogZWxiaSAjIEV4dGVybmFsIGxvY2FsIGJ1cyBpbnRlcmZhY2UgcmVnaXN0ZXJzCj4+
Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYXR1ICMgQVRVIGFkZHJlc3Mgc3BhY2UKPj4+Pj4+
ICsgICAgICAgICAgICAtIGNvbnN0OiBwYXJmICMgUXVhbGNvbW0gc3BlY2lmaWMgcmVnaXN0ZXJz
Cj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogY29uZmlnICMgUENJZSBjb25maWd1cmF0aW9u
IHNwYWNlCj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYWdncl9ub2MgI1BDSWUgYWdncl9u
b2MKPj4+Pj4KPj4+Pj4gV2h5IGRvIHlvdSBuZWVkIHRoaXMgcmVnaW9uIHVubGlrZSBvdGhlciBT
b0NzPyBJcyB0aGUgZHJpdmVyIG1ha2luZyB1c2Ugb2YgaXQ/Cj4+Pj4gV2UgaGF2ZSB0aGUgYWdn
cl9ub2MgcmVnaW9uIGluIGlwcTk1NzQgdG8gYWNoaWV2ZSBoaWdoZXIgdGhyb3VnaHB1dCAmIHRv
Cj4+Pj4gaGFuZGxlIG11bHRpcGxlIFBDSWUgaW5zdGFuY2VzLiBUaGUgZHJpdmVyIHVzZXMgaXQg
dG8gcmF0ZSBhZGFwdCAxLWxhbmUgUENJZQo+Pj4+IGNsb2Nrcy4gTXkgYmFkLCBtaXNzZWQgaXQu
IFdpbGwgYWRkIHRoZSBkcml2ZXIgY2hhbmdlcyBpbiBWMi4KPj4+Cj4+PiBIbW0sIHRoaXMgaXMg
c29tZXRoaW5nIG5ldy4gSG93IGNhbiB5b3UgYWNoaWV2ZSBoaWdoZXIgdGhyb3VnaHB1dCB3aXRo
IHRoaXMKPj4+IHJlZ2lvbj8gQ2FuIHlvdSBleHBsYWluIG1vcmUgb24gaG93IGl0IGlzIHVzZWQ/
Cj4+Cj4+IEJhc2VkIG9uIHRoZSBuYW1lIG9mIHRoZSByZWdpb24sIGl0IGxvb2tzIGxpa2UgaXQg
aXMgYW4gaW50ZXJjb25uZWN0IHJlZ2lvbi4KPj4KPiAKPiBXZWxsLCB3ZSBvbmx5IGhhdmUgQkNN
IGJhc2VkIGludGVyY29ubmVjdHMgc28gZmFyLiBUaGF0J3Mgd2h5IEkgd2FzIGN1cmlvdXMKPiBh
Ym91dCB0aGlzIHJlZ2lvbiBhbmQgaXRzIHB1cnBvc2UuCkZvciBjb25uZWN0ZWQgUENJZSBzbGF2
ZSBkZXZpY2VzIHRoYXQgYXJlIHJ1bm5pbmcgYXQgZnJlcXVlbmN5IGxlc3Nlcgp0aGFuIHRoZSBB
Tk9DIGZyZXF1ZW5jeSAoMzQyTUh6KSwgdGhlIHJhdGUgYWRhcHRlciBvZiBBTk9DIG5lZWRzIHRv
IGJlCmNvbmZpZ3VyZWQKPiAKPj4gRGV2aSwgaWYgdGhpcyBpcyB0aGUgY2FzZSwgdGhlbiB5b3Ug
aGF2ZSB0byBoYW5kbGUgaXQgdGhyb3VnaCB0aGUgaW50ZXJjb25uZWN0IGRyaXZlciwgcmF0aGVy
IHRoYW4gcG9raW5nIGRpcmVjdGx5IGludG8gdGhlc2UgcmVnaXN0ZXJzLgo+IAo+IElmIHRoYXQg
c28sIGl0IGRvZXNuJ3QgbmVlZCB0byBiZSBhZGRlZCBpbiB0aGlzIHNlcmllcyBpdHNlbGYuIEkg
YmVsaWV2ZSB0aGF0Cj4gd2l0aG91dCBhZ2dyX25vYyByZWdpb24sIHRoZSBQQ0llIGNvbnRyb2xs
ZXIgY2FuIHN0aWxsIGZ1bmN0aW9uIHByb3Blcmx5IHdpdGgKPiByZWR1Y2VkIHBlcmZvcm1hbmNl
LiBCdXQgeW91IGNhbiBhZGQgdGhlIGludGVyY29ubmVjdCBzdXBwb3J0IGxhdGVyIGFzIGEKPiBz
ZXBhcmF0ZSBzZXJpZXMuClN1cmUsIG9rYXkuIFRoZSBBTk9DIHJ1bnMgYXQgYSBmaXhlZCBmcmVx
dWVuY3kgb2YgMzQyTUh6IGFuZCB0aGUgCmludGVyY29ubmVjdCBjbG9ja3MgYXJlIG5vdCBzY2Fs
ZWQuIFRoZSBhZ2dyX25vYyByZWdpc3RlciBpcyBqdXN0IGEgCm1hZ2ljIHJlZ2lzdGVyIGZvciBj
b25maWd1cmluZyBpdCdzIHJhdGUgYWRhcHRlciB0byBlbnN1cmUgbm8gd2FpdCAKY3ljbGVzIGFy
ZSBpbnNlcnRlZC4KCj4gCj4gVGhhbmtzLAo+IE1hbmkKPiAKPj4KPj4KPj4+Cj4+PiBUaGFua3Ms
Cj4+PiBNYW5pCj4+Pgo+Pj4+Pgo+Pj4+PiBUaGFua3MsCj4+Pj4+IE1hbmkKPj4+Pj4KPj4+Pj4+
ICsKPj4+Pj4+ICAgICAgLSBpZjoKPj4+Pj4+ICAgICAgICAgIHByb3BlcnRpZXM6Cj4+Pj4+PiAg
ICAgICAgICAgIGNvbXBhdGlibGU6Cj4+Pj4+PiBAQCAtMzY1LDYgKzM4OSwzOSBAQCBhbGxPZjoK
Pj4+Pj4+ICAgICAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+Pj4+Pj4gICAg
ICAgICAgICAgICAgLSBjb25zdDogYXhpX21fc3RpY2t5ICMgQVhJIE1hc3RlciBTdGlja3kgcmVz
ZXQKPj4+Pj4+ICsgIC0gaWY6Cj4+Pj4+PiArICAgICAgcHJvcGVydGllczoKPj4+Pj4+ICsgICAg
ICAgIGNvbXBhdGlibGU6Cj4+Pj4+PiArICAgICAgICAgIGNvbnRhaW5zOgo+Pj4+Pj4gKyAgICAg
ICAgICAgIGVudW06Cj4+Pj4+PiArICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+
Pj4+PiArICAgIHRoZW46Cj4+Pj4+PiArICAgICAgcHJvcGVydGllczoKPj4+Pj4+ICsgICAgICAg
IGNsb2NrczoKPj4+Pj4+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPj4+Pj4+ICsgICAgICAgICAg
bWF4SXRlbXM6IDYKPj4+Pj4+ICsgICAgICAgIGNsb2NrLW5hbWVzOgo+Pj4+Pj4gKyAgICAgICAg
ICBpdGVtczoKPj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBhaGIgICMgQUhCIGNsb2NrCj4+
Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYXV4ICAjIEF1eGlsaWFyeSBjbG9jawo+Pj4+Pj4g
KyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9tICMgQVhJIE1hc3RlciBjbG9jawo+Pj4+Pj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IGF4aV9zICMgQVhJIFNsYXZlIGNsb2NrCj4+Pj4+PiArICAgICAg
ICAgICAgLSBjb25zdDogYXhpX2JyaWRnZSAjIEFYSSBicmlkZ2UgY2xvY2sKPj4+Pj4+ICsgICAg
ICAgICAgICAtIGNvbnN0OiByY2huZwo+Pj4+Pj4gKyAgICAgICAgcmVzZXRzOgo+Pj4+Pj4gKyAg
ICAgICAgICBtaW5JdGVtczogOAo+Pj4+Pj4gKyAgICAgICAgICBtYXhJdGVtczogOAo+Pj4+Pj4g
KyAgICAgICAgcmVzZXQtbmFtZXM6Cj4+Pj4+PiArICAgICAgICAgIGl0ZW1zOgo+Pj4+Pj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IHBpcGUgIyBQSVBFIHJlc2V0Cj4+Pj4+PiArICAgICAgICAgICAg
LSBjb25zdDogc3RpY2t5ICMgQ29yZSBTdGlja3kgcmVzZXQKPj4+Pj4+ICsgICAgICAgICAgICAt
IGNvbnN0OiBheGlfc19zdGlja3kgIyBBWEkgU2xhdmUgU3RpY2t5IHJlc2V0Cj4+Pj4+PiArICAg
ICAgICAgICAgLSBjb25zdDogYXhpX3MgIyBBWEkgU2xhdmUgcmVzZXQKPj4+Pj4+ICsgICAgICAg
ICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFzdGVyIFN0aWNreSByZXNldAo+Pj4+
Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9tICMgQVhJIE1hc3RlciByZXNldAo+Pj4+Pj4g
KyAgICAgICAgICAgIC0gY29uc3Q6IGF1eCAjIEFVWCBSZXNldAo+Pj4+Pj4gKyAgICAgICAgICAg
IC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+Pj4+Pj4gKwo+Pj4+Pj4gICAgICAtIGlmOgo+Pj4+
Pj4gICAgICAgICAgcHJvcGVydGllczoKPj4+Pj4+ICAgICAgICAgICAgY29tcGF0aWJsZToKPj4+
Pj4+IEBAIC02ODEsNiArNzM4LDE2IEBAIGFsbE9mOgo+Pj4+Pj4gICAgICAgICAgICAtIGludGVy
Y29ubmVjdHMKPj4+Pj4+ICAgICAgICAgICAgLSBpbnRlcmNvbm5lY3QtbmFtZXMKPj4+Pj4+ICsg
IC0gaWY6Cj4+Pj4+PiArICAgICAgcHJvcGVydGllczoKPj4+Pj4+ICsgICAgICAgIGNvbXBhdGli
bGU6Cj4+Pj4+PiArICAgICAgICAgIGNvbnRhaW5zOgo+Pj4+Pj4gKyAgICAgICAgICAgIGVudW06
Cj4+Pj4+PiArICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+Pj4+PiArICAgIHRo
ZW46Cj4+Pj4+PiArICAgICAgcmVxdWlyZWQ6Cj4+Pj4+PiArICAgICAgICAtIG1zaS1wYXJlbnQK
Pj4+Pj4+ICsKPj4+Pj4+ICAgICAgLSBpZjoKPj4+Pj4+ICAgICAgICAgIG5vdDoKPj4+Pj4+ICAg
ICAgICAgICAgcHJvcGVydGllczoKPj4+Pj4+IEBAIC02OTMsNiArNzYwLDcgQEAgYWxsT2Y6Cj4+
Pj4+PiAgICAgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA2NHYyCj4+Pj4+PiAgICAg
ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NAo+Pj4+Pj4gICAgICAgICAgICAgICAg
ICAgIC0gcWNvbSxwY2llLWlwcTgwNzQtZ2VuMwo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAtIHFj
b20scGNpZS1pcHE5NTc0Cj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtcWNz
NDA0Cj4+Pj4+PiAgICAgICAgdGhlbjoKPj4+Pj4+ICAgICAgICAgIHJlcXVpcmVkOgo+Pj4+Pj4g
LS0gCj4+Pj4+PiAyLjE3LjEKPj4+Pj4+Cj4+Pj4+Cj4+Pj4gVGhhbmtzLAo+Pj4+IERldmkgUHJp
eWEKPj4+Cj4+Cj4gClRoYW5rcywKRGV2aSBQcml5YQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
