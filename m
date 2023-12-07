Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3D4C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB1xA53ZhrTahVjS7kxb4YmnRVNVMiSPP5o7zvBcVV0=; b=WX3K0BkGyjh95P
	dydO57SlVz/SDPZjsV8c1giyFkGyAMHakwxHuo86sQNyrLv+S2WEed9o2ObVN+i2Gkz6K+vx8+lBO
	Mgqx5o6QQpaHI6scjUXHKoJrGp/lNI+b6kxglcvy9nCqE+MEgupHU4ygsz9rHaATN6tPR7hSXZHIj
	zVlSjhEaT3Dv8QGNd/a00LR3EPvzlQ9N5HW8xQx670aGxpGCfIfpbaHFmJ0GXIsJWBOBEohD4guN9
	ytLaR/I/FKv1liU4ADlr2kicDFwmFfburbboJT/BWiYIXMudHStKbylDYH6Vm4/KyrzkPogsONZ98
	+s8gBr/5bbPeXAiDfXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0C-00CW0F-32;
	Thu, 07 Dec 2023 10:53:08 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC09-00CVz3-38
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:53:07 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c09dfd82aso11298975e9.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 02:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701946382; x=1702551182; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzAkdCe8GmigS9meJGB6RLFDC8CgmK6hEzQqiVyayPM=;
        b=J9h9HNEW+kI81dzEfM5G33Te0Vz4fwF1+KaydMRAUD3HmlG7vdjLiexKc1GiwbS5oY
         fFrRyT1lU9it3SbdVmpVj2R9UPuXheN+pclJj/hhDfpMvVxuzHpuHjE91tBSJrvQvC9e
         nqK9d5/Gw0Jwo99YLgoGdTH3jhfehYCxBaU/GJ2SPFYKO2JNoIu067jEYR8ZfiJW9VcQ
         aKI1lWn4T6qCX6920RFMaQNT1ugbbEgea+FfuiZuxv/YDZ67zeZDifi72C1a1su0wGw5
         roLbeq2KnMkWvaYEl/t5jKqSpPWhg6+NdoowtBRCROzxWIpCYwVQarkUSbFwLRd1nCFS
         +Afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701946382; x=1702551182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzAkdCe8GmigS9meJGB6RLFDC8CgmK6hEzQqiVyayPM=;
        b=dJPxAFyHgcxgIcek7smloWdYxuyYcG7MHkiTxByIlv2D3hITxYJd7tPkK/O5Q0MHQj
         mO0yMXVYY8X4vqIPaOqNEZ/0l3IvF8X3X5b8k+lXBwcqkSq1JLH2FBvg9PF3Aucc2AOI
         aL1eae6px4L75iY1XO/xz1k5WMZi6lvjHz8a1rQ3xfeS1OES2gpZc8xMKngYmqWpIiKj
         3+FhF35T6u4U32IqlPnv1yrcDuHtGccEl7iQ4mrnG1hFgKHEfRAfgQU8tRA1WMdwrRO3
         pQaJMvTpcGfXHIQa8g8An5/XMy4GUUX/FyaPsu3fB7TZNku3aM0Hgab/y/C+zUfFgQy+
         BtHA==
X-Gm-Message-State: AOJu0Yz8M3ePI+NhabTBqJfbwMYNCI2dKXnbtOnJn+PSkvRE/1pcojua
	gcUbzWK7rTMYxjQBCt3ig12J5Q==
X-Google-Smtp-Source: AGHT+IHRtGdot/NsE2L3XoU8qXrI4IhdWzOZdCj+ecTyhBAvaBVisMbzzrPQ2/3t11cv8c68fwqI2A==
X-Received: by 2002:a05:600c:2901:b0:40c:2699:b625 with SMTP id i1-20020a05600c290100b0040c2699b625mr795852wmd.138.1701946381938;
        Thu, 07 Dec 2023 02:53:01 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709063e1700b00a1db8b08610sm668700eji.148.2023.12.07.02.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:53:01 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 12:52:48 +0200
Subject: [PATCH v3 1/3] dt-bindings: phy: Add PHY_TYPE_EDP definition
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v3-1-576fc4e9559d@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=559; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Hwpu6tM6RD/JKvU7jn8nmPGWlA4+6aqHXvdwplMfgcU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcaQHvtNBoyFoDqGxYZdSuJ7V9rS3o4tMgMa/L
 /rsakNygxiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXGkBwAKCRAbX0TJAJUV
 Vj/ZEACqcEFqs4X3nCWLQ3UkvPUu21OX6QLZgnucuhOQy2j5+YN5KcFbAopZrh2tFu72hZV0YhZ
 BKH00j7k1sah0JalC5y+NP4CVfJiptouXa70dSe5DHUDEgsrV4FBEvsL0cuIs9zx2zFyCTF//7A
 Qzn0quAZeGog51ywahMduGZObO8YbAjMsaBtloLS8bQw7ghNRB8RgihW20v5wjmHGlIJdXuauhM
 7umWswF85EQzZ/yQrXRLRnDjomUWC8R6aRsZiJ3e7oeD3MWzki9bniGavuNXJ+fX/6nJyfbx3vs
 mXbJwTInK/4+jcnb01svlQhMOUf32EMxS9gQH+UWvgZ1VLL4u7WwPa/cu9TnT9p0DGdZUyEg0uj
 OUMXkD0hRL3yyBGFPV1a51r1huH0+JENQqbnCZHHb4hjtz9AfocmZeTB7XKcLv+mhSGLPT6HRCl
 BuMeaGdSNmgBV2YKu7BkUEde2flczzvN4tT7+8LH00alp8aoJLaF8GaQ49GCrStIhQ6/S2x0bao
 tNgQWBYfQQEntMS2UV3o9iBO3w7jVceHxr7gYlCbRuSvrYjcF8lgc+QUMjUq+xnVN/OJBl+9K0O
 OP3hxaTXJzb0vXwlsWm0enJTJtZfhbm2wbK7V3gMlrd613LJ3FfEl+aDOnTBgYwwkuBp3hrOPZt
 m/shR67U6aGSMDw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_025306_008219_D0280091 
X-CRM114-Status: UNSURE (   7.90  )
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

Add definition for Embedded DisplayPort (eDP) phy type.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..b1a64508d937 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,6 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_EDP		13
 
 #endif /* _DT_BINDINGS_PHY */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
