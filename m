Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D32CC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 19:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFTFRnAzLyrXjXCt35eFknsYSEdmQ3rSw1MX/QRsNq4=; b=GzPtsdJg04IUS9
	awOEvByigj3Eyw1anqRo1Ij592BXOKllOKpBkRETx2j3ANacPW8Q+laQw55N1ugh/4ZaugAskaB0S
	I1fTcMOoNHXXAQ8aOmxJBD0fqIV72IYInsWNgENHJPPxLtGKkULhn2SBRJEB7yGZJls66iHOy/qEf
	GJjl5dndXXUddLKagl4sQcygCvm06uM6NryWL0Sq/6y14TAbZoh+BWQ8mKNRBzDFSBpp8QqnQsO1N
	gJ02gNgK3/tc3uwZWoC87RDf6U5ws6jwjUL2KDOsMCM85Lbt7KOeR5LneO3xikkVyOqIU3F5iq/oy
	bflLsZ11E8gPi8+fnN4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps7fV-007N72-25;
	Thu, 27 Apr 2023 19:52:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps7fT-007N6c-0r
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 19:52:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33RJgArL029210;
	Thu, 27 Apr 2023 19:52:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=qcppdkim1;
 bh=k1Q5/yUWRQrzFbPHUJT44yq1btB2RoW2DzUM6RMUWLk=;
 b=CaaayBjvyqGOab2Naf8kNsbZYQ7g2ayZOJkkKvhlZwg3O/EDtc4YvPdXcA4RDx3YvIYM
 Twv8qnChfHmRHe+T+5yy9ZRW1c+Jw1P+g3O7Iv5nl8DpbZy6zHmkeLmgEnFNgpW9N7ba
 ZvgviLWFyG5EEAj5b7e4NOT8BUNCBELLuLywv2SpxH6PKNFW8khuZftDSs01NpX+MDnC
 01Dd/yVfg/sQ3F//nyuDt/35YFkdOWMwTG8UrO2aLawMtxtI53NZleyY5zbDbhMVN7pu
 k7RGzcT/p+jAZDAV3zTAuGO2K0iIrM3EvCXY55i88OnIno+p32mYhaIWXor6blwzBYkR Ww== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q7m4y9vfr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 19:52:34 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33RJqXBq024360
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Apr 2023 19:52:33 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 27 Apr 2023 12:52:33 -0700
Date: Thu, 27 Apr 2023 12:52:32 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Johan Hovold <johan@kernel.org>,
        Bjorn
 Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
Message-ID: <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-2-quic_bjorande@quicinc.com>
 <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: nidE7ShXRPBsMTqQHBIcJxHWm-fRDF6U
X-Proofpoint-ORIG-GUID: nidE7ShXRPBsMTqQHBIcJxHWm-fRDF6U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-27_09,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304270174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_125239_329149_C03194CA 
X-CRM114-Status: GOOD (  25.94  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBBcHIgMjYsIDIwMjMgYXQgMTE6MjE6MjlBTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBPbiBUdWUsIEFwciAyNSwgMjAyMyBhdCA0OjQw4oCvQU0gQmpvcm4gQW5kZXJz
c29uCj4gPHF1aWNfYmpvcmFuZGVAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4KPiA+IFRoZSBRTVAg
Y29tYm8gcGh5IGNhbiBiZSBjb25uZWN0ZWQgdG8gYSBUQ1BNLCBhIFVTQiBjb250cm9sbGVyIGFu
ZCBhCj4gPiBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciBoYW5kbGluZyBVU0IgVHlwZS1DIG9y
aWVudGF0aW9uIHN3aXRjaGluZwo+ID4gYW5kIHByb3BhZ2F0aW5nIEhQRCBzaWduYWxzLgo+ID4K
PiA+IEV4dGVuZCB0aGUgYmluZGluZyB0byBhbGxvdyB0aGVzZSBjb25uZWN0aW9ucyB0byBiZSBk
ZXNjcmliZWQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmpvcm4gQW5kZXJzc29uIDxxdWljX2Jq
b3JhbmRlQHF1aWNpbmMuY29tPgo+ID4gLS0tCj4gPiAgLi4uL3BoeS9xY29tLHNjODI4MHhwLXFt
cC11c2I0M2RwLXBoeS55YW1sICAgIHwgNTEgKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1w
aHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgy
ODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+ID4gaW5kZXggM2NkNWZjM2U4ZmFiLi5jMDM3YWM5
MGNlN2YgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1w
aHkueWFtbAo+ID4gQEAgLTYwLDYgKzYwLDI2IEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgIGRlc2Ny
aXB0aW9uOgo+ID4gICAgICAgIFNlZSBpbmNsdWRlL2R0LWJpbmRpbmdzL2R0LWJpbmRpbmdzL3Bo
eS9waHktcWNvbS1xbXAuaAo+ID4KPiA+ICsgIG9yaWVudGF0aW9uLXN3aXRjaDoKPiA+ICsgICAg
ZGVzY3JpcHRpb246Cj4gPiArICAgICAgRmxhZyB0aGUgUEhZIGFzIHBvc3NpYmxlIGhhbmRsZXIg
b2YgVVNCIFR5cGUtQyBvcmllbnRhdGlvbiBzd2l0Y2hpbmcKPiA+ICsgICAgdHlwZTogYm9vbGVh
bgo+ID4gKwo+ID4gKyAgcG9ydHM6Cj4gPiArICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwj
L3Byb3BlcnRpZXMvcG9ydHMKPiA+ICsgICAgcHJvcGVydGllczoKPiA+ICsgICAgICBwb3J0QDA6
Cj4gPiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnQK
PiA+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBPdXRwdXQgZW5kcG9pbnQgb2YgdGhlIFBIWQo+ID4g
Kwo+ID4gKyAgICAgIHBvcnRAMToKPiA+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlh
bWwjLyRkZWZzL3BvcnQtYmFzZQo+ID4gKyAgICAgICAgZGVzY3JpcHRpb246IEluY29taW5nIGVu
ZHBvaW50IGZyb20gdGhlIFVTQiBjb250cm9sbGVyCj4gCj4gRG8geW91IHJlYWxseSBuZWVkIHRo
aXMgb25lID8KPiAKPiBUaGUgY29udHJvbGxlciBkb2Vzbid0IHByb2Nlc3Mgb3JpZW50YXRpb24g
c3dpdGNoaW5nLgo+IAoKSSBkb24ndCBoYXZlIGEgbmVlZCBmb3IgaXQsIGFzIHdlIGNhbiBkZWFs
IHdpdGggcm9sZSBzd2l0Y2hpbmcgYnkKY29ubmVjdGluZyBjb25uZWN0b3IvcG9ydEAwIHRvIHRo
ZSBkd2MzLgoKQnV0IGlmIHdlIGV2ZXIgaGF2ZSBhIG5lZWQgdG8gZGVzY3JpYmUgdGhlIGR3YzMg
LT4gUU1QIC0+IGNvbm5lY3RvciBwYXRoCmluIHRoZSBvZl9ncmFwaCBJIHRoaW5rIGl0IHdvdWxk
IGxvb2sgcHJldHRpZXIgdG8gaGF2ZSBVU0IgaW5wdXQgYXMKcG9ydEAxIGFuZCBEUCBpbnB1dCBh
cyBwb3J0QDIuLi4KCkRvIHlvdSBoYXZlIGEgY29uY2VybiB3aXRoIGtlZXBpbmcgaXQgYXJvdW5k
IGluIHRoZSBEVCAodGhlCmltcGxlbWVudGF0aW9uIGRvZXNuJ3QgbmVlZCB0byBjYXJlKT8KClJl
Z2FyZHMsCkJqb3JuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
