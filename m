Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BA8C10F1A
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju6doFu9/O2UucdsOwXfHhCHDEXvJ1S53pLH1U3Pb64=; b=zfpRc/xh9HyJlj
	bo7ODQEdM0pwR7Je0nx0XVV1h+iCW20WjQAj+vjhaBp9rJG1+zChwroMjEwXsEkMysOf7tzSakIFP
	jp7SY2l77Xy1OKhWzyILN5tIMvHAIDCwToyL3mIyTst+xyjGMrhvLIJ1f3Zv3lNzReZ6wbnYh51la
	zT9J2WGz5wu/L1UN4SaI/dJ1uxX/zxOiy2VaARgdnud3uI7uxQL77tC7Opcvc0cXulFRL7JE524is
	8sbqqkMUmGvrA31tqc3M2LI6BepCaptM0adTu7eLM4YMLQ3wzq1kY2NvVVaB8fmQwkDYVoDR4nVE3
	AG9Y4ICxaFi8uTsLpipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbV-00000000sNt-37N8;
	Tue, 23 Apr 2024 17:06:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbA-00000000sAh-0haa
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a588405be6cso95077866b.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891987; x=1714496787; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7PAyFdu9H0sY3Lt54kr3wrNBIQI45vetjxyjmFr1cOo=;
        b=Au5JFjBM6PX+cvWfWGBf5Z0NeoxnbvQcdZiopvYEq0mkgNeRwxrvNvWWxsrewC/5hA
         Si4XJmwAZ3+9oCMnPkUwcm7hV0gm2zl3jj7NbWuUUH/E/owza+d4P7a8wOJPRqP8tkKq
         FYBOdElLkCABjj0yw6XfzdqJBeLmzeqlaHMfl89HObAcAWQgts2XzEHLzmCtvdaY+6it
         MO1m3GjsnNN4VI1TzSvwSkkrgG2TYMSlc3MmF+TXG/l/7f14bSgn6A3fttvoUD0i3+Hk
         a1O9bCTYlEOEhrWmLAhTkT+AJG7kV3L7svXQmxSJpctKpwpeVgdBvhjR1/uiXT4aEH6q
         Q11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891987; x=1714496787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7PAyFdu9H0sY3Lt54kr3wrNBIQI45vetjxyjmFr1cOo=;
        b=OtaowXsoGb46P1f4F5rOVK1SF5V1VhuMhMSBsPJIUTisM20CbByz9YfIJp0eXaeXxC
         0ZH8++nu+2v2Vn/HT3Kdf0un5fHSXN5N9Lc4W4drlURi2GM3AdJxYrHn3jJxKsZMwb1a
         URjquIQYi+7djApgnHx237jK9Y6710loJpVxfCb579ZETfu3gipuSvH1hhy58QuWtoSS
         MbKM41opBB9daL9hzfvXcevoFJ8mdHpkh6XFn/5cbBBWKrt+ARLAZybpMB4Y23lEmtbk
         P04N237+fzF0t09BfbnUe60XaMNEUv2dCO/ZdeMruIqnQAwgrRhASkRAkQIe6nywvcM4
         hL0A==
X-Forwarded-Encrypted: i=1; AJvYcCVSemOJFILmsatuAolD9jEhMFgXuBmtGc1iWg5aANCcqRkKt2HThb771R0h7xVqJmG3L4Qgyb42pfLyYTOgMNrRqvtntdX4nt8W4nDi4A==
X-Gm-Message-State: AOJu0Yxn7IT1RxC2mw0Y+yiuk3CrHjsELqtLThI9fqAEQXB6Q9Ovmloa
	8KHPKGV0n65OyQffacL4ZBFDp69gjlPlpr0Dw7fsAkWb9wFUZCKfr4v34YHhO/8=
X-Google-Smtp-Source: AGHT+IEY3fEkZYym5AetXKUhc3n7D5n6/HgpY9y7SZRytgjmS2FxWFGvhQdXsj4H4Kyog2WyOktaKw==
X-Received: by 2002:a17:906:578d:b0:a58:734d:f111 with SMTP id k13-20020a170906578d00b00a58734df111mr2664615ejq.11.1713891986669;
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:06 +0100
Subject: [PATCH 4/7] phy: exynos5-usbdrd: set ref clk freq in
 exynos850_usbdrd_utmi_init()
MIME-Version: 1.0
Message-Id: <20240423-usb-phy-gs101-v1-4-ebdcb3ac174d@linaro.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
In-Reply-To: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_100628_275421_F1EB5554 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

V2hpbGUgY29tbWl0IDI1NWVjMzg3OWRkNCAoInBoeTogZXh5bm9zNS11c2JkcmQ6IEFkZCAyNk1I
eiByZWYgY2xrCnN1cHBvcnQiKSBjb3JyZWN0bHkgc3RhdGVzIHRoYXQgQ0xLUlNUQ1RSTFs3OjVd
IGRvZXNuJ3QgbmVlZCB0byBiZSBzZXQKb24gbW9kZXJuIEV4eW5vcyBwbGF0Zm9ybXMsIFNTUFBM
TENUTFsyOjBdIHNob3VsZCBiZSBwcm9ncmFtbWVkIHdpdGgKdGhlIGZyZXF1ZW5jeSBvZiB0aGUg
cmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgVVNCMi4wIHBoeS4KCkRvIHNvLgoKRml4ZXM6IDY5MTUy
NTA3NGRiOSAoInBoeTogZXh5bm9zNS11c2JkcmQ6IEFkZCBFeHlub3M4NTAgc3VwcG9ydCIpClNp
Z25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cgot
LS0KRmVlbCBmcmVlIHRvIGRyb3AgdGhlIEZpeGVzOiBpZiB5b3UgdGhpbmsgdGhhdCBpcyB1bndh
cnJhbnRlZCBoZXJlLgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjgg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmlu
ZGV4IGQ2OTE4N2MyMjYxMy4uMGY5MDc4Njg5ODU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUtdXNiZHJkLmMKQEAgLTE1NSw2ICsxNTUsOSBAQAogI2RlZmluZSBDTEtSU1RfUE9S
VF9SU1QJCQkJQklUKDEpCiAjZGVmaW5lIENMS1JTVF9QSFlfU1dfUlNUCQkJQklUKDMpCiAKKyNk
ZWZpbmUgRVhZTk9TODUwX0RSRF9TU1BQTExDVEwJCQkweDMwCisjZGVmaW5lIFNTUFBMTENUTF9G
U0VMCQkJCUdFTk1BU0soMiwgMCkKKwogI2RlZmluZSBFWFlOT1M4NTBfRFJEX1VUTUkJCQkweDUw
CiAjZGVmaW5lIFVUTUlfRk9SQ0VfU0xFRVAJCQlCSVQoMCkKICNkZWZpbmUgVVRNSV9GT1JDRV9T
VVNQRU5ECQkJQklUKDEpCkBAIC03ODgsNiArNzkxLDMxIEBAIHN0YXRpYyB2b2lkIGV4eW5vczg1
MF91c2JkcmRfdXRtaV9pbml0KHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJ
cmVnIHw9IEhTUF9WQlVTVkxERVhUIHwgSFNQX1ZCVVNWTERFWFRTRUw7CiAJd3JpdGVsKHJlZywg
cmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9IU1ApOwogCisJcmVnID0gcmVhZGwocmVnc19iYXNl
ICsgRVhZTk9TODUwX0RSRF9TU1BQTExDVEwpOworCXJlZyAmPSB+U1NQUExMQ1RMX0ZTRUw7CisJ
c3dpdGNoIChwaHlfZHJkLT5leHRyZWZjbGspIHsKKwljYXNlIEVYWU5PUzVfRlNFTF81ME1IWjoK
KwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUwsIDcpOworCQlicmVhazsK
KwljYXNlIEVYWU5PUzVfRlNFTF8yNk1IWjoKKwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQ
UExMQ1RMX0ZTRUwsIDYpOworCQlicmVhazsKKwljYXNlIEVYWU5PUzVfRlNFTF8yNE1IWjoKKwkJ
cmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUwsIDIpOworCQlicmVhazsKKwlj
YXNlIEVYWU5PUzVfRlNFTF8yME1IWjoKKwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExM
Q1RMX0ZTRUwsIDEpOworCQlicmVhazsKKwljYXNlIEVYWU5PUzVfRlNFTF8xOU1IWjI6CisJCXJl
ZyB8PSBGSUVMRF9QUkVQX0NPTlNUKFNTUFBMTENUTF9GU0VMLCAwKTsKKwkJYnJlYWs7CisJZGVm
YXVsdDoKKwkJZGV2X3dhcm4ocGh5X2RyZC0+ZGV2LCAidW5zdXBwb3J0ZWQgcmVmIGNsazogJSMu
MnhcbiIsCisJCQkgcGh5X2RyZC0+ZXh0cmVmY2xrKTsKKwkJYnJlYWs7CisJfQorCXdyaXRlbChy
ZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfU1NQUExMQ1RMKTsKKwogCS8qIFBvd2VyIHVw
IFBIWSBhbmFsb2cgYmxvY2tzICovCiAJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUw
X0RSRF9IU1BfVEVTVCk7CiAJcmVnICY9IH5IU1BfVEVTVF9TSUREUTsKCi0tIAoyLjQ0LjAuNzY5
LmczYzQwNTE2ODc0LWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
