Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69FFACCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 16:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qcltDyNhw87hCYm8iZYABr5CSE+ppTM6aDJV2YNdWp4=; b=n+OfzIruzu0kVR
	AlGTd/5G2LYTPEm+wWq7a/X2mens78gB9WGckGv4DjRjdzDnq0glpushDdUFdWNg+wuguv9Y4PzFa
	ui1TnVIqJKbQy/cazd8avsODcwyrn3Nk57j8ezq9/NtX01sFKwGThLLw8XGpG1i6zNc2B8+okbhx9
	XNbts7c7WgbCIUsqp/gTLAiU3+q2iMQRI1uOF+j5/MDPk8Sei8/YZaFAbVTqI/KSqmuGWyFJtOf9O
	8Hw8bfrlxPtBMymQcA8c2QEAU4mpg2LhYL1lIOCsfZrcsZfdYVbpl1+B910YXQcPM5GCM0TFVSoeh
	K0KD95nJ6dgDdQXOegYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6A8M-00000002LWh-0mql;
	Tue, 07 Oct 2025 16:01:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6A8J-00000002LW6-0cj6
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 16:01:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b3dbf11fa9eso1184710566b.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 09:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852905; x=1760457705; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vIKhzvptts89Sbix0kNSsLk9FsLBPvSNCFN51YR9CMM=;
        b=Ku9X1KagU4el3hfBtArfNo9FwlxLYW/fKa9V2yWEhgvN5TFL8NZA2T8LWhbPJZuAf5
         qAh0biB/ZssFiV8Eu51O/FW7I4u5XTH+bVxrB2SrWJ7zc++4Jn0RNkybeLdUv3NseRqV
         XGXb11J6Fqn3MCzDnEE6Jgad7c/1ZIiF145krfIAbSnLRCASMnvrMGF4SfTTm9Vv8p14
         W9KFnBzLx7C72GHT8EnOUKedOkxhVhqaODI+GA+pCzyV3g0hcjUa+X3YFQXuHfvCfl7k
         n2kP9uGdGZwEfx1teoz5tk8haMkOOihGzkvKdX+mlrJp2UY7sbJN+GSSjhv73LW2+djS
         8ZTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852905; x=1760457705;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vIKhzvptts89Sbix0kNSsLk9FsLBPvSNCFN51YR9CMM=;
        b=gFQlXVgkBXLNQ0ztLebclAAlOOPp6RL+/R+7CwKHc38oH7DxsjZhlNGBuaWstTK5jl
         jacWPLizXv7gAUU8uM8TR2kH1uLwU/eM684b/8WZ2WtSnGNUk1EAYDceBcYWvukKP3cn
         USkT2RNA6PHVSWp1Ndb8wkhbzcT7pjaLZH8bV9OI0rTRLlsJieiqulsaZ6uPIVCz2UzY
         OuupCe7Y705b9OZYncBWCfdhVVxQwKhzM0oAsf2gpUMWolVGYfmIbOsMq0/NfZG6YSik
         3grMeCnwYsAiiI4e0iuCFhTkCBbVlAHEWyzblLYsjl0P+LxJwQdSH+CHwPn6d2HHTspx
         CuCA==
X-Forwarded-Encrypted: i=1; AJvYcCXUe+zQ0LYxvnz8s+kauaebBf9xnxtwa4tayituqYqtv22Mz4ZUZwCrKWWcfrPXDkUBXbB54E4yUD4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlkMjY4l8s9O84sTfw7AyPu/KjBdzYD3CyVMvoRf+8raAGtzFD
	zFYP33KqL22Zq8qZPzN+JC3O4DiAsipBv1cc/j9b3FdwxyGmH+AY7X3jVzNKYExEWog=
X-Gm-Gg: ASbGncucJEtAFZaMP26IwaFKJLju1h258rHRzvpyXGXRrwyxzsUyGKPt7K7QgumQ6/G
	TYknghjSSmgJYaGAOiiy5falEW6R2ywtmm/9xw+eC06E2Ro77cNmOJR7ewEczB0MldafII0GW8x
	wzaly02PpvQf0C5guDOequTQ5tVXiP4UimM9ED/rDCk/AEorCT8ceKc6c7ZR8WGs3JHbd5cbR0t
	DtjAqIQXu5ZS/ImPZ/dc423MAMR6QdKihQfAv9oQQpY+rztaoeeXTmEkaNu9VWS77njEkIUkwen
	S9aNXsC52FJAnuiJPpZJkpTOcLnPMuib+p4/RgRuvrytwiY0gO0wsZZXnF4xaM4Ig5xnSNgT/gw
	QSZTnHf9NdJpXDS4ah3kZqtOsF10Q794thd/qEbzGqOsJHHirDHjU2FEReLR0i+9Nb4GMr9VP3+
	INlVRApb4Sy/MJtcOeV/eLJlDzfg/vFrHl/bdOOHNy4k8VM1UMWtU=
X-Google-Smtp-Source: AGHT+IGf9IQ2wpi7EPhCeaXvA4php2sl46FSyFnA7c6eHrUoUGEvZyyl6soc6Yh6K+i89mmku9HqRQ==
X-Received: by 2002:a17:907:7f0d:b0:b2b:c145:ab9a with SMTP id a640c23a62f3a-b50acd2b3c8mr14811566b.60.1759852905201;
        Tue, 07 Oct 2025 09:01:45 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a60dsm1402129266b.63.2025.10.07.09.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:01:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 17:01:44 +0100
Subject: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
MIME-Version: 1.0
Message-Id: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGc55WgC/yXNQQ6CMBBA0auQWTtJKSEKVzEuCp2WWTBtOoIaw
 t1tdPk2/x+gVJgUxuaAQjsrJ6loLw3Mi5NIyL4arLF9a8wVc3pRQZ9Wx6LonzixeJaomJcPqlt
 1k4hb+DvMNPRkyVF3g9rMhQK/f7/74zy/0CuPoX8AAAA=
X-Change-ID: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_090147_205112_D2CFF278 
X-CRM114-Status: UNSURE (   7.25  )
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

VGhlIFVGUyBwaHkgY2FuIGJlIHBhcnQgb2YgYSBwb3dlciBkb21haW4sIHNvIHdlIG5lZWQgdG8g
YWxsb3cgdGhlCnJlbGV2YW50IHByb3BlcnR5ICdwb3dlci1kb21haW5zJy4KClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbCB8IDMg
KysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwK
aW5kZXggZDcwZmZlYjZlODI0YmZjMTk2NjhlMGY2NzgyNzZhY2Q4NzlhNjIxNy4uMmIyMGMwYTVl
NTA5NDg4OWViM2U4MGRjYzIxYjUwNTk0M2M2ODUyMyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVmcy1waHkueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCkBA
IC0zNiw2ICszNiw5IEBAIHByb3BlcnRpZXM6CiAgICAgbWluSXRlbXM6IDEKICAgICBtYXhJdGVt
czogNAogCisgIHBvd2VyLWRvbWFpbnM6CisgICAgbWF4SXRlbXM6IDEKKwogICBzYW1zdW5nLHBt
dS1zeXNjb246CiAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhh
bmRsZS1hcnJheQogICAgIG1heEl0ZW1zOiAxCgotLS0KYmFzZS1jb21taXQ6IDNiOWIxZjhkZjQ1
NGNhYTQ1M2M3ZmIwNzY4OTA2NGVkYjJlZGE5MGEKY2hhbmdlLWlkOiAyMDI1MTAwNy1wb3dlci1k
b21haW5zLWR0LWJpbmRpbmdzLXBoeS1zYW1zdW5nLXVmcy1waHktZmNlOTVlMmVhZTM4CgpCZXN0
IHJlZ2FyZHMsCi0tIApBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
