Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A187CCA47B
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 11:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okgWCm2AIzfpaycs5SRzCvdMABFKXcLGxy+4jLg1XyI=; b=HtvwUx/CPil0gd
	kC+FQVmnWtbJcw8+bevpfDGXObvY22PaHieLrxYoHejasMwIgaG0YPDnfIBL5vMie5RYNY5UhJ4+9
	G/JgZmRJd+8WimxIdcAqeGQoxJ1LVDgPMIm8qBCbDlIKZYkUXp2ENXsZ8X8/SpytyYI/OUVqm7SuP
	zVV+HPlZZZ2Hl5zHvuQqVXhLlk+gTwCkvyiKqZDZ/L/jjxAwTyKX8fnTcAtq6yBLBOXdmYNPnSu9X
	LLAXKDDgBGw8HBOfFYM8ROS34cDePQBnB689nMTGHAI91P7UVxgSB7ua0GRpVTU0JMMlZfgqJqV/z
	lTNCG47u/VbtjERsQo3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nytTH-00Cs6t-1R; Wed, 08 Jun 2022 11:03:31 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nytT6-00Cs4n-6W
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 11:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654686200; x=1686222200;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ULqB0ALK4yryKpsKlIUBRMiV9B3k9ExYEunco0gOzrU=;
  b=Ybm7zdS3ENh6+iNIBPxYcvupZIM+MxOF0/RDDaUFDLBbz/Iq434+nkj/
   Nu/gxx1tMkrO+rD0k5mR/Q4VUfgTUXIfl4sNqAec5900EiiON/2sQC8VF
   PbQRiP83ccu52w6b6aY2YBDIncsHPzx1HXQeIjQ3iB1RrD5QrLnAzOLai
   0=;
Received: from ironmsg07-lv.qualcomm.com ([10.47.202.151])
  by alexa-out.qualcomm.com with ESMTP; 08 Jun 2022 04:03:15 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg07-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2022 04:03:14 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 8 Jun 2022 04:03:14 -0700
Received: from [10.216.33.38] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Wed, 8 Jun 2022
 04:03:07 -0700
Message-ID: <5c4f814e-1e5a-1c82-def6-7aba5d0cfd94@quicinc.com>
Date: Wed, 8 Jun 2022 16:33:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Andy
 Gross" <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Stephen Boyd
	<swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
	<quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Sandeep Maheswaram
	<quic_c_sanm@quicinc.com>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
 <00cf0a30-46d5-f566-af35-9f7c33ec4182@linaro.org>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <00cf0a30-46d5-f566-af35-9f7c33ec4182@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_040320_417928_49379DE0 
X-CRM114-Status: GOOD (  16.45  )
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

Ck9uIDYvOC8yMDIyIDM6MDYgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMDEv
MDYvMjAyMiAwODo1NiwgS3Jpc2huYSBLdXJhcGF0aSB3cm90ZToKPj4gRnJvbTogU2FuZGVlcCBN
YWhlc3dhcmFtIDxxdWljX2Nfc2FubUBxdWljaW5jLmNvbT4KPj4KPj4gQWRkIGRldmljZSB0cmVl
IGJpbmRpbmdzIGZvciBTTlBTIHBoeSB0dW5pbmcgcGFyYW1ldGVycy4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogU2FuZGVlcCBNYWhlc3dhcmFtIDxxdWljX2Nfc2FubUBxdWljaW5jLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogS3Jpc2huYSBLdXJhcGF0aSA8cXVpY19rcmlza3VyYUBxdWljaW5jLmNvbT4K
Pj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KPj4gLS0tCj4+ICAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZl
bXRvLXYyLnlhbWwgICAgICAgfCA5NiArKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDk2IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZlbXRv
LXYyLnlhbWwKPj4gaW5kZXggMWNlMjUxZC4uZGFlZWIwNCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVzYi1zbnBzLWZlbXRvLXYyLnlh
bWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHVz
Yi1zbnBzLWZlbXRvLXYyLnlhbWwKPj4gQEAgLTUzLDYgKzUzLDEwMiBAQCBwcm9wZXJ0aWVzOgo+
PiAgICAgdmRkYTMzLXN1cHBseToKPj4gICAgICAgZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gdGhl
IHJlZ3VsYXRvciAzLjNWIHN1cHBseSBub2RlLgo+PiAgIAo+PiArICBxY29tLGhzLWRpc2Nvbm5l
Y3QtYnA6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBUaGlzIGFkanVzdHMgdGhlIHZv
bHRhZ2UgbGV2ZWwgZm9yIHRoZSB0aHJlc2hvbGQgdXNlZCB0bwo+PiArICAgICAgZGV0ZWN0IGEg
ZGlzY29ubmVjdCBldmVudCBhdCB0aGUgaG9zdC4gUG9zc2libGUgdmFsdWVzIGFyZS4KPj4gKyAg
ICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbXVsdGlwbGVzIG9mIGJhc2lzIHBvaW50cyAo
MWJwID0gMC4wMSUpLgo+PiArICAgICAgVGhlIGhhcmR3YXJlIGFjY2VwdHMgb25seSBkaXNjcmV0
ZSB2YWx1ZXMuIFRoZSB2YWx1ZSBjbG9zZXN0IHRvIHRoZQo+PiArICAgICAgcHJvdmlkZWQgaW5w
dXQgd2lsbCBiZSBjaG9zZW4gYXMgdGhlIG92ZXJyaWRlIHZhbHVlIGZvciB0aGlzIHBhcmFtLgo+
PiArICAgIG1pbmltdW06IC0yNzIKPj4gKyAgICBtYXhpbXVtOiAyMTU2Cj4+ICsKPj4gKyAgcWNv
bSxzcXVlbGNoLWRldGVjdG9yLWJwOgo+PiArICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhp
cyBhZGp1c3RzIHRoZSB2b2x0YWdlIGxldmVsIGZvciB0aGUgdGhyZXNob2xkIHVzZWQgdG8KPj4g
KyAgICAgIGRldGVjdCB2YWxpZCBoaWdoLXNwZWVkIGRhdGEuCj4+ICsgICAgICBUaGUgdmFsdWVz
IGRlZmluZWQgYXJlIGluIG11bHRpcGxlcyBvZiBiYXNpcyBwb2ludHMgKDFicCA9IDAuMDElKS4K
Pj4gKyAgICAgIFRoZSBoYXJkd2FyZSBhY2NlcHRzIG9ubHkgZGlzY3JldGUgdmFsdWVzLiBUaGUg
dmFsdWUgY2xvc2VzdCB0byB0aGUKPj4gKyAgICAgIHByb3ZpZGVkIGlucHV0IHdpbGwgYmUgY2hv
c2VuIGFzIHRoZSBvdmVycmlkZSB2YWx1ZSBmb3IgdGhpcyBwYXJhbS4KPj4gKyAgICBtaW5pbXVt
OiAtMjA5MAo+PiArICAgIG1heGltdW06IDE1OTAKPj4gKwo+PiArICBxY29tLGhzLWFtcGxpdHVk
ZS1icDoKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFRoaXMgYWRqdXN0cyB0aGUgaGln
aC1zcGVlZCBEQyBsZXZlbCB2b2x0YWdlLgo+PiArICAgICAgVGhlIHZhbHVlcyBkZWZpbmVkIGFy
ZSBpbiBtdWx0aXBsZXMgb2YgYmFzaXMgcG9pbnRzICgxYnAgPSAwLjAxJSkuCj4+ICsgICAgICBU
aGUgaGFyZHdhcmUgYWNjZXB0cyBvbmx5IGRpc2NyZXRlIHZhbHVlcy4gVGhlIHZhbHVlIGNsb3Nl
c3QgdG8gdGhlCj4+ICsgICAgICBwcm92aWRlZCBpbnB1dCB3aWxsIGJlIGNob3NlbiBhcyB0aGUg
b3ZlcnJpZGUgdmFsdWUgZm9yIHRoaXMgcGFyYW0uCj4+ICsgICAgbWluaW11bTogLTY2MAo+PiAr
ICAgIG1heGltdW06IDI2NzAKPj4gKwo+PiArICBxY29tLHByZS1lbXBoYXNpcy1kdXJhdGlvbi1i
cDoKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFRoaXMgc2lnbmFsIGNvbnRyb2xzIHRo
ZSBkdXJhdGlvbiBmb3Igd2hpY2ggdGhlCj4+ICsgICAgICBIUyBwcmUtZW1waGFzaXMgY3VycmVu
dCBpcyBzb3VyY2VkIG9udG8gRFA8Iz4gb3IgRE08Iz4uCj4+ICsgICAgICBUaGUgSFMgVHJhbnNt
aXR0ZXIgcHJlLWVtcGhhc2lzIGR1cmF0aW9uIGlzIGRlZmluZWQgaW4gdGVybXMgb2YKPj4gKyAg
ICAgIHVuaXQgYW1vdW50cy4gT25lIHVuaXQgb2YgcHJlLWVtcGhhc2lzIGR1cmF0aW9uIGlzIGFw
cHJveGltYXRlbHkKPj4gKyAgICAgIDY1MCBwcyBhbmQgaXMgZGVmaW5lZCBhcyAxWCBwcmUtZW1w
aGFzaXMgZHVyYXRpb24uCj4+ICsgICAgICBUaGUgdmFsdWVzIGRlZmluZWQgYXJlIGluIG11bHRp
cGxlcyBvZiBiYXNpcyBwb2ludHMgKDFicCA9IDAuMDElKS4KPj4gKyAgICAgIFRoZSBoYXJkd2Fy
ZSBhY2NlcHRzIG9ubHkgZGlzY3JldGUgdmFsdWVzLiBUaGUgdmFsdWUgY2xvc2VzdCB0byB0aGUK
Pj4gKyAgICAgIHByb3ZpZGVkIGlucHV0IHdpbGwgYmUgY2hvc2VuIGFzIHRoZSBvdmVycmlkZSB2
YWx1ZSBmb3IgdGhpcyBwYXJhbS4KPj4gKyAgICBtaW5pbXVtOiAxMDAwMAo+PiArICAgIG1heGlt
dW06IDIwMDAwCj4+ICsKPj4gKyAgcWNvbSxwcmUtZW1waGFzaXMtYW1wbGl0dWRlLWJwOgo+PiAr
ICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhpcyBzaWduYWwgY29udHJvbHMgdGhlIGFtb3Vu
dCBvZiBjdXJyZW50IHNvdXJjZWQgdG8KPj4gKyAgICAgIERQPCM+IGFuZCBETTwjPiBhZnRlciBh
IEotdG8tSyBvciBLLXRvLUogdHJhbnNpdGlvbi4KPj4gKyAgICAgIFRoZSBIUyBUcmFuc21pdHRl
ciBwcmUtZW1waGFzaXMgY3VycmVudCBpcyBkZWZpbmVkIGluIHRlcm1zIG9mIHVuaXQKPj4gKyAg
ICAgIGFtb3VudHMuIE9uZSB1bml0IGFtb3VudCBpcyBhcHByb3hpbWF0ZWx5IDIgbUEgYW5kIGlz
IGRlZmluZWQgYXMKPj4gKyAgICAgIDFYIHByZS1lbXBoYXNpcyBjdXJyZW50Lgo+PiArICAgICAg
VGhlIHZhbHVlcyBkZWZpbmVkIGFyZSBpbiBtdWx0aXBsZXMgb2YgYmFzaXMgcG9pbnRzICgxYnAg
PSAwLjAxJSkuCj4+ICsgICAgICBUaGUgaGFyZHdhcmUgYWNjZXB0cyBvbmx5IGRpc2NyZXRlIHZh
bHVlcy4gVGhlIHZhbHVlIGNsb3Nlc3QgdG8gdGhlCj4+ICsgICAgICBwcm92aWRlZCBpbnB1dCB3
aWxsIGJlIGNob3NlbiBhcyB0aGUgb3ZlcnJpZGUgdmFsdWUgZm9yIHRoaXMgcGFyYW0uCj4+ICsg
ICAgbWluaW11bTogMTAwMDAKPj4gKyAgICBtYXhpbXVtOiA0MDAwMAo+PiArCj4+ICsgIHFjb20s
aHMtcmlzZS1mYWxsLXRpbWUtYnA6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBUaGlz
IGFkanVzdHMgdGhlIHJpc2UvZmFsbCB0aW1lcyBvZiB0aGUgaGlnaC1zcGVlZCB3YXZlZm9ybS4K
Pj4gKyAgICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbXVsdGlwbGVzIG9mIGJhc2lzIHBv
aW50cyAoMWJwID0gMC4wMSUpLgo+PiArICAgICAgVGhlIGhhcmR3YXJlIGFjY2VwdHMgb25seSBk
aXNjcmV0ZSB2YWx1ZXMuIFRoZSB2YWx1ZSBjbG9zZXN0IHRvIHRoZQo+PiArICAgICAgcHJvdmlk
ZWQgaW5wdXQgd2lsbCBiZSBjaG9zZW4gYXMgdGhlIG92ZXJyaWRlIHZhbHVlIGZvciB0aGlzIHBh
cmFtLgo+PiArICAgIG1pbmltdW06IC00MTAwCj4+ICsgICAgbWF4aW11bTogNTQzMAo+PiArCj4+
ICsgIHFjb20saHMtY3Jvc3NvdmVyLXZvbHRhZ2UtbWljcm92b2x0Ogo+PiArICAgIGRlc2NyaXB0
aW9uOgo+PiArICAgICAgVGhpcyBhZGp1c3RzIHRoZSB2b2x0YWdlIGF0IHdoaWNoIHRoZSBEUDwj
PiBhbmQgRE08Iz4KPj4gKyAgICAgIHNpZ25hbHMgY3Jvc3Mgd2hpbGUgdHJhbnNtaXR0aW5nIGlu
IEhTIG1vZGUuCj4+ICsgICAgICBUaGUgdmFsdWVzIGRlZmluZWQgYXJlIGluIG1pbGxpIHZvbHRz
Lgo+IEl0J3Mgbm90IGFjY3VyYXRlIGFueW1vcmUgLSBpdCdzIG1pY3Jvdm9sdC4gSSBwcm9wb3Nl
IHRvIHNraXAgdGhpcyBvbmUKPiBzZW50ZW5jZSwgYmVjYXVzZSB1bml0IGlzIG9idmlvdXMgZnJv
bSB0aGUgdHlwZS4KPgo+PiArICAgIG1heGltdW06IDI4MDAwCj4+ICsKPj4gKyAgcWNvbSxocy1v
dXRwdXQtaW1wZWRhbmNlLW1pY3JvLW9obXM6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAg
ICBJbiBzb21lIGFwcGxpY2F0aW9ucywgdGhlcmUgY2FuIGJlIHNpZ25pZmljYW50IHNlcmllcyBy
ZXNpc3RhbmNlCj4+ICsgICAgICBvbiB0aGUgRCsgYW5kIEQtIHBhdGhzIGJldHdlZW4gdGhlIHRy
YW5zY2VpdmVyIGFuZCBjYWJsZS4gVGhpcyBhZGp1c3RzCj4+ICsgICAgICB0aGUgZHJpdmVyIHNv
dXJjZSBpbXBlZGFuY2UgdG8gY29tcGVuc2F0ZSBmb3IgYWRkZWQgc2VyaWVzCj4+ICsgICAgICBy
ZXNpc3RhbmNlIG9uIHRoZSBVU0IuIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbWlsbGkgb2ht
cy4KPiBUaGUgc2FtZS4gT3RoZXIgcGxhY2VzIG1pZ2h0IG5lZWQgc2ltaWxhciBjaGFuZ2UuCj4K
PiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpIaSBLcnp5c3p0b2YsCgogwqDCoMKgIFN1cmUs
IHdpbGwgbW9kaWZ5IHRoZSBkZXNjcmlwdGlvbiBmb3IgYWxsIHRoZSBwYXJhbXMuCgpSZWdhcmRz
LAoKS3Jpc2huYSwKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
