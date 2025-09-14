Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF3ECAC587
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3iYq5AUxEnLvrV8jk1WS3UJKJb9UYBPpE+y2CUwXeUQ=; b=kAQ+2ALTtOohFw
	t5OhblzmPfGSm9nv+ON4Fb49B6vYB5FND8iOV2vQxU21O+D1oxfhd26LHkFyDISN1zI5tF88bDZTn
	ZWfFg/EIBd8nBagDsgfnPrT2KYZmzc6ooB5tkwRM/a8rivAN/h9siSHWlY0W/ZL0SkqHnj0lNCP9g
	SCmiR3yuQo0ZnS1Q9CNYsq+TAgqwzN/R/y7TBAXjXqbT+s9y2kjaYyaGgfURNwLxUiACXET9ujexp
	QsMU1db5W71LN3y7axCJkVjaHSEL02GI/OTXU5ofgbd6c9DXWnnc1VG94ua0uNptphXL+2qnQcoCZ
	wen8vGCw+eoWF/flJmYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYG-00000001Te2-2uQ9;
	Sun, 14 Sep 2025 14:18:00 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYD-00000001TbE-3HcY
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:17:59 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3dae49b1293so1867312f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859476; x=1758464276; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rsUHVkzZaZp36viUnZ0K/EbyNwm+EVEnUQ5b1FzHDOg=;
        b=W8imCIwKjUnpEf9GS2oD4aWlHlIwe8T9byIeoygjiMVw5NuQ5cZa093zmaxGH8yepW
         N9EoZNnil8tvAZwPodZcc9mzpgM0iH4bl0yTAhnOeU+lAzht1WxDBwOceiAglo+w/iaw
         wSaOW535TSMBT+MiPJi512u9yE9Zol325x245QlWgUNzCrkmAyN4xkwy3q0smHaPxCfG
         VCDM/PelxWcwjjahDLDzNqWzeR5HLW1babhzOZBvhn4fAve4xdsSDryX1RMcag1UZ+Wj
         VxZRSewvh+MDI2n43haFKqzBvt61ff1gOxg6sTOr9AB1VcgpSP9Th2ji9l8tZVmxPkwX
         NUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859476; x=1758464276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsUHVkzZaZp36viUnZ0K/EbyNwm+EVEnUQ5b1FzHDOg=;
        b=s5ztYIiE3TntaaAd6QoJ0+Ncnbd1VF+Tymq0Wz349newiOoDOAkIFHxhQGzjIWVG6B
         ox6KZZanMKRVoISjdZWs52h/JzGqTGblHi4O+719euDjiET/RYbnPOd52ooEq4tO5qCu
         GX3p/1TkhStJGa29C6L40H93G4EyV3ukznpApMjq+94kP81T8EI+SEE1yanDCUmxBkGs
         IQvwHF+FtuECs+wZysRMW6FmSyi2cI6PcW3L79KWdo4awbYeHT1T23Rp5BtbBNSrg+km
         3f1F9FFa/ksByZNhyj5fN2cNTBeVTSpjB8bxiozTa68EbAYXeEkv6gYQ8q8ius+KqXIS
         KHWA==
X-Forwarded-Encrypted: i=1; AJvYcCXqF8+RM7VmVcRA4B4i3NrCYIBaOSNBMza2XTARX8OKBNN7xGQgBH022/hPJXPEtjV5R+rrD6GY1xU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqkL0MmNMGf3NyVQCpeZTwyRR1hNDPFTsadTb4rGFEx7bjRIRA
	I5sG+9hodIp6iFt01jprbWJmLrEqb4uXb0AkpSuIeCPJ4WNnKiYcJPJtpl2KHw==
X-Gm-Gg: ASbGncveXHHybVPG8tslRHpFknlXWlP2E3KhXh8v7HJ3y7WXJISfLdWjrS2zxTM7UEe
	dlTQIQh+j/eISrSS6USXHfvog+WdGlsg4gfpuoV3OaWKpRTLLmjGtmSIl9vEJt1C4zZy9aUNKmu
	8+XFourUsEmjb0Riw/wTufYqcCdi966bAgYVAmIoUW7qlEPaj929ciqBL2btlOpmHqYsQwG/rm7
	WGZuvCEYu/Yu308gVKtf4f2BJqjEXCnzhBkpbmRpbQAmY4HjyMRFoDLgjuUpHeMlT7HII9VZbT3
	zfGl22PN+ex6Yu1mhAlgRWB7nh2BQfQpnhoJq1YI3ENq1gN6yFSKnCdostPPdUxTFLmhMRIMyJS
	TflLuyHb8i+gY9zjoVxwzSI3BwqZgsih5VSL0+yvzyd/WvDdecEcfB8yscTt6THmLCV7gKD6Mxm
	hDXXUPOSyt
X-Google-Smtp-Source: AGHT+IG7SrhD2n8YR6eRCNsiBeL2SRv1fue30YukLFK37eQXkOEUvQbSB53x/xhqHBpjrKKhjtKgHg==
X-Received: by 2002:a05:6000:270e:b0:3e7:9d76:beb5 with SMTP id ffacd0b85a97d-3e79d76c25emr4400712f8f.14.1757859475877;
        Sun, 14 Sep 2025 07:17:55 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:55 -0700 (PDT)
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
Subject: [PATCH v1 0/2] phy: exynos5-usbdrd: support the exynos8890 USBDRD
Date: Sun, 14 Sep 2025 17:17:41 +0300
Message-ID: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_071757_867922_7357A76E 
X-CRM114-Status: UNSURE (   8.56  )
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
