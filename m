Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6669C3DA49
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jul 2024 21:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BdAN9CNYZufGZUqF6qInJZ2bySM5LYzQbZRJVBJ4ap0=; b=huobKFUxdtWNuW
	hWRNlN4awP5M+AcfuXR+XEe0vk14zzKKmH3Xe6MW7u6QyTW4zTNpZPpN3JwpWbDLfU5bc1vdQRK+N
	bJ9gOfsUsWXzGu3C4TIpHC8F2ZYBECo5DJN2qMDdRlbXN7cMbcT/T2uQyiU/E10RXARuYUjQGaEkA
	B1dH1d3FHZdbd0LuWzY+KMmy9SrEPrj1DL6Id46EQu+eeMZo/pURCuuD4Ios09SSlvcBehpLNl620
	F+xFoIMgxuindcpDb26ecLQNkcwAOEerkZifFHnazPap0JMC0uWIYvhxTs6s9Ws5jnGiOstsAuMin
	PY8IY0fH4Mw+IuQBS9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHj-00000000dJ0-0sJX;
	Thu, 18 Jul 2024 21:03:31 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHg-00000000dHh-0r1V
	for linux-phy@lists.infradead.org;
	Thu, 18 Jul 2024 21:03:29 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2eeb2d60efbso19542101fa.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jul 2024 14:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721336605; x=1721941405; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7dxDbdzvY7eNqZGbwyiIl9uNuZ+ao9LaobEESaQILLo=;
        b=T2lpDlvjEzkPZFxNOpOlL6KKwyp3VoW3M9mAxnHunCoCdxRl1oANEuSHje+i27D6rJ
         iop31Uc2pZkFaAeUf3JxvqrguFqkJG8bh/0jEdeQLGAH05UE3bCr273ilj0ClHYPcgCr
         xASkiLAw6+RBjBvWHa6moOjz1FVWrsC0GkLVUs5UXbHXVN8dzD2c3nsXrVnEsp7tYnN8
         pEechA2sh6brPQt+B4/+jrFlUTmjQ9qrcrgrFdAOIt15M0XNTfsCClzwfJHOYCIIH1fb
         STRAUF6pM7beYBFOIEbDlQLLBhveV6gLeqWr6H9+Qq7ss4JV5g/rfOh6xKTRwtmUIYV4
         A7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721336605; x=1721941405;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dxDbdzvY7eNqZGbwyiIl9uNuZ+ao9LaobEESaQILLo=;
        b=F3NPRdpMl199Dl5cbZUc0FyhmDMBzKlTzz6z7JCVUYa/vBEomI4x3T7xRO0zoUtG1L
         i3E2vfLM8brjIVMKK3mCVVahe991d7PQftzK+qy/1s2prezZ+jn762jkutKYNZq7qqj/
         i9/i5akRQbDtFyJCNAFRMPfQ061WKqUwlNrz4+Wo4jhLqyeInaKdD1Un/cBI3pvg9IuX
         /O1yqFVyNP8IzsebhloQ58o1df2PmUzh2KG+/sUw6bdTq08P7JZ3Y5iBP6OBz8LGOjnZ
         2TWU70za1gBaSFJIMj16f8/iGwJWwYcDkqHDbYD2v+vZwYFOPvPYmyyhYk+Hv08ENAzj
         HibA==
X-Forwarded-Encrypted: i=1; AJvYcCUfzDX/K752CGdRdwB563MZb50YsHETvcPKGKn2TfCuE1gos3Ic+0oG3lolHhI+/+0+PBCMGi3BUdWmH7zR//Uid0ZX2muGUEFQHIBzOA==
X-Gm-Message-State: AOJu0YyIGzPVFRnsc7IW4Rud59L6ees1dVnCtcC+dmdz9scMah/TeLY+
	XYJ80cAsP32dM44SAvkXtNI8JAVNGCSWXPo3G6Y+GwtvS8wiQAul
X-Google-Smtp-Source: AGHT+IHj5qJtbIwhbNCUD4aF+OroIK+74WZEoQ2M0b6ONmmL3ysXNSjWfyZ9CFvwHf+jdtzfIx/7zg==
X-Received: by 2002:a2e:7314:0:b0:2ee:871c:bcb3 with SMTP id 38308e7fff4ca-2ef05c78cc6mr22757171fa.13.1721336604732;
        Thu, 18 Jul 2024 14:03:24 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef05c80310sm4516511fa.13.2024.07.18.14.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 14:03:24 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: mkl@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	a-govindraju@ti.com
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	ilordash02@gmail.com
Subject: [PATCH 0/2] phy: Add support for Microchip ATA6561 CAN Transceiver
Date: Fri, 19 Jul 2024 00:03:20 +0300
Message-Id: <20240718210322.37492-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_140328_265042_37CE25D1 
X-CRM114-Status: UNSURE (   8.83  )
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

Hi all,

The Microchip ATA6561 is a High-Speed CAN Transceiver with Standby Mode,
and it is pin-compatible with TI TCAN1042. Therefore, this patch series
extends support for the TI TCAN1042 DT bindings and the generic
CAN Transceiver PHY driver.

This CAN transceiver is a popular chip that I have used in my boards.
I decided to add support for ATA6561 to the kernel, as I believe it would be
beneficial.

Thank you for your feedback!

Ilya Orazov (2):
  dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
  phy: phy-can-transceiver: Add support for Microchip ATA6561

 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
 drivers/phy/phy-can-transceiver.c                          | 4 ++++
 2 files changed, 5 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
