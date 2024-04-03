Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 017E5CD1288
	for <linux-phy@archiver.kernel.org>; Wed,  3 Apr 2024 15:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqXP98OxS5gH/3RNaQJUkZvtJaeMXCusBkNqIlSsWRg=; b=fQDm19SOK01XNl
	uvib+oQ49akLyH8X0jT8Dyyl6Zm06rBXf+9x1PefHizvsS0ykQNLfg2iS7PcM2fgLIbHEE+b+3buB
	lcarGwjtMN2PbcXy4SdfU74/EhRWVgpyGPfIN72ypzL/X/k97JdLlMfbBWiXUXt2OLe23xnKQoJLB
	1KsbL5hffbJHhB7V4VYO8ogpzqrC9TIWTg6S8v/9ThxUPJ2X10v5z1l2lVEZvLB7k+b6J+SkclbDi
	zSSBkIkxEjzjdeBl4IpRBwt2MulULbX2ItKZC1Q061KgcY74Evz/QGKjIZptmXIlkvEo/pG3lJeaE
	S0JfGUmMuaQpf1NgmIyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs29x-0000000Gc3Z-2uhM;
	Wed, 03 Apr 2024 15:04:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs14i-0000000GK7J-080C
	for linux-phy@bombadil.infradead.org;
	Wed, 03 Apr 2024 13:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BT3SVbiFXiDa5GkZGp0Vcjd+rOVegIfu/u0rdzybgMY=; b=e2+aZihFvsNuyuC8mX9LIBxYTX
	gqGIFtZ53lWR4p7wFMmyt76JgPTaYTeWqyTN+uS+j5SdclTa1JMd3SrK8eqG53TarY8x6gf9miJcN
	Aes8FECfM85ob318GdCoJ4pFY++S50ZhzCCSxebI9tIwXXRsVJtU708gyG9QE88Xd/6Ckf6DvcFgc
	yIj6DMmg7LLGVYEbZcplJ8mmYtARAQHrKc7wAbrU/QgmB1Y9xJAc0nh4JR3mrFNn+TgrlqMq9UxWt
	J5SZ7mcOv5FA2Z1FXEJem68xJK+fndw9e7rKXslqP6/ViQgnzYQ1qwnLcX6AY+710kYdV0Uvt46Ri
	9nHgkAPA==;
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs14f-00000004FXc-0PaS
	for linux-phy@lists.infradead.org;
	Wed, 03 Apr 2024 13:54:46 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6eae2b57ff2so5196212b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Apr 2024 06:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712152480; x=1712757280; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BT3SVbiFXiDa5GkZGp0Vcjd+rOVegIfu/u0rdzybgMY=;
        b=a3Iu1m2DxELkL/NzzTwI6LMcs9viDfD6T4coaPZCB2MYf9N+GaLRdnzLHWB2QC7Kj3
         p3BhA7HfM7VKM4JCiVV9gBjspc4ZWu8qW8pnzzuUZW1+1TwwtTpthjb1WHw7Hq5KIQI2
         K6LSzep5ANV53/ciA/EZ+FPMc09dEEQAclFNdVoC84tuMR7krn77kClb2VRnx6VoMnUf
         P3zsjDCeIPkHhUAFpD3P2phFE+xv+d+GUpLbpflogIHURgrLz919c28k5qxVv+9llxGr
         ACe7PqKqRRRsXTZdCWZ6M1SyP+H9IlCvhWJR9/Ho8nSTANQb+tRXytCWtNJjhbPeEGoH
         C7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712152480; x=1712757280;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BT3SVbiFXiDa5GkZGp0Vcjd+rOVegIfu/u0rdzybgMY=;
        b=kr+VYj0tmbiubBqKRLwu1xbPUvMxasjQjEddcZZndr6xRBD5c1hKXGYXQ+GkrMRE5z
         jdtYGqB/+MXTM/ZoaWKKUPPRZBvtSFgwm53TBHkIjuzieTJIWD7wZ0zXxelbssjsbwz8
         fn41SONj8+ObOmw5AMuGyT6/hR+ZNESBwvBFfIoz0KAX+lpAVw83U4A1xSncgRFH0+pe
         uUflIRMO6PxXkdm2NsfmdCX6hbLGsXeNbt9wa4U0xjvGFrZAA4RkdGWUpWV753HUi3Z2
         3hYN7erJ9EHSjFHXrhe93cIvbNLd9YKzkQKgNDqAXKjs8FwWDHzg0AVPYjXAtkCf/7Gg
         lqOw==
X-Forwarded-Encrypted: i=1; AJvYcCVJDgqdYxSEWmIgTp6+g4uaoABIgNw24ER3zv0ag59amHKnjygo8o0su+rlYwMbwXd/npxaTL5vlrpwlKvSGm9B2DEk0GmLmitDqt7Odg==
X-Gm-Message-State: AOJu0YyNcAsPPsBBbSJJa/WsR4rC3rlzj8I867g03XHBnrLmbsmIEtQe
	u7/8I6lhL/j9A0tcxxjKYs5B1fUAC5YBvkdYzEvzRjcju7AWl5h4SXiTyJSWjQ==
X-Google-Smtp-Source: AGHT+IFdPMsL6gzwJKmcOgi/W57VtFm/bny0BK6vW8aPFa/4EX4u6/4HpM7yKc9A/olChrmi8iNVGw==
X-Received: by 2002:a05:6a21:6704:b0:1a7:2db0:baa6 with SMTP id wh4-20020a056a21670400b001a72db0baa6mr1400907pzb.30.1712152479542;
        Wed, 03 Apr 2024 06:54:39 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id a25-20020aa780d9000000b006e6b3c4e70bsm12141952pfn.171.2024.04.03.06.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 06:54:39 -0700 (PDT)
Date: Wed, 3 Apr 2024 19:24:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org, davidwronek@gmail.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
Message-ID: <20240403135433.GP25309@thinkpad>
References: <20240401182240.55282-1-danila@jiaxyga.com>
 <20240401182240.55282-3-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240401182240.55282-3-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_145445_271748_3BDC3C78 
X-CRM114-Status: GOOD (  15.45  )
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

T24gTW9uLCBBcHIgMDEsIDIwMjQgYXQgMDk6MjI6NDBQTSArMDMwMCwgRGFuaWxhIFRpa2hvbm92
IHdyb3RlOgo+IFFNUCBQSFkgdXNlZCBpbiBTQzcxODAgcmVxdWlyZXMgMyBjbG9ja3M6Cj4gCj4g
KiByZWYgLSAxOS4yTUh6IHJlZmVyZW5jZSBjbG9jayBmcm9tIFJQTWgKPiAqIHJlZl9hdXggLSBB
dXhpbGlhcnkgcmVmZXJlbmNlIGNsb2NrIGZyb20gR0NDCj4gKiBxcmVmIC0gUVJFRiBjbG9jayBm
cm9tIEdDQwo+IAo+IFdoaWxlIGF0IGl0LCBsZXQncyBtb3ZlICdjbG9ja3MnIHByb3BlcnR5IGJl
Zm9yZSAnY2xvY2stbmFtZXMnIHRvIG1hdGNoCj4gdGhlIHN0eWxlIHVzZWQgY29tbW9ubHkuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWxhIFRpa2hvbm92IDxkYW5pbGFAamlheHlnYS5jb20+CgpS
ZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1A
bGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3Nj
NzE4MC5kdHNpIHwgOSArKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3NjNzE4MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC5kdHNpCj4g
aW5kZXggMmI0ODFlMjBhZTM4Li41YzllYzgwNDdmMDAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NjNzE4MC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL3NjNzE4MC5kdHNpCj4gQEAgLTE1ODUsOSArMTU4NSwxMiBAQCB1ZnNfbWVtX3BoeTogcGh5
QDFkODcwMDAgewo+ICAJCQljb21wYXRpYmxlID0gInFjb20sc2M3MTgwLXFtcC11ZnMtcGh5IiwK
PiAgCQkJCSAgICAgInFjb20sc203MTUwLXFtcC11ZnMtcGh5IjsKPiAgCQkJcmVnID0gPDAgMHgw
MWQ4NzAwMCAwIDB4MTAwMD47Cj4gLQkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19VRlNfTUVNX0NMS1JF
Rl9DTEs+LAo+IC0JCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPjsKPiAtCQkJY2xv
Y2stbmFtZXMgPSAicmVmIiwgInJlZl9hdXgiOwo+ICsJCQljbG9ja3MgPSA8JnJwbWhjYyBSUE1I
X0NYT19DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1BIWV9BVVhfQ0xLPiwKPiArCQkJ
CSA8JmdjYyBHQ0NfVUZTX01FTV9DTEtSRUZfQ0xLPjsKPiArCQkJY2xvY2stbmFtZXMgPSAicmVm
IiwKPiArCQkJCSAgICAgICJyZWZfYXV4IiwKPiArCQkJCSAgICAgICJxcmVmIjsKPiAgCQkJcG93
ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19QSFlfR0RTQz47Cj4gIAkJCXJlc2V0cyA9IDwmdWZzX21l
bV9oYyAwPjsKPiAgCQkJcmVzZXQtbmFtZXMgPSAidWZzcGh5IjsKPiAtLSAKPiAyLjQ0LjAKPiAK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
