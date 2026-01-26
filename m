Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A8E4D74EF7
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 09:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkTIXQ613Jpj7/2bUpjSn8U/jRKNsVKSRJhZOk+/YaI=; b=qykx7L+CizVbG5
	/BN4tSiK8u2nRInwGlkxHjkcGyAm081l1iOTDbjPyszmHPYXPEKK4Eu4VQ3Kq/XgRsckjK2m05cd0
	Z9VtS1DOrfJ3Q1xsvjEK1LJjCz4Hq72ULDox5xw5pr5WtHpB+/EqHyPUxdFAMca9xQeGVSp5iRxKO
	r1Qa0L0F3At1TRch2tVq6vBBQ7XHujJX4fNVe0TSRmh/8fYgyc3yJNl9IZSQMyoJLBavBYzceOOl+
	fPkjF9XWanOhdPL4EXzfyD40L4ONOL59KkLKN2lRl2ATV4gaWj9gORe0boz/SFSe/RTNw/xGNuCir
	0hxwJHESBZaxPTHT9KMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInf-0000000CBNY-0h9T;
	Mon, 26 Jan 2026 09:22:23 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInR-0000000CBBK-0np4
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 09:22:12 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so30861725e9.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 01:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419327; x=1770024127; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6l0bRB7VVDjDIq+ulMsBVmhmzBjYiR54K3+u8tiEuOs=;
        b=Q6jKPlK0PED7WFg7ukdwSNntVrL9Bi9VYgAEKLt+A4hQ7Y/FAkLV50Liehf+fqCkCX
         b+rnk7cVhf1rmjAh2JQnkfl0FJ7XgCQYFo/5P5ZUFDFrCFYJDNxjdX2Ev+isPD6vlf8i
         6Azvvr4dBqjELLb0JHE14Vk4yfuFwGhhfzFFVW0f/Khd+GaETgCniEIPjp4S5EHsMJrd
         O8dsD8cMvJzuYd4fEqigWdPpF/4S1roveSH5qmEPjcGqNrpp5mPBMWAoKa1bPZpXKw/X
         V3nD1AEzvU6I17SV4jrcvO1a5xCjHhkSECuycSd9H56j/iNo9NCHRWILLMDiClRPheRG
         2IyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419327; x=1770024127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6l0bRB7VVDjDIq+ulMsBVmhmzBjYiR54K3+u8tiEuOs=;
        b=t4wKYFBAZ7apUuTKjYPaQrH7c8/f9uQU1cKXFh4Nu1xhpfvmVYSfbgVOBP062YjC04
         EusLpF5e/lt1sBTvmHlhz+n1BtXse3f8AELT5nfvPnHBSUvRIhqUYid4nHT1jvZfWgfW
         yZzw+19wd1l/NMxktOsOUVysWcOnaQ2HLjmCXrErMWuJzp7sBQzpeGI1C8R2UBFj6EYv
         p0Tx8Yr46Fiq4mCzMhqul660okbbsCvucJgCqKuxNJRzmEddyCC1m4O/0Jmkly6Wkq6V
         jb6kjwQiO74D96X9bGeWjFkWrETGHHditB1OYs0MkdA2NEfyZqexvhdPqwyzQpCw2rF0
         EKRw==
X-Forwarded-Encrypted: i=1; AJvYcCVkKOHGjjoPcwh1lSjb4vu5OEr9ug/RUNiMhq0lE3Tk380TxiffVkciVAFH7F4nI7LOM68QK+ilmes=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsAZYfO7BmeRnFLGnfOgBUdkQafhQCQ5HWZjgCYTL3+Jz+IqQR
	E8WWs5xIpLlyWBZhmrGfbNOlGPAOsbmc+1eL+Krgiq+S2ZWJwOfNgL4YDv/ZZSfjBF0=
X-Gm-Gg: AZuq6aLOdm6uZT/q97NMAusygC5bLe6k6nPoVAjeIL7FOZBJYK3Ppy2K1W4nWy1epbW
	AE7Zb/wRm03uOo8AiEb78jZVlHz2aQ32gBepLUkLjnzd8sFM4kPEhzFKXt/Zd0Td3SGv9cUx0ea
	bpe8dvzeZTA84gm2PDkjEiMeX/yZQpe9vpox3p3dHtfogIGnGlM07jcEohokQc5geSvqZNjLeBO
	asPCeT1fHCR1PcdbKPxjZKzq8cFPU07bGe9zf/mCW8ntRUZg3mPn8GbATXC/YYoUzfHy+c4jDvp
	i12SzrynBK3ZZnjHcTy9VqgT9k+ZOj+LgsjDHIfHHo8W+c78xohp3D+BEsQq3vMHOK2MYVDgO16
	+D8pjoOSEPU9AVR5aRt2af+ayFYgFwnU0sf8JpYWSw5MlNcDjqJU2Iuuk8b+Ntpe6jt7GPphLc6
	CN24bwqocZ7Lpa9N9Rh4s=
X-Received: by 2002:a05:600c:3b9d:b0:47e:de23:dd6f with SMTP id 5b1f17b1804b1-4805ce42a6dmr67097725e9.12.1769419327486;
        Mon, 26 Jan 2026 01:22:07 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:06 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 4/4] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
Date: Mon, 26 Jan 2026 10:21:59 +0100
Message-ID: <20260126092159.815968-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126092159.815968-1-vincent.guittot@linaro.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_012209_257241_2036C2D8 
X-CRM114-Status: UNSURE (   9.27  )
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

Add a new entry for S32G Serdes driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 765ad2daa218..888674a308a5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3202,6 +3202,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
 
+ARM/NXP S32G SERDES DRIVER
+M:	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/nxp,s32g-serdes.yaml
+F:	drivers/phy/freescale/phy-nxp-s32g-*
+F:	include/linux/pcs/pcs-nxp-xpcs.h
+
 ARM/Orion SoC/Technologic Systems TS-78xx platform support
 M:	Alexander Clouter <alex@digriz.org.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
