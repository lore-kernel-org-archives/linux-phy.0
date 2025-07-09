Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65ED7C83F09
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 11:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvenzFWIuUNUvFJGKVbDFx5NdKCtyypeYqIaur6N2e4=; b=yt4mSAEVG7WF05
	urzvV7x+bsAYtpAfAhPhL8z28jjfqegrnmwYDhAQkFzX4vAsNtq/+DNjcS0c77+8bD+C2EADx/GjL
	r8MGmxO8pHv+wAcAQCHpKQzJSVLFwKrE0mVE+4PDJJjolV8lgmfFO+O+5M86KjjKyHvSDNb5jVu08
	At1bf5JvhfZlo547nT8ahGzkhufbqfJO4W7VwqGLBdB9dcof/QYLtjWkJ3X3qe7DrQkzQrrLlOu3J
	V5gEH81LFvXCoRguxvlG+OE27Sxf4to9zvjrSdKEFbHyhiHqo939Gv+Wn/wFOlHXmxQXNgcMQcxMh
	TK4Ka0wf6DTm9zkWqAiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSoO-00000008TSn-0nqM;
	Wed, 09 Jul 2025 11:18:04 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRID-00000008ANq-0wpa
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:40:46 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a16e5so9872389a12.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752054044; x=1752658844; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYVZhzdcLS888rj/FaoDivOZnyY0T9daEjwNUmKwLFQ=;
        b=sIlAsXRogC4K0Xb4ubSC/gjyGGyMIXhUMID4g+Py9kOvc8Fqq/YtPMcYOAr4jRSQWM
         cXFc4xScUPYUjChPF35zDRZhzJGS3XK79jG8r8D5AoZKL+72soXzPmLzNpB5rXoczTvy
         foHgbmL6fHZ29/hBy7+7IwfK+CyLngw8uIzgopE6RGCcyZzhwXxEd6i6GLD5UKOa7KvD
         y74D4mX6mqy4c0S9t7NEuBBZMbn6neHhuy7NhcGNNWHHTuc1jjHNunNhdbH2rxD+8Gm5
         FZjdI3/dRTOkAmbuX+90a847/GKkGNHetU3a8wDh/uRcYc+iZEdtogWjniXmouxOAYF1
         RH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752054044; x=1752658844;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IYVZhzdcLS888rj/FaoDivOZnyY0T9daEjwNUmKwLFQ=;
        b=k4b1WufuJkOT1gGDXXjERPtKuPHLVHggOr7UydJJTsSdKb+Psql+agmegddZQLfXN4
         0KgHOozPvS35MV1ij6JZK8lnv4DYUL6PZenINWOyvdU0+ZtJGUXfhk0nDr28lmQ8dDc7
         NNd5XC0k/dk+Dw3Y5KC1dnU9Itfiu1n7gtGrh+YzugNLEd0C4AmYbiuylKamnCN9/56P
         gdlCxHSS4NXqzgri8F1zQdp5Gt4OjYSAgfX3uDefsH10mE2Kf40Ebxvvc0jDGixG+sET
         YLMFXbpXdAdj28gYra+sC7gd6lTynoOxGpyruFnmH/A4sy2gqMiv8MJFcHSbPLwDrsEd
         4A8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAXpIbwKTu9SeKebpNvY66XwTYOCabiK75dr8M69QhEQU17GDDe8ze/z157gXnhr1NOM+DNiQsdvY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzzm2aJ235Z4Tsn8taEiwPzxCL9JGs7pSC2l7zfzfeR34rHWfGb
	soxQjseqme2ORWpYSubCOAcp4mVXdtWaOvQcx1FClPNT9jf0o46TkRKna9rDkKpSVq8=
X-Gm-Gg: ASbGncuK9f5s6enyxBITdDOsHLKFZsXAPJoTv438FHBI96+R7bKWxNUQ/tgEBVtwRn9
	+UFrBAS7mw7WwVKPoelzojUKyh281EDsL7SyJixyzOiyJd2tL0GLc88xjslvYSh2t5KKYSXbAi7
	Hz9Kg856UN3ipi0C4L9XBwMUKLVQ82ms+LVXwVBPZ78p7Ety0+AT3/AwVm1k0bw0ySxmX+OcKM2
	xyU8ZUm25fj4ULvYEzMMkV1e+gvbEXpX/ruqHqITw+IWGN0ZuAmNq+Jat/pMDV2DyZ30j26Yj59
	/3yWNPbY2aIQ/YnV0aCSXj04UoWwuBUJFVa5RMkhzhZsdC78IwnCNC5fyPRA1IkymIKZghx2wFT
	aLsYzCdYe2zWJBNF9hCgjoYw2lQ2oGuA=
X-Google-Smtp-Source: AGHT+IFcyIW8fjvyL2XXssYm6oJtrTRwvz8J6yTAl1SegjjQ9SBTzzBbPsgLtLGnPcvW3tndrf/jXw==
X-Received: by 2002:a17:907:db14:b0:ae3:f524:b51 with SMTP id a640c23a62f3a-ae6cf549811mr183000466b.10.1752054043586;
        Wed, 09 Jul 2025 02:40:43 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b08568sm1069884166b.139.2025.07.09.02.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 02:40:43 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 09 Jul 2025 11:40:42 +0200
Message-Id: <DB7FBNQ0TYFZ.3GGPN8XXJXGRW@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
 <20250708-stoic-slim-bison-ac55ee@krzk-bin>
 <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
In-Reply-To: <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_024045_271097_67AFFA9B 
X-CRM114-Status: GOOD (  20.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On Tue Jul 8, 2025 at 10:31 AM CEST, Luca Weiss wrote:
> On Tue Jul 8, 2025 at 10:21 AM CEST, Krzysztof Kozlowski wrote:
>> On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
>>> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
>>> > Document the FS Differential TX Output Resistance Tuning value found on
>>> > the eUSB2 repeater on Qualcomm PMICs.
>>> > 
>>> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> > ---
>>> >  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
>>> >  1 file changed, 6 insertions(+)
>>> > 
>>> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> > index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
>>> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> > @@ -52,6 +52,12 @@ properties:
>>> >      minimum: 0
>>> >      maximum: 7
>>> >  
>>> > +  qcom,tune-res-fsdif:
>>> > +    $ref: /schemas/types.yaml#/definitions/uint8
>>> > +    description: FS Differential TX Output Resistance Tuning
>>> 
>>> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
>>> actual units here. Neither commit msg nor this description helps me to
>>> understand that.
>>
>> I checked and the values are in Ohms.
>
> Yes it's Ohms but not 0x00 = 0 ohms, and it's also an offset in ohms
> from the nominal value according to the Hardware Register Description I
> have, e.g. 0x7 = -12.1ohm from the default
>
> I can try and create bindings using these Ohm offset values, I didn't
> worry about it too much since the other tuning values in these bindings
> are also just register values, presumably from before Konrad had access
> to the docs.

I've taken some more looks, and checked how similar tuning is handled in
qcom,usb-snps-femto-v2.yaml and phy-qcom-snps-femto-v2.c, and changing up
the concept of tuning in the eUSB2-repeater bindings+driver is not a
trivial task.

Since this is adding just one more property in-line with the already
supported properties in the bindings+driver, can we get this in as-is,
and deprecate all 4 qcom,tune-* properties later with a replacement that
describes the values better?

We have enough people at Qualcomm by now that should be able to do that,
and have the required resources to answer any potential questions.

Regards
Luca

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
