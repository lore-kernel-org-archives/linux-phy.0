Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B90C1C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDbfVYodnKaAP3si4KBeW31bL0Ey6tm0yEzFxDH/irI=; b=aqzvbWtHD2huYn
	MqNRUG2y2KzrRDqKZFmdjqqXwhmMt+DqYxOJyzlmYti3S96uzviZ/sIcD7oijmT1DA0Fx7PaHYYyR
	iWa+clcaCdAj8x7LN6T3ubVg5uvWFrWhpHOSd3k3XXlZgoeM7TBbM+iFdPYYNgxuUpJvJKknO9Tjz
	j5ycK5xhTA9n+Xj5ma6TxEczB1RKboQBpLYluOVyuPOODorhOvskjxydYPgeXdjbN6Y5qbM7hj8hH
	czsQlaLHHH71XgF7Xcnb+f+ZuumCLRQBCcqZyIHRoiZ5ogcyOEnvxQ9ChQMoo2tl56vvXVIphioDm
	xppt9ucBDMjA1DNSilUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse4m-00000005gW7-1JC7;
	Fri, 05 Apr 2024 07:33:28 +0000
Received: from mail-wm1-f52.google.com ([209.85.128.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse4j-00000005gUU-2HcS
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:33:26 +0000
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4162fe73594so2222105e9.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712302402; x=1712907202; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B8/hEIuRB1LDRqXgcrFwyhIe4/Hv1tlerPiYLnPY8pA=;
        b=bmcmxwmajEcimEQoU9hfcNXmRpN79j9a20T7aKKZfd+1Q9wfgGu2LSafDwQM1DPmT1
         9lkPjU/pANrxaOTa/23FmXZmLzzYEvgHIdgPWc7dSmoz8SCeohb+Mm5cYp1SKJxnQWDE
         l6VChNRmIW7XRRkhZjI4lk8z5/mLXB+CJcIAU/eC1i8X90N33gxgkhFp4+g/c1GDxgCF
         0QHQ8Nq6RkH4OOub9r+lsWZpsFdNGNxWlOthBB+WftC46Yzdynxhpm0bix+7nz4PcSrJ
         biXNmUdI10KMOWjYzKCObAn3/0vur3kAzxw4ecTEswx/2q/8NABB/rXzlhcdX5/Xnbbz
         6e+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712302402; x=1712907202;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B8/hEIuRB1LDRqXgcrFwyhIe4/Hv1tlerPiYLnPY8pA=;
        b=nEghfnO77UXpXm9aK00oNOngHKMNVp7k+GdP65/qwjGjHZmX6CCmfQ2DyDSIhFUsbl
         JIJZUbx2UXxS/YVzmi8TA2WPwPT05BzN7BHqXz9K1fI9n9KNdGrU+7t7Fgahb2wkBV7l
         KpVndY3aaw4U8mAX/gyin+t4cgruR9mmnlKQZiayouiT6TX9dNGN8dJnmwxeX9D936/e
         26iiF+5YpYxGMCy+T0Jf2FE6MqkrnIg/gUv/D4dGcY80+XmipeXYOc6cT2i3Ph+/7uWq
         hp3ILwEp98evm1XehVpZkLRGYK47RPdyqyTu1Qh0cdNtSL82f8bdg0VLnKw9VPTFANgf
         +ADw==
X-Forwarded-Encrypted: i=1; AJvYcCW3rtOGKA/jWMKr953Xe8UBocS2+hW7ZqF0SxWAJ1UFrcAAeeQNkO8prLEqJY6temFcc7ywiogpb9BubgI/eQRREa+KbIGJB2rXDTs1GQ==
X-Gm-Message-State: AOJu0YxtbatoxFP3NL1ep/mXl0O9Wva0Ug1wUPQXkSN+N+IwmvI93rbh
	RWhgyyOa9xiePa8AtFVraP235Z5prpMB+5CjniTWrzfK1Uc6iPP0N4EsdsN0bNs=
X-Google-Smtp-Source: AGHT+IFauYr0ttYbvunq4xdpMe1oQLsmvrROpymwVJP8xmztwIB4iqaH0gjqAwcT0IX2HxafV4aRTQ==
X-Received: by 2002:a05:600c:1d25:b0:414:7e73:1f5b with SMTP id l37-20020a05600c1d2500b004147e731f5bmr543430wms.4.1712302402435;
        Fri, 05 Apr 2024 00:33:22 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id v19-20020a05600c471300b004157ff88ad7sm1903275wmo.7.2024.04.05.00.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:33:22 -0700 (PDT)
Message-ID: <560e9a5b236728f62be4bfd8df187071c4bffb23.camel@linaro.org>
Subject: Re: [PATCH 06/17] arm64: dts: exynos: gs101: Add the hsi2 sysreg
 node
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:33:20 +0100
In-Reply-To: <20240404122559.898930-7-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-7-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_003325_609154_0DEAF543 
X-CRM114-Status: GOOD (  10.38  )
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

SGkgUGV0ZSwKCk9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3JpZmZp
biB3cm90ZToKPiBUaGlzIGhhcyBzb21lIGNvbmZpZ3VyYXRpb24gYml0cyBzdWNoIGFzIHNoYXJh
YmlsaXR5IHRoYXQKPiBhcmUgcmVxdWlyZWQgYnkgVUZTLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBl
dGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KPiAtLS0KPiDCoGFyY2gvYXJt
NjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5kdHNpIHwgNiArKysrKysKPiDCoDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4
eW5vcy9nb29nbGUvZ3MxMDEuZHRzaQo+IGluZGV4IDM4YWM0ZmIxMzk3ZS4uNjA4MzY5Y2VjNDdi
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5k
dHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kK
PiBAQCAtMTI2NSw2ICsxMjY1LDEyIEBAIGNtdV9oc2kyOiBjbG9jay1jb250cm9sbGVyQDE0NDAw
MDAwIHsKPiDCoAkJCWNsb2NrLW5hbWVzID0gIm9zY2NsayIsICJidXMiLCAicGNpZSIsICJ1ZnNf
ZW1iZCIsICJtbWNfY2FyZCI7Cj4gwqAJCX07Cj4gwqAKPiArCQlzeXNyZWdfaHNpMjogc3lzY29u
QDE0NDIwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJnb29nbGUsZ3MxMDEtaHNpMi1zeXNyZWci
LCAic3lzY29uIjsKPiArCQkJcmVnID0gPDB4MTQ0MjAwMDAgMHgxMDAwPjsKClNob3VsZCB0aGUg
bGVuZ3RoIG5vdCBiZSAweDEwMDAwPwoKQ2hlZXJzLApBbmRyZScKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
