Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C71ECAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 09:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHQBhJ4IWP0ydkTXngMDdMr3jkEQuqeIH+yF1N9Serk=; b=JJzP5t07nNwhm8
	uCAGmyq1btg/gZWMTOTNTQHLwr+eeLpoT4rsxTEA9iGGsF8KC5yGMI82lS9Ru9UoyZ/yG1mSBBboq
	nwpbRbj9h2+Ihlex9c5UmYHRs10Q7MaoVQielXV11Yew2nKWrYACqW7mhICALQB4K13xImNM7htir
	adBEEOtiTLXVG98/E1iAug538a0JdLSGmx6SFtbkK2w4p5V0kILeIXMyKYRtDiPW5H3SHHJVW99Fw
	Pvoi6ITyXbY09a4WxOPivT7m6DTRwXmi8yEV5J4HvVOmBHMbCNAgQaB1nJvEWlzsTUWv9iCISYSq3
	MdXWW9tAIw4nYYyiShMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Q2O-00000003WyJ-0ZVr;
	Wed, 08 Oct 2025 09:00:44 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Q2M-00000003Wxx-2FnB
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 09:00:43 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b3e44f22f15so1059419966b.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 02:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759914041; x=1760518841; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Pz2l/rMRcLdX9YAbOqnYcT/TpRjS8ffGQdCMHByptm8=;
        b=pM6wT9DmE7luKq2f5arcBo9uVVgzNaD3WrEtlpCnjUYPdYQwh6uKAXY43lsJdUkwj9
         kNJLlXzvau4ajQVZucaRljcgtzvC7OVgAria2H4OOQQgs5tylgE49RiZNEY2ne9TBwAu
         pZLMvv7+kQzM4gmafM1ukfcoNnQM9ALzUHRk1VaF/89RGBdyS+EztAX9otlZNDhFV+4E
         nUmYv1NEUq539xGenL2LxTRC2HvlbEg/4HdcfQhNODXAxkm3jmovofV+PBYqkArzXp3K
         OOD3BboMQQt1U8izEB2tTcTIc+j74VCdtTo3BueNlzb4xnD2MjV4D/8zIsOkLz61YxWw
         k9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759914041; x=1760518841;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pz2l/rMRcLdX9YAbOqnYcT/TpRjS8ffGQdCMHByptm8=;
        b=Hc3t+mNW0cz1Pus4O27+vfOldi4QIW4p4bnbjX0fgQ764wxpnDfzg1SjhlE09O4ZNU
         ykX2/ae6CZVkk/RK5VeSEd7lW0op4oue3UzYn9X2TOWq9Mu8L5JHetlKeebLcOsSplFP
         q41ckUrpk9AOBbw4X4gVQGBJ/Mo8+qop81lSvqPBhCrTUJPAa+76UAvN8mWAtT3vflKs
         LLzHZvOIJZLfB/rUo32ryI7uLl7cDfMU2Go9g2SDk902DHkenEQqfBhl1OUAhdaC2Pn/
         ybfi+SiwlLj3cZp+7wInE9BaPdZom7sDi4iDU5be3wCleBc4A8iQqwaUXIOqBgxPyOdV
         /7qw==
X-Forwarded-Encrypted: i=1; AJvYcCVvp0t66Hamo2Q1bL6CIR6ntSjzG5KmU08O2IzXcJRq8jEa5z7Varkfr5SlD+lm3Kx42QNV19Ro73I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxk6hvhJ0YHqYBYythSrVr7MdfOMohJNX+5/rzCyOeofKPczwGj
	YtKWQ+M4xtG8r4dVO0TTL4YJKNrTVta+fp3Oxr2DSJRi6buKXk3RnlTXoK8IfPq2o+8=
X-Gm-Gg: ASbGncsA0nkf5BfQpWsmylqYzxKiYyBVnf+PylKWDK3i75qm53ysNvgrPhL8EHwuipq
	fb1Nd/HyxJ0dShlhTbszOsIIqMVspGhhQ/cmd+vRu+GL3kY/FAYGrmL/JOrTgI5RUjj5CgtPM9u
	T6HUYc82sqcYjElDMSbEwODxS6ZEXnjmeXYZreqkahP1LsXBuPAAaMG76jMnTZRhrXlK9ZQZZDg
	YQVmXuX0Mg8kC5RkktnAetiAKm4wWLFgBOqkz8A8Gkb9BC5q8jAWy9VJx1l7q/RZPOl5RzhBgOq
	ezvX0OFrM35SuDgect/rJ2X9X0aVl1e3lJl13uc347fQiACp0gljtvGmVGvVUPg/XEgm+5hkBnh
	ReOubwD6xt1oz9xN1+ZCBUzwPSmSgVZaf0OBkEM7Q0Ld/6rBBBfHfdw==
X-Google-Smtp-Source: AGHT+IEiFXBypqPmbDwaI9Pl80eN8BhmwecP4sAYuvQIiYkyo/y3ydXKvIjc3+w6d6/oIwQoYDijOA==
X-Received: by 2002:a17:906:4795:b0:b41:1657:2b1d with SMTP id a640c23a62f3a-b50abfcc8dbmr297326866b.50.1759914040532;
        Wed, 08 Oct 2025 02:00:40 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7e8cdsm1604299766b.38.2025.10.08.02.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 02:00:40 -0700 (PDT)
Message-ID: <15e8c6620fd7b49a64df9aad75afccd32995cf29.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, 'Vinod Koul' <vkoul@kernel.org>, 
 'Kishon Vijay Abraham I'	 <kishon@kernel.org>, 'Rob Herring'
 <robh@kernel.org>, 'Krzysztof Kozlowski'	 <krzk+dt@kernel.org>, 'Conor
 Dooley' <conor+dt@kernel.org>
Cc: 'Peter Griffin' <peter.griffin@linaro.org>, 'Tudor Ambarus'
	 <tudor.ambarus@linaro.org>, 'Will McVicker' <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 08 Oct 2025 10:00:38 +0100
In-Reply-To: <e91f6754bf13f1d42402fb708dfc2b3d7bd59a6b.camel@linaro.org>
References: <CGME20251007160147epcas5p305e74b7b3449b934687396e9c8aa3ff4@epcas5p3.samsung.com>
			<20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
		 <002001dc381c$85e17fa0$91a47ee0$@samsung.com>
	 <e91f6754bf13f1d42402fb708dfc2b3d7bd59a6b.camel@linaro.org>
User-Agent: Evolution 3.56.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_020042_616727_84506592 
X-CRM114-Status: GOOD (  14.02  )
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

QWxpbSwKCk9uIFdlZCwgMjAyNS0xMC0wOCBhdCAwOTowNyArMDEwMCwgQW5kcsOpIERyYXN6aWsg
d3JvdGU6Cj4gSGkgQWxpbSwKPiAKPiBPbiBXZWQsIDIwMjUtMTAtMDggYXQgMTE6NTYgKzA1MzAs
IEFsaW0gQWtodGFyIHdyb3RlOgo+ID4gCj4gPiAKPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPiA+ID4gRnJvbTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KPiA+ID4gU2VudDogVHVlc2RheSwgT2N0b2JlciA3LCAyMDI1IDk6MzIgUE0KPiA+ID4gVG86
IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBLaXNob24gVmlqYXkgQWJyYWhhbSBJCj4g
PiA+IDxraXNob25Aa2VybmVsLm9yZz47IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+OyBL
cnp5c3p0b2YgS296bG93c2tpCj4gPiA+IDxrcnprK2R0QGtlcm5lbC5vcmc+OyBDb25vciBEb29s
ZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+OyBBbGltIEFraHRhcgo+ID4gPiA8YWxpbS5ha2h0YXJA
c2Ftc3VuZy5jb20+Cj4gPiA+IENjOiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFy
by5vcmc+OyBUdWRvciBBbWJhcnVzCj4gPiA+IDx0dWRvci5hbWJhcnVzQGxpbmFyby5vcmc+OyBX
aWxsIE1jVmlja2VyIDx3aWxsbWN2aWNrZXJAZ29vZ2xlLmNvbT47Cj4gPiA+IGtlcm5lbC10ZWFt
QGFuZHJvaWQuY29tOyBsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+ID4gZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEFuZHLD
qSBEcmFzemlrCj4gPiA+IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gPiA+IFN1YmplY3Q6
IFtQQVRDSF0gZHQtYmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1ZnMtcGh5OiBhZGQgcG93ZXItZG9t
YWlucwo+ID4gPiAKPiA+ID4gVGhlIFVGUyBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21h
aW4sIHNvIHdlIG5lZWQgdG8gYWxsb3cgdGhlCj4gPiA+IHJlbGV2YW50IHByb3BlcnR5ICdwb3dl
ci1kb21haW5zJy4KPiA+ID4gCj4gPiBDYW4geW91IGNyb3NzIGNoZWNrIGlmIHRoZXJlIGlzIGEg
c2VwYXJhdGUgcG93ZXIgZG9tYWluIGNvbnRyb2wgZm9yIHVmcy1waHk/IAo+IAo+IEknbSBzdGls
bCBoYXZpbmcgc29tZSBvdGhlciB0cm91YmxlcyB3aXRoIHRoZSBoc2kyIChVRlMpIHBvd2VyIGRv
bWFpbiBvbiBnczEwMSwKPiBidXQgSSBjYW4gY29uZmlybSB0aGUgdXNiLXBoeSBpcyBwYXJ0IG9m
IHRoZSBoc2kwIChVU0IpIHBvd2VyIGRvbWFpbi4gU28gZm9yIHRoZQo+IHVmcy1waHkgSSBwcmVz
dW1lIGl0J3Mgc2ltaWxhcjogaXQgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIGhzaTIgcG93ZXIgZG9t
YWluLiBUaGVyZQo+IGNlcnRhaW5seSBpcyBubyBzZXBhcmF0ZSBkb21haW4gZm9yIHRoZSB1ZnMt
cGh5IGl0c2VsZi4KCkFmdGVyIGRvdWJsZSBjaGVja2luZyB0aGUgSFNJMiBIREQsIHRoZSB1ZnMt
cGh5IGlzIGluZGVlZCBwYXJ0IG9mIFBEX0hTSTIuCgoKQ2hlZXJzLApBbmRyZScKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
