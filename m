Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2965BC7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrNOp8sboDPDV6To8jDaoiy5dzZ64qW8d2lj7Ktlbeo=; b=k+k5O83vVyMjXl
	kTzE3FD7RMZqwE3nKs/O20LKYoC4y4KReaeh6n/7zRCKfLkgGp8kN/hcSZcHaswmKUlQ39NOagFdz
	tH606QWqt8UAt+G2QeLcBqyPo9r6zzq5vs2oOQlAZw6zkx+l+ipa4bb5ifSlDBNYhMOeCtjKtzbq2
	huUBti1GP1ZLzwpgQ+mhzE+7470QDHf9czWP0K6mGCemWtrwd++vlefjtSQyJ90B7yKDZfdvVUusk
	3OlrURnQg6fhZ9lrAHS2gfuRgtDiaE+CBGCFc+daYOeEkIRqHM1kbLleHkCe8VvwC34FWm38Jc/wY
	rBmqLlsMGcLrGb/gBIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUyj-001fFq-2f;
	Mon, 15 May 2023 09:58:53 +0000
Received: from mail-vk1-xa34.google.com ([2607:f8b0:4864:20::a34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUyg-001fEM-2B
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:58:51 +0000
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-44fd3c2300dso4463043e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144728; x=1686736728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EbXtIGp63Fscsuq6HvXYDK8e/YBIj3uFeNgrwLOtSjg=;
        b=W8n2J/7TndzsZATZelIs3QwudW1eqdOYL3HJYK8CXM1bZGxhhsMsBBHq27NGgmaRwV
         m144VzSX5RUi6NQek8gWDGbqMlNCljhgs2ADrAS7S22hXtzw9diQF9D1BSgy+wWMF9zK
         STUM0/0OJDhbaJ8FzhUsRdM3brxuzyvZn1BnxrjaLxhBHV43P2yRU6GayDNot2dVWZ6g
         v3ibb4q+oVC6dBmMgjXcowBMN61F+z9RtC0J6T+oDXlYuBxyvVxyZS9Jn4r1HRqnAArD
         Ia0Nz+n/KKFnn8Z241c+4juVYqQ9D/dF2QD5O43RcnygL4yOZxJVZCAPRnadD7doLMDI
         caUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144728; x=1686736728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbXtIGp63Fscsuq6HvXYDK8e/YBIj3uFeNgrwLOtSjg=;
        b=Rp/K8rP8WEl079zgO/An7Lt/xReOStyaRp2AIJfMrusKowObQBxECjNOZbBwhuYsJD
         JF/M3FSeYtZeoJWCjJ2FYbt85IV+rDWEgUX2Qavh6K0aZstRvHwi4fCaMrqAnenxTOOm
         5cZo/ktkvz0M79/ZoE/5arqzsRqRpk8BII43/QE7t+f9RzNxfimttzKjecbFw+GvpXt8
         y9VawHFrWRrkuQ/aJ4ldWmZtXcte0lC1NjFlsm4IS0BTbxsa2nVLQiDJc7TfCx3Mp9xd
         olwYFyC9KCrAeRdmNlQ/RkZqPdU984GY6pWo76fqcT9jtxrk9ozkFyYdEZgJ7cUKCAx8
         Nynw==
X-Gm-Message-State: AC+VfDysyqnHT3BiOXgIRc61UI7TS2oJOvGWUofoQEhott9EqOt/tSxj
	XmkHQ/Qs/D5Dq9/cGvPIuIuOEYYUSDvLILw4zWTOag==
X-Google-Smtp-Source: ACHHUZ6DHZcKjPVvUXhtel4kMOfQHIuPoYEDoT3uupfFpobTSZjjgpOCyVhxviL7y9JsLigfEdajYPxDkpqzdJoa9X4=
X-Received: by 2002:a1f:3d14:0:b0:453:75ff:7fbe with SMTP id
 k20-20020a1f3d14000000b0045375ff7fbemr4987110vka.16.1684144728426; Mon, 15
 May 2023 02:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230515095308.183424-1-brgl@bgdev.pl> <d10d66a6-3e28-5c42-c650-9d00d53045f0@linaro.org>
In-Reply-To: <d10d66a6-3e28-5c42-c650-9d00d53045f0@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 15 May 2023 11:58:37 +0200
Message-ID: <CAMRc=MdffxxgXqb3APCrc3en23WgHY6rxAb8Ed80oLc=bGLuCg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] arm64: qcom: sa8775p: add support for UFS
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025850_720062_93A7DD08 
X-CRM114-Status: GOOD (  10.43  )
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

T24gTW9uLCBNYXkgMTUsIDIwMjMgYXQgMTE6NTfigK9BTSBLb25yYWQgRHliY2lvIDxrb25yYWQu
ZHliY2lvQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4KPgo+IE9uIDE1LjA1LjIwMjMgMTE6NTMsIEJh
cnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
YXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPgo+ID4gVXBkYXRlIHJlbGV2YW50IERU
IGJpbmRpbmdzLCBhZGQgbmV3IGNvbmZpZyB0byB0aGUgZHJpdmVyIGFuZCBhZGQgVUZTCj4gPiBh
bmQgUEhZIG5vZGVzIHRvIHRoZSAuZHRzaSBhbmQgZW5hYmxlIHRoZW0gaW4gdGhlIGJvYXJkIC5k
dHMgZm9yCj4gPiBzYTg3NzVwLXJpZGUuCj4gPgo+ID4gdjMgLT4gdjQ6Cj4gPiAtIGRyb3AgYXBw
bGllZCBwYXRjaGVzCj4gPiAtIG1hcmsgdGhlIFVGUyBhcyBkbWEtY29oZXJlbnQKPiBCam9ybiBw
aWNrZWQgYWxsIG9mIHRoZXNlIHVwLCB5b3UgbmVlZCB0byBzZW5kIGFuIGluY3JlbWVudGFsCj4g
cGF0Y2ggbm93Lgo+Cj4gS29ucmFkCgpBaCBjcipwIGp1c3Qgc2F3IGl0IHRvbywgdGhleSB3ZXJl
IG5vdCBpbiBuZXh0IHlldCBzbyBkaWRuJ3Qgbm90aWNlCndoZW4gcmViYXNpbmcuIFdpbGwgc2Vu
ZCBhbiBpbmNyZW1lbnRhbCBwYXRjaCB0aGVuLgoKQmFydAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
