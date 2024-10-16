Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F2D9D206A5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 07:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7+r/HT/USszNMW5b4awi8ku6FG7IYKVyyEHa8TxFCc=; b=OntJ8yhxYrPzGV
	aR4SY9LCgQ2/2KeW2QF9VO4zPrFxsimExUNFg0IFevvhVIWU9DUZN3rLh+TyrJQFCTmNGVcxGE9Uf
	IzrYy2LtohcNuq43cR6+4qTKZmH2ogAR++cYmHJfpZNXzqkASUvm2byiEqUZjWfeQEeAkIdchWI+4
	RvCh81E4NGqu1cQE8UDvHRsCxvvtPbXEqx2TvcpA1pWqX9nPntE2avF0Cct1pSpJp+dUiazfc+MUq
	ETuy/Okwi5tAQhYUgjXocnp8oDfLhHFQk3D9rfpbzV5o2WijJvAwqOunjAwSyRA3xyrtKsKirsrGc
	4iCLtws8XeLfB7gnTQ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ycS-0000000Ar50-0GPh;
	Wed, 16 Oct 2024 07:38:56 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yb2-0000000Aqg0-0Cpy;
	Wed, 16 Oct 2024 07:37:29 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2e2b4110341so1071938a91.1;
        Wed, 16 Oct 2024 00:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729064246; x=1729669046; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HdXBvIE3AExRgp3hXtIJcaBGzKqp9wpTyWZscjBbOt0=;
        b=Ot2PW80r/ZHrNeLJcXWUr2ZDJco3s/Wien4qOo8l7kHANmtCbjBd68/+4EK1A8Jnay
         B1d8EGfUA+a400YtOROMC+lRrwfRReMEZFu2CZvdBcuHYHb/uz+M2d14dadpTD1xy+R9
         0H4g1Rk0/sCSWIx4HUihtjKe26iXxxwQsgk/LjgqdPI3aYDwzxojcJXOwUrwai6OQuel
         I4WGQmm+FyMZg7ubOccjR1g32JzgwGG8FplECIpOGWUY1EQRrHnTvnmgwrZ8ivBW6fZ+
         eqThN4ewV4UyjnqzfiiLLrEwk9P/W+hh+ZdXLNYrzgUSpJAfoTEwvQRNlvcYiozWqYPM
         HcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064246; x=1729669046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HdXBvIE3AExRgp3hXtIJcaBGzKqp9wpTyWZscjBbOt0=;
        b=MjBo9sF7H8MuEXRzghfe0KQ5iOHbF0PGb5bSgRdi50DJhPqfzVhQ0A3x1JG+wC5COb
         Ei9eq+ivkGpwnn5CeEi5DkQLdSi8iTNNjDTnh6P0H+7uwunMcBA/mX8y4InjBrOFAQrr
         5NHi5xzVX0YcK10VNt7/1UFZZKHhAKN4Valz+Mpl5hC0Kt2zNo0V+14OJwlAVpXKur76
         p9zX4S18mY4KmYgSf2x3M4/gDyOMuY8SIfy8ubD3ZiMNI8fR1V/itycmjB8eAE111X27
         7m8UmxOZ+Jgcx0WNqKcvfJDyv8ISi/2+buAM/1nYt/zH8zQvt8Vm7vGGUqYosG+lbVXl
         dkRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL+VAjM6aGH7lO5kOzfUG35w4bVMXlYf0GxbrqMhvAXEC0w2J2hfiEszh9I8SYUqwWdMCUn5DJ0BTAyIl4R4U=@lists.infradead.org, AJvYcCW539rAGXaCump4nUcTv+vTIGLCoZsJygLHYOzZY+JRt3XNP6Dwj5dfNNTrWl15GROXirXhpnOGiR7SqLQ3oeIH@lists.infradead.org
X-Gm-Message-State: AOJu0YzxSN0CFJqGQXm/OA1Ydti/osUbYiRlSuiqN8KjhctnX5waDmPA
	jyGrJvwrgALCCn0+VOXJOmt6SRXS9wa3OmYX+ImZVEOuvnr6ueBH
X-Google-Smtp-Source: AGHT+IHTFYf2RmMoLVt3mWD27psiArXEXPum3fHQrqEBzIUzKiTNe15MOy/O+7lWes5lJSM0AcAojg==
X-Received: by 2002:a17:90a:680e:b0:2e2:e139:447d with SMTP id 98e67ed59e1d1-2e3b786ebacmr895197a91.0.1729064246313;
        Wed, 16 Oct 2024 00:37:26 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3b7e6339fsm765471a91.1.2024.10.16.00.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 00:37:26 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v6 2/4] dt-bindings: soc: rockchip: add rk3576 usb2phy syscon
Date: Wed, 16 Oct 2024 15:37:11 +0800
Message-Id: <20241016073713.14133-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241016073713.14133-1-frawang.cn@gmail.com>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_003728_160205_668BAAA3 
X-CRM114-Status: UNSURE (   9.53  )
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

From: Frank Wang <frank.wang@rock-chips.com>

The usb2phy is accessible via a syscon registers on RK3576, similar
to RK3588.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v6:
 - This is a new patch adds rk3576-usb2phy-grf syscon.

v1-v5:
 - none

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 50d727f4b76c6..62a28cb2bc7bb 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -80,6 +80,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rk3576-ioc-grf
               - rockchip,rk3576-pmu0-grf
+              - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
@@ -233,6 +234,7 @@ allOf:
               - rockchip,rk3308-usb2phy-grf
               - rockchip,rk3328-usb2phy-grf
               - rockchip,rk3399-grf
+              - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
