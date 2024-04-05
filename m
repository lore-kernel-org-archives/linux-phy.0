Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3697CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtG+wjyh4v7lWB+MrDbdXioUcCaufH8TFP8noFA4Ab0=; b=P8GHTA5Bqs6KeB
	5feCCQ1jWhvvQ3XQCxF06GdnCi+oPBBsITzFuoozRFNpZXD6R5JoXL6Midc1/0xtddcq1sBceuDb0
	skDbfJY/jWjJPQ5isNoNdAqIywOpUsaAtRsWIqfDJxEdnKpMnDv0ZL7ShNjxbK3XJX/vZ4zql1V2H
	hDi++1FdpoaBmUVko1Y8pOxvhE+BRSYnij9jQUVcuRXyc2hzxo4TJyhs7+9gggMtUdVWUpsAxDieU
	HBqTS7qRcNTgKPAko7SB7It1tkeAdY3+Pjpqvwu7IsGe6QDx2JvPX4VzmADRqfv993Je1f6E+mKms
	lnGB+awUlnauIuuVygBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse9w-00000005hae-1unW;
	Fri, 05 Apr 2024 07:38:48 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rse9s-00000005hZD-3ZOn
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:38:46 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4162ef30461so2484165e9.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712302723; x=1712907523; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oRN7BO8gsn/Gv38F95MOeso16MuC+d8zGIKmfkHHaDA=;
        b=emtJj9RnXSNfJUt0GIYqO7dDBLssPI+L7HHdTA2xnJK3kzRS+1EF7cvkp0jca2P7Ce
         Gssxlc+RdU9WR8vMZjsXIgQKmPWZPk8kxslSgAq54XZ910kM3zXDAFj5kK+tDelqZJeM
         roH+Z1ind3fT2syn7/57BOIDZLOWBI3Y2Ql97/F+rp8ufAMpsM9BX4IsHVqUUtZPXzbt
         OsaOIYEc3Zau51i5i6BcG0PANaoU+1dZ2LCh+5y/pTFt5r1jOeQrS/7sP0c8NCzl6hjE
         l3PWocy5W1KrfzTVjoXspLWGDbTgvif4J48S3AEtcHRXYNSAwM90JxFcdQiDMGHXCNIz
         RKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712302723; x=1712907523;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oRN7BO8gsn/Gv38F95MOeso16MuC+d8zGIKmfkHHaDA=;
        b=sNOZFIwaa54LUOlgO3qiciDM+NuPaN/wTnKXjVhkg8lSQH+2IGdGrM6vdmo3nEwVjd
         ZV3IK6N9iOJ4c5qbOfUlcOhlvQskiSCNaIra4ZQqgOuiS7kMGTu5rqePCQKhQiIIz5JC
         007nsME89P2Z4T6o8gcaWgc2kylCl5RnjUmjJeNfgQtdm2nF//Q5s0Ta81yzq5WbBDLH
         CV7J7DniuHJ1z/32yroFuIn7iPmDm7TBnr+6ATfp0iSfXSBmqGx18tu5GUt1jefWjLbt
         IqQEyeKQmxyjHO3P3qCr798agnmBlEi/7+mkkQLiF4P2fHeaWM+oKVYN4iFAKVS5/RLm
         MH/A==
X-Forwarded-Encrypted: i=1; AJvYcCWy9csZb+NCQHR7qx2bq1x650r9oVTyVd4OODqS4p8WIe/aJryjMj0VRBsPNb/MVgZoj7kMpC1I3gPwQGG+niSjFpHVF7WxLJnzUxeVTg==
X-Gm-Message-State: AOJu0YyEZU1pLkldtdMdyhi1pfK+Wd0U2fdj7EWFmrrT5pRvdDvx5IrH
	V8aLVHOJESngFvD9XDvfjn5b07oKqo5CZBgHJho9JlSBz+XdW1s7Q8zKE+c6r2U=
X-Google-Smtp-Source: AGHT+IFwiMH8B1ar/OpUPlryON/lBUN5RQvLyQ7JRAx2qevkuOIGYn3OYMCBDXtlsBDfdcoJKEIrbw==
X-Received: by 2002:a5d:4906:0:b0:341:c589:8aea with SMTP id x6-20020a5d4906000000b00341c5898aeamr502410wrq.63.1712302722944;
        Fri, 05 Apr 2024 00:38:42 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id p13-20020a5d638d000000b00343ad4bca7dsm1317091wru.85.2024.04.05.00.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:38:42 -0700 (PDT)
Message-ID: <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock
 controller
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
Date: Fri, 05 Apr 2024 08:38:41 +0100
In-Reply-To: <20240404122559.898930-6-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-6-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_003844_962239_E44D7682 
X-CRM114-Status: GOOD (  10.68  )
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

T24gVGh1LCAyMDI0LTA0LTA0IGF0IDEzOjI1ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IEVuYWJsZSB0aGUgY211X2hzaTIgY2xvY2sgbWFuYWdlbWVudCB1bml0LiBJdCBmZWVkcyBzb21l
IG9mCj4gdGhlIGhpZ2ggc3BlZWQgaW50ZXJmYWNlcyBzdWNoIGFzIFBDSWUgYW5kIFVGUy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+
Cj4gLS0tCj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaSB8
IDEyICsrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzaQo+IGluZGV4
IGVkZGI2YjMyNmZkZS4uMzhhYzRmYjEzOTdlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kKPiBAQCAtMTI1Myw2ICsxMjUzLDE4IEBAIHBpbmN0
cmxfaHNpMTogcGluY3RybEAxMTg0MDAwMCB7Cj4gwqAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NDcxIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gwqAJCX07Cj4gwqAKPiArCQljbXVfaHNpMjog
Y2xvY2stY29udHJvbGxlckAxNDQwMDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAiZ29vZ2xlLGdz
MTAxLWNtdS1oc2kyIjsKPiArCQkJcmVnID0gPDB4MTQ0MDAwMDAgMHg0MDAwPjsKPiArCQkJI2Ns
b2NrLWNlbGxzID0gPDE+Owo+ICsJCQljbG9ja3MgPSA8JmV4dF8yNF81bT4sCj4gKwkJCQkgPCZj
bXVfdG9wIENMS19ET1VUX0NNVV9IU0kyX0JVUz4sCj4gKwkJCQkgPCZjbXVfdG9wIENMS19ET1VU
X0NNVV9IU0kyX1BDSUU+LAo+ICsJCQkJIDwmY211X3RvcCBDTEtfRE9VVF9DTVVfSFNJMl9VRlNf
RU1CRD4sCj4gKwkJCQkgPCZjbXVfdG9wIENMS19ET1VUX0NNVV9IU0kyX01NQ19DQVJEPjsKPiAr
CQkJY2xvY2stbmFtZXMgPSAib3NjY2xrIiwgImJ1cyIsICJwY2llIiwgInVmc19lbWJkIiwgIm1t
Y19jYXJkIjsKPiArCQl9OwoKVGhpcyBkb2Vzbid0IGJ1aWxkIGJlY2F1c2UgeW91IGRpZG4ndCBh
ZGQgdGhlIGNsb2NrIGlkcyBpbiB0aGUgYmluZGluZyBwYXRjaC4KCk90aGVyIHRoYW4gdGhhdCwK
ClJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoK
PiArCj4gwqAJCXBpbmN0cmxfaHNpMjogcGluY3RybEAxNDQ0MDAwMCB7Cj4gwqAJCQljb21wYXRp
YmxlID0gImdvb2dsZSxnczEwMS1waW5jdHJsIjsKPiDCoAkJCXJlZyA9IDwweDE0NDQwMDAwIDB4
MDAwMDEwMDA+OwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
