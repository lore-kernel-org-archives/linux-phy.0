Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE7ACD3B7E2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 15:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ny917AHRtPfa6sp8lhMaTADrVMtjnV89kqvq1BQ7lrA=; b=19lRT6YkA+0XY6
	3FlraLF6Hd40KS/kUGRIVqAwN01bBujvW2IAbRfYoVhEmnnPh9kqYx/2RKVSleTA62ir9kWgMYJc8
	nE/hC4fh3sy1kYAedBQ2YkOjcK5DbHeB4PLw4PH+IFcVVXIo2AfM5G/x5t6EEhXSGJLRK5Hw+4I2D
	LIhBroyboSJkvA1xKKRgSMUfmrlyk8NE3HSW6/y9p/O+mJ9pS+2w1JN4P0z1MGs4wvbNUDCdrvE+q
	drVp1ViVKKn5yJMYEH03iXAghCgm0qhByFNVf08wUkc6ik83QfuHdWsjiPGc4pYOPH3VUqsjXokZr
	W+gv6Mx/YGwvD32ZJPEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVP-0000000DGcH-2CEJ;
	Mon, 08 Dec 2025 15:50:31 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVN-0000000DGaX-2goV
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 15:50:30 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso22981005e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 07:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765209027; x=1765813827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0DkeTPkNVXLcIqrE0+vJuuPcS/1UnLmUfSY7lOiFDo8=;
        b=Ld5d61JbY6U4xaBLfmWvOn4LuiB9kl2aNBZzWfqkNU6j5PJOLyS2KRQqHlos7Gg9SR
         ljhYwYbResIMCPyrtd0TCa9UTzfbTeVsDdbLMBKtTI0FWao9htSdiMfCk+f898An4VWV
         dNrCYm0FEN3hjUGvpsyOzQFsqO6ftfLhunTweuiSbf3ajKgwmyW9W+VzrbSLiRbSkOTi
         hZ3Rpf5h28vEAV/Msr7xpolgrS+O06YwEzwZ94/HQKfC2NU6rhsMkG9Z502fDzChfqNf
         qohc7pR3QHj4/5PWxvp7xMyFylH+q1hzEMOwVco0be3NuZeAHV2rrsDfOXEc8XnwIRi3
         3AHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209027; x=1765813827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DkeTPkNVXLcIqrE0+vJuuPcS/1UnLmUfSY7lOiFDo8=;
        b=XPQpZtRRSI/AvArN+Kuz7qmWLWsEBl6xLhabwdFOH9qx+Hn/TFKEha//KeVpWlz4kC
         OFTaPw1LN+FEr4Pj0UCgkRJWXAE3xZcnaneaCez42KdwoV9/22qVMTWNgg02eiuqImT4
         KyNikGaCbWVFgjWqWSgGc1MteUMELSBIlrWaO1VyHIw67n8qC3wIlzgniGdjUOIhukFM
         vHFuHd/Xo5IlAr4Hy1qr5C4FRt4A5o1UQInMEluJ+Ru9w05IQFBuJRFjlDkyFANhCfX4
         RyReByZcweD1xROUJK/AuBh5XPMVwciKVenb4uUNVI8SKLrtiiXgxobo460HegD9+9XG
         l8/A==
X-Forwarded-Encrypted: i=1; AJvYcCU2ESJPlc5M9de+BBa0gp4Y9bOh6cGSSo+JF3Jq4B3wKozEnOkgv9fSpDtCl+rdq/Hi9DLlMhrJAlg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb0JLJ6/eLXDBWK2HflzqN7TV6DqLvpdQGLQubajrtfuqmUpaX
	sHsjL5aHPJ9SReG1OFFQqTPEQzWZj/YraVsG7+4mBqiPVLZCG0Q9awXO
X-Gm-Gg: ASbGncvMBj0CmU+Bvr3EzahWAXvkF85bDgsqh52JzxZFxIyD3KYCD3y7+rcImiQycSR
	aZNx1GL3midtci6sb3auKI7ijAKa5Le+Dd+di2ZgnrdyCrBJxo1eFvkotpJjJMDeaHsq5QMGU3D
	W4ajdtyo5+brdRPwr3NDQ7zRAvEZrTvybvAEALNiv1ZmPry7/SlHhs0Fm3rshhtexBItTu8GsXF
	grh2bYNh3lo7zv1BTcjC63ROHFWeTQpGP378/yLur2HjLyuSudyKlI/f669/xJ0b6FTvCALNOlq
	iUo0+la9nchnto2b4yYrCKFQBNJbIiEhGomNBn7GJFeBH66euf2fwN1MQG7ZlTp4iBbJiAhi5WW
	vvOM2kUMmkocPVybsUnqqzKM/l3CLgVrVh9gokE7Sa1uEjFZYgQSTBbrWByDIrEeN7x2jbmIsBG
	nZ9b6FygCj+HAMDmwmqmyfSGBh3+PqxeliAA==
X-Google-Smtp-Source: AGHT+IGcN/kfIKnH8UEIcRMeENYQps70OLTJ0JNHqdRe30a1VCk8EhGuR6GFWFzu2Ojxaxr9I9XRIQ==
X-Received: by 2002:a05:600c:468a:b0:477:9f34:17b8 with SMTP id 5b1f17b1804b1-47939df129emr76804815e9.1.1765209027313;
        Mon, 08 Dec 2025 07:50:27 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9aa6:8a23:82c5:2b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b150878sm147717845e9.3.2025.12.08.07.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:50:26 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Add support for TI TCAN1046 CAN transceiver
Date: Mon,  8 Dec 2025 15:50:17 +0000
Message-ID: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_075029_682903_AC0EAA9E 
X-CRM114-Status: UNSURE (   8.47  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds support for the TI TCAN1046 automotive CAN
transceiver. The TCAN1046 provides dual high-speed CAN channels and
includes STB1/2 control lines.

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
  phy: phy-can-transceiver: Add support for TI TCAN1046

 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 5 ++++-
 drivers/phy/phy-can-transceiver.c                          | 4 ++++
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
