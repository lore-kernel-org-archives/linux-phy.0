Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8532C55822
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 15:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TyYy1o3d4C7QbVy36cCJ4vXcB8U6WxkubHzegYgegx8=; b=MvfUbpzwPurTgm
	uzubdoJZZm6p+WNwb2nXKBoIaLiG9q19lwMPHpj4DYrixwhjAPcPfPP17RHbQqhjEt3jC08go+yUc
	6UDNMQgXbd0JltM9KfRaP31skdMlghlMYtWbkOQdo709HzaSeCgh9xVX32QM24lohZ/BjsnvcmMeQ
	Jh0Yc/uh2UzxD6i+8409gzFlGWgiGqITOzBuwMgIJ9ZIlT+Lhw1F53kQLMF5GwID8BC+sxMWh3KHd
	lK+UHQ7eiINlacOGsNHM+ItL+O4mwlfd7Afp8Mv+Hwf5gVzNemW3uREQ0/fOvATGgpE+tfqghyveB
	zgamHGsy4e3SCQd6e92Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0F-00000002CtY-2d26;
	Tue, 04 Aug 2026 15:24:27 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH0D-00000002Csk-12yw
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 15:24:26 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-848595b338cso5944400b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 08:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785857064; x=1786461864; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=A4CE+0Ei35NseJ0byCDc5G+3dRXiUaVlVqIokKqyYps=;
        b=H8rUSsNKrfaMu6pxYWlY4VME50gIlD2JpUElVLSTsxCJr90AgHz9OCzR8D/YGmmAA/
         w9vLhtg8vMWWCSqp+O/1gMS17a5ATrVA1Jl6hUYQ0y1pyVA13F9gsPKqKHc7Mu59+F5+
         MqwFfQTK6IgE5Aqb741EyytIhGRIO80jirrsOA4eIHCXtIpqg39nXKF9/usZnqeAwTiA
         1JbSFp/I7AOIWvxL+npni1NDLTgHThpCaoi91cjCqby6dugp5QohmpnVJJU0PZtEPAak
         FXlLO7bV85XLeLiiK13F/kLLDK3WwFAZspVvlnIE09vhiqqiN8+tsLCh+89zDMTF+L+8
         o8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785857064; x=1786461864;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=A4CE+0Ei35NseJ0byCDc5G+3dRXiUaVlVqIokKqyYps=;
        b=Oq8VBVdqnY0agwyJR+n/ECGHz3oXRYAgImhM89OzKpyzntUcYt9opEN9PQ3PuG3HdX
         3luZ5+0rCWPt1BEqOvftBqY5T8ZgwP/AheUoaJiQnZv0r2NjaZA5SZDLP/0UivLiajCZ
         nawYKWnlCuLpYrhgBsg2Hve1mzUXbzXqspawewdcFf/NNL3S/zGzGOTuo0qYX9GksB7D
         5aF86vRgj7hyEr+g0GK8Rzeg/fEyqskveZo12vWntVV+0sUQsfNN3RutanlJwlSRmG0F
         U6q0ZSSOyTEYTEBzxect9aysOEJmZSguh1K4tAMlRE+DXPTSwEd0YsdhqNqf6vCUz43R
         RyLQ==
X-Gm-Message-State: AOJu0Yz6gO/L9Dk6XV+aBKe3Dst4l1nd1FS00LdWUS99jEibLlMOUy1f
	8hAgFJMtiOhc36aBq6fJkVC3OE7WVjBYpOzGlaAF6ECCI8rbYrKOuNT6
X-Gm-Gg: AR+sD13p3BFwR5UIWN7zXuQ21KmHot1nKjvWcg/OXokpI6/xuepojfT9mvYTw0zNhVa
	n0KyHyC3YGQQRCwMC2r/yXQeHAXE1v7/WOP7/7bYVjbhdyCprZ6Mncbw9QQv4uzzbgnmg1up9kA
	HrPJ2oP0N3ISKWuccTGPFt3M1nSjN/vMMn3WIjYurResTEQSpOYCG1+5PLsEcW5Mjfcl3jciVpa
	2f3zcdOu9DNOdQVEYXSMeWW8oXc0mftiFbrqGN3Xd7JDm6em92XuWBbbPbEIiaO3snqcP9UJReq
	jlgxz/NkpneNRKtQLioP3V/SjNTCs+ZiMURQYKPBu1USxPU0ImLRpLGPqJUT7jsmJgJ/ghU8e7E
	oKkXfSJ+cXDoGrL0HNh6bQHksfrcQuZ1T4/WTHh0+IIFcgl9AFRT9lzvaxk37HAG6ufo3PuEeJS
	kWQzdWmBe/DIuDP8OSP3ppRUU3KZnkJWVihmqAQdqGItbny0TAgO8JmDiLvMpwIp3W8+sUN27zG
	95YaTssGsr8p9CffVSCXAiwyF1x+oKA8FO7MQ==
X-Received: by 2002:aa7:88c2:0:b0:848:60d5:9526 with SMTP id d2e1a72fcca58-84ee489a429mr12656420b3a.43.1785857064238;
        Tue, 04 Aug 2026 08:24:24 -0700 (PDT)
Received: from [127.0.0.1] ([103.17.98.26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe564b3sm5586778b3a.14.2026.08.04.08.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 08:24:23 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Subject: [PATCH v2 0/3] phy: renesas: rcar-gen2: three cleanups
Date: Tue, 04 Aug 2026 23:24:16 +0800
Message-Id: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACAEcmoC/22NSw6CMBQAr0Le2pr+BGTlPQyL2j7gGQHTYqMhv
 bsFty4nmcysENATBmiKFTxGCjRPGeShADuYqUdGLjNILktec8W8NZ71OEkmNO+40NapWkP2nx4
 7eu+ta/vj8Lrd0S5bYDMGCsvsP/ssis37142CCXY2Rp2sKl3lqks/Gnoc7TxCm1L6AiBG75W0A
 AAA
X-Change-ID: 20260803-rcar-gen2-140f014cd384
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785857060; l=1287;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=QeUfwmPFisGgEcaqkK4QXIM7RLtOZ+2jGfU6f8lmOwQ=;
 b=slXwm7nOmlEjrB8NV6wNLOHCgZIBl6R6ANzhFgTjUA6ZY+LNutefmrFEWTeeOAKbm9zmQ8Xnz
 x+x747Z5FjxD+Bp3TMD3zf2mDYDxHTX3pkdBt/e/l8YOWfS9QCGME1L
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_082425_291630_79942AB0 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
Changes in v2:
- Merge patch 1 and patch 2 into one series.
- Collect Krzysztof's reviewed-by for patch 1.
- Add patch 3 to use dev_err_probe() in probe function.
- Link to v1: https://patch.msgid.link/20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: linux-phy@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Felix Gu (3):
      phy: renesas: rcar-gen2: Fix double of_node_put on phy creation failure
      phy: renesas: rcar-gen2: Return -EINVAL for out-of-range channel reg
      phy: renesas: rcar-gen2: Use dev_err_probe() in probe

 drivers/phy/renesas/phy-rcar-gen2.c | 36 ++++++++++++++----------------------
 1 file changed, 14 insertions(+), 22 deletions(-)
---
base-commit: 415606a7be939835db9b0d6b711887586646346d
change-id: 20260803-rcar-gen2-140f014cd384

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
