Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55B9CC77B7E
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 11:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE1+zwQAhnctZbnEwFcN81XjApLljj9QPdKuHsn8E7A=; b=e6tg6GnlhYf961
	A9rPRef2pU/CvqY4OFiJsfXzhqWGj4wnQdLhdjwcM1ysZHBlRF+BjPVpKQlQfqDOnxjlo92NL+sc5
	Wu9A7/DsAdozKJwiRkWmLpL8gRIA4LCATBwAXLFFFnqWWKv83Xt6HJPT9c0Ed/4FTiHCnJWz5zdTa
	QMn8Q0Cdj993iiNJ7Cc7JIf03h7PSUcDjxROFuDbSQ65VgDT2UK6c34R8bPtrL6Q3yjXl+m5NUfTS
	ZcI0Tx4/IYrEDmXRh+c+QCyIMaprszjxf9+q47IvRlqCSUu5mjc962+PK+4R1fAohoMRFHjiBEHJK
	yUjdE6Vf9ecjbhGeCSRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnn0-001AP7-2w;
	Tue, 02 May 2023 11:03:22 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnmx-001AO0-2i
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 11:03:22 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2a8b766322bso34674271fa.1
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683025397; x=1685617397;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZOMeaRlGtpfULcYehJpxEcz/nKFZB433u9YWi4JwQ/o=;
        b=H7fMVfvhOULgMPLou1ZksP++qlsfBH6XG4uakQ8oE751XNKbvGG/oS6fR6VVAgQPHt
         MKrNt/jAk40/jIGhf0m+mXSyaucMh9rHw9V/o69PY/NOgVLyg/b2R+j+idB3NC0uE2fD
         eqMz1LoQcVJcQDr3MMgpIMD1CPgpD0OOQzmsUrlhSnaPIt1Y//WtQGu9P5rgNN1h13H1
         ZVlQ8Ymlz2vmdnigNodctJ0BH4RhIfjy/CwQ8c+V+i6culX5WD5Ga83ga9E6Tr2mpX+n
         5toTMF5crif/hE0SDscvLofw36LM8aDqq10pOTjUcj3Ji8QURfIxJTfrgxz3cL1H2Kkb
         KFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683025397; x=1685617397;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOMeaRlGtpfULcYehJpxEcz/nKFZB433u9YWi4JwQ/o=;
        b=jDqp5T/paWCkglcFoHwTKbySZ+WvsJPVPRugaH27aUrtsp/TiK5CpSQfAH//vb1ZAf
         CmtywKt8p4vvpCG5caXUDJA0jeCJbqppqBFstyWYbn6DdANJRebLsW4+uzapTRGC4jEF
         LhL4q2s02s6ZR6aA+G9yV2Un9UsmabbdHK3q3MC03PH1x8G2/5op1A5UwKTayQG9T4AY
         dsfvlw1ucIKBdOb3f5/3sV7x1o12GVDzXoidLOcNTXBMIfjRaRKzzX/neYCcNYeerV2B
         N8qyirDDjmYH2NmWkIliGTXZp94b4zlr54hkbnIk3ebWKwNq/9E6trbwRlHhXvIIDJIh
         +79A==
X-Gm-Message-State: AC+VfDyVaKMWgZogR0eZbi5UXEU7yFTxRr/ULtflk8nI8ngeW6CImWnE
	rEOl/JXUpfEJJlolhLxFeLohnQ==
X-Google-Smtp-Source: ACHHUZ5X7eDWy14NTZbF9EtgBIP0VGUzvRw4HoYZ/V+FI6FndOFiCgP9uc8M6yOxoK8bS7GWTVe59A==
X-Received: by 2002:a2e:8756:0:b0:2a8:d39b:1496 with SMTP id q22-20020a2e8756000000b002a8d39b1496mr4405957ljj.24.1683025396788;
        Tue, 02 May 2023 04:03:16 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id v3-20020a2e9f43000000b002a8d01905f7sm581783ljk.101.2023.05.02.04.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:03:16 -0700 (PDT)
Message-ID: <543cdf95-754f-2f7c-9c5c-b901eedb441a@linaro.org>
Date: Tue, 2 May 2023 13:03:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed
 graph
Content-Language: en-US
To: neil.armstrong@linaro.org, Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-7-quic_bjorande@quicinc.com>
 <aa94b488-cb6e-bd74-0711-b7c4c7589f7a@linaro.org>
 <fc414f61-34a8-acb0-29d4-971a873562e5@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <fc414f61-34a8-acb0-29d4-971a873562e5@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_040319_881550_287CCFE1 
X-CRM114-Status: GOOD (  17.44  )
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

CgpPbiAyNy4wNC4yMDIzIDE1OjI3LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAyNy8wNC8y
MDIzIDAxOjMzLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+Pgo+PiBPbiA0LzI1LzIzIDA0OjQwLCBC
am9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+PiBXaXRoIHN1cHBvcnQgZm9yIHRoZSBRTVAgY29tYm8g
cGh5IHRvIHJlYWN0IHRvIFVTQiBUeXBlLUMgc3dpdGNoIGV2ZW50cywKPj4+IGludHJvZHVjZSBp
dCBhcyB0aGUgbmV4dCBob3AgZm9yIHRoZSBTdXBlclNwZWVkIGxhbmVzIG9mIHRoZSB0d28gVVNC
Cj4+PiBUeXBlLUMgY29ubmVjdG9ycywgYW5kIGNvbm5lY3QgdGhlIG91dHB1dCBvZiB0aGUgRGlz
cGxheVBvcnQgY29udHJvbGxlcgo+Pj4gdG8gdGhlIFFNUCBjb21ibyBwaHkuCj4+Pgo+Pj4gVGhp
cyBhbGxvd3MgdGhlIFRDUE0gdG8gcGVyZm9ybSBvcmllbnRhdGlvbiBzd2l0Y2hpbmcgb2YgYm90
aCBVU0IgYW5kCj4+PiBEaXNwbGF5UG9ydCBzaWduYWxzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IEJqb3JuIEFuZGVyc3NvbiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4KPj4+IC0tLQo+Pj4g
wqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4MHhwLWNyZC5kdHMgfCAyOCArKysrKysr
KysrKysrKysrLS0tCj4+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4MjgweHAuZHRz
acKgwqDCoCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrCj4+PiDCoCAyIGZpbGVzIGNoYW5n
ZWQsIDU4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1jcmQuZHRzIGIvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NjODI4MHhwLWNyZC5kdHMKPj4+IGluZGV4IDU0NzI3NzkyNGVhMy4uMzNj
OTczNjYxZmE1IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjODI4
MHhwLWNyZC5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1j
cmQuZHRzCj4+PiBAQCAtNjQsNyArNjQsNyBAQCBwb3J0QDEgewo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbWljX2dsaW5rX2NvbjBfc3M6IGVuZHBvaW50
IHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
bW90ZS1lbmRwb2ludCA9IDwmbWRzczBfZHAwX291dD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnVzYl8wX3Ft
cHBoeV9vdXQ+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiBAQCAtOTks
NyArOTksNyBAQCBwb3J0QDEgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJlZyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwbWljX2dsaW5rX2NvbjFfc3M6IGVuZHBvaW50IHsKPj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwm
bWRzczBfZHAxX291dD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnVzYl8xX3FtcHBoeV9vdXQ+Owo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiBAQCAtNDEyLDcgKzQxMiw3IEBAICZtZHNz
MF9kcDAgewo+Pj4gwqAgJm1kc3MwX2RwMF9vdXQgewo+Pj4gwqDCoMKgwqDCoCBkYXRhLWxhbmVz
ID0gPDAgMT47Cj4+PiAtwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmcG1pY19nbGlua19jb24w
X3NzPjsKPj4+ICvCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZ1c2JfMF9xbXBwaHlfZHBfaW4+
Owo+Pj4gwqAgfTsKPj4+IMKgICZtZHNzMF9kcDEgewo+Pj4gQEAgLTQyMSw3ICs0MjEsNyBAQCAm
bWRzczBfZHAxIHsKPj4+IMKgICZtZHNzMF9kcDFfb3V0IHsKPj4+IMKgwqDCoMKgwqAgZGF0YS1s
YW5lcyA9IDwwIDE+Owo+Pj4gLcKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnBtaWNfZ2xpbmtf
Y29uMV9zcz47Cj4+PiArwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiXzFfcW1wcGh5X2Rw
X2luPjsKPj4+IMKgIH07Cj4+PiDCoCAmbWRzczBfZHAzIHsKPj4+IEBAIC02NzAsOSArNjcwLDE5
IEBAICZ1c2JfMF9xbXBwaHkgewo+Pj4gwqDCoMKgwqDCoCB2ZGRhLXBoeS1zdXBwbHkgPSA8JnZy
ZWdfbDlkPjsKPj4+IMKgwqDCoMKgwqAgdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVnX2w0ZD47Cj4+
PiArwqDCoMKgIG9yaWVudGF0aW9uLXN3aXRjaDsKPj4KPj4gSSBiZWxpZXZlIHRoaXMgYmVsb25n
cyBpbiB0aGUgU29DIERUU0ksIGFzIGl0J3Mgc3VwcG9ydGVkIGJ5Cj4+IHRoZSBQSFkgYmxvY2sg
aXRzZWxmCj4+Cj4+Cj4+IFRoZSByZXN0IHNlZW1zIHRvIGxndG0uLgo+Pgo+Pgo+PiBPbiBhIG5v
dGUsIHdoeSBkaWQgd2UgZW5kIHVwIHBsYWNpbmcgcG1pY19nbGluayBpbiBkZXZpY2UKPj4gRFRz
PyBJdCdzIGFscmVhZHkgYXNzdW1lZCB0aGF0IHdlJ3JlIHVzaW5nIHRoZSBmdWxsIFF1YWxjb21t
Cj4+IHN0YWNrIGFzIHdlIHVzZSBQQVMgZm9yIHJlbW90ZXByb2NzIHNvIEkgKnRoaW5rKiB3ZSBj
YW4gYWx3YXlzCj4+IGFzc3VtZSBwbWljX2dsaW5rIHdvdWxkIGJlIHRoZXJlIQo+IAo+IEFzIHdl
IGRpZCBvbiBvdGhlciBib2FyZCwgSSB0aGluayBiZWNhdXNlIGhhdmluZyBwbWljX2dsaW5rIGRl
cGVuZHMKPiBvbiB0aGUgYm9hcmQgZmlybXdhcmUgY2FwYWJpbGl0aWVzID8gQm9hcmRzIHdpdGhv
dXQgVVNCLUMgd29uJ3QgbmVlZC9oYXZlCj4gcG1pY19saW5rIHJpZ2h0ID8KUE1JQ19HTElOSyB0
YWtlcyBjYXJlIG9mIFVTQi1DLCBidXQgYWxzbyBlbmFibGVzIGJhdHRtZ3IgYW5kIGZyaWVuZHMK
CktvbnJhZAo+IAo+IE5laWwKPiAKPj4KPj4gS29ucmFkCj4+Cj4+PiArCj4+PiDCoMKgwqDCoMKg
IHN0YXR1cyA9ICJva2F5IjsKPj4+IMKgIH07Cj4+PiArJnVzYl8wX3FtcHBoeV9kcF9pbiB7Cj4+
PiArwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmbWRzczBfZHAwX291dD47Cj4+PiArfTsKPj4+
ICsKPj4+ICsmdXNiXzBfcW1wcGh5X291dCB7Cj4+PiArwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9
IDwmcG1pY19nbGlua19jb24wX3NzPjsKPj4+ICt9Owo+Pj4gKwo+Pj4gwqAgJnVzYl8wX3JvbGVf
c3dpdGNoIHsKPj4+IMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZwbWljX2dsaW5rX2Nv
bjBfaHM+Owo+Pj4gwqAgfTsKPj4+IEBAIC02OTcsOSArNzA3LDE5IEBAICZ1c2JfMV9xbXBwaHkg
ewo+Pj4gwqDCoMKgwqDCoCB2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdfbDRiPjsKPj4+IMKgwqDC
oMKgwqAgdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVnX2wzYj47Cj4+PiArwqDCoMKgIG9yaWVudGF0
aW9uLXN3aXRjaDsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gwqAg
fTsKPj4+ICsmdXNiXzFfcW1wcGh5X2RwX2luIHsKPj4+ICvCoMKgwqAgcmVtb3RlLWVuZHBvaW50
ID0gPCZtZHNzMF9kcDFfb3V0PjsKPj4+ICt9Owo+Pj4gKwo+Pj4gKyZ1c2JfMV9xbXBwaHlfb3V0
IHsKPj4+ICvCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZwbWljX2dsaW5rX2NvbjFfc3M+Owo+
Pj4gK307Cj4+PiArCj4+PiDCoCAmdXNiXzFfcm9sZV9zd2l0Y2ggewo+Pj4gwqDCoMKgwqDCoCBy
ZW1vdGUtZW5kcG9pbnQgPSA8JnBtaWNfZ2xpbmtfY29uMV9ocz47Cj4+PiDCoCB9Owo+Pj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NjODI4MHhwLmR0c2kKPj4+IGluZGV4IDBlNjkxYmIwMTIwYy4u
MWViM2EyOTVlOGZhIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3Nj
ODI4MHhwLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5k
dHNpCj4+PiBAQCAtMzAwNiw2ICszMDA2LDIzIEBAIHVzYl8wX3FtcHBoeTogcGh5QDg4ZWIwMDAg
ewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiArCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0cyB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcG9ydEAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZWcgPSA8MD47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdXNiXzBfcW1wcGh5X291dDogZW5kcG9pbnQge307Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBvcnRAMSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVnID0gPDE+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVzYl8wX3FtcHBoeV9kcF9pbjogZW5kcG9pbnQge307Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiXzFf
aHNwaHk6IHBoeUA4OTAyMDAwIHsKPj4+IEBAIC0zMDQyLDYgKzMwNTksMjMgQEAgdXNiXzFfcW1w
cGh5OiBwaHlAODkwMzAwMCB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNl
bGxzID0gPDE+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gImRpc2Fi
bGVkIjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvcnRzIHsKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDA+Owo+Pj4gKwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0QDAgewo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2JfMV9xbXBwaHlfb3V0OiBlbmRwb2lu
dCB7fTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydEAxIHsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MT47Cj4+PiArCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiXzFfcW1wcGh5X2RwX2luOiBlbmRwb2lu
dCB7fTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIH07Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBtZHNzMV9kcDBfcGh5OiBwaHlAODkwOWEwMCB7Cj4gCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
