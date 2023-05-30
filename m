Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF210C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 09:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlV98WwJhhCf+gTxLVR8TxUNrqc1lyZ+UIgkHNhtRV0=; b=1PfQqeRKxbv9Ml
	mMo1KgKW3TXYdyj1R4HLS3+hAh1bOF3MdExD9FMma30VvmCFqsbrDnd4c0lmIkMFkhZSndM4sXNHf
	Ok+5iJ6PtFhjwEuGNpbCYatfLnTG5ed+lx2n8sFuJd++wV2fEPXkRf1iwGxNr5nEX50kVukSJgBnw
	b3+et3NR7nntgFn4yskr7kfFKeSl5d4jNjqZ8KUmXz048mvzbsBXcpA9gdHVoopqW4lsmkIg6lxYi
	QjhMCOdCg6GYUGk9EQ212bCVWxYlq4CNdnAXjeAx3hZ1VRP5zGF+fRtqoqxK69EPOgSSZt6o/ohTD
	vv1AxJAqpbZibTz8vBhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3vwq-00DF3A-1c;
	Tue, 30 May 2023 09:47:24 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3vwn-00DF0j-0W
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 09:47:22 +0000
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-43932736509so2820664137.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 02:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1685440038; x=1688032038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OIzhChYUNLfm+XWki27JvZkO7NGgI4DFHIFwo2T7aS0=;
        b=bBkPAO2St5nJS4Kko98Tl60g8CTrz4Nn54qpkMWme+FATa5T6sx8k0544Cm0V518eu
         PguWspaNIRycRueuC4UxrB5+FuCj+dXJQqiidL/e4ukbPdlKmQtSaGNAfbrJvaJRHaKR
         2GJssxV+7AtQZya8RptndBvMoSMt7hR55I+NR4/oqy6yMh9VJS+UExy+y/n1QvpRDogx
         OojCNQDKPQsRIJ7R/ysgwyw8V1Y/E/p1Z3nPl0T6EAo/5BJcFHdoqkDfEqjtdzCBaQZc
         rFPDmyI0qCr74+oj8ETtfvkADEXaovqDyxO2vPxHX0Y33RjKrc5GqBu6mo2fSdn17Ir5
         e+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685440038; x=1688032038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OIzhChYUNLfm+XWki27JvZkO7NGgI4DFHIFwo2T7aS0=;
        b=WQA0iczncFIAuIAjfdaccrHrGuLvcBSmTx3YY/lF4Ps7USyY970Uh0kK+aEvJ/0v5z
         dvQT/jHDWjfAHBQNmobVTrzQsqMEkNGGHWODxb75DsUevsENHjrUOvR7w47WAfRh8FvA
         GYluTfCHphe66cShrFY1Lbg3lK6g63usKYtvG6pS6GZM5zyGWSNFbMUZyVaknmEQbuEu
         8L4vdMo1/TZ0Ag8kCeShyqH3dIGeeFVupkPpPuxMNouckvQL5Y+bActzXj9Y4xjVuKq6
         6nvjnEW/8/LgC6J2WAhe2N+4/DvVfU7Tmp8BXfAZkrEHVvciarcmAQOsH2GS0lrv8RMR
         9UdQ==
X-Gm-Message-State: AC+VfDxBPztwkj26ocYksvknztH2J0x3ciVfwg2es6wiX1WF4wtCGp7L
	dRGxww80QVR6A0NXYqNEDxH6e7yIoPg10Gv7HwSPEg==
X-Google-Smtp-Source: ACHHUZ6YElDOMjsnjuiqQPgxgQ7QloYBoa4ZvDWgRo3oSyyufZR6kZTSCoJ6Bf8lfwaaT/BrhKvzzzC/ep67kdjyrlU=
X-Received: by 2002:a67:f24a:0:b0:430:acc:a150 with SMTP id
 y10-20020a67f24a000000b004300acca150mr502826vsm.3.1685440038182; Tue, 30 May
 2023 02:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230411130446.401440-1-brgl@bgdev.pl> <20230411130446.401440-2-brgl@bgdev.pl>
 <CAMRc=MdDct0UzJPpOTuKHmm23Jc529NwkBWJJmXfeevpkQaSxQ@mail.gmail.com> <CAMRc=Me4EQ_7ArCeJASzKTimuSH=yNkrwm9DgE93s7kjdS5Nrw@mail.gmail.com>
In-Reply-To: <CAMRc=Me4EQ_7ArCeJASzKTimuSH=yNkrwm9DgE93s7kjdS5Nrw@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 30 May 2023 11:47:07 +0200
Message-ID: <CAMRc=MfhYu6sxhFABjyQUT5NGwNu1oJuRjMBqPvQ0Z8MhjoSRg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
To: Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, linux-scsi@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andy Gross <agross@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_024721_422033_D2E3048B 
X-CRM114-Status: GOOD (  16.72  )
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

T24gVGh1LCBNYXkgMjUsIDIwMjMgYXQgMTE6MzfigK9BTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDE2LCAyMDIzIGF0IDEyOjA24oCv
UE0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPgo+ID4gT24g
VHVlLCBBcHIgMTEsIDIwMjMgYXQgMzowNOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xA
YmdkZXYucGw+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
YXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPiA+Cj4gPiA+IEFkZCB0aGUgY29tcGF0
aWJsZSBzdHJpbmcgZm9yIHRoZSBVRlMgb24gc2E4Nzc1cCBwbGF0Zm9ybXMuCj4gPiA+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lA
bGluYXJvLm9yZz4KPiA+ID4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiA+ID4gLS0tCj4gPiA+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwgfCAyICsrCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPiA+ID4gaW5kZXgg
YzVhMDZjMDQ4Mzg5Li5iMWMwMDQyNGMyYjAgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbAo+ID4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPiA+ID4gQEAg
LTI2LDYgKzI2LDcgQEAgcHJvcGVydGllczoKPiA+ID4gICAgICAgICAgICAtIHFjb20sbXNtODk5
NC11ZnNoYwo+ID4gPiAgICAgICAgICAgIC0gcWNvbSxtc204OTk2LXVmc2hjCj4gPiA+ICAgICAg
ICAgICAgLSBxY29tLG1zbTg5OTgtdWZzaGMKPiA+ID4gKyAgICAgICAgICAtIHFjb20sc2E4Nzc1
cC11ZnNoYwo+ID4gPiAgICAgICAgICAgIC0gcWNvbSxzYzgyODB4cC11ZnNoYwo+ID4gPiAgICAg
ICAgICAgIC0gcWNvbSxzZG04NDUtdWZzaGMKPiA+ID4gICAgICAgICAgICAtIHFjb20sc202MzUw
LXVmc2hjCj4gPiA+IEBAIC0xMDUsNiArMTA2LDcgQEAgYWxsT2Y6Cj4gPiA+ICAgICAgICAgICAg
Y29udGFpbnM6Cj4gPiA+ICAgICAgICAgICAgICBlbnVtOgo+ID4gPiAgICAgICAgICAgICAgICAt
IHFjb20sbXNtODk5OC11ZnNoYwo+ID4gPiArICAgICAgICAgICAgICAtIHFjb20sc2E4Nzc1cC11
ZnNoYwo+ID4gPiAgICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtdWZzaGMKPiA+ID4gICAg
ICAgICAgICAgICAgLSBxY29tLHNtODI1MC11ZnNoYwo+ID4gPiAgICAgICAgICAgICAgICAtIHFj
b20sc204MzUwLXVmc2hjCj4gPiA+IC0tCj4gPiA+IDIuMzcuMgo+ID4gPgo+ID4KPiA+IEJqb3Ju
LAo+ID4KPiA+IEFyZSB5b3UgcGlja2luZyB0aGlzIG9uZSB1cCBhcyB3ZWxsIG9yIHNob3VsZCBp
dCBnbyB0aHJvdWdoIFJvYidzIHRyZWU/Cj4gPgo+ID4gQmFydAo+Cj4gR2VudGxlIHBpbmcuCj4K
PiBCYXJ0CgpIZXkgVUZTIG1haW50YWluZXJzLCBjb3VsZCB5b3UgcGxlYXNlIHBpY2sgdGhpcyBv
bmUgdXAgZm9yIHRoZSBuZXh0Cm1lcmdlIHdpbmRvdz8KClRoYW5rcyBpbiBhZHZhbmNlLApCYXJ0
b3N6CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
