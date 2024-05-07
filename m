Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3BAC10F1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OzI75sJmFPjW/Vv4c/FoPEvot/Wq/zTxZTo4b8MXLT8=; b=BFyQ0M4YyBz3dp
	5Y8MrUZbiy0KkA5qQBuLc2mpPKQ96aY3LdJ+5bsdqAHD0np9xSabZ9jDIKQ1Z4+0hEV+Ws9in0GEC
	QHrUJkA8AsHx9BNhYdnY+KluDS3D319gI6CwYeaAxH+7yRZfi9c7CwqogqkWj36kJiftFOWL5SgNB
	1atn8BKE/vcgBJ6jTXYP6TtMInUYjdj/hiLVo0L3yiSYeJwjmAkTf3CXzQ3DufxNlLFZnDhaxfKZF
	Du3kxxEaai6SWESGDWhzOa7ToFnnjERG31dJhj27VctX3b1/qO/3adl+NLsolEy0epwENhHUsTof8
	sFJCaObNPs9CcM25sTzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Laq-0000000BQVr-0nUt;
	Tue, 07 May 2024 14:14:56 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lak-0000000BQRT-2IM8
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:14:55 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a59c04839caso678150566b.2
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091285; x=1715696085; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/iDIa9UU9YohRPSME0x6hMsrK0cAAO/SHuOJTAMlGZM=;
        b=uZtpmBTglIjvdPeIDcNMXnTrOo8/HVqGkX6CPS+y69gc7APn7tIIDTZFIoFGGU+Xy/
         hiey+Z3Vm0MVeenSzxGV2MxJHUESEoI69UVNhm0bayrPE6bqvhjtRMP+U1jfuyQRUS8k
         3oeKfGqHfKLlEPIUCNu6W/rL5CAZ+nVJ3I9m8HBLrkI/A9adQldbuh/GZCf/IXC2b5qd
         6v6TVauvHFNWNfoxGkQSFwo2MI5tc7K6G1uTJztykV09mSlSJqNzqmjAWlZAd2ZN+g19
         rigCwYFsXMIdNB6zcOJOmGEWfP5nAXl7bRRECWTk2TVAug8BGt5G2Ov6EZmFZwZpgI24
         uN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091285; x=1715696085;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iDIa9UU9YohRPSME0x6hMsrK0cAAO/SHuOJTAMlGZM=;
        b=KBhWMH9G8qOT/JhWEycrLZRJWmPevP3XFy7yI3SaaVkLDHynuuDbBRtTLpnKHYd3mP
         9ABi+p5UUXVXz7HeXOaPL+m6RlQNxbTUpqxX4DGt393FwjwU/Yyuv8IxXm4ddbKlY1q9
         mnsqrs/zQyHeZ47Uz4aBYJ1svi/0/OMUP/EDlR6d1/MW+8Oe9JXG/K/cgO5TV08RI6be
         X3r9tsSxvbofOorABS1WZD5Kpu4pGJD8r5QHEpNFgh5GultHG7so+eDiGd6iIhW74fzF
         HXB9yj6x6aALmm8j8iwpvfFT/V72cVbwVf46z/jVUPE+e/CFfGp12I0bWnM0fFyuFYKi
         s5Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVsmqdqW9fZnsuNbeCd4uGqJgl0YyCjMCtntKjApZnGGMaUPszri5TaWkTKQsHzFej1sYTHgixa7SVhVxkl7Hunb9ccKUyn2aw04lHhrA==
X-Gm-Message-State: AOJu0Yxt5oG8vdYv13wQTqBy2cKDsC/ppEmYZIejWuzAWFUlexfObWch
	WmTOmEiUzVZTzOmHeL0p3wgqqh7eD/VZgr1ckglJZU1J6YqZKKVHLx4xxhxbEn0=
X-Google-Smtp-Source: AGHT+IE/MwdnFKw9M2O7xyKn7PZzuL6h8QMv+vTzlYdiFTDL2ZOu/TBbmPYlhs0qq7EIgjDCRx4ISQ==
X-Received: by 2002:a50:cd17:0:b0:572:9962:7f0 with SMTP id z23-20020a50cd17000000b00572996207f0mr8054362edi.34.1715091285631;
        Tue, 07 May 2024 07:14:45 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/5] a few fixes for the Samsung USB phy driver
Date: Tue, 07 May 2024 15:14:43 +0100
Message-Id: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFQ3OmYC/x3LTQ5AMBBA4avIrE1S9RNcRSyUac1CSSeENO6us
 fzy8iIIBSaBPosQ6GLh3ScUeQbzOnlHyEsyaKUrVasSZdrk9A5PMXisD1q+SbA1rWmaTlk7a0j
 vEegPaR3G9/0A5w1wPWcAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_071450_631896_FDD66768 
X-CRM114-Status: UNSURE (   7.45  )
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

QmVmb3JlIGNvbWluZyB0byBhbiBhZ3JlZW1lbnQgb24gbXkgU2Ftc3VuZyBVU0IzMSAvIGdzMTAx
IHBoeSBjaGFuZ2VzIFsxXQpbMl0sIEkgZGVjaWRlZCB0byBzcGxpdCBvdXQgdGhvc2UgY2hhbmdl
cyBmcm9tIHRoYXQgc2VyaWVzIHdoaWNoIGNhbiBhbHNvIGJlCmFwcGxpZWQgaW5kZXBlbmRlbnRs
eSBhbmQgYWRkIGEgZmV3IGFkZGl0aW9uYWwgZml4ZXMgSSBoYWQgbHlpbmcgYXJvdW5kLgoKVGhp
cyBjb250YWlucyBtb3N0bHkgY2xlYW51cCwgYnV0IGFsc28gYSBjaGFuZ2UgdG8gdXNpbmcgZnNs
ZWVwKCkgYXMKcmVjb21tZW5kZWQgYnkgdGhlIHRpbWVycy1ob3d0bywgYW5kIGEgZml4IGZvciBz
ZXR0aW5nIHRoZSByZWYgZnJlcXVlbmN5IGZvcgpFODUwLgoKVGhlc2Ugc2hvdWxkIGJlIGxlc3Mg
Y29udHJvdmVyc2lhbC4KCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA0MjMt
dXNiLXBoeS1nczEwMS12MS0wLWViZGNiM2FjMTc0ZEBsaW5hcm8ub3JnIFsxXQpMaW5rOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNTAxLXVzYi1waHktZ3MxMDEtdjItMC1lZDlmMTRh
MWJkNmRAbGluYXJvLm9yZyBbMl0KClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQpBbmRyw6kgRHJhc3ppayAoNSk6CiAgICAgIHBoeTog
ZXh5bm9zNS11c2JkcmQ6IHVuaWZvcm0gb3JkZXIgb2YgcmVnaXN0ZXIgYml0IG1hY3JvcwogICAg
ICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHVkZWxheSgpIHRvIGZzbGVlcCgpCiAgICAg
IHBoeTogZXh5bm9zNS11c2JkcmQ6IG1ha2UgcGh5X2lzb2woKSB0YWtlIGEgYm9vbCBmb3IgY2xh
cml0eQogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBmaXggZGVmaW5pdGlvbiBvZiBFWFlOT1M1
X0ZTRUxfMjZNSFoKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogc2V0IHJlZiBjbGsgZnJlcSBp
biBleHlub3M4NTBfdXNiZHJkX3V0bWlfaW5pdCgpCgogZHJpdmVycy9waHkvc2Ftc3VuZy9waHkt
ZXh5bm9zNS11c2JkcmQuYyB8IDk1ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCi0tLQpiYXNl
LWNvbW1pdDogOTIyMWIyODE5YjhhNDE5NmVlY2Y1NDc2ZDY2MjAxYmU2MGZiY2YyOQpjaGFuZ2Ut
aWQ6IDIwMjQwNTAzLXNhbXN1bmctdXNiLXBoeS1maXhlcy04YjhiNjY5MGZmYzIKCkJlc3QgcmVn
YXJkcywKLS0gCkFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
