Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 213B0C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 14 May 2022 06:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PV8XlZthCjXsCvrg0t2zrl6HSxs6e5t0d0thOsYF2bU=; b=w9pifzfpk8g8G5
	wWl5sCylv1KY5u+yMEabiKeQN5hJZWDnZke9WiNYDQtykWryZgDBnm6KaFwVNM0YqYvnydFJoYzEt
	+5rKfMXE05KEz4CY3z/1xlkWkZ4tewC26XpHH8aPf7dPIwMilOJNSTnGZyGr1npGa8ioYjR7/6q6x
	jQL4vzcxjo8M4yoCzC/eBoTqSPzy9rGHDQp0+rvrZu5yUlXq7rbvPstLJKR2uw8GRAJ3ncIkRWOgH
	jLC43dhlQ7qQhelFt+a0i5c5txlIUsDwmMbu9dgRaF9geImVFB+TekI3DJEjtgf/HgEFQCG07X5d7
	taHotDCyqKbFQ4OSkrPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nplCn-000uLV-AT; Sat, 14 May 2022 06:24:45 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nplCj-000uK9-Ph
 for linux-phy@lists.infradead.org; Sat, 14 May 2022 06:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652509481; x=1684045481;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CTPKV5/3XbPVVsmMfjikShM7ViVrOedVu3KK+AOri88=;
 b=BDwKd+XThhhuCEAfgbflj67jy53BZJkFkhMRN6QcSx1JOlvJRf9BhFd2
 4H3qG6/aaB8msnFt8bAZI/ytAcfkLRjZ6zUUaHXTD79EKmFhLQ+hHCl+x
 yjf9XcP2uKRSIx7JPKsKSz8MKpiSYWhZXaPgx941+nv3TQXR55E6yY8w/ 0=;
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 13 May 2022 23:24:35 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg04-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 23:24:34 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 13 May 2022 23:24:34 -0700
Received: from [10.216.22.253] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Fri, 13 May
 2022 23:24:27 -0700
Message-ID: <972ac516-efac-54d6-febc-1b180ec36d4b@quicinc.com>
Date: Sat, 14 May 2022 11:54:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 "Andy
 Gross" <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Stephen Boyd
 <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>, "Vinod
 Koul" <vkoul@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
 <9644d608-4ab9-ed0d-50fb-0016e4331361@quicinc.com>
 <5b32cecf-873a-6367-df87-1b8d45e63cec@linaro.org>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <5b32cecf-873a-6367-df87-1b8d45e63cec@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_232441_910985_76264A3D 
X-CRM114-Status: GOOD (  17.24  )
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

Ck9uIDUvMTIvMjAyMiA0OjAwIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDEy
LzA1LzIwMjIgMDc6NTcsIEtyaXNobmEgS3VyYXBhdGkgUFNTTlYgd3JvdGU6Cj4+IE9uIDUvMTEv
MjAyMiAxMTo0OSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+IE9uIDExLzA1LzIw
MjIgMTc6MjYsIEtyaXNobmEgS3VyYXBhdGkgd3JvdGU6Cj4+Pj4gRnJvbTogU2FuZGVlcCBNYWhl
c3dhcmFtIDxxdWljX2Nfc2FubUBxdWljaW5jLmNvbT4KPj4+Pgo+Pj4+IEFkZCBkZXZpY2UgdHJl
ZSBiaW5kaW5ncyBmb3IgU05QUyBwaHkgdHVuaW5nIHBhcmFtZXRlcnMuCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBTYW5kZWVwIE1haGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMuY29tPgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgS3VyYXBhdGkgPHF1aWNfa3Jpc2t1cmFAcXVpY2lu
Yy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZl
bXRvLXYyLnlhbWwgICAgICAgfCA4NyArKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gICAgMSBm
aWxlIGNoYW5nZWQsIDg3IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25w
cy1mZW10by12Mi55YW1sCj4+Pj4gaW5kZXggMWNlMjUxZC4uNzBlZmZmZSAxMDA2NDQKPj4+PiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMt
ZmVtdG8tdjIueWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sCj4+Pj4gQEAgLTUzLDYgKzUzLDkzIEBA
IHByb3BlcnRpZXM6Cj4+Pj4gICAgICB2ZGRhMzMtc3VwcGx5Ogo+Pj4+ICAgICAgICBkZXNjcmlw
dGlvbjogcGhhbmRsZSB0byB0aGUgcmVndWxhdG9yIDMuM1Ygc3VwcGx5IG5vZGUuCj4+Pj4gICAg
Cj4+Pj4gKyAgcWNvbSxocy1kaXNjb25uZWN0LWJwczoKPj4+PiArICAgICRyZWY6IC9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4+Pj4gKyAgICBkZXNjcmlwdGlvbjoKPj4+
PiArICAgICAgVGhpcyBhZGp1c3RzIHRoZSB2b2x0YWdlIGxldmVsIGZvciB0aGUgdGhyZXNob2xk
IHVzZWQgdG8KPj4+PiArICAgICAgZGV0ZWN0IGEgZGlzY29ubmVjdCBldmVudCBhdCB0aGUgaG9z
dC4gUG9zc2libGUgdmFsdWVzIGFyZS4KPj4+PiArICAgICAgVGhlIHZhbHVlcyBkZWZpbmVkIGFy
ZSBpbiBtdWx0aXBsZXMgb2YgYmFzaXMgcG9pbnRzICgxYnAgPSAwLjAxJSkuCj4+PiBUaGlzIG1l
YW5zIHRoZXJlIGlzIHNvbWUgbWluaW11bSBhbmQgbWF4aW11bSAoMTAwJSk/Cj4+IEhpIEtyenlz
dG9mLAo+Pgo+PiBZZXMgdGhlcmUgYXJlIG1heCBhbmQgbWluIGZvciBlYWNoIHBhcmFtZXRlciAo
bm90IG5lY2Vzc2FyaWx5IDAlLzEwMCUpCj4+Cj4+IEFzIGFuIGV4YW1wbGUgaWYgd2UgdGFrZSBz
cXVlbGNoIGRldGVjdG9yIHRocmVzaG9sZCwgdGhlIHJlZ2lzdGVyIHZhbHVlCj4+IHZzIGFjdHVh
bCBwZXJjZW50YWdlIGNoYW5nZXIgYXMgcGVyIGRhdGEgYm9vayBpcyBhcyBmb2xsb3dzIDoKPj4K
Pj4gJSBjaGFuZ2UgaW4gdm9sdGFnZcKgwqDCoCB8wqDCoMKgwqAgY29ycmVzcG9uZGluZyByZWcg
dmFsdWUKPj4KPj4gICDCoC0yMC45MCXCoMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
wqAgfCDCoMKgIDcKPj4gICDCoC0xNS42MCXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgNgo+PiAtMTAuMzAlwqDCoCDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCA1Cj4+IC01LjMwJSDCoCDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCDCoCA0Cj4+IDAlwqAg
wqAgwqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoMKgIDMKPj4gNS4zMCXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCDCoMKgIDIKPj4gMTAuNjAlwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxCj4+IDE1LjkwJSDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAwCj4+Cj4+
IEhlcmUgdGhlIG1pbiBhbmQgbWF4IGFyZSAxNS45JSB0byAtMjAuOSUKPj4KPj4gVGhlIG1pbiBh
bmQgbWF4IGRpZmZlciBmb3IgZWFjaCBwYXJhbWV0ZXIgYW5kIG1pZ2h0IG5vdCBiZSBuZWNlc3Nh
cmlseQo+PiAwJSBhbmQgMTAwJQo+IFRoZW4gaXQgc2VlbXMgcG9zc2libGUgdG8gZGVmaW5lIG1p
bmltdW0gYW5kIG1heGltdW0gdmFsdWVzIC0gcGxlYXNlIGFkZAo+IHRoZW0gKCJtaW5pbXVtOiB4
eHh4IikuCj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCkhpIEtyenlzenRvZiwKCiDC
oFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSwgbWlzc2VkIHRoaXMgbWFpbC4KCkN1cnJlbnRseSwg
dGhlc2UgdmFsdWVzIGhhdmUgYSBmaXhlZCBtYXhpbXVtIGFuZCBtaW5pbXVtLiBCdXQgaWYgdGhl
c2UgCmxpbWl0cyBjaGFuZ2UgaW4gdGhlCgpmdXR1cmUgKHNheSBvbiBhIHBlciB0YXJnZXQgYmFz
aXMpICwgd291bGQgaXQgYmUgYXBwcm9wcmlhdGUgdG8gYWRkIHRoZW0gCmhlcmUgaW4gYmluZGlu
Z3MgZmlsZSA/CgpBbHNvIGluIHRoZSBkcml2ZXIgZmlsZSBmb3Igc2M3MjgwIHRhcmdldCwgd2Ug
aGF2ZSBhZGRlZCBwYXJhbWV0ZXIgCm1hcHBpbmcgOiAobWFwIGIvdyByZWdpc3RlciB2YWx1ZQoK
YW5kIGJwcyBwYXNzZWQgZnJvbSBkZXZpY2UgdHJlZSkuIEZvciBzcXVlbGNoIGRldGVjdG9yLCBp
dCBpcyBhcyBmb2xsb3dzOgoKK3N0YXRpYyBzdHJ1Y3Qgb3ZlcnJpZGVfcGFyYW0gc3F1ZWxjaF9k
ZXRfdGhyZXNob2xkX3NjNzI4MFtdID0geworCU9WRVJSSURFX1BBUkFNKC0yMDkwLCA3KSwKKwlP
VkVSUklERV9QQVJBTSgtMTU2MCwgNiksCisJT1ZFUlJJREVfUEFSQU0oLTEwMzAsIDUpLAorCU9W
RVJSSURFX1BBUkFNKC01MzAsIDQpLAorCU9WRVJSSURFX1BBUkFNKDAsIDMpLAorCU9WRVJSSURF
X1BBUkFNKDUzMCwgMiksCisJT1ZFUlJJREVfUEFSQU0oMTA2MCwgMSksCisJT1ZFUlJJREVfUEFS
QU0oMTU5MCwgMCksCit9OwoKQW5kIHRoZSBjb2RlIGlzIHdyaXR0ZW4gc3VjaCB0aGF0IGlmIHdl
IGdpdmUgYSBicHMgdmFsdWUgaW4gZHQgZ3JlYXRlciB0aGFuIG1heCB2YWx1ZSBpbgp0YWJsZSwg
d2Ugd291bGQgYXV0b21hdGljYWxseSBjaG9vc2UgbWF4IHZhbHVlLiBBbmQgaWYgd2UgcHJvdmlk
ZSBicHMgdmFsdWUgbGVzc2VyIHRoYW4KbWluaW11bSB2YWx1ZSwgd2Ugd291bGQgY2hvb3NlIHRo
ZSBtaW4gdmFsdWUuCgpTbywgd291bGQgaXQgYmUgYXBwcm9wcmlhdGUgdG8gYWRkIHRoZSBtaW4g
YW5kIG1heCBpbiBkdC1iaW5kaW5ncyB3aGVuIHRoZXJlIGlzIGEKc2xpZ2h0IGNoYW5jZSBvZiB0
aGVtIGNoYW5naW5nIGluIHRoZSBmdXR1cmUgPwoKV291bGQgbGlrZSB0byBrbm93IHlvdXIgdGhv
dWdodHMgb24gdGhpcywKClRoYW5rcywKS3Jpc2huYSwKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
