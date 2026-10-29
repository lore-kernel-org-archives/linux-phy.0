Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6019A606A333
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 17:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DVMY/A0n;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=hrHOlwAH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/EoNaRO27Z56cB4a5ZcZV97z4T65P/HffjEPIUPL7Q4=; b=DVMY/A0nNilYLycVOziljyEw9E
	Wn69aMfkL1a5EGUkY0pXGRKQmfzDnapUo6ydHEYKC1LFRfd2RNuNNav4WnNCFJ8RSviSMm/C8oGwb
	Eywi+JXddvtt93j2Ax9dpBVa3up+y8NepvlNRbSHhyA6lTkdHDKtzy5StZyz7gausV6apD/3+fdph
	6LSGcs3qdsO/8eB3qB4l4/mzXw9a2oXtu6AMR/oh4r6PfLna/dd9qi4Eu3lSji5/Pk1tP0RJ6RaGm
	WMUKY0bdbuAqOy1PPLNTA/bpmTbWWaQtt6XJ3HLg8JxuCAgezJc5FyL4BUSWIrsNDqTM5FZYwfYrl
	9+M2ce9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTr3-00000009xlK-0RK4;
	Thu, 29 Oct 2026 17:23:57 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTr1-00000009xj2-0EzK
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 17:23:56 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-5eae1276409so891529e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 10:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793294633; x=1793899433; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tY6q0/ZAtlO7c/3kJ3SDz18C60kPr8B6rEIMfU8K4HE=;
        b=hrHOlwAHrgRiq6BGU7zNtEe59dF/B0whDR2FKt6Y4LCczvyKrllcgEbnZC0swpGZFW
         IjclOKQgjLMlCK9peZDlxMWRUXyvxdRQ9WiL7piI/Pfgzlmg05TtRW6zDfP1YaLDEvQX
         3G9UuZdkWKgbHoxip3IZ3qYlxc153kx50vQzp8e4KviPafYucQqbZMM79hpqJR26uXVA
         ZhaZPbZwmEKenqxxNU7Fs8ObjxZg9W9+G3S/uMhuvUeLslleLyWlJhKwIkk1v+AY0QFS
         wG1FTnWYDtdjlDgQ6DjGmQJIHjjiHRs32mG4w1dzu87FBuPKGfuVu3+jmcASXQGo0UGA
         trgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793294633; x=1793899433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tY6q0/ZAtlO7c/3kJ3SDz18C60kPr8B6rEIMfU8K4HE=;
        b=llvkTDuAbHMcJBhr+8h1DAlR4PSuU9k6WrRr/mntSwmdxAtk34lvTIaoWwcvKhfMYz
         nRekvzRA8/MhlA5c6G0mAVxub2iIl2zWsxzc1I/0WmcdQpUaJc+yNkq090mAeEOZ5grj
         +Trquo/nwnrgw2zHQsf/RRrp+YgodbKL8EfeZCsSN+o8YUcWz0+POdmRuBB2F0okHf1L
         bXUv7ENundjDUkpfHIBmJRT+7fGgIV8Tgr5+6Twwq9ZtYTNW5JliT18GgDLzmc+15PE9
         YMVR98qSsTvMrKoaQ+1N6ofoIJf4ds6J7Wnd7YZegDZi9v+Ve2lvOfjLTfZceE5ozHec
         K6ww==
X-Forwarded-Encrypted: i=1; AKwUvBwJkShiL+wrsLacHH8zpOGBkUu5MwOrrYOZXfxnE4O8POdSMHkURlC0lm4nL3YD2c4/zXMnMLH/XgE=@lists.infradead.org
X-Gm-Message-State: AFq9FYLkUbXRoI269nkQhuk2DUaYl+yk4QnLctN5xTFSCZCSgb1hcRkW
	BIXL6TVKs0IykeqPM9t7idfgNb0hWlxv3/9ryB+NIdf+L2lGD7hN6o2O
X-Gm-Gg: AYBFou1pPCIZh/IMI89Oki+61kgj6G8xslpw21o9wWMsof++MMEI0e0E4LqIHhVlB1q
	S1vJSOnhvZlG3gWeDK5XImbmXZ4BO86OYU2LLgJyoLCO2N9M9eKCNzqLFD8C514WsByULo7SttX
	T0czExYmwLftMf878G1GOr+Oe8/7W8vhdp0NquK7XvCHeW+M/FiAN2y0PzPQaI7OSp59YwFIJZw
	Ho/7BtWCROFS+ZW7hiekRru0fpkqKccbTNRcWGBIswJneY0rk2qCYnTdxT0mwe3/zATGdfS+Yug
	RvVOV8SYfxqBTA3gHQviZHdLTwRtuoOfe30QxCXNf1uKfPyv/zw2CZMHrVGSAXJPMzqFtIQMeJS
	YibfiH95oNmBpVNtPtZUUWYx96t6P2Q+X+SH1pB6cCe/fQN+VZtVh+jxo6jSX/SNyxr8wExv5TQ
	/DBPEDlYEFD22wJMphetSZ8Hb4ssQ/IE/tEpPaeWGbRkwUnELId/uaUUAOpYT6EbXupIPpNbwM9
	Wq+2YTz+KFIs4czmkTWMrvALixJlV+Md1e1x3wehdhB2Box9kBqcP/H0vlP+qvmSp9UV39Ol+rz
	F1uQXef2H/KyZHMBM9iSkMx6AIhHL4ekGJPNME4Xekp079KStnKx4Wf6gOiA25ZWk+rc64ia13g
	9X+THl22P67eTqGTI/gcu2fjCLZ6GtsmQA2Fk
X-Received: by 2002:a05:6102:1626:b0:7cc:2bb7:131d with SMTP id ada2fe7eead31-7d03a4eabe3mr2727809137.9.1793294633099;
        Thu, 29 Oct 2026 10:23:53 -0700 (PDT)
Received: from MaquinaLab.. ([179.179.238.247])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7cea3d32a48sm9907357137.9.2026.10.29.10.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 10:23:52 -0700 (PDT)
From: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Xu Rao <raoxu@uniontech.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: document Allwinner A733 USB-2.0 PHY
Date: Thu, 29 Oct 2026 14:23:24 -0300
Message-ID: <20261029172325.3425046-2-vinicius.eduardo.pedrosa@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com>
References: <20261029172325.3425046-1-vinicius.eduardo.pedrosa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_102355_103540_890B557F 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The USB 2.0 PHY in the Allwinner A733 works with the D1 settings of
the sun4i-usb driver. Add its compatible with the D1 fallback, as was
done for the A523.

It gets its own compatible because the driver has to clear SIDDQ
before releasing the PHY reset on this SoC.

Signed-off-by: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
---
 .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index 580c3296a18d..da4ad6fb3531 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -23,6 +23,7 @@ properties:
           - enum:
               - allwinner,sun50i-a100-usb-phy
               - allwinner,sun55i-a523-usb-phy
+              - allwinner,sun60i-a733-usb-phy
           - const: allwinner,sun20i-d1-usb-phy
 
   reg:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
