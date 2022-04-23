Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 067ABC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 16:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAQjLnrrFZkaR4iITjS2IfRkHz0YtbD8qrwIwYklXYA=; b=VE7uSL+Ptjk3Wg
	sJPBX3XK1rjKbEDNWc2fHlN9UCN6jqUq0HF/Pp6mG8dvuWsqIJp+IHkreeOvgePf0O9yeg5c5ja3n
	w5O4xBjoXdVnn9k4sbvKi89BSjfAU8ps41d1UbdrlVAZCPeWr7hZCc48VFKKvww7VjTcAGeMszIWw
	JfkQYP1pucNq9Y/Hh4pO5ezumHjCsXlyXr1YxFgQ/0VUHm8dMa5enCLF0YfMqir9K618zwGNi9n3X
	zZLgnSOBzzAKvHlzNl84Cd71BVcvEbZwMQGmkApcJJAzbi8O/0IVnUyGo0+Lq5UDqkUPV9O0CXBUJ
	MN95wB4bUIyTTpgVZuGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niIEv-004boA-Dn; Sat, 23 Apr 2022 16:04:05 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niIEs-004bl9-G7
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 16:04:04 +0000
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-e5c42b6e31so11726203fac.12
 for <linux-phy@lists.infradead.org>; Sat, 23 Apr 2022 09:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h8PXDVWhKSWBJ0C2lTa3ybMUBrdTmN9u1QzT/Ihk3Pk=;
 b=nP0ktGxiJzcu0Clehe5GCxRzS2iKxF48fxVgutSfIYOUswhkoQQVHsJy/YrznvUhIs
 BMzo/fVq7L1AlUpI4B4rUb1BqRTBpfcVnrIM30czanR61YO671Q0hPAI+s6dgLLJ/sw7
 L/kyYpB+5dTfqfw/J7JdZsx1OwHC3eWkcUqOODNj23DDTWc7DILTpjvKpxv1aH9NK8+l
 5hJXkEHPJZKBw71PPLwvTlXE0LGLihgzpcx2HgtZLy28Fl1qHns9F6OtpKz7/hrNIjJ1
 fbWIpcHfk+fTchwO6egooikNX5YUoqvjpeVmynlgz7FFJ6ygG9NXkYXjERfl9KZ4max7
 8WLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h8PXDVWhKSWBJ0C2lTa3ybMUBrdTmN9u1QzT/Ihk3Pk=;
 b=F3BzZcxOCzUb+iQYipp8LH8AI7rPb1OijHWfgD9HUY7TrEZDzu7JtMF4IePU+q6yuS
 +w7inJs4prHbQL8/M7o2I+kNHtskiNjp9uLPLEoHd1pBsAd4juFrkzN0yidesMqYL1Vx
 zYc/r7+7mQkWqMMkzvNUMUBx+9erHQHOBPVgkMuDayIVee9fswzUjpirmvfQNta/iKrw
 Dd840yFz3bP5ITHhx/RLt4AKRmq0FguKHUuTjR0iorfnrutdKmoaMTY17Stv4lkCMZR+
 F6pnLgXwDy0f6WvZuXdkpnxWdWb69Sc9f3LiqQd58u1cMUXykEoI2gzuwcj+lQGILELI
 XzXQ==
X-Gm-Message-State: AOAM530YzLkHXl4ud6Es0QIjkulyTPen5WD/jd02YxdTl9axDiw/ntmA
 kLWYWT+GLqSw0YCe/zwytkcnsThixVoIMgLd
X-Google-Smtp-Source: ABdhPJyfoXu/6v5iR7R2/jWDr/7XAZoB+zpsxrUBkKAVnoaBYOT0r3a7pCIcYsGHGuHEn8JXNwum5A==
X-Received: by 2002:a05:6870:33a5:b0:dd:f6e6:7837 with SMTP id
 w37-20020a05687033a500b000ddf6e67837mr3879028oae.154.1650729827416; 
 Sat, 23 Apr 2022 09:03:47 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id
 c9-20020a4a8ec9000000b0032438ba79b0sm2123856ool.0.2022.04.23.09.03.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 09:03:46 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Cc: robh+dt@kernel.org, agross@kernel.org, Rob Herring <robh@kernel.org>,
 bhupesh.linux@gmail.com, vkoul@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 4/4] arm64: dts: qcom: sm8450: Fix qmp phy
 node (use phy@ instead of lanes@)
Date: Sat, 23 Apr 2022 11:03:43 -0500
Message-Id: <165072980563.2810336.17249658876538804302.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220418205509.1102109-5-bhupesh.sharma@linaro.org>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-5-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_090402_560855_31B1D873 
X-CRM114-Status: UNSURE (   5.52  )
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

On Tue, 19 Apr 2022 02:25:09 +0530, Bhupesh Sharma wrote:
> Fix the following 'make dtbs_check' warning(s) by
> using phy@ instead of lanes@:
> arch/arm64/boot/dts/qcom/sm8450-hdk.dtb: phy@1c0f000: 'lanes@1c0e000'
>   does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[4/4] arm64: dts: qcom: sm8450: Fix qmp phy node (use phy@ instead of lanes@)
      commit: 2a31f958f8326c263f2af2511cd6d8256d81e810

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
