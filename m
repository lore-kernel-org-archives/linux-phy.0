Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9DE3CA0EE8
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOzA1PsGC0787NYFAJoS1WcSH6xHIlxDIzgr6JlQwaw=; b=DdxdAJ+hxBydrP
	e8aEjDCm8RqxAeJMA8akYfQtTJDW5I6f/wluHq1/Bx4QbAAK5dbCnzij3TApHz/9Ef1iOwZkcrESe
	P0ViwXU+vRA5XNthCLgCEe6HVoO3mjj+QhOt4uqaJjYApIX8/TZcQV46w2UhMVATQa3XDnhh/RASl
	+7/qbhdp8liLjZoDFeDrmQSvNVRxdYuG+uYqUo3a6fc/eBHngcO/YgYHYYBTUpAqluibsFFyEGOjb
	L6plL8PyM9JQlcY5PRDLhEK5J7bG2zcIwHaxjpEo9wqxrEoJTwd2+rx2qiY0Ve2HKgxrsBk3h8Jui
	dRoNeIVbarl+2Ns96EZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxo9C-00000001bBI-1oyk;
	Sun, 14 Sep 2025 14:56:10 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxo99-00000001b7t-1wfb
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:56:09 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3e34dbc38easo1831797f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757861765; x=1758466565; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5qapOJtKxyY0MNaqH7qXtB8qqR3nlxKXEctWyb1YrfM=;
        b=EIrtnopByv+ymYdxZ0/C1oxCkFO6NZcSYSjKNCamKRNioOVbT4Z8hXwy8iCKl+84A5
         GKZXigoOXNtnUwWyzONyUtpVIP2C8GhWdC3avv77djfdDMcSzUBhtDmp/8btVpA/5CmE
         zg6s5yB+nZsEsrtsUVze3Xe8G/S5URsp4XkwU47vbOYpdFUhKJmnomyG2QC8s3p9SWoc
         GeN42HF6rbxD4ebGy+jvtJKyxkKHcZNij397UIcTgJ1sCKyW2nYTEg+RnljNxPpF/lOK
         wqiZoL+iAbVIOeGgbh4YPEkA3+L7mEVy0bP86Hq4DoAaGinNlkI6V9NFK0oM4muXnXhb
         3yPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757861765; x=1758466565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qapOJtKxyY0MNaqH7qXtB8qqR3nlxKXEctWyb1YrfM=;
        b=nop2oNzar0pH8iRZkQRQXrYzRpRlXuKewmC30kKQ1C0fgHbnPcc0BJxS4Y5rF/bcY4
         4xfiGgM5KUM3hcHI5RYvahVk0QLNJreBr2uHUS6WSnfaL00yy40epicDT3v6X2Q95lHZ
         H7SRvvdzvs0XC3ZGptNNpopMVQhYaaV72CQ63ERcDRtMRD14n9OHdJSDvaZPqshi0NQN
         itjovmR0Sp/hKuAGJAob25vnwrBIXiYnNEMBpTah01zCGclFnc/1J1GM3Doh1rPLpY2M
         nwjHeI505+TgybbjVNj1bvbhzpw0ULpX56JqWlorO4DVyylzjVHdHPMlQRX82EFFz03c
         /9Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXynGxt6+QHif+VUAsAm6tn/qtfXnvGwCYZAPUmhYQ/BlFuuRKo8lMtZVn4xm6KCKgeb8e63n98ZtM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywgya4XdROGGw36tSSMNJ3P+VA5OsMQW6rJK6Y7fq5/oyzliYXx
	J0wNrZh5C1duhtGskmg1/425iOE/szdWYjNmZge0EXApX+0kvD942E8O
X-Gm-Gg: ASbGnctaXlmUqDosy7YIJnEUrGGSS68vJL7vgo8mETCxZbhmJm8CQKRgQob2dMGYs2E
	5FpYCS+muiz54grxrDhbZx5LWHrCaxWmQvDpfOiN2OD8r3+HXJPAQFoWvSZHrLHkmJXYWMTWu1m
	avcfpasibYaCIiAM5Ctqas7s8+rwUIWtuAV9kxOIUuaRCXUSvLZZSB3lXMKb7YHq1q3aSC/dk2N
	Ays3XCtpvj4PanrWrOdUVagUc3diOHa5jYmF9e2shLsuv2+JG3xwRTa2oiG8I5Sis4f1LJ8nElY
	6EaXcB6XRkBdGHfByDbaer3/XoYKku0cRHFBxY8gDjbJUB0DlNa+wgosC2ud541i42x1AP3gsXo
	4/kBeEqXQZVGWokwkcux4AIWk6ZXitZg8S9Z5FX1cL3ObKQgrbA55DEAHYEdnn235xDUhJr/YLA
	==
X-Google-Smtp-Source: AGHT+IFV/3JZpFtVZv9IijfdfagkrdK3hCy/JcOZd8MWso5BvseWKVtiecc8/LFjzi/kNn1nTtuUIw==
X-Received: by 2002:a05:6000:2486:b0:3e7:404f:685 with SMTP id ffacd0b85a97d-3e765a197ebmr8559306f8f.44.1757861765516;
        Sun, 14 Sep 2025 07:56:05 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d62besm136303475e9.21.2025.09.14.07.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:56:05 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: exynos5-usbdrd: support the exynos8890 USBDRD
Date: Sun, 14 Sep 2025 17:55:53 +0300
Message-ID: <20250914145555.2631595-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_075607_519618_09FC0E54 
X-CRM114-Status: UNSURE (   9.91  )
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

Hey folks,

This patchset adds support for the usbdrd phy for exynos8890. The SoC
features 2 dwc3 controllers and 2 usb phy controllers. One of the USBs
is used for DRD, whereas the second - for host. The host one seems to
only be used on the MV8890 SBC, which... I don't think anyone has,
really.

Code from this patchset can and will be reused for 8895 (I actually based
it on my old 8895 work but decided to upstream it)

Best regards,
Ivaylo

Changes in v2:
- fix up the messed series (a patch from another subsystem was accidentally
  sent)

Ivaylo Ivanov (2):
  dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
  phy: exynos5-usbdrd: support the exynos8890 USBDRD controller

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  25 +++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 210 ++++++++++++++++++
 2 files changed, 235 insertions(+)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
