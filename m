Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425FAD149E9
	for <linux-phy@archiver.kernel.org>; Sat, 26 Oct 2024 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hewdBTQ595eLqxZNN/HVEuL5lBou1yCl6sZxrzOXprk=; b=RT94Aax/1bRUy7
	tgPCdP+jYHi8Nw/60l27OtguK6vlxoeeHMV2rBcvGR8tpsmo/iFvhxVzNwa3oq3ge+jr6oG9HlmE7
	qwz55QRB23cZxC/G85Ap+0z4u80dWqsxYtNnVIRSW/qJzglvofZ+JsxydbipF80Ue0uj9FZ5L/4j7
	+PmzyD+yGIWV666eTtzx12W8BAcdyUo5v28HBCTUXpi3iDVDTjQs3QKYeHT30Ho1EF6JPAWZekAO5
	7HHeBJ1dsESQqcPEx9/7ro446fNPHSYkFvI/my/tAOsV7Opq2eupFEdoUxIEiSMJkSh0WcJKcQaz4
	4kSNIMZZs//btwfzx+WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4VeI-00000005iBF-2JCb;
	Sat, 26 Oct 2024 01:31:26 +0000
Received: from mail-lf1-f52.google.com ([209.85.167.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Vci-00000005i41-0zGl;
	Sat, 26 Oct 2024 01:29:49 +0000
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53a0c160b94so3088692e87.2;
        Fri, 25 Oct 2024 18:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729906181; x=1730510981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=00KlULZXQFFyz7svzxYaJpGGf2+6ICGFX0E8y5C8Vlc=;
        b=q2Q9S3iwCWSBxwEs2/uCHGwjRduGoTn6i6ad/OxHRimKUAc8SbcRgD4lU7wxjeKPXu
         wrIOFZJXOh8rAxZA2JTn3C7Cr//Gq0MW15rnb+g2VgLiigyS7LJO0xtoiPZGFZMg9boa
         zsa56tQAYK584RBbNtyah8vAcQUSVyFL+9aCULqIm8Ozz2Pe4qwzn5TalDwcM/AX1+O+
         MDGin3R2NownOLu/ebzt2/0sQ732cVYArqTlYN7IuGyhIAYMdSYUcMcA6FoWUtGwS3J4
         ICPA//937EG6hIHV6ZEKwQjm8r3wJLMsGPbnmsDtvSsoJIZPv0in77GNs6x85Pm49aBF
         AfoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWMTh+IS5bCSqMCy8xGfTdk6ZUJmSU1kFSvih0IiqFQQu6DJiHqEiMmVKdAjD8hr20XJxefUAlT6+C@lists.infradead.org, AJvYcCXdjnUZml5L7Vmbb93omug6mejNq7dDjDzseBKs4aspEyy5o5k0J+PfA6XmEdGL5J+eTE1/q6iVrnUJ8yFVH5lp@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8YGzfYhfNclfe2tYKXthEocuMj7fx8ZXiOzgD/xdxHuomB+za
	hV2mSe8NDpJ4Z7Y5B3CyAGU5z04md+os/ANEZqv9Pg8VF144jnnr3z8qN5MD9Zs=
X-Google-Smtp-Source: AGHT+IHxKXSpmRfREwqPD0+ekDkpsnYvJYs+q107coHp8DyiNHqGmYq1b8dXYYjxMULa/xxiqArZew==
X-Received: by 2002:ac2:4c54:0:b0:539:93e8:7eca with SMTP id 2adb3069b0e04-53b348ebf9emr418009e87.35.1729906180949;
        Fri, 25 Oct 2024 18:29:40 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e128339sm366110e87.96.2024.10.25.18.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 18:29:39 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb559b0b00so23160041fa.0;
        Fri, 25 Oct 2024 18:29:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX8ZnXp0h4pLrFqQeG1v+gDhuR3mF64DCaOA9TpYANhRBCOxS5PsUz1TkD39pbdFm6bunP6Y7zsTZh1Ek1kbwTD@lists.infradead.org, AJvYcCXg01c3WfN0KwBVuLCFAiTJ2W2HuOMDszkmq6Y4RaoU8yEIUp/B+9xvR7sMPbTK1YTZTvvmlVWmSWMT@lists.infradead.org
X-Received: by 2002:a05:651c:19a1:b0:2fb:5138:a615 with SMTP id
 38308e7fff4ca-2fcbddfcba6mr5324521fa.0.1729906179135; Fri, 25 Oct 2024
 18:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest> <20241024170540.2721307-8-masterr3c0rd@epochal.quest>
In-Reply-To: <20241024170540.2721307-8-masterr3c0rd@epochal.quest>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 26 Oct 2024 09:29:27 +0800
X-Gmail-Original-Message-ID: <CAGb2v64tQ_9C3mwJqt-tm-6SV=SHAk75sO5Ho7gT=p=iyRfLcw@mail.gmail.com>
Message-ID: <CAGb2v64tQ_9C3mwJqt-tm-6SV=SHAk75sO5Ho7gT=p=iyRfLcw@mail.gmail.com>
Subject: Re: [PATCH 07/13] arm64: dts: allwinner: a100: add usb related nodes
To: Cody Eksal <masterr3c0rd@epochal.quest>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Andre Przywara <andre.przywara@arm.com>, Parthiban <parthiban@linumiz.com>, 
	Yangtao Li <frank@allwinnertech.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Vinod Koul <vkoul@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Thierry Reding <treding@nvidia.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Maxime Ripard <mripard@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Stephen Boyd <sboyd@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_182948_303102_81775793 
X-CRM114-Status: GOOD (  14.88  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMjUsIDIwMjQgYXQgMTowOeKAr0FNIENvZHkgRWtzYWwgPG1hc3RlcnIzYzBy
ZEBlcG9jaGFsLnF1ZXN0PiB3cm90ZToKPgo+IEZyb206IFlhbmd0YW8gTGkgPGZyYW5rQGFsbHdp
bm5lcnRlY2guY29tPgo+Cj4gQWxsd2lubmVyIEE2NCBoYXZlIHR3byBIQ0kgVVNCIGNvbnRyb2xs
ZXJzLCBhIE9URyBjb250cm9sbGVyIGFuZCBhIFVTQgoKICAgICAgICAgICAgXl5eIFBsZWFzZSB1
cGRhdGUgdGhpcy4KCj4gUEhZIGRldmljZSwgbGV0J3MgYWRkIG5vZGVzIG9uIGR0cy4KPgo+IFNp
Z25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPGZyYW5rQGFsbHdpbm5lcnRlY2guY29tPgo+IFttYXN0
ZXJyM2MwcmRAZXBvY2hhbC5xdWVzdDogZmFsbGJhY2sgdG8gYTMzLW11c2IgaW5zdGVhZCBvZiBo
My1tdXNiXQo+IFNpZ25lZC1vZmYtYnk6IENvZHkgRWtzYWwgPG1hc3RlcnIzYzByZEBlcG9jaGFs
LnF1ZXN0Pgo+IC0tLQo+ICAuLi4vYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hMTAw
LmR0c2kgfCA5MSArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA5MSBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWExMDAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1h
MTAwLmR0c2kKPiBpbmRleCBhZGIxMWIyNjA0NWYuLjBhZWUxYjU3ODY2MSAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTEwMC5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWExMDAuZHRzaQo+IEBAIC0zMDIs
NiArMzAyLDk3IEBAIHRoczogdGhlcm1hbC1zZW5zb3JANTA3MDQwMCB7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Owo+ICAgICAgICAgICAgICAg
ICB9Owo+Cj4gKyAgICAgICAgICAgICAgIHVzYnBoeTogcGh5QDUxMDA0MDAgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICNwaHktY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWExMDAtdXNiLXBoeSI7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUxMDA0MDAgMHgxND4sCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPDB4MDUxMDE4MDAgMHg0PiwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8MHgwNTIwMDgwMCAweDQ+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJl
Zy1uYW1lcyA9ICJwaHlfY3RybCIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInBtdTAiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJwbXUxIjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNjdSBDTEtfVVNCX1BIWTA+LAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2N1IENMS19VU0JfUEhZMT47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAidXNiMF9waHkiLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInVzYjFfcGh5IjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICByZXNldHMgPSA8JmNjdSBSU1RfVVNCX1BIWTA+LAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwmY2N1IFJTVF9VU0JfUEhZMT47Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAidXNiMF9yZXNldCIsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAidXNiMV9yZXNldCI7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiArICAgICAgICAgICAgICAgfTsKPiArCj4gKyAg
ICAgICAgICAgICAgIGVoY2kwOiB1c2JANTEwMTAwMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWExMDAtZWhjaSIsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJnZW5lcmljLWVoY2kiOwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwweDA1MTAxMDAwIDB4MTAwPjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjY3UgQ0xLX0JVU19PSENJMD4sCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3UgQ0xLX0JVU19FSENJMD4sCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3UgQ0xLX1VTQl9PSENJMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjY3UgUlNUX0JVU19PSENJMD4sCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3UgUlNUX0JVU19FSENJMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcGh5cyA9IDwmdXNicGh5IDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJ1c2IiOwo+ICsgICAgICAgICAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAg
ICAgICAgICBvaGNpMDogdXNiQDUxMDE0MDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hMTAwLW9oY2kiLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiZ2VuZXJpYy1vaGNpIjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICByZWcgPSA8MHgwNTEwMTQwMCAweDEwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDMxIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19CVVNfT0hDSTA+LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2N1IENMS19VU0JfT0hDSTA+Owo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfT0hDSTA+Owo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHBoeXMgPSA8JnVzYnBoeSAwPjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBwaHktbmFtZXMgPSAidXNiIjsKPiArICAgICAgICAgICAgICAgICAgICAgICBzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAg
ICAgdXNiX290ZzogdXNiQDUxMDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hMTAwLW11c2IiLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiYWxsd2lubmVyLHN1bjhpLWEzMy1tdXNiIjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MHgwNTEwMDAwMCAweDA0MDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNsb2NrcyA9IDwmY2N1IENMS19CVVNfT1RHPjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICByZXNldHMgPSA8JmNjdSBSU1RfQlVTX09URz47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDMyIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJtYyI7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcGh5cyA9IDwmdXNicGh5IDA+Owo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHBoeS1uYW1lcyA9ICJ1c2IiOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGV4dGNv
biA9IDwmdXNicGh5IDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGRyX21vZGUgPSAib3Rn
IjsKPiArICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsgICAg
ICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgZWhjaTE6IHVzYkA1MjAwMDAwIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGkt
YTEwMC1laGNpIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImdlbmVy
aWMtZWhjaSI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDUyMDAwMDAgMHgx
MDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAzMyBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8
JmNjdSBDTEtfQlVTX09IQ0kxPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNjdSBDTEtfQlVTX0VIQ0kxPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNjdSBDTEtfVVNCX09IQ0kxPjsKPiArICAgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8
JmNjdSBSU1RfQlVTX09IQ0kxPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNjdSBSU1RfQlVTX0VIQ0kxPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBwaHlzID0gPCZ1
c2JwaHkgMT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGh5LW5hbWVzID0gInVzYiI7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiArICAgICAgICAg
ICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAgIG9oY2kxOiB1c2JANTIwMDQwMCB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWExMDAt
b2hjaSIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJnZW5lcmljLW9o
Y2kiOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA1MjAwNDAwIDB4MTAwPjsK
PiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzQgSVJRX1RZ
UEVfTEVWRUxfSElHSD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjY3Ug
Q0xLX0JVU19PSENJMT4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3Ug
Q0xLX1VTQl9PSENJMT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjY3Ug
UlNUX0JVU19PSENJMT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGh5cyA9IDwmdXNicGh5
IDE+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJ1c2IiOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKyAgICAgICAgICAgICAg
IH07Cj4gKwo+ICAgICAgICAgICAgICAgICByX2NjdTogY2xvY2tANzAxMDAwMCB7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWExMDAtci1j
Y3UiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDA3MDEwMDAwIDB4MzAwPjsK
PiAtLQo+IDIuNDcuMAo+Cj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
