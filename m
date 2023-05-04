Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A16C77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 15:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FfvgIbdsuXsPEDhWljUbe/C/2C5f1aJnPdBILTeTAk=; b=2KPUbi51H12xXn
	YDrfmdkH+zsbSukQnECLUgnPa7JFgKoTcWk4ocBWPcUpB/X092K3oIO1lBHWSIhq1Mh6564+pwDXf
	xkpLFFDjDjjDztQ7T9FU5zqs91CU0troINYQS374QBZelMMhDx5RA/Zxw/Pg0/OMHPOIVh6R4dtn7
	+1UjO4HJKGe8zK0K4tcCfe7Nh5dGgi66DAktF+glQXN5EPCMZ+dMIRyAI+g2U1uxR/e0tROCVTqEK
	MVPkRw471N+augZ3QYkMHYxJbKf/ya7pwiz/FSDwej+BJeoSAeCBmcRlvFkWagImWF/Xy4AVjy9lA
	mJIKP7+JDDPSeCrou2TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puaRm-008AL9-11;
	Thu, 04 May 2023 15:00:42 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puZMM-0080j7-1a
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 13:51:04 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-2f95231618aso352814f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 06:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683208254; x=1685800254;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CBa5yf09RWH4yiJkKKfGA5cpxuaznqIjeI5vqh5jKnc=;
        b=xXTCdKLJQRFOFCzlTq25XVRG7iQ2YTig8JrOBlX202YIt83MpXRScjaLxgVkY0zWnX
         DAVukRu+mKp/O1lsgwViKkyFW5TflkdO+9RSnOsPHJf1UAuvmWhLpdvus2AS6Xx56NDm
         CfWYEWqfh/q/sQRS9cAWeu5+0DKAw8bGkidhmv8yzMLKCAVlMYDjKTkaErzmqMlx9vh1
         DbS/JUBo+CCNe2h2qgjAEEJuEUOYtQ2xsNqwMrt8nEvQB4N73in46NuRPL+RS0Rw5t61
         ZjElPUzI86zAglFLOI5kjjaAYdQ2zK8mOxkBdMX3cvwx4ZC5ZEWZEDh6z887sMcghrwC
         EYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683208254; x=1685800254;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBa5yf09RWH4yiJkKKfGA5cpxuaznqIjeI5vqh5jKnc=;
        b=Rgy9WehFeGShunikXTOuE/K6uwC2QL9/bJnNWqh+LIcvTSZpETwVEGp+qh7+F9BE69
         KwAQqDWhgTxEtjCrUwqXp8QtYdQsWzY7FC5i+qlDj8opstJ1ji8phVTwfXDvoShclN1N
         a1bubxDeoyxmeXrc6lcrgfYVF1NXmySppJ/trIPYa953omtuEjCgTO8XWmCbORGjXcvI
         p7venQ0d/0dH/mKgLTsEJrXJMeg2hBIWo6RwAvjWAO5yWqU47OPB0LW1HWp1Fbl6LwMh
         xBl0P+DvpBNioBPzi299XGwih+uPbjIlKRdkHIVJQwL2QwEmq/adCvdRwI3Kv+qJoHbE
         Aknw==
X-Gm-Message-State: AC+VfDyR6if+x30PkAMp4Ih5hNbG7MZWJJan6xFFcdS+PwZD7f+hBug+
	fsdqUQsmGLh09EGniCpUwJ0Neg==
X-Google-Smtp-Source: ACHHUZ5cfrBrKo0XKh8lYl7HP9vVSfMA8XPRqej+s9gQ4qUP1IFXfzgg0heMVynEUJsKqQXaLU6aZw==
X-Received: by 2002:a05:6000:1b82:b0:306:2a21:b5ff with SMTP id r2-20020a0560001b8200b003062a21b5ffmr2371851wru.17.1683208254591;
        Thu, 04 May 2023 06:50:54 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:52fb:80bd:bee3:f741? ([2a01:e0a:982:cbb0:52fb:80bd:bee3:f741])
        by smtp.gmail.com with ESMTPSA id y6-20020a1c4b06000000b003f17131952fsm4982246wma.29.2023.05.04.06.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 06:50:54 -0700 (PDT)
Message-ID: <ea0ec8b4-ec87-65f0-4f0e-504d8059b1e6@linaro.org>
Date: Thu, 4 May 2023 15:50:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-2-quic_bjorande@quicinc.com>
 <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
 <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_065102_534099_6495D48A 
X-CRM114-Status: GOOD (  20.49  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjcvMDQvMjAyMyAyMTo1MiwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+IE9uIFdlZCwgQXBy
IDI2LCAyMDIzIGF0IDExOjIxOjI5QU0gKzAxMDAsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+
IE9uIFR1ZSwgQXByIDI1LCAyMDIzIGF0IDQ6NDDigK9BTSBCam9ybiBBbmRlcnNzb24KPj4gPHF1
aWNfYmpvcmFuZGVAcXVpY2luYy5jb20+IHdyb3RlOgo+Pj4KPj4+IFRoZSBRTVAgY29tYm8gcGh5
IGNhbiBiZSBjb25uZWN0ZWQgdG8gYSBUQ1BNLCBhIFVTQiBjb250cm9sbGVyIGFuZCBhCj4+PiBE
aXNwbGF5UG9ydCBjb250cm9sbGVyIGZvciBoYW5kbGluZyBVU0IgVHlwZS1DIG9yaWVudGF0aW9u
IHN3aXRjaGluZwo+Pj4gYW5kIHByb3BhZ2F0aW5nIEhQRCBzaWduYWxzLgo+Pj4KPj4+IEV4dGVu
ZCB0aGUgYmluZGluZyB0byBhbGxvdyB0aGVzZSBjb25uZWN0aW9ucyB0byBiZSBkZXNjcmliZWQu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmpvcm4gQW5kZXJzc29uIDxxdWljX2Jqb3JhbmRlQHF1
aWNpbmMuY29tPgo+Pj4gLS0tCj4+PiAgIC4uLi9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNk
cC1waHkueWFtbCAgICB8IDUxICsrKysrKysrKysrKysrKysrKysKPj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDUxIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFt
cC11c2I0M2RwLXBoeS55YW1sCj4+PiBpbmRleCAzY2Q1ZmMzZThmYWIuLmMwMzdhYzkwY2U3ZiAx
MDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNv
bSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2I0M2RwLXBoeS55YW1s
Cj4+PiBAQCAtNjAsNiArNjAsMjYgQEAgcHJvcGVydGllczoKPj4+ICAgICAgIGRlc2NyaXB0aW9u
Ogo+Pj4gICAgICAgICBTZWUgaW5jbHVkZS9kdC1iaW5kaW5ncy9kdC1iaW5kaW5ncy9waHkvcGh5
LXFjb20tcW1wLmgKPj4+Cj4+PiArICBvcmllbnRhdGlvbi1zd2l0Y2g6Cj4+PiArICAgIGRlc2Ny
aXB0aW9uOgo+Pj4gKyAgICAgIEZsYWcgdGhlIFBIWSBhcyBwb3NzaWJsZSBoYW5kbGVyIG9mIFVT
QiBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNoaW5nCj4+PiArICAgIHR5cGU6IGJvb2xlYW4KPj4+
ICsKPj4+ICsgIHBvcnRzOgo+Pj4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9w
ZXJ0aWVzL3BvcnRzCj4+PiArICAgIHByb3BlcnRpZXM6Cj4+PiArICAgICAgcG9ydEAwOgo+Pj4g
KyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4+PiAr
ICAgICAgICBkZXNjcmlwdGlvbjogT3V0cHV0IGVuZHBvaW50IG9mIHRoZSBQSFkKPj4+ICsKPj4+
ICsgICAgICBwb3J0QDE6Cj4+PiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy8k
ZGVmcy9wb3J0LWJhc2UKPj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBJbmNvbWluZyBlbmRwb2lu
dCBmcm9tIHRoZSBVU0IgY29udHJvbGxlcgo+Pgo+PiBEbyB5b3UgcmVhbGx5IG5lZWQgdGhpcyBv
bmUgPwo+Pgo+PiBUaGUgY29udHJvbGxlciBkb2Vzbid0IHByb2Nlc3Mgb3JpZW50YXRpb24gc3dp
dGNoaW5nLgo+Pgo+IAo+IEkgZG9uJ3QgaGF2ZSBhIG5lZWQgZm9yIGl0LCBhcyB3ZSBjYW4gZGVh
bCB3aXRoIHJvbGUgc3dpdGNoaW5nIGJ5Cj4gY29ubmVjdGluZyBjb25uZWN0b3IvcG9ydEAwIHRv
IHRoZSBkd2MzLgo+IAo+IEJ1dCBpZiB3ZSBldmVyIGhhdmUgYSBuZWVkIHRvIGRlc2NyaWJlIHRo
ZSBkd2MzIC0+IFFNUCAtPiBjb25uZWN0b3IgcGF0aAo+IGluIHRoZSBvZl9ncmFwaCBJIHRoaW5r
IGl0IHdvdWxkIGxvb2sgcHJldHRpZXIgdG8gaGF2ZSBVU0IgaW5wdXQgYXMKPiBwb3J0QDEgYW5k
IERQIGlucHV0IGFzIHBvcnRAMi4uLgoKSSB0aGluayBpdCB3b3VsZCBiZSBncmVhdCB0byBoYXZl
IHBvcnRAMSBmb3IgVVNCIFNTIGFuZCBwb3J0QDIgZm9yIERQLApvdGhlcndpc2Ugd2UgbmVlZCB0
byBhZGQgMiBlbmRwb2ludHMgYXMgSSBzZW50IGluCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDIzMDUwMy10b3BpYy1zbTg0NTAtZ3JhcGhpY3MtZHAtbmV4dC12MS0xLWQxZWU5Mzk3ZjJh
NkBsaW5hcm8ub3JnLwpzaW5jZSB3ZSBzcGxpdCBVU0IgSFMgYW5kIFNTIHN0cmVhbXMgb24gU004
WzM0NV01MCBwbGF0Zm9ybXMuCgo+IAo+IERvIHlvdSBoYXZlIGEgY29uY2VybiB3aXRoIGtlZXBp
bmcgaXQgYXJvdW5kIGluIHRoZSBEVCAodGhlCj4gaW1wbGVtZW50YXRpb24gZG9lc24ndCBuZWVk
IHRvIGNhcmUpPwo+IAo+IFJlZ2FyZHMsCj4gQmpvcm4KCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
