Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17AFC77B61
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 13:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+BSzzPO6pUS7zYkInRi3lblgDIhGFvcnhDUKwf3SHI=; b=rzF/ir1zGwKWh2
	iHgCxfRTpvm4fEHnAle422MttdAM8OlTLuqH6MHTcx1zgLsmFQ2fNp0MPoUayY8CyYnlRqIpNwZOd
	zKLVg24VaKO6RNCextYX53oEZq2Q28jF+dAYYMobRNMSqaPqs9aX4ou/rC7YzZg2myZ8DBwJ/FimR
	ktYThZ5DFjFlBvMUGRkOvwGVFHnP0BIswzUb/BR2/cp/9d8HBz2L+Lb9eNAxpqclShJmN+9SaKsoX
	YNNdokgza6vcWoUa7T7zexNgnU4qxUu5qBy9LKOx4vHRYd33k/m9afriB/YFPVXMlDy5j3VuVueqF
	JcNgQ1PWY2hEYaDQZMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1f9-006e94-0z;
	Thu, 27 Apr 2023 13:27:55 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1f6-006e81-1f
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 13:27:54 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50685f1b6e0so15548869a12.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 06:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682602069; x=1685194069;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V7xnDUz2dODxnj/h8N5FrCM6kM8AWsyfS5hNS2c2bj4=;
        b=ysLRaQGPh0VUnYPwIlSR9xv4ak+KaD3s+6e+hZEHOEL8bwkuS9sy/uWmVRvibYwUK/
         4QbTGFCqZcsZeMzJwd/QzgIaWgFUA98fsLCgYuMceT1m9jNotOcAmsFjHzQMdujkGJMN
         spG99Guu9gdMbV1L0isYgvacMbgQ42HHMehqNYZPmWd8VBQWKZnPkBh6mzFDIPKgTca8
         1d5n77YicDvN7GbB2NIPD8sgHjfsgUeMIuwauDdxlhcz/GhjBKh1oIpSLR2rKQlHCgTI
         yCBUE8B9vaqU8s7JGPtSl13ENG52PsZ/BEktFbWxK7dYy14edj2UECcHrMy01j7OWQPU
         iYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682602069; x=1685194069;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V7xnDUz2dODxnj/h8N5FrCM6kM8AWsyfS5hNS2c2bj4=;
        b=U7WE+vRv7B94SnAidctQA7TJvaS1N2tONCa2XsplMbMg6CvpbY4XmG0jO8/Dh2rgba
         tWER0m7TOOgwmdGTO+e2vpVIIc618Yo/NkChGiFGBUZCQCOgZLkkypuXWvCjYXxr+Hmg
         0oIYQvWtXr/aBcg7Dq3BgVq28TEun8TyN57ooaMNOTWB8S6gCat9M8jqGm+OL7yB1VFP
         VPvREdWjhyfbH71sEqJzUg5yz23Jc8jO35bHm0eeVwUmNasCI9/gVhFi45iJ1eOrTKDb
         a0gTSEiuLY79bn00iSk1EN39ViPSHjTVSdc9oIVZoTRCkS4I2EehhopcZ5TalpRJCmwW
         JiXA==
X-Gm-Message-State: AC+VfDyAq41WTOvjZYn76HzDiGRTWB/3KTS8Y50/5KVAlTbS5b42rRQL
	0n4nF40BoBjbpFnAZoSRjljq8A==
X-Google-Smtp-Source: ACHHUZ5Z/0Br9KzFA0FV3Z+N8MCgk4/6hbEyRiw2D64gbtF3sC+Dy1oXNCxQfJbmFt2pef7SAiEbmQ==
X-Received: by 2002:a05:6402:2:b0:504:9cec:8afb with SMTP id d2-20020a056402000200b005049cec8afbmr1773400edu.2.1682602069344;
        Thu, 27 Apr 2023 06:27:49 -0700 (PDT)
Received: from [172.23.2.82] ([31.221.30.162])
        by smtp.gmail.com with ESMTPSA id n20-20020a05640206d400b00504b203c4f1sm8070176edy.40.2023.04.27.06.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 06:27:48 -0700 (PDT)
Message-ID: <fc414f61-34a8-acb0-29d4-971a873562e5@linaro.org>
Date: Thu, 27 Apr 2023 15:27:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed
 graph
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-7-quic_bjorande@quicinc.com>
 <aa94b488-cb6e-bd74-0711-b7c4c7589f7a@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <aa94b488-cb6e-bd74-0711-b7c4c7589f7a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_062752_553494_2FAADC15 
X-CRM114-Status: GOOD (  18.52  )
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

T24gMjcvMDQvMjAyMyAwMTozMywgS29ucmFkIER5YmNpbyB3cm90ZToKPiAKPiBPbiA0LzI1LzIz
IDA0OjQwLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+IFdpdGggc3VwcG9ydCBmb3IgdGhlIFFN
UCBjb21ibyBwaHkgdG8gcmVhY3QgdG8gVVNCIFR5cGUtQyBzd2l0Y2ggZXZlbnRzLAo+PiBpbnRy
b2R1Y2UgaXQgYXMgdGhlIG5leHQgaG9wIGZvciB0aGUgU3VwZXJTcGVlZCBsYW5lcyBvZiB0aGUg
dHdvIFVTQgo+PiBUeXBlLUMgY29ubmVjdG9ycywgYW5kIGNvbm5lY3QgdGhlIG91dHB1dCBvZiB0
aGUgRGlzcGxheVBvcnQgY29udHJvbGxlcgo+PiB0byB0aGUgUU1QIGNvbWJvIHBoeS4KPj4KPj4g
VGhpcyBhbGxvd3MgdGhlIFRDUE0gdG8gcGVyZm9ybSBvcmllbnRhdGlvbiBzd2l0Y2hpbmcgb2Yg
Ym90aCBVU0IgYW5kCj4+IERpc3BsYXlQb3J0IHNpZ25hbHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEJqb3JuIEFuZGVyc3NvbiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4KPj4gLS0tCj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1jcmQuZHRzIHwgMjggKysrKysrKysr
KysrKysrKy0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4MjgweHAuZHRzacKg
wqDCoCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwg
NTggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1jcmQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NjODI4MHhwLWNyZC5kdHMKPj4gaW5kZXggNTQ3Mjc3OTI0ZWEzLi4zM2M5NzM2NjFm
YTUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1jcmQu
ZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC1jcmQuZHRzCj4+
IEBAIC02NCw3ICs2NCw3IEBAIHBvcnRAMSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MT47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBwbWljX2dsaW5rX2NvbjBfc3M6IGVuZHBvaW50IHsKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50
ID0gPCZtZHNzMF9kcDBfb3V0PjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZ1c2JfMF9xbXBwaHlfb3V0PjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gQEAgLTk5LDcgKzk5LDcgQEAgcG9ydEAx
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwx
PjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBtaWNfZ2xp
bmtfY29uMV9zczogZW5kcG9pbnQgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8Jm1kc3MwX2RwMV9vdXQ+Owo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5k
cG9pbnQgPSA8JnVzYl8xX3FtcHBoeV9vdXQ+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9Owo+PiBAQCAtNDEyLDcgKzQxMiw3IEBAICZtZHNzMF9kcDAgewo+PiDCoCAmbWRzczBfZHAw
X291dCB7Cj4+IMKgwqDCoMKgwqAgZGF0YS1sYW5lcyA9IDwwIDE+Owo+PiAtwqDCoMKgIHJlbW90
ZS1lbmRwb2ludCA9IDwmcG1pY19nbGlua19jb24wX3NzPjsKPj4gK8KgwqDCoCByZW1vdGUtZW5k
cG9pbnQgPSA8JnVzYl8wX3FtcHBoeV9kcF9pbj47Cj4+IMKgIH07Cj4+IMKgICZtZHNzMF9kcDEg
ewo+PiBAQCAtNDIxLDcgKzQyMSw3IEBAICZtZHNzMF9kcDEgewo+PiDCoCAmbWRzczBfZHAxX291
dCB7Cj4+IMKgwqDCoMKgwqAgZGF0YS1sYW5lcyA9IDwwIDE+Owo+PiAtwqDCoMKgIHJlbW90ZS1l
bmRwb2ludCA9IDwmcG1pY19nbGlua19jb24xX3NzPjsKPj4gK8KgwqDCoCByZW1vdGUtZW5kcG9p
bnQgPSA8JnVzYl8xX3FtcHBoeV9kcF9pbj47Cj4+IMKgIH07Cj4+IMKgICZtZHNzMF9kcDMgewo+
PiBAQCAtNjcwLDkgKzY3MCwxOSBAQCAmdXNiXzBfcW1wcGh5IHsKPj4gwqDCoMKgwqDCoCB2ZGRh
LXBoeS1zdXBwbHkgPSA8JnZyZWdfbDlkPjsKPj4gwqDCoMKgwqDCoCB2ZGRhLXBsbC1zdXBwbHkg
PSA8JnZyZWdfbDRkPjsKPj4gK8KgwqDCoCBvcmllbnRhdGlvbi1zd2l0Y2g7Cj4gCj4gSSBiZWxp
ZXZlIHRoaXMgYmVsb25ncyBpbiB0aGUgU29DIERUU0ksIGFzIGl0J3Mgc3VwcG9ydGVkIGJ5Cj4g
dGhlIFBIWSBibG9jayBpdHNlbGYKPiAKPiAKPiBUaGUgcmVzdCBzZWVtcyB0byBsZ3RtLi4KPiAK
PiAKPiBPbiBhIG5vdGUsIHdoeSBkaWQgd2UgZW5kIHVwIHBsYWNpbmcgcG1pY19nbGluayBpbiBk
ZXZpY2UKPiBEVHM/IEl0J3MgYWxyZWFkeSBhc3N1bWVkIHRoYXQgd2UncmUgdXNpbmcgdGhlIGZ1
bGwgUXVhbGNvbW0KPiBzdGFjayBhcyB3ZSB1c2UgUEFTIGZvciByZW1vdGVwcm9jcyBzbyBJICp0
aGluayogd2UgY2FuIGFsd2F5cwo+IGFzc3VtZSBwbWljX2dsaW5rIHdvdWxkIGJlIHRoZXJlIQoK
QXMgd2UgZGlkIG9uIG90aGVyIGJvYXJkLCBJIHRoaW5rIGJlY2F1c2UgaGF2aW5nIHBtaWNfZ2xp
bmsgZGVwZW5kcwpvbiB0aGUgYm9hcmQgZmlybXdhcmUgY2FwYWJpbGl0aWVzID8gQm9hcmRzIHdp
dGhvdXQgVVNCLUMgd29uJ3QgbmVlZC9oYXZlCnBtaWNfbGluayByaWdodCA/CgpOZWlsCgo+IAo+
IEtvbnJhZAo+IAo+PiArCj4+IMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiDCoCB9Owo+
PiArJnVzYl8wX3FtcHBoeV9kcF9pbiB7Cj4+ICvCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZt
ZHNzMF9kcDBfb3V0PjsKPj4gK307Cj4+ICsKPj4gKyZ1c2JfMF9xbXBwaHlfb3V0IHsKPj4gK8Kg
wqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnBtaWNfZ2xpbmtfY29uMF9zcz47Cj4+ICt9Owo+PiAr
Cj4+IMKgICZ1c2JfMF9yb2xlX3N3aXRjaCB7Cj4+IMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50
ID0gPCZwbWljX2dsaW5rX2NvbjBfaHM+Owo+PiDCoCB9Owo+PiBAQCAtNjk3LDkgKzcwNywxOSBA
QCAmdXNiXzFfcW1wcGh5IHsKPj4gwqDCoMKgwqDCoCB2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdf
bDRiPjsKPj4gwqDCoMKgwqDCoCB2ZGRhLXBsbC1zdXBwbHkgPSA8JnZyZWdfbDNiPjsKPj4gK8Kg
wqDCoCBvcmllbnRhdGlvbi1zd2l0Y2g7Cj4+ICsKPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2th
eSI7Cj4+IMKgIH07Cj4+ICsmdXNiXzFfcW1wcGh5X2RwX2luIHsKPj4gK8KgwqDCoCByZW1vdGUt
ZW5kcG9pbnQgPSA8Jm1kc3MwX2RwMV9vdXQ+Owo+PiArfTsKPj4gKwo+PiArJnVzYl8xX3FtcHBo
eV9vdXQgewo+PiArwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmcG1pY19nbGlua19jb24xX3Nz
PjsKPj4gK307Cj4+ICsKPj4gwqAgJnVzYl8xX3JvbGVfc3dpdGNoIHsKPj4gwqDCoMKgwqDCoCBy
ZW1vdGUtZW5kcG9pbnQgPSA8JnBtaWNfZ2xpbmtfY29uMV9ocz47Cj4+IMKgIH07Cj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4MjgweHAuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5kdHNpCj4+IGluZGV4IDBlNjkxYmIwMTIwYy4uMWVi
M2EyOTVlOGZhIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4Mjgw
eHAuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4MjgweHAuZHRzaQo+
PiBAQCAtMzAwNiw2ICszMDA2LDIzIEBAIHVzYl8wX3FtcHBoeTogcGh5QDg4ZWIwMDAgewo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDE+Owo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBvcnRzIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAj
c2l6ZS1jZWxscyA9IDwwPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHBvcnRAMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcg
PSA8MD47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVz
Yl8wX3FtcHBoeV9vdXQ6IGVuZHBvaW50IHt9Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0QDEg
ewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDE+Owo+
PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2JfMF9xbXBw
aHlfZHBfaW46IGVuZHBvaW50IHt9Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiXzFfaHNwaHk6IHBoeUA4OTAyMDAwIHsKPj4gQEAg
LTMwNDIsNiArMzA1OSwyMyBAQCB1c2JfMV9xbXBwaHk6IHBoeUA4OTAzMDAwIHsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwb3J0cyB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3NpemUt
Y2VsbHMgPSA8MD47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0
QDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDA+
Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2JfMV9x
bXBwaHlfb3V0OiBlbmRwb2ludCB7fTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydEAxIHsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwxPjsKPj4gKwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiXzFfcW1wcGh5X2Rw
X2luOiBlbmRwb2ludCB7fTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIG1kc3MxX2RwMF9waHk6IHBoeUA4OTA5YTAwIHsKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
