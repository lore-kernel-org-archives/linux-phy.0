Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29729C71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6BHsPKzArAQxL5FGjDYlK8IiOvGGp4QPAuyEQ5bFMyc=; b=VZ0IpzdujaHVzb
	iRIjSMBf3zUwpxTSQTXtE6tGC7rqw22YJ1BNTMUwr23+ZRb8rRhFaBIwMiKPE8UFeLh+kOxLBxo4T
	V0TyrxkTdIPQhbItOGLfHiVzUmSCn24VP/0UrT62YSMlULjJzBpdBGGTp40p3SGAvSXe8Cg+CkJ/l
	q5+TqDJsuooEvDjYk/s6UotgD+k/rcM8cxudAjWkyP4CCBPOYo43msB1FgcaD2kZ8YMLVZj8gZlY8
	+wHMKeyhsID0WToPzd96Jx2BMxhesHIrNlyhDmJLmckqsa2mHPtTKADIIay1ra9V+Xma0hRqwXNTg
	5zBYrCLUW4v6RR/h0vgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR725-000000043yo-35Z7;
	Mon, 16 Jun 2025 10:25:41 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR6Pe-00000003xFx-3TXC
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 09:45:59 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-607ea238c37so9172199a12.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 02:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750067156; x=1750671956; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wv5TZzXE1pnoqd59sPXctLTMd18ru0CNrepNvpJnV7Y=;
        b=MaUDj9Np5+ulEbWrhPha7kFMoXPhmphIm+wQK+9sLwPgxDDsK8F4rGnMVWdUrkz/2j
         Cz5JGG87/s2m19DN1oh8BRZsaqtE5uvkqMNika4U2hWe7/ej66hTMBBB4T5JMo/z10xD
         /2TOsYTGsAD5/iXtGfcNLxFtSQRxvtNaxR7ESzc7fiK7K0oKiursqL77D7pW7ptkMCOq
         rtFBNW+Q//cLNGcCElgMRCkcjT51Tu/tfrVv3TsRxkrHJ8sH38Bd7lCnKiDxX8YIvbJw
         j4oudU7W5R30gRNRU2xHhpyB6xWFOX0lnqvaQcyGIrYCxY/7pxzQouJp8ObtoMvZ955f
         CRmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750067156; x=1750671956;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wv5TZzXE1pnoqd59sPXctLTMd18ru0CNrepNvpJnV7Y=;
        b=PVOv7Xa90RR1Jop9Itgq3iMKa25BKFZ3rgfqJ7pZIwdRuXHxr20qPpIHYEb7jmmpDH
         0y7i6E2E4zQOrRgPmFs7BmGfJzpMcYrNUJuauyiSFUWLQop1IzRk5uQlppWp7GNYjxvm
         6ITwnRHRDW2ifF28LipAImwuIzthIllSglpjFpfd3aaQCI/FtSkmfFxb6CHoH6KxTdO4
         DW+u34ZRvPwJNHz3Vu2eStZO5UhsaQMn32P+qJxF5WNgnuDCEnzp/1gkPhRvPi4WaHDt
         8tt3igzlHhLVcpeEiDQevBNMlQIWN2RhKlnSWs1K83FM/u2zqfR7zRGmtcV5p94Zsg8L
         6hEA==
X-Forwarded-Encrypted: i=1; AJvYcCXBexkDKYtebsvWnqQ78unEtQ/PA7WuHjMqXRppF7DhjWqgvTGv8xM+0GftXP6BgN5bXpD9cMwqDKk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe01R7f82ENH1zNwxIvPB8p9kazm7oh5AWTPDz26kPMRhe4M+f
	fs4SidU5XZdqf55HXtZVQPz6oAB/JCvMUk7AAjMHry3KzxR0828tDBLU1pFzv+luK10=
X-Gm-Gg: ASbGncs4BSS3+U8as4EoIFrleVil+JHo7aeO3SD0v1M1JQ4fuDCGiMwhgLjD7Uv0kpo
	nr3mexsjSFg5gV1ev1RY+xUEBcJQ16DLeMRVnrd7XRWXByLIp3eQsIUvxWGxuDVMMAxauTzJkM+
	MWept2Vd24JV2wVueWkvIBmkiz99l24eoZ/OeOP8EVIb3kuxF89uerF1U9KnM3DJB9YhRPJdp06
	Ffu6vMpWj4bWBbaW+jyM+v/0CcA5pcCdX+KxaFp4BZo4BY/3QoUyYGVgThOvkI4BVjkTkBlRONB
	DfqOtynXeUIALgcZaD2N5F926723grbrbq3y+x1ShGm37syCq5NQkMD1v3m6a/Q59Mf6UhkdXY5
	sVfZLTKaaZYT0Eq9OqkKEGhkNE4udPKm36g5KqcuRDKY=
X-Google-Smtp-Source: AGHT+IF1UCCT/9hU3wi3KuAvxeqhvZuI9qbh0Qqdl66L5+wsfuS8m2r+/KHpbcCfod5gb4crjQOdiA==
X-Received: by 2002:a17:907:72d4:b0:ad5:55db:e411 with SMTP id a640c23a62f3a-adfad3eaca4mr807509666b.27.1750067156564;
        Mon, 16 Jun 2025 02:45:56 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81c0421sm613375666b.46.2025.06.16.02.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 02:45:56 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Fix tuning on eUSB2 repeater
Date: Mon, 16 Jun 2025 11:45:10 +0200
Message-Id: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKbnT2gC/x3MQQ5AMBBG4avIrE2iFV24ilhU/WU2JVNEIu6us
 fwW7z2UoYJMffWQ4pIsWyowdUVh9WkBy1xMtrFd44xjnHmyrNjhDygfZ5K0cOxc25rgJhM9lXZ
 XRLn/7zC+7wdbt4NzZwAAAA==
X-Change-ID: 20250616-eusb2-repeater-tuning-f56331c6b1fa
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750067155; l=953;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=yg/Z605KkyVU+56JZHlueaasnOvYoTqeMlYl3QzL15E=;
 b=3GYemwlBi62KkKVXr1IAcK4akalZscChQtxjpoaSKQQ1Wl5RrGQtsumLggN6/gEGWykiP3ruh
 uo1DCOtKVQJBbW5GvuxtStUCl9EdnWqu2TWea+fa92D6VCCaiMmSQJ6
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_024558_889626_B6EB3725 
X-CRM114-Status: UNSURE (   8.46  )
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

Update the dt-bindings to remove the 'default' tuning values, since they
depend on the PMIC and are not guaranteed to be the same.

And add a fix into the driver to not zero-out all tuning registers if
they are not specified in the "init sequence", since zero is not the
reset value for most parameter and will lead to very unexpected tuning.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Remove default tuning values
      phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out registers

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |  3 --
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     | 63 +++++++++++-----------
 2 files changed, 32 insertions(+), 34 deletions(-)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250616-eusb2-repeater-tuning-f56331c6b1fa

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
