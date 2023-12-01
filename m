Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EEFBC10DCE
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 12:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNwWNEXB9HY75YO01KVQOD/PXx1VPNJ9hFt3t08PlBE=; b=B8SGrkplmpfdll
	e9APW40X8a8i2I54sY79tB2gpc6sHwoyP0tvxRx+wngF8W4qkOXgUk/FHO5rNjvfPgEVP1VLirBAs
	GgCZ9uo1Sd8hC3g0QcvNEbdDCVn9l8j+2qw8c90wVYTOAVRpW6RDpffmYNCUq1An0oL5vcYgwLlVU
	3DGSuFNCHlwgjRZOlpYntYJaC7sSgteEGo/N9tbx12alr9qSP4wT5cReLnhB44TETVy29Y4D4gvT3
	50P7b0jjZY3bOFllr99HmHAXh8NrtZ7HF3nB2oY2gbMBTXSUt036/+bc6MyfQEKqX6V507wHdGc7+
	V3yaXnhrQFxnyEVnnVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r92fp-00DZWx-0A;
	Fri, 01 Dec 2023 12:31:13 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r92fm-00DZW9-1J
	for linux-phy@lists.infradead.org;
	Fri, 01 Dec 2023 12:31:11 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-77dd07e7d39so118909885a.0
        for <linux-phy@lists.infradead.org>; Fri, 01 Dec 2023 04:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701433867; x=1702038667; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q7hh6CC3wSteFKObO5YP2ueHTB4l8VhYUaj/87rIPRc=;
        b=QKaUA/yYghg6aT94l/CWD+xlp7JkaBIugkJgX+c1qmceI3A/8ptE7aWvOlFTU/Lfsv
         VOo+EWynjJhCtCkxuGjznbVAO80ZdficGzPF5OfeIBFLbV16gN9D/s7qGnVhnw0QJNwM
         2JAuhaE7qLzMK4ZbTcOUZpBO+gI3oTYzQaDSH/TPdgHxHCIzex2xq2zwIVC3qllYxo+X
         Ub+gPjYKf4XV5fW53ZagpZt195tdWWRMFKOcnS0C7T9R2g5AvJONxff4HgJ6IsBJTzhX
         i1I/Pqis9z7jceakGv9qQ/I2ubWTP0h8IADZCq+/an/iSbOGTlDa4SY+vkn5r1uCYZad
         MRxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701433867; x=1702038667;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q7hh6CC3wSteFKObO5YP2ueHTB4l8VhYUaj/87rIPRc=;
        b=ThvMxs7fWQ2QM/HSK1cSOl4jY0cvkfxlYT2SIAbKFDY9OGum2YMvxdcwzAnpceAZc5
         SoG/P9Gvz9YW4a5git3z9qM14vR2fZMlbUH5+vvipS14wNaQiRV4pNhrqfLDxltpYwqS
         o8zbZwA9ugnv8xnld6OXFSav0qtpRXglaIUi2q5WY2WCFPQQMr37qes+vsr4qh5Npswi
         kEGzlI7vreR4Tow2ym5wfKYRb2cODLld1cWd1kBIKN6m15NmIi4GIIfk+ZRrPFpGwzz4
         6bbpRj9tRqwW6RPyUZ7KjurGTS6zdMAb+X1j81Ehf68PXBKj9WkG5kq0+A8muX3pXDPx
         dZgA==
X-Gm-Message-State: AOJu0Yx+PaK+Ym8XwBjjUQDXD44WUSM9AGDw+J6+VzfTKEq7mn5LI/EJ
	p7sJQ+PbeZZ9c65wxl6zEOIu
X-Google-Smtp-Source: AGHT+IE1kJN7qLd2CNmGt5TJbTi4Ma6/SDDEDvoRX10XqoO8jyv841Ns3tHx6UmwBMtliC3KLksQjA==
X-Received: by 2002:a05:620a:698e:b0:77b:aa20:908 with SMTP id ua14-20020a05620a698e00b0077baa200908mr23876438qkn.37.1701433867158;
        Fri, 01 Dec 2023 04:31:07 -0800 (PST)
Received: from thinkpad ([117.213.102.92])
        by smtp.gmail.com with ESMTPSA id qx3-20020a05620a8b8300b0077da68b8801sm1445020qkn.65.2023.12.01.04.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 04:31:06 -0800 (PST)
Date: Fri, 1 Dec 2023 18:00:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231201123054.GM4009@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_043110_454837_6BD78A3B 
X-CRM114-Status: GOOD (  28.45  )
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

T24gRnJpLCBEZWMgMDEsIDIwMjMgYXQgMDE6MTA6NDhQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwMS8xMi8yMDIzIDEyOjEwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBGcmksIERlYyAwMSwgMjAyMyBhdCAwOTowMTo0M0FNICswMTAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIDAxLzEyLzIwMjMgMDc6MDcsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+Pj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMDI6NDk6
MThQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiA+Pj4+Cj4gPj4+
PiBPbiAxMS8yOC8yMDIzIDI6MjYgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPj4+
Pj4gT24gMjcvMTEvMjAyMyAxMzoxMywgS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSB3cm90ZToK
PiA+Pj4+Pj4gRG9jdW1lbnQgcWNvbSxyZWZjbGstYWx3YXlzLW9uIHByb3BlcnR5IHdoaWNoIGlz
IG5lZWRlZCBpbiBzb21lIHBsYXRmb3Jtcwo+ID4+Pj4+PiB0byBzdXBwbHkgcmVmY2xrIGV2ZW4g
aW4gUENJZSBsb3cgcG93ZXIgc3RhdGVzLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IDxxdWljX2tyaWNoYWlAcXVpY2luYy5jb20+Cj4g
Pj4+Pj4+IC0tLQo+ID4+Pj4+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC1wY2llLXBoeS55YW1sICAgICAgICB8IDcgKysrKysrKwo+ID4+Pj4+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiA+Pj4+Pj4KPiA+Pj4+Pj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1x
bXAtcGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+ID4+Pj4+PiBpbmRleCAyYzNkNjU1M2E3
YmEuLmM3NDdjOWYzNTc5NSAxMDA2NDQKPiA+Pj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sCj4gPj4+
Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgy
ODB4cC1xbXAtcGNpZS1waHkueWFtbAo+ID4+Pj4+PiBAQCAtOTMsNiArOTMsMTMgQEAgcHJvcGVy
dGllczoKPiA+Pj4+Pj4gICAgICIjcGh5LWNlbGxzIjoKPiA+Pj4+Pj4gICAgICAgY29uc3Q6IDAK
PiA+Pj4+Pj4gKyAgcWNvbSxyZWZjbGstYWx3YXlzLW9uOgo+ID4+Pj4+PiArICAgIHR5cGU6IGJv
b2xlYW4KPiA+Pj4+Pj4gKyAgICBkZXNjcmlwdGlvbjogSW4gc29tZSBwbGF0Zm9ybSB3aGVyZSBQ
Q0llIHN3aXRjaCBpcyBjb25uZWN0ZWQsIHBjaWUgc3dpdGNoIGR1ZSB0byBzb21lIGRlc2lnbgo+
ID4+Pj4+IFlvdSByZWNlaXZlZCBhIGNvbW1lbnQgdG8gdXNlIHByb3BlciB3cmFwcGluZzogODAu
IFBsZWFzZSBpbXBsZW1lbnQgaXQuCj4gPj4+PiBJIHdpbGwgdXBkYXRlIHRoaXMuCj4gPj4+Pj4+
ICsgICAgICBsaW1pdGF0aW9uIGZhaWxzIHRvIHByb3BhZ2UgY2xrcmVxIHNpZ25hbCB0byB0aGUg
aG9zdCBhbmQgZHVlIHRvIHRoYXQgaG9zdCB3aWxsIG5vdCBzZW5kCj4gPj4+Pj4+ICsgICAgICBy
ZWZjbGssIHdoaWNoICByZXN1bHRzIGluIGxpbmtkb3duIGluIEwxLjIgb3IgTDEuMSBleGl0IGlu
aXRpYXRlZCBieSBFUC4KPiA+Pj4+Pj4gKyAgICAgIFRoaXMgcHJvcGVydHkgaWYgc2V0IGtlZXBz
IHJlZmNsayBhbHdheXMgb24gZXZlbiBpbiBMb3cgcG93ZXIgc3RhdGVzLgo+ID4+Pj4+IFRoZSBw
cm9wZXJ0eSBuYW1lIHN1Z2dlc3RzIHRoYXQncyB0aGUgc3RhdGUgb2YgaGFyZHdhcmUgLSByZWZj
bGsgaXMKPiA+Pj4+PiBhbHdheXMgb24uIERlc2NyaXB0aW9uIHN1Z2dlc3RzIHlvdSB3YW50IHRv
IGluc3RydWN0IE9TIHRvIGRvIHNvbWV0aGluZy4KPiA+Pj4+Pgo+ID4+Pj4+IEFnYWluLCB0aGly
ZCB0aW1lIChvbmNlIGZyb20gQmpvcm4sIG9uY2UgZnJvbSBEbWl0cnkpLCByZXBocmFzZSBwcm9w
ZXJ0eQo+ID4+Pj4+IG5hbWUgYW5kIGRlc2NyaXB0aW9uIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2Fy
ZSBpc3N1ZS4gSSBzZWUgZGVzY3JpcHRpb24KPiA+Pj4+PiBpbXByb3ZlZCwgYnV0IG5vdCB0aGUg
cHJvcGVydHkgbmFtZS4gQWdhaW4gaW4gdGhlIGVuZCBvZiBkZXNjcmlwdGlvbiB5b3UKPiA+Pj4+
Cj4gPj4+PiBCb3RoIGJqb3JuIGFuZCBEbWl0cnkgZ2F2ZSBjb21tZW50cyB0byBjaGFuZ2UgdGhl
IGRlc2NyaXB0aW9uIG9ubHksIGFuZCBub3QKPiA+Pj4+IHRoZSBwcm9wZXJ0eSBuYW1lLAo+ID4+
Pj4KPiA+Pj4+IGNvcnJlY3QgaWYgSSBhbSB3cm9uZy4KPiA+Pj4+Cj4gPj4+Pj4gc2F5IHdoYXQg
TGludXggc2hvdWxkIGRvLiBCaW5kaW5ncyBkbyBub3QgZGVzY3JpYmUgTGludXggT1MuCj4gPj4+
Pgo+ID4+Pj4gSSB3aWxsIHJlbW92ZSB0aGUgbGFzdCBsaW5lIGluIHRoZSBuZXh0IHBhdGNoLgo+
ID4+Pj4KPiA+Pj4KPiA+Pj4gWW91IHNob3VsZCBuYW1lIHRoZSBwcm9wZXJ0eSBhcywgInFjb20s
a2VlcC1yZWZjbGstYWx3YXlzLW9uIgo+ID4+Cj4gPj4gS2VlcCB0aGUgY2xvY2sgYnkgd2hvPyBC
eSBkcml2ZXI/IFRoZW4gbm90LCBwcm9wZXJ0eSBzaG91bGQgZGVzY3JpYmUKPiA+PiBwaHlzaWNh
bCBwaGVub21lbmEgb3IgaGFyZHdhcmUgaXNzdWUgYmVpbmcgZml4ZWQgaGVyZSwgbm90IHdoYXQg
ZHJpdmVyCj4gPj4gc2hvdWxkIGRvLgo+ID4+Cj4gPiAKPiA+IFRoaXMgcHJvcGVydHkgaW5kZWVk
IGZpeGVzIHRoZSBoYXJkd2FyZSBpc3N1ZSAodGhvdWdoIGluIGJvYXJkIGxldmVsKSBhbmQgSSBz
ZWUKPiA+IGEgcGxlbnR5IG9mIHByb3BlcnRpZXMgc2ltaWxhciB0byB0aGlzIG9uZSBpbnN0cnVj
dGluZyB0aGUgT1MgdG8ga2VlcCBzb21lCj4gPiByZXNvdXJjZSBPTiB0byB3b3JrYXJvdW5kIGhh
cmR3YXJlIGlzc3Vlcy4gU28gdGhleSBhcmUgYWxsIHdyb25nPwo+IAo+IFdoYXQgSSBzYWlkIGJl
Zm9yZToKPiAiQWdhaW4sIHRoaXJkIHRpbWUgKG9uY2UgZnJvbSBCam9ybiwgb25jZSBmcm9tIERt
aXRyeSksIHJlcGhyYXNlCj4gcHJvcGVydHkgbmFtZSBhbmQgZGVzY3JpcHRpb24gdG8gZGVzY3Jp
YmUgdGhlIGhhcmR3YXJlIGlzc3VlLiBJIHNlZQo+IGRlc2NyaXB0aW9uIGltcHJvdmVkLCBidXQg
bm90IHRoZSBwcm9wZXJ0eSBuYW1lLiBBZ2FpbiBpbiB0aGUgZW5kIG9mCj4gZGVzY3JpcHRpb24g
eW91IHNheSB3aGF0IExpbnV4IHNob3VsZCBkby4gQmluZGluZ3MgZG8gbm90IGRlc2NyaWJlIExp
bnV4Cj4gT1MuIgo+IAoKWW91IGRpZG4ndCBhbnN3ZXIgbXkgcXVlc3Rpb246CgoiSSBzZWUgYSBw
bGVudHkgb2YgcHJvcGVydGllcyBzaW1pbGFyIHRvIHRoaXMgb25lIGluc3RydWN0aW5nIHRoZSBP
UyB0byBrZWVwIHNvbWUKcmVzb3VyY2UgT04gdG8gd29ya2Fyb3VuZCBoYXJkd2FyZSBpc3N1ZXMu
IFNvIHRoZXkgYXJlIGFsbCB3cm9uZz8iCgpJZiB5b3Ugc2F5IHRoZXkgYXJlIHdyb25nLCB3aHkg
YXJlIHRoZXkgYXBwcm92ZWQgaW4gdGhlIGZpcnN0IHBsYWNlPwoKLSBNYW5pCgo+IAo+IEJlc3Qg
cmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
