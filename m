Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2385BD3ABE8
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 02:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfx+8zpp2oADLFjjOmVI6pDPwPQvh2iuKLy7tWh97xs=; b=4diM24SnyDbvrZ
	Q7o64N5zJPxec+RXAR2QoBlwgrKmH3r9xoqB/h9DMK3K9xpwQ2O5muLnDk+xDzvOPSP4HmfA3QfXr
	xB2bJq7BnEc8KYnDCSihJwdUFeQVQhICw1SnDFU8KskjK/hNsc02ZOFGd9hNcufuuGENShkRyVFl5
	LRaLuPUsTvsJ0liVDuyan5A/bEL0jDcKiNLvVutoLkaynG7nCmqmQuoObDElBTMHzMMKqo0ro8aiC
	iR8Ee2W7ls5lZHKxL2WANMMbBR3eEKokTiOjZjVpfLMeYYwL5ZrllyU7pp3renaSV+Izh4haiNJ4M
	AWsVuIUWqZ9YwCFT+SSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRiIK-0000000AVLJ-1UYd;
	Sat, 06 Dec 2025 02:45:12 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRiIH-0000000AVKk-3OrV
	for linux-phy@lists.infradead.org;
	Sat, 06 Dec 2025 02:45:11 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-29558061c68so33431365ad.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 18:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764989109; x=1765593909; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUQybTF2z+MPRFgkFkdOwliSQw/1N7rvnbrbXmVsRSE=;
        b=muaxVTNWh2PvvcaBHYwm9iX944bUm9mf/j8dGLyBMuEufsDRIVurYRVigDBOHS0amo
         45HMJDMuU+tk8GLTS3lXxX6YscpceWoEh9Fs8ocOHCdThJWrqHVTiFmWcXobPTaXeRdm
         AOM57vjOzXz2jjC9YghjucrBLiPy4TPyt7Bf6pEMFK1ONUclrjRGLVdQh/PjlC1h9pr8
         +4V8EXz3frUzkgtVB3dhnCnPRWleVyaMHMrzANKpySv0HyeDkGUU3odwsJEhYzuZEm1E
         yhX9mZ3VIpWNvn5sA/ICk/tjF3XdapsJm7Fql7DkD7aAOCMOX5u8yHygsx+doTHm6FrO
         ysfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764989109; x=1765593909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RUQybTF2z+MPRFgkFkdOwliSQw/1N7rvnbrbXmVsRSE=;
        b=TbHRydqYQ/OO579DdgUKN6F2M1xzCRXN/gbhvh26D3yN24IMrIZAUn1/dg+BF4FJG4
         yvEmivlhGw2UGR+D3jp2DJcUoPhNAeFLNgf1MdwU5fcvBP44Gt+UMu3WVMpNY2wVYY1I
         v5nFO0qtt7iZ8xF2gwbwpLUaP/X5Ov90P2MJm+peovbzLWgqidDZe1zTDv7qfSiClMxN
         /pKz1qvVQdJaHFfYoYEZlsMXEOD0pp0sefVV/zDXheNpVQiutaZOBpG6Iz+vTaLmTC4s
         SOK3Rcue0XH3KvWSUcvWQPjdSSc3JzU+/3rFjnpOK434fggkr10cPb63UD/rAaWyKyeh
         Gfjw==
X-Forwarded-Encrypted: i=1; AJvYcCVUkvI/w33L2//tzM5M9mmyLCl6sMFrshzX2UtJhX2OlPj8MAZ/2gnH7JdylszcFzDGj4G8H2mPt2U=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCzKh3yko7M84KKdKRgQ0X/wtKEMaXdc7ywULvrzesRiAorjHC
	rs8xTPKIiFlNi0MuPacjI8as3CTlfENxTXmNL48CTfPenSM3U3ZqbLlGJoeNZtbj8nUQEnNp47v
	3ZwtjawOCCNvqduWbHpAcsXFjPuhTAy2Hc+u//UgG
X-Gm-Gg: ASbGncvptA1TKgjZMtLtvK7IZy+9ccoOhS6IXOviFDZc5RAOtYblMDg0cvms85BoAFH
	Ks8Yr4F/QirR24UGfZUCoQ0fQKf1ZDpmFLZLZqoDI0uwIGgC5ymFYZ7RSPaPkMCHSFIbyXEKotC
	WzIupQ4Grk0qGV6r4c9g6an8G5CJuTIhL8yjbaN7wqVIDgsMMxW671f1HIfjFt3hKRTd37pgsLx
	6brkf0b8oqWIh37hkxpTjdg4OZ+eIKRXAXB93YV9nCIFEe+YwmWzdNZmaxf5qNGOeB4ItVvuPEO
	+AtwaelQBf+quCYw1Pyl0Ap+ai8=
X-Google-Smtp-Source: AGHT+IFU1KYTSeq6FW6nQIMrzlj0NO5UvinjpD1M87pOOtWRqM4PAgvMxx7JqBY6yKTUwKBkDJhMObt3hsS9FZVHukg=
X-Received: by 2002:a05:7022:f415:b0:11b:9386:a3cd with SMTP id
 a92af1059eb24-11e032ed8fcmr1007941c88.46.1764989108309; Fri, 05 Dec 2025
 18:45:08 -0800 (PST)
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org> <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
 <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org> <CA+zupgyxQisYBnLj9_3DtcN3R1Ugfv+-p-wimFp-hnqkhrrgyA@mail.gmail.com>
 <988b3fcb-44db-45ca-823b-5ab13206bd04@kernel.org> <CA+zupgzi55svWK4gHsFtdQSD9jFKbxHx_0GE2R1R5DafmYyGNA@mail.gmail.com>
In-Reply-To: <CA+zupgzi55svWK4gHsFtdQSD9jFKbxHx_0GE2R1R5DafmYyGNA@mail.gmail.com>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 18:44:31 -0800
X-Gm-Features: AWmQ_bmtS6VqNvSPWWqMA48yCBiebLPdL-OG-iJ2CapE017dl4OEKL60P358vSw
Message-ID: <CA+zupgy5TKWiVGwt5dFye7ztk7O_n7JQm4j7H8BCC2gzjfkgqw@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_184509_882165_8A65A28D 
X-CRM114-Status: GOOD (  15.33  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCAxMjoxOOKAr1BNIFJveSBMdW8gPHJveWx1b0Bnb29nbGUu
Y29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRGVjIDUsIDIwMjUgYXQgMTE6MjbigK9BTSBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEkgYXNzdW1lIHlv
dSB1bmRlcnN0b29kIHdoYXQgc2hvdWxkIGJlIGRvbmUgaW5zdGVhZCBpbiB0aGlzIHBhdGNoc2V0
Lgo+ID4gQW55d2F5LCBteSBwcmV2aW91cyB0YWcgYXBwbGllcyBpZiB0aGVyZSB3ZXJlIG5vIGJp
bmRpbmdzIGNoYW5nZXMsIGJ1dCBJCj4gPiB3YXN0ZWQgdG9vIG11Y2ggdGltZSBoZXJlIHRvIGNh
cmUgYW55bW9yZS4gVGhlIGV4cGVjdGF0aW9uIGZyb20gYmlnCj4gPiBjb21wYW5pZXMgaXMgdGhl
eSBkbyBub3QgYXNrIGNvbW11bml0eSB0byBjb2FjaCBvbiBiYXNpYyBzdWJtaXNzaW9uCj4gPiBw
cm9jZXNzLiBJdCdzIHF1aXRlIHVuZmFpciB0byBteSBzcGFyZSwgcGVyc29uYWwgdGltZSBhZnRl
ciB3b3JrLAo+ID4gY29uc2lkZXJpbmcgaG93IG11Y2ggYmlnIGNvbXBhbnkgaXMgbWFraW5nLiBC
aWcgY29tcGFueSBzaG91bGQgaW52ZXN0IGluCj4gPiB0aGlzIGNvYWNoaW5nLgo+ID4KPiA+Cj4g
PiBCZXN0IHJlZ2FyZHMsCj4gPiBLcnp5c3p0b2YKPgo+IFRoYW5rIHlvdSBmb3IgdGhlIGZlZWRi
YWNrLiBJIHVuZGVyc3RhbmQgeW91ciBmcnVzdHJhdGlvbiwgYW5kIEkKPiBhcG9sb2dpemUgZm9y
IHRha2luZyB1cCB5b3VyIHRpbWUuIEkgd2lsbCBiZSBzdXJlIHRvIGJlIG1vcmUgdGhvcm91Z2gK
PiBpbiB0aGUgZnV0dXJlLgo+Cj4gVGhhbmtzLAo+IFJveSBMdW8KClRvIGNvbmZpcm0gbXkgdGFr
ZWF3YXk6IGZvciB0aGlzIHBhdGNoLCB0aGUgY2hhbmdlcyBJIGludHJvZHVjZWQKd2VyZSBub3Qg
c2lnbmlmaWNhbnQgZW5vdWdoIHRvIHJlbW92ZSB5b3VyICdSZXZpZXdlZC1ieScgdGFnLAphbmQg
SSBzaG91bGQgaGF2ZSBrZXB0IGl0LiBNb3ZpbmcgZm9yd2FyZCwgSSB3aWxsIGNhbGlicmF0ZSBt
eQpjcml0ZXJpYSBmb3Igd2hhdCBjaGFuZ2VzIGFyZSBjb25zaWRlcmVkICdzaWduaWZpY2FudCcg
KGVzc2VudGlhbGx5CmFueSBjaGFuZ2VzIHRvIGJpbmRpbmcpLCBhbmQgbW9yZSBpbXBvcnRhbnRs
eSwgYWx3YXlzIGRvY3VtZW50CnRoZSByYXRpb25hbGUgZm9yIGRyb3BwaW5nIG9yIGtlZXBpbmcg
dGFncyBpbiB0aGUgY2hhbmdlbG9nIHdoZW4KSSBtYWtlIG5vbi10cml2aWFsIGNoYW5nZXMgdG8g
cGF0Y2hlcy4KCkkgcGxhbiB0byBzZW5kIGEgbmV3IHZlcnNpb24gZm9yIHRoaXMgcGF0Y2hzZXQg
YW5kIHRoZSBjb250cm9sbGVyCnBhdGNoc2V0IFsxXSBuZXh0IHdlZWsgd2l0aCB5b3VyIHRhZyBy
ZS1hZGRlZCwgcGxlYXNlIGxldCBtZQprbm93IGlmIHlvdSBkaXNhZ3JlZS4KClsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC11c2IvMjAyNTEyMDUtY29udHJvbGxlci12OS0wLTlmMTU4
YjE4Zjk3OUBnb29nbGUuY29tCgpUaGFua3MsClJveSBMdW8KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
