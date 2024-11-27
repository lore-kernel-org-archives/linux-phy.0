Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07D50D6ACC4
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 12:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PClyYl7Ika5Ja6zjkXJG4kBEV247fyqNhlsL0vTkfT0=; b=BzVG5SCXYNeHQ3
	gOo6Ait8lfKG+ihVnIwgYORKtICkOx2FQUxxe6laUdJKU4CYyeaUzjTDcedtlQvwllwx9pb0zWCuT
	gNEfYohR8N45TccQ6x7DB4nhKR8UrxL8Qhd45AtzK35DF1/4rOdtVu60zYWIa32fjn0mGzqmEmiX9
	8VHYNZNo5vcHt8FakB4S9ZyUvd7TELq1ZAxlnGL0jLIE8ldSSHiupaFedEf91zgjuwqpsF2lud3kX
	9O2J5PbB0r4ZoNzBR3I1AqV/WYRpdhgqlvtqWr5+ARkqipbsBVZHVW9MhMLuEC8j2IR5U6yHHXmCO
	+mjAnyjToLlRIQRvCc9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGGoo-0000000D5g3-02EP;
	Wed, 27 Nov 2024 12:06:54 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkM-0000000CvBa-22HW
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:17 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-aa53ebdf3caso621930966b.2
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705093; x=1733309893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u3bheMto3E1kl1HdoApxqJvOhczEZkMy970AMWo89Pc=;
        b=d1lOrIlrHjfhHFp223Vk3vpcJ7x7uuH0++IwKL4nLSUPVT2tLqioiipKzw1UrWCqyo
         y+jJqoClsacTmDOECW10KfCBKpY0KCn5zT1jpV4mr8cO5cg6dH5SOytZ2dEvHqRT8brj
         NjmlFq6Mb5Png/Z6Om18oz0QzHUI6XJvVJEjauviK/l7G0QvOKAWTcbb0JCY9gGbMym4
         +guzUgOc04PN0CdgmWL/Z5vqIhMPuIn+bgdamhHhcPObjPvEMUhaj6tier89/hu5Q38w
         VP4ji9MRkILqDGOfbdRM75k+flNARtCSAAcTEF6AMkdn3ol//LUeLYGzgCcf0DddzW6Y
         yMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705093; x=1733309893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u3bheMto3E1kl1HdoApxqJvOhczEZkMy970AMWo89Pc=;
        b=m22/tg7vHUN3zkLNFOaI/6I7QUkKBZOPmcUCGC3pGYsTNoeXApcIqem42+MjjuyAdQ
         kkqJiKCA2jzJWl/JcBA2AWUYObXDDuSP4LuDZZ2WQD+8prpPQ43hMllNtHhfnUtuCf2a
         vaWjOYjbBP1bGhx7QZwTQ6mXZrSR7bAwZRpeB4ELPE9HqlR+UaLYrQ5NfxeL3RIi5TXa
         mEpIw/FCC/iIRA5CyNvBYFzXIAoCqRt8vRvpSmi2XIn85AdpQ+Kdbyo2izcmn3qh5z7z
         TMsJXNJzgwysnt4CLApqjxU7Ys0wuJCg+SgHoxZoNQlcB/vCgQPlAqSnBkMyRh8JvJIp
         DF9g==
X-Forwarded-Encrypted: i=1; AJvYcCWIPkXfKiaj+NGyvfOv5AqtvsL9PoRMX0v7ZuWRKddSFFLlejSA8QWqNbnXYUxJapViblTg/B1eywY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqsoR6K+e+b5Y4/rL9MQwrwDT7D/JaOE0PTRjVxFlyIDyjjbdD
	J63QXJCqUwlmdzAsk7hkLQ6IT/bsGTHUWEpcrY6q8dCKm4/k7dGdDVbPjYbFCVQ=
X-Gm-Gg: ASbGncvUmBABJ/7BXZXO8l0L7eQH+lGLP8fVCWiYJ5kpT/fr3U0uXxRHXe7h9D3N0Sb
	kgvlCHPuURzhMBMafCdnxuZk0GoWZSrZGRBw3eGFgPM8QcyD1qOsudxc/2HUKVyZcSBUQPEtlqL
	5viulhLXmZfh78XeCLF87DguBBpgaFC/QTNKOjtIIAeyOm5PmHVJuXrWEESqfJy3gLBSCxxV5zJ
	s00yjuRFwagcruWrtA1wKf7ZK5aZByESU0M3WWXpB47Z/B1NvtEtZ0dEEfPrf8z68lDgZS+Yv4T
	pn8duQybRZo6ny1h4kYfLes0/SCF8GFuSA==
X-Google-Smtp-Source: AGHT+IFtopTo1T9muj6iS22tvZolqFiyxg9o/3wQpSGJ1mFMEg0qDXnVqCgHodOTVAcp8106njbuHQ==
X-Received: by 2002:a17:906:3d29:b0:aa5:63a1:17cf with SMTP id a640c23a62f3a-aa580f23e33mr198057666b.20.1732705092771;
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:12 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:11 +0000
Subject: [PATCH 1/9] dt-bindings: phy: samsung,usb3-drd-phy: align to
 universal style
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-1-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
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
X-CRM114-CacheID: sfid-20241127_025814_521014_570BABED 
X-CRM114-Status: UNSURE (   7.87  )
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

SW4gWzFdLCBSb2IgcG9pbnRlZCBvdXQgdGhhdCB3ZSBzaG91bGQgcmVhbGx5IGJlIHNlcGFyYXRp
bmcgcHJvcGVydGllcwp3aXRoIGJsYW5rIGxpbmVzIGluIGJldHdlZW4sIHdoaWNoIGlzIHVuaXZl
cnNhbCBzdHlsZS4gT25seSB3aGVyZQpwcm9wZXJ0aWVzIGFyZSBib29sZWFucywgZW1wdHkgbGlu
ZXMgYXJlIG5vdCByZXF1aXJlZC4KCkRvIHNvLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwNzExMjEyMzU5LkdBMzAyMzQ5MC1yb2JoQGtlcm5lbC5vcmcvIFsxXQpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0K
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sICAg
ICB8IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1
bmcsdXNiMy1kcmQtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKaW5kZXggMTYzMjFjZGQ0OTE5Li4xZjhiMzU5
MTdiMTEgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
c2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKQEAgLTgzLDE0ICs4MywxOSBA
QCBwcm9wZXJ0aWVzOgogCiAgIHBsbC1zdXBwbHk6CiAgICAgZGVzY3JpcHRpb246IFBvd2VyIHN1
cHBseSBmb3IgdGhlIFVTQiBQTEwuCisKICAgZHZkZC11c2IyMC1zdXBwbHk6CiAgICAgZGVzY3Jp
cHRpb246IERWREQgcG93ZXIgc3VwcGx5IGZvciB0aGUgVVNCIDIuMCBwaHkuCisKICAgdmRkaC11
c2IyMC1zdXBwbHk6CiAgICAgZGVzY3JpcHRpb246IFZERGggcG93ZXIgc3VwcGx5IGZvciB0aGUg
VVNCIDIuMCBwaHkuCisKICAgdmRkMzMtdXNiMjAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiAz
LjNWIHBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiAyLjAgcGh5LgorCiAgIHZkZGEtdXNiZHAtc3Vw
cGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERhIHBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiBEUCBw
aHkuCisKICAgdmRkaC11c2JkcC1zdXBwbHk6CiAgICAgZGVzY3JpcHRpb246IFZERGggcG93ZXIg
c3VwcGx5IGZvciB0aGUgVVNCIERQIHBoeS4KIApAQCAtMTE3LDYgKzEyMiw3IEBAIGFsbE9mOgog
ICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBjb250cm9sIGludGVyZmFjZSBBWEkg
Y2xvY2sKICAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEdhdGUgb2YgY29udHJvbCBpbnRlcmZh
Y2UgQVBCIGNsb2NrCiAgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBHYXRlIG9mIFNDTCBBUEIg
Y2xvY2sKKwogICAgICAgICBjbG9jay1uYW1lczoKICAgICAgICAgICBpdGVtczoKICAgICAgICAg
ICAgIC0gY29uc3Q6IHBoeQpAQCAtMTI0LDEwICsxMzAsMTMgQEAgYWxsT2Y6CiAgICAgICAgICAg
ICAtIGNvbnN0OiBjdHJsX2FjbGsKICAgICAgICAgICAgIC0gY29uc3Q6IGN0cmxfcGNsawogICAg
ICAgICAgICAgLSBjb25zdDogc2NsX3BjbGsKKwogICAgICAgICByZWc6CiAgICAgICAgICAgbWlu
SXRlbXM6IDMKKwogICAgICAgICByZWctbmFtZXM6CiAgICAgICAgICAgbWluSXRlbXM6IDMKKwog
ICAgICAgcmVxdWlyZWQ6CiAgICAgICAgIC0gcmVnLW5hbWVzCiAgICAgICAgIC0gcGxsLXN1cHBs
eQpAQCAtMTQ5LDYgKzE1OCw3IEBAIGFsbE9mOgogICAgICAgICBjbG9ja3M6CiAgICAgICAgICAg
bWluSXRlbXM6IDUKICAgICAgICAgICBtYXhJdGVtczogNQorCiAgICAgICAgIGNsb2NrLW5hbWVz
OgogICAgICAgICAgIGl0ZW1zOgogICAgICAgICAgICAgLSBjb25zdDogcGh5CkBAIC0xNTYsOCAr
MTY2LDEwIEBAIGFsbE9mOgogICAgICAgICAgICAgLSBjb25zdDogcGh5X3V0bWkKICAgICAgICAg
ICAgIC0gY29uc3Q6IHBoeV9waXBlCiAgICAgICAgICAgICAtIGNvbnN0OiBpdHAKKwogICAgICAg
ICByZWc6CiAgICAgICAgICAgbWF4SXRlbXM6IDEKKwogICAgICAgICByZWctbmFtZXM6CiAgICAg
ICAgICAgbWF4SXRlbXM6IDEKIApAQCAtMTc0LDEyICsxODYsMTUgQEAgYWxsT2Y6CiAgICAgICAg
IGNsb2NrczoKICAgICAgICAgICBtaW5JdGVtczogMgogICAgICAgICAgIG1heEl0ZW1zOiAyCisK
ICAgICAgICAgY2xvY2stbmFtZXM6CiAgICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgICAtIGNv
bnN0OiBwaHkKICAgICAgICAgICAgIC0gY29uc3Q6IHJlZgorCiAgICAgICAgIHJlZzoKICAgICAg
ICAgICBtYXhJdGVtczogMQorCiAgICAgICAgIHJlZy1uYW1lczoKICAgICAgICAgICBtYXhJdGVt
czogMQogCgotLSAKMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1nb29nCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
