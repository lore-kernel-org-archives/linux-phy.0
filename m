Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D58FC369A8
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 08:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U7mnnDoD1T7y0rGo8QsTnLMFCaq1/SjqeixqWJek8Q=; b=Z9w1m3UksUodHu
	ODv/gfcUwuVv2q8OSBOwpcuomokjZamwRc3VKXzjjuWKx+jgnLK2uUbgjw4e2L9jc6lk0t2LiODy2
	Mw9+5k/FDGM4VrDKIMzpwaMdv4VIu9AxKfwP46Z6P4NuKSArRxZ7OfgIBMsTyI11MgLYWF4xCl2oW
	gQaRYl5iTm9KVVUeRhYgQ8KSqRdIOVfP8qDC5S1GdniUAv1LAl0fQcarPrAIcdxhqnWpMrXls2+2y
	e5lysNILP5zSFXsg5NvCtvqniLQmE3QLpig+yMt+AsOHqsDsblw14fQz1J94qaQXcvHiy/g8RV6da
	smxGDLRHKPCJqZNOf5vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stN01-00000004RQ4-02tH;
	Wed, 25 Sep 2024 08:03:49 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMvP-00000004QBk-1KpL
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 07:59:05 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-37a33e55d01so4836860f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Sep 2024 00:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251141; x=1727855941; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bapYHrGCRxq+5Z8fPQWisdRvflJnfm7FCmo91yCvTzg=;
        b=uCZez5davAggWzCaaYHbPw65lgfuy3xDA1jSJS2D6+WorU+q0Oe87A7qLPYoU+TUxw
         9oh3Fu3VB1KMI2Va197q3SeYGpzdU6VOS3i8YfEvzC9eu6Iwpd0voE5Gy9ShW7MPEL53
         NYI80ejL4EqBbXimEjVqpYs8KmSU+pMpCza0J5CTbnNbj4yCJejUUvjOS7DgQyI6g9zK
         I8d2rVI7acWaU6IG7phVjXCBwUH2eeMHBAb6SzAnxVIfTSlGk6kiKmn1t8QxK5MxYNdp
         6USXGmZ+FXZd1fVYdD5hChD9+SRs/tQ/QsZWkYJHpAJ0ZuD8G/a4Z54AGOLwd4is0qe2
         tEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251141; x=1727855941;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bapYHrGCRxq+5Z8fPQWisdRvflJnfm7FCmo91yCvTzg=;
        b=IJaeszNwlgmp5hnV7ht42FAu5LRGSMW9hv+w8AW1r+Z+IJsOqsP8pcAn7z5ViQ9lVG
         SzUKO5A20DGhODI6yHReMyOtM+ZcYhfoyX3o1Vkczt7atJnEsS9pFCcFIuxoU+QBsUGR
         PfeFjHmylknTUqd8WKRTa2nOuA3vGouYZIWCYyI4L0Clc9uiBXOAnPblF+qXQTj95ss3
         SUEuhGtMCO6emvx3SvIn/uPi0wjsHT30HvcM16yAk1UjUUpQjWHMT7TiiMlqZ48D66o0
         sTqQs2jDeco6gHWrrY5r46YGffne4umpYCSelyD1hRhcQwkheuZlOY41VkSJSLabsQxp
         vuew==
X-Forwarded-Encrypted: i=1; AJvYcCVHFbNcKyKxRdL64tJB5P8cYC3e0sqcayiKjwXVSMh2GWoTynvJtTmQpEY3GPn33sC5ysxtzZPa0kY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzU6GGpouE0PB5fK+1xvuFFwvJI/sc6qk7sEVevpMsG/e+0wFg
	hLMVY+ifCPbLrW4xf+5Z3LyE/497s3Tarc10oHSMf9uPhdER2XPJ/C1xJYIy+w==
X-Google-Smtp-Source: AGHT+IG3djtkgvDwFjL5SMyfW3qLoXY0CLRwpTQ//e0lJY1MODc0J/w7hgvsNBnFokru+vE1owYtFw==
X-Received: by 2002:adf:f886:0:b0:371:8cc3:3995 with SMTP id ffacd0b85a97d-37cc24847f5mr1254992f8f.34.1727251141533;
        Wed, 25 Sep 2024 00:59:01 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc31f77esm3313206f8f.108.2024.09.25.00.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 00:59:01 -0700 (PDT)
Date: Wed, 25 Sep 2024 09:58:59 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <20240925075859.4vbb4faaworc6eyz@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <ZvLQFSjwR-TvHbm_@hovoldconsulting.com>
 <ee32742d-9daf-4bff-948b-cf2e705bc73f@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee32742d-9daf-4bff-948b-cf2e705bc73f@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_005903_648982_98014A36 
X-CRM114-Status: GOOD (  17.16  )
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

T24gV2VkLCBTZXAgMjUsIDIwMjQgYXQgMDI6Mzc6NDFQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOS8yNC8yMDI0IDEwOjQzIFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPiBPbiBU
dWUsIFNlcCAyNCwgMjAyNCBhdCAwMzoxNDo0NEFNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+
ID4gRGVzY3JpYmUgUENJZTMgY29udHJvbGxlciBhbmQgUEhZLiBBbHNvIGFkZCByZXF1aXJlZCBz
eXN0ZW0gcmVzb3VyY2VzIGxpa2UKPiA+ID4gcmVndWxhdG9ycywgY2xvY2tzLCBpbnRlcnJ1cHRz
IGFuZCByZWdpc3RlcnMgY29uZmlndXJhdGlvbiBmb3IgUENJZTMuCj4gPiA+IEBAIC0yOTA3LDYg
KzI5MDcsMjA4IEBAIG1tc3Nfbm9jOiBpbnRlcmNvbm5lY3RAMTc4MDAwMCB7Cj4gPiA+ICAgCQkJ
I2ludGVyY29ubmVjdC1jZWxscyA9IDwyPjsKPiA+ID4gICAJCX07Cj4gPiA+ICsJCXBjaWUzOiBw
Y2llQDFiZDAwMDAgewo+ID4gPiArCQkJZGV2aWNlX3R5cGUgPSAicGNpIjsKPiA+ID4gKwkJCWNv
bXBhdGlibGUgPSAicWNvbSxwY2llLXgxZTgwMTAwIjsKPiA+ID4gKwkJCWludGVycnVwdHMgPSA8
R0lDX1NQSSAxNTggSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQ
SSAxNjYgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQSSA3Njkg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQSSA4MzYgSVJRX1RZ
UEVfTEVWRUxfSElHSD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQSSA2NzEgSVJRX1RZUEVfTEVW
RUxfSElHSD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQSSAyMDAgSVJRX1RZUEVfTEVWRUxfSElH
SD4sCj4gPiA+ICsJCQkJICAgICA8R0lDX1NQSSAyMTggSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4g
PiA+ICsJCQkJICAgICA8R0lDX1NQSSAyMTkgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gPiA+ICsJ
CQkJICAgICA8R0lDX1NQSSAxMjEgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsJCQlpbnRl
cnJ1cHQtbmFtZXMgPSAibXNpMCIsCj4gPiA+ICsJCQkJCSAgIm1zaTEiLAo+ID4gPiArCQkJCQkg
ICJtc2kyIiwKPiA+ID4gKwkJCQkJICAibXNpMyIsCj4gPiA+ICsJCQkJCSAgIm1zaTQiLAo+ID4g
PiArCQkJCQkgICJtc2k1IiwKPiA+ID4gKwkJCQkJICAibXNpNiIsCj4gPiA+ICsJCQkJCSAgIm1z
aTciLAo+ID4gPiArCQkJCQkgICJnbG9iYWwiOwo+ID4gVGhpcyBuaW50aCAiZ2xvYmFsIiBpbnRl
cnJ1cHQgaXMgbm90IGRlc2NyaWJlZCBieSB0aGUgYmluZGluZ3MsIHdoaWNoCj4gPiB3b3VsZCBh
bHNvIG5lZWQgdG8gYmUgdXBkYXRlZC4gV2hhdCBpcyBpdCB1c2VkIGZvcj8KPiAKPiBBcyBvZiBu
b3csIHRoZSBnbG9iYWwgaW50ZXJydXB0cyBpcyBtYWlubHkgdXNlZCB0byBnZXQgbGluayB1cCBl
dmVudCBzbwo+IHRoYXQgdGhlIGRldmljZSBkcml2ZXIgY2FuIGVudW1lcmF0ZSB0aGUgUENJZSBl
bmRwb2ludCBkZXZpY2VzIHdpdGhvdXQKPiB1c2VyIGludGVydmVudGlvbi4gWW91IGNhbiByZWZl
ciB0bwo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yMDI0MDgyOC1wY2ktcWNv
bS1ob3RwbHVnLXY0LTExLTI2M2EzODVmYmJjYkBsaW5hcm8ub3JnLgo+IAo+IEkgc2VlIHRoaXMg
Z2xvYmFsIGludGVycnVwdHMgaGFzIGJlZW4gZG9jdW1lbnRlZCBpbiBxY29tLHBjaWUtc204NDUw
LnlhbWwuCj4gRG8gSSBuZWVkIHRvIG1vdmUgaXQgdG8gcWNvbSxwY2llLWNvbW1vbi55YW1sPwo+
IAoKTm8sIHlvdSBuZWVkIHRvIGRlc2NyaWJlIGl0IGluIHFjb20scGNpZS14MWU4MDEwMC55YW1s
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
