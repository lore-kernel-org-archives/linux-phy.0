Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF5FEC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 05:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hforwC9ORMDJ1Welz7uvJ0CQV8VgDTrlQ5dTZn+StHc=; b=f3tTXLHfMe5jv9
	R5LcqoOEcsZ/8wZ7PEgCYku/O8VqXyE0tg2Kz6flFHfbSCvKDWTH7++CW3coKP28LWB8yqw6cHq99
	sH6Wcg/Ul7Ebf6uA43ZLNxWqU2GeB2Y/H+jYmclO3CzRDgY06d/DoeF1HUdmhocKiJl1W011IiVKK
	pKrdB7ykM7mWCsHHu/sd4uMqAXNDAauGNtWv2Enspfyq95AH2uTTANpN1SKpoUofqbLEOdztPMgnJ
	aGJzxwYMBWDlrxy6vsqqZ7qSfgdtUyn2baM7nb3ob9cHx7To+52LWRqjZCVL9mUBGKe9YbpdzKSyz
	oe3KexwhX3VI8ohssLNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np1q6-00AJIr-4Q; Thu, 12 May 2022 05:58:18 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np1pz-00AJFU-Ov
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 05:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652335091; x=1683871091;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NZnDnpvgn5my4A1DvCZcio68+0nCB9EOlvfdWJyoVwM=;
 b=W57mtooGh2RyijKIiwWrpQoploHPd0gpqtZVOizh/VuJXf4iYUddQXhF
 DT+UMcDwcI6J82FtVxyRqdZ6mbP081P+VAMWN+kGlMJqBo+v0c7bZp6+0
 +l7PDipmY3QSpYFre6CqgUGkiFeKor05M+R4+g21Rcix7pKEPDRypk2as A=;
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 11 May 2022 22:58:01 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 22:58:00 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 11 May 2022 22:58:00 -0700
Received: from [10.216.61.198] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Wed, 11 May
 2022 22:57:53 -0700
Message-ID: <9644d608-4ab9-ed0d-50fb-0016e4331361@quicinc.com>
Date: Thu, 12 May 2022 11:27:48 +0530
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
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Sandeep Maheswaram
 <quic_c_sanm@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_225811_876725_4575FFDA 
X-CRM114-Status: GOOD (  16.82  )
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

Ck9uIDUvMTEvMjAyMiAxMTo0OSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAx
MS8wNS8yMDIyIDE3OjI2LCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+PiBGcm9tOiBTYW5kZWVw
IE1haGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMuY29tPgo+Pgo+PiBBZGQgZGV2aWNlIHRy
ZWUgYmluZGluZ3MgZm9yIFNOUFMgcGh5IHR1bmluZyBwYXJhbWV0ZXJzLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBTYW5kZWVwIE1haGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMuY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBLcmlzaG5hIEt1cmFwYXRpIDxxdWljX2tyaXNrdXJhQHF1aWNpbmMuY29t
Pgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIueWFt
bCAgICAgICB8IDg3ICsrKysrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwg
ODcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZlbXRvLXYyLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIueWFtbAo+
PiBpbmRleCAxY2UyNTFkLi43MGVmZmZlIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVtdG8tdjIueWFtbAo+PiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNucHMtZmVt
dG8tdjIueWFtbAo+PiBAQCAtNTMsNiArNTMsOTMgQEAgcHJvcGVydGllczoKPj4gICAgIHZkZGEz
My1zdXBwbHk6Cj4+ICAgICAgIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIHRoZSByZWd1bGF0b3Ig
My4zViBzdXBwbHkgbm9kZS4KPj4gICAKPj4gKyAgcWNvbSxocy1kaXNjb25uZWN0LWJwczoKPj4g
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9pbnQzMgo+PiArICAg
IGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhpcyBhZGp1c3RzIHRoZSB2b2x0YWdlIGxldmVsIGZv
ciB0aGUgdGhyZXNob2xkIHVzZWQgdG8KPj4gKyAgICAgIGRldGVjdCBhIGRpc2Nvbm5lY3QgZXZl
bnQgYXQgdGhlIGhvc3QuIFBvc3NpYmxlIHZhbHVlcyBhcmUuCj4+ICsgICAgICBUaGUgdmFsdWVz
IGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBwb2ludHMgKDFicCA9IDAuMDElKS4K
PiBUaGlzIG1lYW5zIHRoZXJlIGlzIHNvbWUgbWluaW11bSBhbmQgbWF4aW11bSAoMTAwJSk/CgpI
aSBLcnp5c3RvZiwKClllcyB0aGVyZSBhcmUgbWF4IGFuZCBtaW4gZm9yIGVhY2ggcGFyYW1ldGVy
IChub3QgbmVjZXNzYXJpbHkgMCUvMTAwJSkKCkFzIGFuIGV4YW1wbGUgaWYgd2UgdGFrZSBzcXVl
bGNoIGRldGVjdG9yIHRocmVzaG9sZCwgdGhlIHJlZ2lzdGVyIHZhbHVlIAp2cyBhY3R1YWwgcGVy
Y2VudGFnZSBjaGFuZ2VyIGFzIHBlciBkYXRhIGJvb2sgaXMgYXMgZm9sbG93cyA6CgolIGNoYW5n
ZSBpbiB2b2x0YWdlwqDCoMKgIHzCoMKgwqDCoCBjb3JyZXNwb25kaW5nIHJlZyB2YWx1ZQoKIMKg
LTIwLjkwJcKgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoCB8IMKgwqAgNwogwqAt
MTUuNjAlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDYKLTEwLjMwJcKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgwqAgNQotNS4zMCUgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqAgwqAgNAowJcKgIMKgIMKgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAzCjUuMzAlwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgwqDCoCAyCjEwLjYw
JcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKg
wqAgMQoxNS45MCUgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgwqAgMAoKSGVyZSB0aGUgbWluIGFuZCBtYXggYXJlIDE1LjklIHRvIC0yMC45JQoK
VGhlIG1pbiBhbmQgbWF4IGRpZmZlciBmb3IgZWFjaCBwYXJhbWV0ZXIgYW5kIG1pZ2h0IG5vdCBi
ZSBuZWNlc3NhcmlseSAKMCUgYW5kIDEwMCUKPj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRz
IG9ubHkgZGlzY3JldGUgdmFsdWVzLiBUaGUgdmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAg
IHByb3ZpZGVkIGlucHV0IHdpbGwgYmUgY2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3Ig
dGhpcyBwYXJhbS4KPj4gKwo+PiArICBxY29tLHNxdWVsY2gtZGV0ZWN0b3ItYnBzOgo+PiArICAg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4+ICsgICAgZGVz
Y3JpcHRpb246Cj4+ICsgICAgICBUaGlzIGFkanVzdHMgdGhlIHZvbHRhZ2UgbGV2ZWwgZm9yIHRo
ZSB0aHJlc2hvbGQgdXNlZCB0bwo+PiArICAgICAgZGV0ZWN0IHZhbGlkIGhpZ2gtc3BlZWQgZGF0
YS4KPj4gKyAgICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbXVsdGlwbGVzIG9mIGJhc2lz
IHBvaW50cyAoMWJwID0gMC4wMSUpLgo+PiArICAgICAgVGhlIGhhcmR3YXJlIGFjY2VwdHMgb25s
eSBkaXNjcmV0ZSB2YWx1ZXMuIFRoZSB2YWx1ZSBjbG9zZXN0IHRvIHRoZQo+PiArICAgICAgcHJv
dmlkZWQgaW5wdXQgd2lsbCBiZSBjaG9zZW4gYXMgdGhlIG92ZXJyaWRlIHZhbHVlIGZvciB0aGlz
IHBhcmFtLgo+PiArCj4+ICsgIHFjb20saHMtYW1wbGl0dWRlLWJwczoKPj4gKyAgICAkcmVmOiAv
c2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9pbnQzMgo+PiArICAgIGRlc2NyaXB0aW9u
Ogo+PiArICAgICAgVGhpcyBhZGp1c3RzIHRoZSBoaWdoLXNwZWVkIERDIGxldmVsIHZvbHRhZ2Uu
Cj4+ICsgICAgICBUaGUgdmFsdWVzIGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBw
b2ludHMgKDFicCA9IDAuMDElKS4KPj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkg
ZGlzY3JldGUgdmFsdWVzLiBUaGUgdmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAgIHByb3Zp
ZGVkIGlucHV0IHdpbGwgYmUgY2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3IgdGhpcyBw
YXJhbS4KPj4gKwo+PiArICBxY29tLHByZS1lbXBoYXNpcy1kdXJhdGlvbi1icHM6Cj4+ICsgICAg
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvaW50MzIKPj4gKyAgICBkZXNj
cmlwdGlvbjoKPj4gKyAgICAgIFRoaXMgc2lnbmFsIGNvbnRyb2xzIHRoZSBkdXJhdGlvbiBmb3Ig
d2hpY2ggdGhlCj4+ICsgICAgICBIUyBwcmUtZW1waGFzaXMgY3VycmVudCBpcyBzb3VyY2VkIG9u
dG8gRFA8Iz4gb3IgRE08Iz4uCj4+ICsgICAgICBUaGUgSFMgVHJhbnNtaXR0ZXIgcHJlLWVtcGhh
c2lzIGR1cmF0aW9uIGlzIGRlZmluZWQgaW4gdGVybXMgb2YKPj4gKyAgICAgIHVuaXQgYW1vdW50
cy4gT25lIHVuaXQgb2YgcHJlLWVtcGhhc2lzIGR1cmF0aW9uIGlzIGFwcHJveGltYXRlbHkKPj4g
KyAgICAgIDY1MCBwcyBhbmQgaXMgZGVmaW5lZCBhcyAxWCBwcmUtZW1waGFzaXMgZHVyYXRpb24u
Cj4+ICsgICAgICBUaGUgdmFsdWVzIGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBw
b2ludHMgKDFicCA9IDAuMDElKS4KPj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkg
ZGlzY3JldGUgdmFsdWVzLiBUaGUgdmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAgIHByb3Zp
ZGVkIGlucHV0IHdpbGwgYmUgY2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3IgdGhpcyBw
YXJhbS4KPj4gKwo+PiArICBxY29tLHByZS1lbXBoYXNpcy1hbXBsaXR1ZGUtYnBzOgo+PiArICAg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4+ICsgICAgZGVz
Y3JpcHRpb246Cj4+ICsgICAgICBUaGlzIHNpZ25hbCBjb250cm9scyB0aGUgYW1vdW50IG9mIGN1
cnJlbnQgc291cmNlZCB0bwo+PiArICAgICAgRFA8Iz4gYW5kIERNPCM+IGFmdGVyIGEgSi10by1L
IG9yIEstdG8tSiB0cmFuc2l0aW9uLgo+PiArICAgICAgVGhlIEhTIFRyYW5zbWl0dGVyIHByZS1l
bXBoYXNpcyBjdXJyZW50IGlzIGRlZmluZWQgaW4gdGVybXMgb2YgdW5pdAo+PiArICAgICAgYW1v
dW50cy4gT25lIHVuaXQgYW1vdW50IGlzIGFwcHJveGltYXRlbHkgMiBtQSBhbmQgaXMgZGVmaW5l
ZCBhcwo+PiArICAgICAgMVggcHJlLWVtcGhhc2lzIGN1cnJlbnQuCj4+ICsgICAgICBUaGUgdmFs
dWVzIGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBwb2ludHMgKDFicCA9IDAuMDEl
KS4KPj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkgZGlzY3JldGUgdmFsdWVzLiBU
aGUgdmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAgIHByb3ZpZGVkIGlucHV0IHdpbGwgYmUg
Y2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3IgdGhpcyBwYXJhbS4KPj4gKwo+PiArICBx
Y29tLGhzLXJpc2UtZmFsbC10aW1lLWJwczoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55
YW1sIy9kZWZpbml0aW9ucy9pbnQzMgo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhp
cyBhZGp1c3RzIHRoZSByaXNlL2ZhbGwgdGltZXMgb2YgdGhlIGhpZ2gtc3BlZWQgd2F2ZWZvcm0u
Cj4+ICsgICAgICBUaGUgdmFsdWVzIGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBw
b2ludHMgKDFicCA9IDAuMDElKS4KPj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkg
ZGlzY3JldGUgdmFsdWVzLiBUaGUgdmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAgIHByb3Zp
ZGVkIGlucHV0IHdpbGwgYmUgY2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3IgdGhpcyBw
YXJhbS4KPj4gKwo+PiArICBxY29tLGhzLWNyb3Nzb3Zlci12b2x0YWdlLW12Ogo+PiArICAgICRy
ZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4+ICsgICAgZGVzY3Jp
cHRpb246Cj4+ICsgICAgICBUaGlzIGFkanVzdHMgdGhlIHZvbHRhZ2UgYXQgd2hpY2ggdGhlIERQ
PCM+IGFuZCBETTwjPgo+PiArICAgICAgc2lnbmFscyBjcm9zcyB3aGlsZSB0cmFuc21pdHRpbmcg
aW4gSFMgbW9kZS4KPj4gKyAgICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbWlsbGkgdm9s
dHMuIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkKPj4gKyAgICAgIGRpc2NyZXRlIHZhbHVlcy4g
VGhlIHZhbHVlIGNsb3Nlc3QgdG8gdGhlIHByb3ZpZGVkIGlucHV0IHdpbGwgYmUKPj4gKyAgICAg
IGNob3NlbiBhcyB0aGUgb3ZlcnJpZGUgdmFsdWUgZm9yIHRoaXMgcGFyYW0uCj4+ICsKPj4gKyAg
cWNvbSxocy1vdXRwdXQtaW1wZWRhbmNlLW1vaG06Cj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlw
ZXMueWFtbCMvZGVmaW5pdGlvbnMvaW50MzIKPiBIZXJlIGFuZCBpbiBvdGhlciBwbGFjZXMsIHBs
ZWFzZSB1c2Ugc3RhbmRhcmQgdW5pdHMuIFNlZQo+IGR0c2NoZW1hL3NjaGVtYXMvcHJvcGVydHkt
dW5pdHMueWFtbCBpbiBkdHNjaGVtYSByZXBvLgo+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6
dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
