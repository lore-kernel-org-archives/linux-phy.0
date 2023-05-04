Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05F5C7EE26
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 14:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVQIoMHej/NTVt6yVvj4xMhgvHKkmqICvP6+CAgt1zY=; b=CeJtVxHb2ADgqf
	6nZhlo9cD5Djz4mTmpN7n8M8jyXuaGJeAs67lbSSqeE2ksdipZE3bQwTbei0gzlFqDwwfBtDfY3A3
	yu7m820CrgZ4lZ4EJNAJtMkHkP1Io3r+3wVkJsb0c5vaH8QCypIGZxWowHE4TAJLeL/2PtqjIpm/Q
	yVMNufqH15Id375chWgOepuXZgA4VHnRH6nXolYS3WgKOy7NFWVTDQl5v5F3Ki2hLuS4sJvMDcVyp
	1isnpO0hl9lCN5Ay4UBDFoYHvoOy+pcTf5i9zOcgnqudjqutB4of8Eyypqtrgx+/Dxh/bn/13LApc
	YjjX9nsb4T+w0IMTBOBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puaJA-0088sA-0u;
	Thu, 04 May 2023 14:51:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puaJ5-0088ok-30
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 14:51:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 344E82UW004917;
	Thu, 4 May 2023 14:51:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=qcppdkim1;
 bh=GhSbuOrmW94M9j+Wv4Gh8g0l7nGibTjHwc6eC1CVovo=;
 b=TlWaMz+O3G+UriYSGBJeGEnRlWBhj9cDJrGTSDpntgl/X+rdu3S7Oh0rH7wKWhP5WCKj
 kPIepsbFilGnuWCYalElsA1iy3zPa70PiS6vSW/422SKSRIb1pFonw/GggKyEutNbaV0
 FeZTU7CY6+4Xt8ljTOgd3K/QOebmRqQ9EpdmHixBCiBG5skJysITQecbn3A/qllnOFY3
 lt+q+QgcN/1fAnVk95waDoM64uGDOtJrFXpTc3slxfojINse7E6soxahLQwp0u5VZfh5
 Wiu/3rXIErWk/b2Sb6jTRhe+URquhnQBDDYIq//Bf3CxNinQps/yfW7F4P0KKoFNtyl2 sw== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qce6mg372-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 14:51:39 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 344EpcEN002967
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 4 May 2023 14:51:39 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 4 May 2023 07:51:38 -0700
Date: Thu, 4 May 2023 07:51:37 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
CC: Bryan O'Donoghue <pure.logic@nexus-software.ie>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
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
Message-ID: <20230504145137.GG870858@hu-bjorande-lv.qualcomm.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-2-quic_bjorande@quicinc.com>
 <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
 <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
 <ea0ec8b4-ec87-65f0-4f0e-504d8059b1e6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea0ec8b4-ec87-65f0-4f0e-504d8059b1e6@linaro.org>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Owq-MiMBFdp0s5W0zqY4uBpSH3fza73z
X-Proofpoint-ORIG-GUID: Owq-MiMBFdp0s5W0zqY4uBpSH3fza73z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_10,2023-05-04_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 phishscore=0
 mlxlogscore=999 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305040122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_075143_999113_4240A9BA 
X-CRM114-Status: GOOD (  33.29  )
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

T24gVGh1LCBNYXkgMDQsIDIwMjMgYXQgMDM6NTA6NTNQTSArMDIwMCwgTmVpbCBBcm1zdHJvbmcg
d3JvdGU6Cj4gT24gMjcvMDQvMjAyMyAyMTo1MiwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+ID4g
T24gV2VkLCBBcHIgMjYsIDIwMjMgYXQgMTE6MjE6MjlBTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiA+ID4gT24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgNDo0MOKAr0FNIEJqb3JuIEFu
ZGVyc3Nvbgo+ID4gPiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4gPiA+ID4g
Cj4gPiA+ID4gVGhlIFFNUCBjb21ibyBwaHkgY2FuIGJlIGNvbm5lY3RlZCB0byBhIFRDUE0sIGEg
VVNCIGNvbnRyb2xsZXIgYW5kIGEKPiA+ID4gPiBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciBo
YW5kbGluZyBVU0IgVHlwZS1DIG9yaWVudGF0aW9uIHN3aXRjaGluZwo+ID4gPiA+IGFuZCBwcm9w
YWdhdGluZyBIUEQgc2lnbmFscy4KPiA+ID4gPiAKPiA+ID4gPiBFeHRlbmQgdGhlIGJpbmRpbmcg
dG8gYWxsb3cgdGhlc2UgY29ubmVjdGlvbnMgdG8gYmUgZGVzY3JpYmVkLgo+ID4gPiA+IAo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEJqb3JuIEFuZGVyc3NvbiA8cXVpY19iam9yYW5kZUBxdWljaW5j
LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgIC4uLi9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNi
NDNkcC1waHkueWFtbCAgICB8IDUxICsrKysrKysrKysrKysrKysrKysKPiA+ID4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAt
dXNiNDNkcC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+ID4gPiA+IGluZGV4IDNjZDVmYzNl
OGZhYi4uYzAzN2FjOTBjZTdmIDEwMDY0NAo+ID4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+
ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxz
YzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+ID4gPiA+IEBAIC02MCw2ICs2MCwyNiBAQCBw
cm9wZXJ0aWVzOgo+ID4gPiA+ICAgICAgIGRlc2NyaXB0aW9uOgo+ID4gPiA+ICAgICAgICAgU2Vl
IGluY2x1ZGUvZHQtYmluZGluZ3MvZHQtYmluZGluZ3MvcGh5L3BoeS1xY29tLXFtcC5oCj4gPiA+
ID4gCj4gPiA+ID4gKyAgb3JpZW50YXRpb24tc3dpdGNoOgo+ID4gPiA+ICsgICAgZGVzY3JpcHRp
b246Cj4gPiA+ID4gKyAgICAgIEZsYWcgdGhlIFBIWSBhcyBwb3NzaWJsZSBoYW5kbGVyIG9mIFVT
QiBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNoaW5nCj4gPiA+ID4gKyAgICB0eXBlOiBib29sZWFu
Cj4gPiA+ID4gKwo+ID4gPiA+ICsgIHBvcnRzOgo+ID4gPiA+ICsgICAgJHJlZjogL3NjaGVtYXMv
Z3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0cwo+ID4gPiA+ICsgICAgcHJvcGVydGllczoKPiA+
ID4gPiArICAgICAgcG9ydEAwOgo+ID4gPiA+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBo
LnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+ID4gPiA+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBPdXRw
dXQgZW5kcG9pbnQgb2YgdGhlIFBIWQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgcG9ydEAxOgo+
ID4gPiA+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjLyRkZWZzL3BvcnQtYmFz
ZQo+ID4gPiA+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBJbmNvbWluZyBlbmRwb2ludCBmcm9tIHRo
ZSBVU0IgY29udHJvbGxlcgo+ID4gPiAKPiA+ID4gRG8geW91IHJlYWxseSBuZWVkIHRoaXMgb25l
ID8KPiA+ID4gCj4gPiA+IFRoZSBjb250cm9sbGVyIGRvZXNuJ3QgcHJvY2VzcyBvcmllbnRhdGlv
biBzd2l0Y2hpbmcuCj4gPiA+IAo+ID4gCj4gPiBJIGRvbid0IGhhdmUgYSBuZWVkIGZvciBpdCwg
YXMgd2UgY2FuIGRlYWwgd2l0aCByb2xlIHN3aXRjaGluZyBieQo+ID4gY29ubmVjdGluZyBjb25u
ZWN0b3IvcG9ydEAwIHRvIHRoZSBkd2MzLgo+ID4gCj4gPiBCdXQgaWYgd2UgZXZlciBoYXZlIGEg
bmVlZCB0byBkZXNjcmliZSB0aGUgZHdjMyAtPiBRTVAgLT4gY29ubmVjdG9yIHBhdGgKPiA+IGlu
IHRoZSBvZl9ncmFwaCBJIHRoaW5rIGl0IHdvdWxkIGxvb2sgcHJldHRpZXIgdG8gaGF2ZSBVU0Ig
aW5wdXQgYXMKPiA+IHBvcnRAMSBhbmQgRFAgaW5wdXQgYXMgcG9ydEAyLi4uCj4gCj4gSSB0aGlu
ayBpdCB3b3VsZCBiZSBncmVhdCB0byBoYXZlIHBvcnRAMSBmb3IgVVNCIFNTIGFuZCBwb3J0QDIg
Zm9yIERQLAo+IG90aGVyd2lzZSB3ZSBuZWVkIHRvIGFkZCAyIGVuZHBvaW50cyBhcyBJIHNlbnQg
aW4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA1MDMtdG9waWMtc204NDUwLWdy
YXBoaWNzLWRwLW5leHQtdjEtMS1kMWVlOTM5N2YyYTZAbGluYXJvLm9yZy8KPiBzaW5jZSB3ZSBz
cGxpdCBVU0IgSFMgYW5kIFNTIHN0cmVhbXMgb24gU004WzM0NV01MCBwbGF0Zm9ybXMuCj4gCgpS
aWdodCwgc28gbGV0J3Mga2VlcCBwb3J0QDEgYW5kIHBvcnRAMiBpbiB0aGUgYmluZGluZywgYW5k
IHRoZW4gd2UgY2FuCmNob29zZSB0byBjb25uZWN0IHBvcnRAMSB0byBEV0MzIG9yIG5vdC4uLgoK
UmVnYXJkcywKQmpvcm4KCj4gPiAKPiA+IERvIHlvdSBoYXZlIGEgY29uY2VybiB3aXRoIGtlZXBp
bmcgaXQgYXJvdW5kIGluIHRoZSBEVCAodGhlCj4gPiBpbXBsZW1lbnRhdGlvbiBkb2Vzbid0IG5l
ZWQgdG8gY2FyZSk/Cj4gPiAKPiA+IFJlZ2FyZHMsCj4gPiBCam9ybgo+IAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
