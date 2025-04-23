Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEBBC369D8
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4w1SLK9MltFiKDpGvyiYwbyUAkDfK9m+Vo1v71t+U6w=; b=yuVAfnp6uMd50H
	c3gpht6O++mv/7KEflXtcRqkAh7VzBunWMUcMrcZnYdl6smWqXYqxeYfLPi4F/4E2wp1uqHTZbOlo
	HfyQvHRRa+U0+i5iA9FmGQ6voWXR1a4kgCAryYjHu3jw3uF+s5qG/uetdd7zAaLBa1squeDM6PcOl
	/Rhu8+iwDEmCXS4sDXtdqzH50Pd1lACFMWK4Qycx4GdxAk3w0iionxUg2rIjXkhqdsx2iy/+I6mhI
	ifFq3UyOuc2F1uxe+l6HTH7cbENNLnAESobnqcBBf9xcU55PUJRxiJbjiqBqICtWLfmqPuvNRxJV8
	9UB+DspSd8bZ+ttANR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aWi-0000000Aghm-1ISa;
	Wed, 23 Apr 2025 13:52:36 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Zq0-0000000AZF8-3mGF
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:08:30 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-39c14016868so6366995f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745413707; x=1746018507; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5aKGWU/nxQJ1g/GQXjmzKsRQAC1mEWy7RzAyyaBKhic=;
        b=MqcqV96EfthRRABocMdHSIDMJ2nte+HAvnWIosBnpxnC13yQ/Co4R67fZDh1aWEMwn
         RuOaGgSUQH32XTKl1wcdIN2KyrYpHxWcQRsYvCsOW7I5LG3q0zbLXZRB70Fxs0Gwhq3S
         dNvljpi5cl4MBvPWXZSi5HfvNVxwlQcwjlrR+6gO+NHTPauLkbKtKrzMJrhAufM5niwL
         QgFVvzyly1ooI4TC9U/2I7iiFkqt3W4+5swIE7xsJjP7QCYK8vaS/Pcsf0/chlj/9tOG
         jYNu+HDgAJA3Y9PhE+oj7ls57x6EQl1BrllZR1RQ5Dssf3yqeh4vZJIal+Ts93+YHd9t
         L65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745413707; x=1746018507;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5aKGWU/nxQJ1g/GQXjmzKsRQAC1mEWy7RzAyyaBKhic=;
        b=GCpINbOhZvSkGAbMwRh8+4HvGI8MLIUbWeRMzm7DE02qI0v+7WjJoZgk7LXUmT34sC
         uJLSxML9h92c4jdC+AfmAAklovKMVa4uIEgu1PStOymGi2v7Ht4p9VYTjM8jXwZKwP4e
         8MmlP6mJUuLCXm8uUaXfts0G6Iiu44thvc8q57NzsaucKdh1ZzSNvnrdoKBMNhkUnvwm
         3lML2eifVxT27u+N4AXnZ2AzwaFHiPhk53UF8GI9tI2e2Bpvdb3onzPt/6ffMYzdR4kk
         zbBg47FuhZfKN5K0Ff1923kE+fCmzF1ZSPjfjAihmWYyHHirKWW/jaQewlN/GjDAxVk4
         +xqw==
X-Forwarded-Encrypted: i=1; AJvYcCUov+NgFPqhl5l9/Z3vDdiVO5OUcdyr26ESC3n+r4sWYsMOjBvdQCk1T0biJnkTdh5OtAFe9du495U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8q/C2bhloECAiRSdqGRCth2+zb+j/CqoQX8bQWbJ0AAfdXawS
	eyKIPrPjTR9QMXFbKx5V7hABpgHd5haFfBR5s0W5xWTJ+zbOWMdAAJVlN/xYSo4=
X-Gm-Gg: ASbGnctqM5kLhEBs8UtuQ5GF83D3jMvNyp24q4aeWJNrt8xaeIBgA0HHNrkrVEC1eSy
	YKyJSvby0jnM3gJhR7i9HmrFf9Beb5lHh8LhYKgijKzWr8aBAehDBH+MmJAK/lpePz78O8DsNLO
	muWurvWQfsRN4NJp0/8OcnCj4YOhBNSiS4xfUws/8HNJRgE7AT2LeD3xh4swthWWjRHBgZ+D+u9
	a/sLZNRYl3L/fW2FAZnOJargVtfCLjUgOwkKbGk8dX6T4uvpXjcFUUYMBm4Vkjk6FSQnw6QQbp5
	eRM51QUBwrOLUMW1Ot/LM4qSY86zgTyVju1RhJc1ridTxh3wIO70Zxk0
X-Google-Smtp-Source: AGHT+IHFDE6RSxpVFbftFmRUuMMe1z1mFI84VXLmNBo24gUTBGerWwkyU/8c7yGJzERf6IPYsxhjow==
X-Received: by 2002:a5d:64ae:0:b0:38f:30a3:51fe with SMTP id ffacd0b85a97d-39efbad2f6emr13262250f8f.42.1745413707142;
        Wed, 23 Apr 2025 06:08:27 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39efa43330esm18445115f8f.21.2025.04.23.06.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:08:26 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:08:23 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: [PATCH next] phy: tegra: xusb: remove a stray unlock
Message-ID: <aAjmR6To4EnvRl4G@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_060828_949544_F86DA7F0 
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

We used to take a lock in tegra186_utmi_bias_pad_power_on() but now we
have moved the lock into the caller.  Unfortunately, when we moved the
lock this unlock was left behind and it results in a double unlock.
Delete it now.

Fixes: b47158fb4295 ("phy: tegra: xusb: Use a bitmask for UTMI pad power state tracking")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/tegra/xusb-tegra186.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index cc7b8a6a999f..23a23f2d64e5 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -656,8 +656,6 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
 	} else {
 		clk_disable_unprepare(priv->usb2_trk_clk);
 	}
-
-	mutex_unlock(&padctl->lock);
 }
 
 static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
