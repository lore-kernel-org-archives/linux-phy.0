Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB535C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 19:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faZCoUzOYY2bpUEpxFzcD193F158zFTEwNQcTlpUkUA=; b=yeUIe6ZM14h9pL
	oYLaSFUeQMbs3uSPp3vJnAFdNsWBtKQRKVH3k47FLv8ndIi3rxiiSrPnxa1YfewLJQYt/05z5YiCH
	D3SgQHkIgcHW2t7ncrATebXlLb8EkwZwkUjJQvdnZoeZhRxgglTi8mF6hyQMykLHcqk3XHMB5Wy2o
	MFGQH8Zrfg8SREDeCany2QDVAQAwD5ovObnqVFp41FS8M7ubHlFebHyu4eb1pwAdHPwIUYVaYQ3Lx
	pXzEIyG1ViixSunwaJB4i3FKrr08i8TZDY8IrgNwtKZoin/4jCEyMPDFm95dtD95+6KpJ2C0gxg5n
	la8w2zRWNpt2/ckyO8bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2FYS-0000000AVeU-1eTM;
	Wed, 01 May 2024 19:23:48 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2FYP-0000000AVdg-477j
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 19:23:47 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6ecee1f325bso6299878b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 12:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714591423; x=1715196223; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hbubMcULTqXEpjOw1/tNxpjigRY/QT4JGEZ8U1qfXOo=;
        b=V2O433HS8ifWRqE8QKdbQEQ+FUyjv1ZT+EDzJJZiwgspQddU0X8bqKBlq7GVia0l80
         PW8GLlJTypiKpScalzc/fUb71RAVoQCZvIYUPTUuUgKRxLkqRs95MqYsBWu541qNsn3k
         LBjNBMCyWGaDrArJfmitmCTvfAuQyBtSEBCSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714591423; x=1715196223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbubMcULTqXEpjOw1/tNxpjigRY/QT4JGEZ8U1qfXOo=;
        b=d9Ufz9zNQVG6jD+6h/YyHTD13sJBuLCoAdmHijXXLpimFv5K2FeusNa0kv06843aWD
         D6oF+uHxLZNw5l/LvEcS3AIQTncabRPidMkc4cEI/BcYSRYuJFbyzZGfkplSJA8OxhoW
         pDz9FQC7++QMk9elk2m52K623XdC/J7jhCDZtS4i6xM2OLI73jiS9DRom+m5QEZPifT+
         5qjsJT8MvpJyNy+FJR4Lvyhjk5LdLLb/7vY6kVBtu3m2ryhU0F8nimXQgu7MvwFkhpES
         IoEHq6yK2DCbvOhqJyAcI5TB+AYghqK9ti4aXfX1EXppmcFcDX0WJ8+edGwIh1ePPH+N
         BdJw==
X-Forwarded-Encrypted: i=1; AJvYcCU7xDhJhFb3L+nZoyl2xO0vS4W5QR548JKx8kVT49vrZLYcGv+rfO/psgSsf6lE49ENWBpoD6HfsvmWA8p6CPIcRkVtORj7zV3oQzVU+Q==
X-Gm-Message-State: AOJu0YyBq1P2lRFIS+oQ4s6o5fX7MkCqVSf/Douq4IwHKsouACjtcWA8
	DPDen9bJ/3I6TCFGSXAu3jOP8RZARX9rTzXc9xS3WWXgOPBeT/yWFt8lObqpxs4nyWKT/Mp+jFA
	=
X-Google-Smtp-Source: AGHT+IHUe7u3ErzWwzXwJ3ocHtxN8Ih3gAbeRlKm+p6d9ka3xKtkiRboiJTK1WQ3TFOJ85HBok3NNA==
X-Received: by 2002:a05:6a00:9295:b0:6f0:c88e:a0dd with SMTP id jw21-20020a056a00929500b006f0c88ea0ddmr5018519pfb.28.1714591422976;
        Wed, 01 May 2024 12:23:42 -0700 (PDT)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by smtp.gmail.com with ESMTPSA id u29-20020a056a00099d00b006ecff9f9edbsm13388045pfg.77.2024.05.01.12.23.42
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 12:23:42 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1ec76185c0fso27585ad.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 12:23:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUevHHfDysYTxJ0zWK3vZQLncVH/VMDhVYWGC7qnVw8hHwBZ6DJ1KSfwtnxxE/5wMWcE91Iq6vkSTvOBgOxpbSft1thBEdWD+3uMENGTQ==
X-Received: by 2002:ac8:7f03:0:b0:43a:f821:5b17 with SMTP id
 f3-20020ac87f03000000b0043af8215b17mr33651qtk.3.1714591400761; Wed, 01 May
 2024 12:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org> <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 1 May 2024 12:23:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VYKELU-xBjMUqLSASC+m+eGCxHCgueCFjxwphxggNAww@mail.gmail.com>
Message-ID: <CAD=FV=VYKELU-xBjMUqLSASC+m+eGCxHCgueCFjxwphxggNAww@mail.gmail.com>
Subject: Re: [PATCH 04/13] arm64: dts: qcom: sc7180: drop extra UFS PHY compat
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, David Wronek <davidwronek@gmail.com>, 
	Andy Gross <andy.gross@linaro.org>, Evan Green <evgreen@chromium.org>, 
	Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Yassine Oudjana <y.oudjana@protonmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_122346_070598_F7524652 
X-CRM114-Status: GOOD (  16.09  )
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

SGksCgpPbiBXZWQsIE1heSAxLCAyMDI0IGF0IDk6MTnigK9BTSBEbWl0cnkgQmFyeXNoa292Cjxk
bWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gVGhlIERUIHNjaGVtYSBkb2Vz
bid0IGhhdmUgYSBmYWxsYmFjayBjb21wYXRpYmxlIGZvcgo+IHFjb20sc2M3MTgwLXFtcC11ZnMt
cGh5LiBEcm9wIGl0IGZyb20gdGhlIGR0c2kgdG9vLgo+Cj4gRml4ZXM6IDg1ODUzNmQ5ZGM5NCAo
ImFybTY0OiBkdHM6IHFjb206IHNjNzE4MDogQWRkIFVGUyBub2RlcyIpCj4gU2lnbmVkLW9mZi1i
eTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+IC0tLQo+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M3MTgwLmR0c2kgfCAzICstLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NjNzE4MC5kdHNpCj4gaW5kZXggNDc3NGE4NTliZDdlLi41MmQwNzRhNGZiZjMgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC5kdHNpCj4gQEAgLTE1ODIsOCArMTU4Miw3
IEBAICZtY192aXJ0IFNMQVZFX0VCSTEgUUNPTV9JQ0NfVEFHX0FMV0FZUz4sCj4gICAgICAgICAg
ICAgICAgIH07Cj4KPiAgICAgICAgICAgICAgICAgdWZzX21lbV9waHk6IHBoeUAxZDg3MDAwIHsK
PiAtICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInFjb20sc2M3MTgwLXFtcC11
ZnMtcGh5IiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInFjb20sc203
MTUwLXFtcC11ZnMtcGh5IjsKPiArICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0g
InFjb20sc2M3MTgwLXFtcC11ZnMtcGh5IjsKClNlZW1zIE9LIHRvIG1lLiBJdCBsb29rcyBsaWtl
IFVGUyBzdXBwb3J0IGZvciBzYzcxODAgaXMgbmV3IGVub3VnaAp0aGF0IHdlJ3JlIG5vdCBicmVh
a2luZyBhbnkgc29ydCBvZiBjb21wYXRiaWxpdHkgYnkgY2hhbmdpbmcgdGhpcy4KClJldmlld2Vk
LWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
