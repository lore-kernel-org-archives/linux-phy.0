Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C16CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 18:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2Ln04xXVFhDs/xo/2ByEK/pq/zeHZL/PsQFySHl+B8=; b=uGpes6+5LfkgE+
	5whuYjS7SbVfn7xa8PEkSxQxNmQw1je5OoVZEOB+9FuGk10RvbFcSBkMmTa8Z1LqapnmRp8fjQrdj
	Ozlpuv/C5jL96NyuOwXJsjl9OUCt0Gdp5XpoVZGClMBiVqDyiovDl3JFxrz1jzb9N7PueM+7VcMtc
	+bGTtbhTMDxSdHXiAmkvAjuImNmuvj/Oi8zc69pmJHB09HhPAV01x/96ScOBw1iJy4fJ0RADPonnk
	2tbvnHHfqgDs9WcYU9XD0dqBKA+PM1MZokKAKddYAUExNnxxLzBuRGePaNxeH4ttNl7p5kEiAwypI
	AgnNRTuVw49KPT/TLYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKJh-0000000BAEr-0y87;
	Mon, 12 Oct 2026 18:00:05 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKJe-0000000BADa-1DLh
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 18:00:03 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a161d9b8c7so14931345e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 11:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791828000; x=1792432800; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7efvOtPkVQs2r0jJvys2pZpGeATiCwhTrDVdy86Rwg8=;
        b=p46KUBmH1voUDn7tk/zYNTUmCJCLtlM+TA1drOwfvyJBZu/sDAGZxQyWuCNIwIA6TW
         77bx17NPHLaf32FEmqkG0AJOIXUBqJ5JV+Z6YVL5DA5DE1X3Z8TfknDX9CSUFd9mgu6U
         73u4vSNX8nQ3T7OwTOHFU1SuqkocobX92oYOWjl6c4oTgUwGMc8zAsBnRY1n3mv7NJat
         /Xh8IlaUKL7BOtjPtMHVhGGJJRdNIdvLA860E5CcKWJHQ0V+TH89yqCyMTRi1vTI5Ebx
         mc1igQEkI3fhfMykuOFCdJDLxi//5tnYwYwVarDsXyAES8aQmrL+vaXuhy2atiIyTbQY
         eZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791828000; x=1792432800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7efvOtPkVQs2r0jJvys2pZpGeATiCwhTrDVdy86Rwg8=;
        b=U2rr584aKPsYnTuweAi3VBCvvxosHmVVhMBXoOrB3y2aPV/CzV7Z+dq9Ij+0UITZRZ
         bNc2BFkg79WmKX40kUitnjyM08ywnYlrSCaaJSrg0BzSeXbifxCDkR0CnLkRFMWOnL8V
         ArkO2WsI7jg1Ey2TVa1aI6nWS7lYQAU/CwmPs23g618W+yNmM7hjzWzmMNk5L7kuUs70
         HUutLbWuPc3TI5deibJYq6iteZwfVWP5lCHA1ZibhIbOGHd/ILa1cihI8G7mag6y3tdW
         zDpA+bvOxzmwDAsCOwW+nqys2TgVXfG6OO+XtE2IoskPfGUm/jZgvQPoM54/NsAw5pqO
         Ef+w==
X-Forwarded-Encrypted: i=1; AKwUvBytvjVcj6hAo6XBy4g2nlfT7AfonKXClpRHp4Ml+wfrTTQiaotMBu/Kdg19QO4a0LTOr3HhpEObjaM=@lists.infradead.org
X-Gm-Message-State: AFq9FYIoiiYnfgK6Ls8tNSYpv+ZqpoedQK87dNpjj5o+Zw6PDRtD+t1V
	YWFmJuwaJQ+CNf9dV53U80D6JlQv5To5QXg9uojmlyKq13agkU/tcu08
X-Gm-Gg: AYBFou0ULIRkiu3ufZ0O1ygd+3jVlhuWkydoTQPLClw8uhj0iUyLX5wrKX3p942TB4l
	coxIZTaSRY/Ftj/xLj4tXtMir3N8waFkWKzZWXNpfC1+OTpN4Oo90AJfpp+9KYKYz4aMrBqLgq9
	VVpPYK+VmNcjP6BWbMG29erzHCl26/D1AeJp+jYy5s1crvR/F25hlUXkJ2onTaOQRzHoUqwyaQj
	y666Fd/PJGbRX47CdtqiQ2yUW4qN6U9313VesiHr1jpnjjb8py/3iiTYGgYdjCKSRH/E2aCY26I
	R+EPlTc0HVNrhHlhQmam7gDhmRCdFUR/fB6xrEbFI16gaMtr/tSLi7Fk9SWLRIar6yXS5QOEpiE
	eLvJQANsc0JdiWouS5bkcFBRE1BDCtfgQIdqY9EdRsEjOZA30xicGi+HP5jZeqz7dsUyldLTB1B
	y1soCCtdAd7WLV6NlJnMmxFdj5dw7rIEgnkC/T/ORnVGi8lCE6H70UQ1UZzE69wK+KYuYr1uqZO
	QdOEclk+opJPve8
X-Received: by 2002:a05:600c:83c9:b0:4a1:70f0:ac2 with SMTP id 5b1f17b1804b1-4a18e4ce9cfmr193832545e9.24.1791827999830;
        Mon, 12 Oct 2026 10:59:59 -0700 (PDT)
Received: from hp-z640.fritz.box ([109.76.80.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18bf2343asm561705395e9.9.2026.10.12.10.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 10:59:59 -0700 (PDT)
From: OOHehir <oo.hehir@gmail.com>
X-Google-Original-From: OOHehir <electronicconsult1@gmail.com>
To: m.wilczynski@samsung.com
Cc: Laurent.pinchart@ideasonboard.com,
	alex@ghiti.fr,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	aou@eecs.berkeley.edu,
	bmasney+clk@redhat.com,
	chaoyi.chen@rock-chips.com,
	conor+dt@kernel.org,
	db@domibel.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	gandalf@winds.org,
	hal.feng@starfivetech.com,
	heiko@sntech.de,
	hello@big-grey.co.uk,
	jbrunet+clk@baylibre.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	jpeisach@ubuntu.com,
	kernel@esmil.dk,
	krzk+dt@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	luca.ceresoli@bootlin.com,
	m.szyprowski@samsung.com,
	maarten.lankhorst@linux.intel.com,
	mani@kernel.org,
	maud_spierings@murena.io,
	mripard@kernel.org,
	mturquette@baylibre.com,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	palmer@dabbelt.com,
	pjw@kernel.org,
	rfoss@kernel.org,
	robh@kernel.org,
	sboyd@kernel.org,
	tzimmermann@suse.de,
	u.kleine-koenig@baylibre.com,
	vkoul@kernel.org,
	zhengxingda@iscas.ac.cn
Subject: Re: [PATCH v5 00/21] drm: starfive: jh7110: Enable display subsystem
Date: Mon, 12 Oct 2026 18:59:41 +0100
Message-ID: <20261012175941.258219-1-electronicconsult1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
References: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_110002_351073_E3FE5BC8 
X-CRM114-Status: UNSURE (   6.98  )
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

Tested on a VisionFive 2 v1.3B with patches 1-17 & 19-21 of v5 on
Linux 7.2.8, plus the clk patch that was 14/20 in v4. Patch 18 was not
applied: it conflicts on 7.2 & there is no Rockchip hardware here. The
same kernel also carries the out-of-tree PowerVR BXE-4-32 enablement &
the SiFive XPbmtUC errata patches, so the GPU could render to the
display.

- The dc8200, the HDMI controller & PHY & the vout clock controller
  all probe, with nothing left in deferred probe; HDMI-A-1 reports
  connected.
- kmscube (GLES via zink on the PowerVR Vulkan driver) runs at the
  monitor's preferred mode: 1683 frames in 28.1 s, 59.93 fps with
  vsync, picture confirmed on the monitor, no GPU firmware resets.

Only that one mode was tested; the modetest sweep in the cover letter
was not repeated.

One error at boot:

  i2c i2c-7: of_i2c: modalias failure on /soc/display-subsystem@29400000/hdmi@29590000/controller/ports
  i2c i2c-7: Failed to create I2C device for /soc/display-subsystem@29400000/hdmi@29590000/controller/ports

inno_hdmi_i2c_adapter() sets adap->dev.of_node to the controller's
node, so the I2C core registers the controller's children as I2C
clients, & on the JH7110 that node has a 'ports' child. The display
still comes up. Should the adapter get no of_node, or a dedicated
child node?

For patches 1-17 & 19-21:

Tested-by: OOHehir <oo.hehir@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
