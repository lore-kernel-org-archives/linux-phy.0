Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06123FCA195
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 21:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9sk2OO6kPJvPY5+2Z0Kpe+OT2X8Ah7J//X1k1buXsM=; b=Sh7XxZ7TNNlGjk
	T7C3haDGjScQrnCt5+4L3jgIvb85VevzUG2qJ2HI9XZl+cztZHPAHegE3sk01t3DZQ+9D233VvxNe
	gXV9MmAK5F654ubnjfvPUsk/Ybwx0Cm0shhLw4GhYuJsbqXiPaWIwRh8HgsYcqG2HpCnjKVANBPAH
	cXBJGPTWVND+BcP6lZHX23/W9115E55kOjqvkxH4zw6LPSpdPATT6urPAXY3AfYgIj5a2GUL/thtN
	Ei26PNI/n90T/Xr2X+M2yM4CiuUbpm5pxTzeZvQpJpnZAPjs9MTg8HhPTx5oaKfvcihcDT4AQLATk
	/I9XsOPl8uOb5+2SYyeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vziXv-00000008CKQ-2X4g;
	Mon, 09 Mar 2026 21:53:51 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vziXs-00000008CJm-0Ehk
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 21:53:50 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-829b2019b39so1580863b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 14:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773093226; x=1773698026; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oksk2SC8l8gNKVZ+ppxouzhJxiVNngQ5O52QXz7r3AM=;
        b=Y3kBrcyTf8Z95/oVMIhpeJHmheDjym1Jf4K39ORUxHRVYJoxfFyFpAyAuQgvJ2db3m
         GG36CrGzYVnn1vOR8lsTGDU05RNqtoIxgKfBEYYjZlXc2QDkGHdyVG+YnJPCnZ0XDqAw
         zq9R1yHtqcBG7bntFnstMTrHj81eor4111y1Ro2/Zopi99vLhMq9ZNVL4Va8dG+4lah4
         1ufLRsmJOoYHEivDgMB542RPQZ1x+XqQgGYLlxv3Lkfho8prikdiGzYU+jBSfaLwAofT
         KhC14QUya7p7qxNxLgimwL2kzFVh/g2Ky9cRRKFJ3anBL16/b3W2agB4vSwNNkLyWfBV
         rEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773093226; x=1773698026;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oksk2SC8l8gNKVZ+ppxouzhJxiVNngQ5O52QXz7r3AM=;
        b=UZ2NVgwRUH2AQpFKOHntKY8z8OPTYnN8xdmbp5yKGZMNT9ep72b+9XDucQn4gqgLXp
         bwNBQCoNPIVmvuI26mEUiDKcBoQhFmoaDXh9zAHFH/7VT1emwUn7mNul/hqoXnsDVBWB
         bQFilS0mW8u7ELHXCq+xybqsszNi+zs0Hft2NZ6LPoECyK6KKN7P7RbI4xBkweGnWnl7
         wvls+MJblFhkF0f2QgYDKHOd0T7/NMwAwM+AcFxitJRxRtIf1iegxixvLodpvtTXQlX8
         uCXUFM4DliQ3aFXtTJ7cSiJdxxBxin5k9jhsA6YSD/wMPltE5n55J0gsy96EuZz9TZHB
         SjEQ==
X-Gm-Message-State: AOJu0Yz5KCD64ELdmU+kTX3a2XcP7Tr6EIGzVf0ktC30Ftx+r1+SeC7X
	6n7JYtotKs5ay1tVrXs5UCjVVo1NIm4gl22z8EyZQbXhbxMJ5vJpvoGTduAlAQ6Nl/g=
X-Gm-Gg: ATEYQzxRVAme329G9OmNtZbXQfE8NdaK8u8DHA/ve/wEVUxafbjuhki9Gml9yuTnuxa
	sKBtwRdEyfcRV3CzfkMl0VgoZOtxi0fEXr2SVIoaBNxOKpFFt0y0tkFwUh/ZyincRy4riHCxlF6
	jgaC+0LVnpnoeb2dgoGPeYNjZEg+S4+BtyqZ+3h6oNSXCb8ssRoX2upX24phQAAOhvA4V7SVLGb
	OAtecCFZDDVdfqH7z++OFl1y1D7pDtMJdVfldvbIEXLQTJ5XniWBDvytWdmISvn2za2tplqa8FL
	aLTnYnhGMLKGtMIbBdKn2hDPHNnCAzwYw2VNT6FT6R0pqxTNv77785XcsoVu2IgqcKVqOTOWd7V
	GnNClsE1hkRFQ18lyXvElNJx0etAQpIQn6NPLiUJgi0XtaPTvjdq2Pfp9IZxScvXue0DLf0qinB
	+Y0rEza3M5p4cydtW/oCES
X-Received: by 2002:a05:6a00:1f10:b0:829:862d:6b46 with SMTP id d2e1a72fcca58-829a2db6622mr11130108b3a.6.1773093226656;
        Mon, 09 Mar 2026 14:53:46 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48de551sm11460977b3a.57.2026.03.09.14.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 14:53:45 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@ti.com>, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
Subject: Re: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
Message-Id: <177309322512.4034405.1932369183802712305.b4-ty@baylibre.com>
Date: Mon, 09 Mar 2026 14:53:45 -0700
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_145348_347865_B6155C25 
X-CRM114-Status: UNSURE (   5.26  )
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


On Fri, 23 Jan 2026 15:39:02 +0000, Charan Pedumuru wrote:
> Update OMAP DTS node patterns to match established conventions.
> 
> 

Applied, thanks!

[1/3] arm: dts: ti: omap: align node patterns with established convention
      commit: 7adefbf4dff31e016c0edc653b85823afff541fe

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
