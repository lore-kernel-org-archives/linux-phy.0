Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F15FE77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VugotS20M+jRfHmakgF9cuBe+j99kM2ZlUJygH6H75U=; b=kWJ8/DyBygsY2S
	3kasxhwLX1eNiwQatStKF3aIfkdqLBXv6JqI0MdxAl06EA65bzPWXAyWgjpBLXm8UpWgBqJClPlPW
	YYPwEds9z5j79ig/0g5YJ4jPBK+YxgIS3klRTjYXoFoZebtNYrjvFXC0cnLrb2OIu6KpziPsNr7QR
	Xf9/kb4s63izF8ys86FqqKgBeLQPOry0HxsvhpXWJ1YTTuQ5KmUpunCq53JWCP3U4cS9deM7AFi3/
	zoa74gLrqOozHsHtqPUfaAJcYxpq7kJLJIxlSkuKRusy+QKaOI+jRbHX0ZCl2uptKlyMSfXw5xcOS
	eG5CpyG8fqb0SbIM6h6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbIR-00000002BTP-3zTe;
	Fri, 06 Dec 2024 16:35:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEO-00000002AD2-2MUt
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:07 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a9f1d76dab1so68311166b.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502663; x=1734107463; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=f1/Gb1LVDJ2gygESXZ1YGtEpkj2zaIWqbsfaspr3BGU9ZFUPnjEyFS2o4giyvSsqMF
         Ocjd7zFlzjd4Inr4yC3PQ61oCV1JR2airmMq4W5MlsO0DYOSOI12+KecZLCoddUjfijl
         VSzGQ9JK9oc2GvfNrBx30xjQ23CZBD33gNJ+OLzwBTQS5fiZE8AuATupbczD1k3gb+J0
         mP9BUNGDpNi4lnVol/VkfIIGAOHQPg4ZVBKUrqUYCsreeFgvjDnxH7g8rdou3AJy/fmi
         xfSEfjBKYzOxSrGzaWJpmifjqK0SAwE/rHsNbC7SjkpwqFIUZSY9a6an5de3K3ZBlclN
         XWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502663; x=1734107463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=n66iZwIbHskqty283U5itTEysF2inyuLRDzLIAF7qA5rzahlPbyb3DaVBJGFIs79zH
         0R1VnKlrwAthzvp1im+hgJe4pyAFSlYsWvgwYA5iBqPikTMfC4zhRf0V8bwd6Rrm8e+4
         Ved0sxMTlqzCtrzrzV7PVhy2b3AOdpHY91Uzk+1lXFdV7JSxLBL5Tw29Zk5eFwNAtS+b
         3ORJWapyxP7MMQn7q0DEjh0arSgXcacz04UmZFuwUB/ybghrfiBgqYRnN78jPT2uADMb
         ZyHxgo5MsRWiGJDrfrybEGefFtqeIa18L1dhk4sGZh3gbVJ1LcKk1gM8jJaeA+ccSUZK
         SysQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhAs949wdpx12Dnd9G2af5+OH6/8S7jYHerUKpgeMyCjpKj68h+8CPHSt0XdS47nP0eAng40gaw0Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YysT/PKWmN3MKQrb8YkumMARwHtTkMrqeZ865L4CgDuPIaoHtoE
	wsqrfHRArsQni3adile4My6n+HJQWcu8BbcWWpRBdjPJ7wwe4RhnydR/QOVDCrE=
X-Gm-Gg: ASbGncuJG1RTAFu17lT/wMdMC8jGn5edCuJEwKK7GdGxVmvFe8cEBaB79UBpd0a/Er0
	jtOUBx8TZYz60opGXa91eATLr9Mg/SYOoA2G3vvsY8b3zUnnhdFa9+XqeS0D8Ll3Ku87hW50Y7S
	JlFiL+mtltV5D+3cb9GOGnmNBXZOAL8QCGrK2UkqwIYFyEQtI4mZQGsTTPG+9F1r/qMgbXXEDma
	xmGSop5BY1XP+hRifNry4X4LsROOaf0uGnkrnmyw5pFRvQ28dRadKwEajFMRXZeFgTGm8pMz9nx
	5tvpYPdVU1VZpC2EqV0oQBTpDA+XcbTXCg==
X-Google-Smtp-Source: AGHT+IGRlX7BIbgKcq4E8LlKztNa00vBgQAERS4YEdJ5MYW+4Wqp/mGqY/4IqsX/I0DaInCg04SuNg==
X-Received: by 2002:a17:907:7841:b0:aa6:32c0:5d05 with SMTP id a640c23a62f3a-aa639febf00mr320394766b.13.1733502662697;
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:02 +0000
Subject: [PATCH v4 2/7] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-2-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_083104_605488_624E092B 
X-CRM114-Status: GOOD (  10.89  )
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

b3JpZW50YXRpb24tc3dpdGNoIGlzIHRoZSBzdGFuZGFyZCBkZWNsYXJhdGlvbiB0byBpbmZvcm0g
dGhlIFR5cGUtQyBtdXgKbGF5ZXIgdGhhdCBhIHJlbW90ZS1lbmRwb2ludCBpcyBjYXBhYmxlIG9m
IHByb2Nlc3Npbmcgb3JpZW50YXRpb24KY2hhbmdlIG1lc3NhZ2VzLgoKVGhlIFVTQiBQSFkgb24g
Z3MxMDEgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBiYXNlZCBvbiB0aGUgb3JpZW50YXRpb24gb2YK
dGhlIGNvbm5lY3Rvci4gRm9yIHRoYXQgdGhlIERUUyBuZWVkcyBhIGxpbmsgYmV0d2VlbiB0aGUg
cGh5J3MgcG9ydCBhbmQKYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8gaW5mb3JtIHRoZSBwaHkg
ZHJpdmVyIHRoYXQgaXQgc2hvdWxkIGhhbmRsZQp0aGUgb3JpZW50YXRpb24gKHJlZ2lzdGVyIGEg
aGFuZGxlcikuCgpVcGRhdGUgdGhlIHNjaGVtYSB0byBlbmZvcmNlIHRoYXQgYnkgcmVxdWlyaW5n
IHRoZSBvcmllbnRhdGlvbi1zd2l0Y2gKYW5kIHBvcnQgcHJvcGVydGllcyBvbiBnczEwMSAob25s
eSkuIFdlIGRpc2FsbG93IG9yaWVudGF0aW9uLXN3aXRjaCBvbgphbGwgb3RoZXIgc3VwcG9ydGVk
IHBsYXRmb3Jtcywgc2luY2Ugb3RoZXIgdmVyc2lvbnMgb2YgdGhpcyBwaHkgKG9yIGl0cwpzeXN0
ZW0gaW50ZWdyYXRpb24pIGRvbid0IGN1cnJlbnRseSBzdXBwb3J0IG9yIGV2ZW4gbmVlZCBpdC4K
CkV2ZW4gdGhvdWdoIHRoaXMgbmV3IHJlcXVpcmVkIGdzMTAxIHByb3BlcnR5IGlzIGFuIEFCSSBi
cmVhaywgdGhlCmludGVudGlvbiBmb3IgdGhlIGRyaXZlciBpcyB0byBiZWhhdmUgYXMgYmVmb3Jl
IGlmIGl0J3MgbWlzc2luZwoobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbCB3b3JrIGluIFNTIG1v
ZGUgaW4gb25lIG9yaWVudGF0aW9uIG9ubHkpLgpPdGhlciBwbGF0Zm9ybXMgYXJlIG5vdCBhZmZl
Y3RlZC4KClJldmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5v
cmc+ClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5v
cmc+CgotLS0KdjM6CiogdXBkYXRlIGFzIHBlciBSb2IncyBzdWdnZXN0aW9uIChJIGhvcGUgOi0p
Cgp2MjoKKiBzcXVhc2ggb3JpZ2luYWwgcGF0Y2hlcyAjMiBhbmQgIzMKKiBhY3R1YWxseSBkaXNh
bGxvdyBvcmllbnRhdGlvbi1zd2l0Y2ggb24gIWdzMTAxIChub3QganVzdCBvcHRpb25hbCkgKENv
bm9yKQoqIHVwZGF0ZSBjb21taXQgbWVzc2FnZSB0byBjbGFyaWZ5IHRoYXQgdGhlIGludGVudGlv
biBmb3IgdGhlIGRyaXZlciBpcwogIHRvIHdvcmsgd2l0aCBvbGQgYW5kIG5ldyBEVFMgKENvbm9y
KQoqIGNvbGxlY3QgdGFncwoKZm9vCi0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sIHwgNiArKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQt
cGh5LnlhbWwKaW5kZXggMWY4YjM1OTE3YjExLi4yNzI5NWFjYmJhNzYgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHku
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcs
dXNiMy1kcmQtcGh5LnlhbWwKQEAgLTExNCw2ICsxMTQsOCBAQCBhbGxPZjoKICAgICAgICAgICBj
b250YWluczoKICAgICAgICAgICAgIGNvbnN0OiBnb29nbGUsZ3MxMDEtdXNiMzFkcmQtcGh5CiAg
ICAgdGhlbjoKKyAgICAgICRyZWY6IC9zY2hlbWFzL3VzYi91c2Itc3dpdGNoLnlhbWwjCisKICAg
ICAgIHByb3BlcnRpZXM6CiAgICAgICAgIGNsb2NrczoKICAgICAgICAgICBpdGVtczoKQEAgLTEz
OSw2ICsxNDEsOCBAQCBhbGxPZjoKIAogICAgICAgcmVxdWlyZWQ6CiAgICAgICAgIC0gcmVnLW5h
bWVzCisgICAgICAgIC0gb3JpZW50YXRpb24tc3dpdGNoCisgICAgICAgIC0gcG9ydAogICAgICAg
ICAtIHBsbC1zdXBwbHkKICAgICAgICAgLSBkdmRkLXVzYjIwLXN1cHBseQogICAgICAgICAtIHZk
ZGgtdXNiMjAtc3VwcGx5CkBAIC0xOTgsNyArMjAyLDcgQEAgYWxsT2Y6CiAgICAgICAgIHJlZy1u
YW1lczoKICAgICAgICAgICBtYXhJdGVtczogMQogCi1hZGRpdGlvbmFsUHJvcGVydGllczogZmFs
c2UKK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBsZXM6CiAgIC0gfAoKLS0g
CjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
