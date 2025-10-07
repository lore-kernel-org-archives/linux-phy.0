Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A3BCCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 19:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nN6HW4q+UPfBLagjZ2KvTKQGxDkm0m6zM6YS7ZJ3YeA=; b=NDYTArEYG6lRJ/
	zk2GvJkOKFME+LulD3bab0RmfRQzoRzUU4sBmyFpkN2ENEgXkmBNvBGPFq65OQUJTTo93v6kryxo6
	2eWMk2bv6B50EjcovN6DWPeR3eec5jjQksm4ctYrWaOpEcJ0HWZ79L23psR5giwpXPUd7L9hG0Xcr
	NZBBfMw3zGKlpx6vc1bikNtT5uYcPvcE+fJEhlaxPH8n2FZOBFK7Vyt1ifRI/0lH2EdM3L3qJ1XqC
	PXd5W/sVZmpMsoZ6yeaYOUJUTQOjdak51Ofp1AKDeitOcC6BQECvJkNRLFTeRkP2tLP/S6EYZfR3t
	Meot4kZAU9+fHVHB0skg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Czj-00000002eOw-2u66;
	Tue, 07 Oct 2025 19:05:07 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Czg-00000002eNl-0de8
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 19:05:05 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-70ba7aa131fso71993426d6.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 12:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759863903; x=1760468703; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sfYcdfacXGl7fDg4hKzg8AXQsGo845Ky08ZG+mHHCa8=;
        b=GQGZLFugKqcENhH+rSKyvMT5wEyBIUtjQzmNnMJOiXr38XZhASy+eJF360HvmzQd32
         XxsZ+0Id/JhbDXBRpSTM/Ad58I70pua9OY5SA7SXRJECSA/Ik0NNuNgrPRnHFOvawNPb
         lfgqenX3+uS3G+n7OJSqZlZCmoTBmYVwIo2lsMaZNxWwd0ohQBgqnCOfsZmOlAJlnZ48
         bmycsp14krTH/4WlIn1awncwcuWQvY4ohqU2q8D61O87MgJ5GMSaf1+BMMTMEphGvMhh
         kIiPYdzmWxHj42KWliEXRP+kJuJR9w3GgPqEEZYKy3oEZoy+RTbhCXlVrQgDqp0VFT+y
         uivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759863903; x=1760468703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sfYcdfacXGl7fDg4hKzg8AXQsGo845Ky08ZG+mHHCa8=;
        b=C7MEVX3ZfxL9AjHdg0fIdNDGeWGtcAAkL61Hv4MqkRdpoxv2QsQ4OyV6dS2AgwG+lz
         2b6kshjDCLJklBCadRXF+oRbdNAA1nZATmexO0y5JkEaKSWs5K1TI62lB8p4qZmPsiX+
         DmKlWYW1oooE2tINccYVXC2NONf8YwbeanuJnqWGkg6NjwxHprknKmaGV6OpSzYUEdP7
         3XryyYpa9WKnxdYU/k7YXIN0ipF1vKq1apW8Q41Z1xwnq/aOmPjao8voDTuFz9cjQ1++
         fGA/6cCckx8lOFXVbxcBI0bQZkHLcFWSJYcioFYSMCzFuj+W+7IKThb2vv75Ot+F3wF1
         0BYA==
X-Forwarded-Encrypted: i=1; AJvYcCVrMQ6M4atw0NQBO1AKqPjHsErgMlyP4fTJdZpVZPQXVvbuqdYElzMWCH4AYNn1bV2V2axv5dqr2SM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsmxUxZggqXGeWJ5kGCBzU7fzLY0O8nSix2PA865+am7ZMWCto
	2wpajA5Xd0+gkqNWbUvBI+HRZhzZjjxL24OW+6iq2L/o0J+MBlwKR8oZu5fNpawUQB9R+QZbmwF
	A499BU7m97mJXJIQ7D42uzC7NK5N9SufoWHdXDWXL
X-Gm-Gg: ASbGncsVvaVYB7RwKu1RyZJJYbE9iAjw2hKX0Qg38SMQNz5ZWEHUOfu+MYnIP2eRYqg
	I1nFo58/5j8oYdL+ygdaM+0LlPw9DATf9KGvJhaijQRKOb4o+ceRC67wMAkcZDJUXTpQMv3fDj9
	W7ly/w2qGa6f7MJGg4ggi1L1bJXVhN/3cj3ZtJyA8fLRXuEy9lmI8L0xJLIFy7ywurBbPChggdX
	gJ2rMOJ02P67DFEhQL60n++/dldbzusBWhI4IvQpS91hphIZMEdZz2w37ft1GrAjYVz
X-Google-Smtp-Source: AGHT+IESFakXnW6Fg7wLYTYS/Mk7KjZzZUlAj2VCFe5Uoi1p/a2ZlnMdRcd1vHRmazVrtj5+BAM5Fv3D9UEy9BjEHP0=
X-Received: by 2002:ad4:5c62:0:b0:879:eb26:dafc with SMTP id
 6a1803df08f44-87b2efdbb1dmr8896926d6.54.1759863902406; Tue, 07 Oct 2025
 12:05:02 -0700 (PDT)
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <20251006232125.1833979-5-royluo@google.com>
 <c9ac3ada-d527-40b6-a45a-41572ae1cc9b@kernel.org>
In-Reply-To: <c9ac3ada-d527-40b6-a45a-41572ae1cc9b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 12:04:25 -0700
X-Gm-Features: AS18NWBx0Fa1NrpP4hD_qvt4PklaMmDusw8GBylg6_1boLk-co7d-M-x80eszUI
Message-ID: <CA+zupgyjFnNjVjv0hzOMyt50aPHZCK-p2wkj-oka7J4wtv+WUQ@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] dt-bindings: phy: google: Add Google SoC USB PHY
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
X-CRM114-CacheID: sfid-20251007_120504_208703_CAEA0928 
X-CRM114-Status: GOOD (  18.34  )
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

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCA1OjQ14oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA3LzEwLzIwMjUgMDg6MjEsIFJveSBMdW8gd3Jv
dGU6Cj4gPiBEb2N1bWVudCB0aGUgVVNCIFBIWSBiaW5kaW5ncyBmb3IgR29vZ2xlIFRlbnNvciBT
b0NzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPgo+
ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL3BoeS9nb29nbGUsdXNiLXBoeS55YW1sICAgICAgICAg
IHwgOTEgKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5MSBpbnNlcnRp
b25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvZ29vZ2xlLHVzYi1waHkueWFtbAo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2dsZSx1c2ItcGh5LnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2dvb2dsZSx1c2ItcGh5LnlhbWwK
PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjU1NTI2OTZl
ZGZmZgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9nb29nbGUsdXNiLXBoeS55YW1sCj4gPiBAQCAtMCwwICsxLDkxIEBACj4g
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1
c2UpCj4gPiArIyBDb3B5cmlnaHQgKEMpIDIwMjUsIEdvb2dsZSBMTEMKPiA+ICslWUFNTCAxLjIK
PiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9nb29n
bGUsdXNiLXBoeS55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBHb29nbGUgVVNCIFBIWQo+ID4g
Kwo+ID4gK21haW50YWluZXJzOgo+ID4gKyAgLSBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4K
PiA+ICsKPiA+ICtkZXNjcmlwdGlvbjoKPiA+ICsgIERlc2NyaWJlcyB0aGUgVVNCIFBIWSBibG9j
ayBvbiBHb29nbGUgVGVuc29yIFNvQ3MuCj4KPiBXaGljaCBvbmVzPyBZb3UgbmVlZCB0byBiZSBW
RVJZIHNwZWNpZmljIGhlcmUuCgpUaGlzIFVTQiBQSFkgaXMgc3BlY2lmaWMgdG8gVGVuc29yIEc1
IFNvQyAoYW5kIGZ1dHVyZSBnZW5lcmF0aW9ucykgYW5kIHRodXMKbmVjZXNzaXRhdGVzIG5ldyBk
cml2ZXJzIGFuZCBuZXcgYmluZGluZ3MuIFdpbGwgdXBkYXRlIHRoZSBkZXNjcmlwdGlvbiBhbmQK
Y29tbWl0IG1lc3NhZ2UgaW4gdGhlIG5leHQgcGF0Y2hzZXQuCgo+Cj4gPiArCj4gPiArcHJvcGVy
dGllczoKPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gZW51
bToKPiA+ICsgICAgICAgICAgLSBnb29nbGUsbGdhLXVzYi1waHkKPiA+ICsgICAgICAtIGNvbnN0
OiBnb29nbGUsdXNiLXBoeQo+Cj4gUGxlYXNlIHJlYWQgY2FyZWZ1bGx5ICBiaW5kaW5ncy4gWW91
IGNhbm5vdCBoYXZlIGdlbmVyaWMgY29tcGF0aWJsZS4KPiBQbHVzIHlvdSBhcmUgZHVwbGljYXRp
bmcgZXhpc3RpbmcgU2Ftc3VuZyBiaW5kaW5ncy4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKCldpbGwgcmVmcmFpbiBmcm9tIHVzaW5nIGdlbmVyaWMgY29tcGF0aWJsZSBpbiB0aGUgbmV4
dCBwYXRjaHNldC4KClRoYW5rcywKUm95IEx1bwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
