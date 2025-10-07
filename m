Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2308DCCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 18:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7YRZ7Fd8UEB7gRpnxLHfTgSPf4zdFXtbCY9xAqI+9Y=; b=NUnV8l6sejdx8b
	tNRi8hldCMnM1o+ccYlpnGn0RBuk8szfdx/ooIXhfMpTHSPyIYCvobDp6g2S23ScBBkp4+gFQDkkP
	54i+gQNIdQGXdA7Ec9saZ372FdPFEXCqUiNz/z+J7KUE7iC+ph8VZvMCusYG2oTqDV8QRQsit4zij
	qgAaA4QJ26y3STtSEhfSnHo6WJCMiGX1SFJhLfwObBlVh88OOhOo3ifOF0h1wX7NROT+rOIT53QJg
	3lA9Vovd6t6UwotoirAwR8eawYnbqlqJU+CYcoJIdPd/5WY5/gQqJIpev6vDDsCtAUX2N5uwZa9C5
	Rpy5yoXlBg4/LZlIPB2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6C2V-00000002WgF-3eri;
	Tue, 07 Oct 2025 18:03:55 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6C2T-00000002Wfa-1fGD
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 18:03:54 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-77f605f22easo5577390b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 11:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759860232; x=1760465032; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BoeUTdyH6Ho2hK/WV0Pq7ReoILwQzxKPA2QdB9ZFVa0=;
        b=jE4GfCQex0TVw7HC7joTATx4tNw95S2Gv2SjEwBgE7TYhuRONfwNHiRwyoVCN//18N
         c094YQf8NtCEgVnr5V5tYUQKUfbJ6rIv7AGL5iOFL5ETviUWrl6v4fxUuYD0axvNKoT2
         bTA4sAzldRv2pw1hKmqh5KJMhCL9HHUrdQ1x+VCG7F1RrxipT73Fo76cwQw1WLDznnS0
         huIZ5Nk72jCDsmehMEAzEg2AEZmlIhC640esSPDL8yGFHoGTH9OPf7ax96b6xXVNpctD
         KgeJRvUTdArNrQIjwnunwYFFCDZ9RCXPHEOY/7VCEH3XgYA4opBFOPpm0n90IC/NXdFb
         QEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860232; x=1760465032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BoeUTdyH6Ho2hK/WV0Pq7ReoILwQzxKPA2QdB9ZFVa0=;
        b=QpbWsiFkDkeD7EShBPSAHr76Y+xsyLJm9bQX6MizbOPUwhxA2v2H66nD41Me4XKuPo
         IpPyQnf86g/i8zUDFA6gUDq/RftKuHMhMwVlywf/iKj88JH/HeBFCWwT2szMFRcY6x7R
         DOSVTAuWWc7x91Rl6EuRJbPD42t62IEpWImMWRYgJehQD9fobPcPbkUzhyDVBm6+u2DB
         uReOp1GvTH7i4cplWsT2p9ICAadwH3PsmJBcGkyBqjyjS31BC5O5RGwo6GiL3i47aJl0
         QS4V96UQaVa1FnYlFEXNZhyU6Ksm3XcSRLtNogCMNHS5kKsmdEPuc2BcMEs1VpxAWCY9
         rbDQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5qTQ8WUukdeECBG1Qwp6QKpAKeYCAr6XLOBq1M5tA9ZtrA1u/flIqcI+HF4nVx2G4Kf2O6OdkEb8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNfYFNQjN8W196IMmzzpN2rJwbapMu2wOBkbT2LbJOQpbZCWfW
	qPOzHA693GVFar6iKgG4Ci0m/KeeWP0izjLcETyQTGBLjzRFReOqpdRWnxao5i2Zz+7EqMkreRx
	LfJbMOjmXQJ2cFF+fReF6RPOINyl/W1NlvDtO3Alr
X-Gm-Gg: ASbGncvl9UOL0VRRoktNvGWBFtGUvLy0HC08zLojyhJM89MN+yrFVluYaTTWsQLvS74
	DpY6Oe9SxZOjZyMHFe4u6BhcB1BIaONClOWRDQCfDZL5++8QIiXZViczYhQ72YKng71sp8ozhM1
	wkB84AN66VQATgq0C4ps4LDJs90g2JI6cB9ioHYqGWmN0ipVpes3jqESkmj1rzAvyOkZtyROQw3
	dSEjH+2T2z9Pd34W0z7YJeAbKuQIbuO3Yi2mJTD6D24RTtiF/Lx5wydAGecbCA5AunQyHzM7DWY
	5ir22BCPyfL/3g==
X-Google-Smtp-Source: AGHT+IErqs+kJVv5rsWGTN2Z0xZ0ickiFqF1IQ4SpRF/lYWHEWgJPEacLea7fTefk87mdvoXJ1AdDn7lRgB9V20xPD0=
X-Received: by 2002:a17:902:d58d:b0:266:cb8c:523 with SMTP id
 d9443c01a7336-290273ffe89mr5647285ad.48.1759860231518; Tue, 07 Oct 2025
 11:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <36068ca3-912e-4e71-b688-8689ead8194b@kernel.org>
In-Reply-To: <36068ca3-912e-4e71-b688-8689ead8194b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 11:03:15 -0700
X-Gm-Features: AS18NWA8U90B63ffP5jXdkUD5e6eOAqItmxz5SXEaQputDmKkvJD4mEmS6I0ARg
Message-ID: <CA+zupgyLx8q23b-ecrLhYAU27HV_ZFMiH9XR81Q2MKRmMwpcNw@mail.gmail.com>
Subject: Re: [PATCH v1 0/4] Add Google Tensor SoC USB support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_110353_433481_E8252F38 
X-CRM114-Status: GOOD (  16.41  )
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

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCA2OjA24oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA3LzEwLzIwMjUgMDg6MjEsIFJveSBMdW8gd3Jv
dGU6Cj4gPiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIHRoZSBVU0IgY29udHJv
bGxlciBhbmQgUEhZIGZvdW5kIG9uCj4gPiBHb29nbGUgVGVuc29yIFNvQ3MgKEc1IGFuZCBuZXdl
cikuIFRoaXMgaW5jbHVkZXM6Cj4gPgo+ID4gMS4gIERXQzMgR2x1ZSBEcml2ZXI6IEEgbmV3IGds
dWUgbGF5ZXIgZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIFVTQiAzLjAKPiA+ICAgICBjb250
cm9sbGVyIChEV0MzKSBhcyBpbnRlZ3JhdGVkIGludG8gR29vZ2xlIFRlbnNvciBTb0NzLCBpbmNs
dWRpbmcKPiA+ICAgICBoaWJlcm5hdGlvbiBzdXBwb3J0Lgo+ID4gMi4gIERXQzMgRFQgQmluZGlu
Z3M6IERldmljZSBUcmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIEdvb2dsZQo+ID4g
ICAgIFRlbnNvciBTb0MgRFdDMyBjb250cm9sbGVyLgo+ID4gMy4gIFVTQiBQSFkgRHJpdmVyOiBB
IG5ldyBkcml2ZXIgZm9yIHRoZSBHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZLAo+ID4gICAgIGlu
aXRpYWxseSBzdXBwb3J0aW5nIGhpZ2gtc3BlZWQgb3BlcmF0aW9ucy4KPiA+IDQuICBVU0IgUEhZ
IERUIEJpbmRpbmdzOiBEZXZpY2UgVHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBH
b29nbGUKPiA+ICAgICBUZW5zb3IgU29DIFVTQiBQSFkuCj4KPiBUaGlzIGlzIHVzZWxlc3MgbWVz
c2FnZSBpbiB0aGUgY292ZXIgbGV0dGVyLiBXZSBzZWUgd2hhdCBwYXRjaGVzIGRvIGZyb20KPiB0
aGUgcGF0Y2hlcy4KPgo+IFdoYXQgeW91IGFyZSBzdXBwb3NlZCB0byBleHBsYWluIGhlcmUgYW5k
IGluIHRoZSBiaW5kaW5ncyBwYXRjaGVzLCBpcwo+IHdoeSB3ZSB3YW50IHRoaXMgZHJpdmVyIGFu
ZCB3aGF0IGlzIFRlbnNvciBTb0MsIGNvbnNpZGVyaW5nIHdlIGFscmVhZHkKPiBoYXZlIG9uZSBU
ZW5zb3IgU29DLi4uIElPVywgZXhwbGFpbiBldmVyeXRoaW5nIHdoaWNoIGlzIG5vdCBvYnZpb3Vz
IC0KPiBhbmQgZHVwbGljYXRpbmcgU29DcyB3aXRoIHNvbWUgZ2VuZXJpYyBuYW1lIGlzIGZvciBz
dXJlIG5vdCBvYnZpb3VzLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKVGhhbmtzIGZv
ciB0aGUgcmV2aWV3LiBXaWxsIHJlbW92ZSB0aGUgcmVkdW5kYW50IGluZm8gYW5kIGVuc3VyZSB0
aGUgbmV4dApjb3ZlciBsZXR0ZXIgcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBjb250ZXh0IG9uIHRo
ZSBHb29nbGUgVGVuc29yIEc1IFNvQwp0aGlzIHNlcmllcyBpbnRlbmRzIHRvIHN1cHBvcnQuCgpS
ZWdhcmRzLApSb3kgTHVvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
