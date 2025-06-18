Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C495CC77B73
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 13:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeruBzr8hhFQdJa3AAX3wpewAJ6GcIF1dV0HD8qDSAI=; b=zpmjoQ9W/kw2eJ
	cVbE//Ee2pzvSd5qJgGR/0N8jC+n5w7xE5TY/Ij49SV6O3R7o0ltOtlIMiSZEIqY0pGJne4y3wyFH
	HuAr6Um3VekvOXbAgJIzC9CCW9Ejn4On4AefC/qVb6iaiNaOq27Mm7WsyVREhdATL4S1TKrAzYNAQ
	CYHgBIOACJ3Uyl1CJeL2cjMNRFBGJAlwA6FUayd9zbAqFh+Szdha4JTfF+5jsWTgp+KA5VaxYsJoi
	UGSHtSv5eh78u8a1jTDActh683nHOEVhUuETPGTYgY/D4cwTYDdUTVxHo/3zfL8MBIy1/tZsUdY6U
	KfDJ+tA/BFBmaUdwCAJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRsoQ-0000000AHea-23cu;
	Wed, 18 Jun 2025 13:26:46 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRrhY-0000000A5QK-2TRh
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 12:15:38 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-553b5165cf5so5795693e87.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Jun 2025 05:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750248935; x=1750853735; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7jZQ+YS+lWYeVwEC8VFaNnmqDYcJYXkLsLKJpyV1y0=;
        b=DOadpy4PZ0urT3TeE29lqxwaeNeI03JCFIXHNA4e82BYXjHwFKYNREKlBd9eKlVnwF
         zveAh4EQrd9jWHMEntobQg8SHV63FloutVG3Zp2uHOg0eUrrArV59yCQQo9TCFRf47px
         60Bj2n2fcb2OC0hFTHa/5SbBJQWrqnC3IBnB35vWNmobfUtreqPwPp7eWKXSWCloT2P6
         h/nat+SMJMbEYh0oGJTtydmwVVddOLqiYsjOBDBYau7KBIlRAM/LHazn0Xm17BB+rOxl
         Uj1dTUy1Y/nUvaLoJgpwtEJ7pmqGPIsqnmlL/zOJC2+f5WcnkD+BJaL/F1hPPglLjXX1
         NLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750248935; x=1750853735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7jZQ+YS+lWYeVwEC8VFaNnmqDYcJYXkLsLKJpyV1y0=;
        b=LGJkrUTEyawR3DrH93rSqzQKaDqQz4VCLNbbxou4bHIL9r+YFfSB7LQgDrxHHiTMLK
         c2kGIM/GMgl/JY6W6IJ6hV7bLA99nF2pzw8Riudoc/elLBCAE9LWFmR1JWOt5VRQg6ab
         35iUWGBjL+Ta9asG15MZ17ceGn0JAtnC/ZrO9vXKBGf3VvtIbjLhTTbye1ZYOeeMEjOZ
         hnjA9AKOvxILfrdNFpwY43ajtAbI2LkDk0qm/Tt1HVfhsg35lYJ1vJDgrTSyDDuKqvAy
         xBeZlY4pCsmg5ILl0G4oS7WnLKxJglDhv+aEmeLb53tV1zINAFjuQAEWRXF7oRevx6ss
         8g3g==
X-Forwarded-Encrypted: i=1; AJvYcCVmY2RRFGlqVGhNWhIiCUO56/Pe2wh/ewzSyS/DO8Wr7F5r4S4t97aG0RcaHG2h7n8j4VBBl5CWo+A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0pTOzlWe7k5lQGO8CHOct3ApHuJ8bovyBqLD8EqIsrXnb0PPK
	r6phhPEyZ6XMKbGA703IKaGQktniue9uL7cBUfdgx62Tk1XXFKhgW9u4JcaBfOZxL5yUgHxMdAZ
	NhibHEspR79GrLDRNuZRZTXkktK6lATNSHq2/2bNcVQ==
X-Gm-Gg: ASbGncvTgmArETtNciH8Y6lFQA068ZuHgYeWecEWn6MUA0+7RsY4bAZbt7u4b3Co2nO
	eDd1YUEdcBTGK9Mb+rTyIqIzunwVzte/PaDUO3/n1pFP/obKnIDO30/8TeCwL3BD9GPDNYizo1m
	EsVm48nCP9un0tWmzMhWfl+ZbhcAfubNmr88irUgJoNEg=
X-Google-Smtp-Source: AGHT+IGBMbnQS8CZK59QUADw6V+D/mLT8w6YMYDnxWivA5Amu6Cgv0XDSbL6jWX7zdVZfzp8QG5Ih8L/ToZVwFJNik0=
X-Received: by 2002:a05:6512:1285:b0:545:6fa:bf5f with SMTP id
 2adb3069b0e04-553b6e732b1mr4223465e87.2.1750248934811; Wed, 18 Jun 2025
 05:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com> <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
In-Reply-To: <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 14:15:23 +0200
X-Gm-Features: AX0GCFscY4ky5ebft20JokFvuO1y3hVcQ04FGalsWAeschf7cTa_SUmnKoC4ETU
Message-ID: <CACRpkdaX24z5YsfcrB2oqbZpdexZJNREGkWiYgq1ar0c8O0QBA@mail.gmail.com>
Subject: Re: [PATCH 6/7] pinctrl: aspeed-g6: Add PCIe RC PERST pin group
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, andrew@codeconstruct.com.au, vkoul@kernel.org, 
	kishon@kernel.org, p.zabel@pengutronix.de, linux-aspeed@lists.ozlabs.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, elbadrym@google.com, romlem@google.com, 
	anhphan@google.com, wak@google.com, yuxiaozhang@google.com, 
	BMC-SW@aspeedtech.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_051536_639951_11D3E288 
X-CRM114-Status: UNSURE (   7.92  )
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

T24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgNTozMOKAr0FNIEphY2t5IENob3UgPGphY2t5X2Nob3VA
YXNwZWVkdGVjaC5jb20+IHdyb3RlOgoKPiBUaGUgUENJZSBSQyBQRVJTVCB1c2VzIFNTUFJTVCMg
YXMgUEVSU1QjICBhbmQgZW5hYmxlIHRoaXMgcGluCj4gdG8gb3V0cHV0Lgo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFja3kgQ2hvdSA8amFja3lfY2hvdUBhc3BlZWR0ZWNoLmNvbT4KCkFja2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpDYW4gSSBqdXN0IGFwcGx5
IHRoaXMgcGF0Y2ggNi83IGluIGlzb2xhdGlvbiBmcm9tIHRoZSBvdGhlcnMsIHRvCnRoZSBwaW4g
Y29udHJvbCB0cmVlPwoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
