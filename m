Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4039C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n133kywqYCVKiGkvQCghmVR1l7DFv6T9/srRP8iUBfQ=; b=IZ+xhPaqviMyLp
	u9WckdLtJq2hQAPluCTij0v/yXVa9/li6a1kCHnRJ7EHecbojoRQ+RuI8SOyWJg/N70aTpak/Y0bY
	ZB9SXg0EVdV66gWaxFSdQua+WJDqLn7GhkKAeuP2wi+VCk6lTlODiBBm/U/KqK8UtuLA2+77dnzJh
	E07tCDuKieeIO/NavezVF1zgSvWkOYYUa4D/olUUOMwCzOBXh3i+0F+7u+14xeoaixVQp2G7EIN5Z
	6epEqOpzDfr+fwRnfrm1k7oRHBWhh3irX9RNH/4aisvxCH+i98LAV9FowvcFyNfGWPzCcfLyAgx8I
	ECPBpJzKB7C5882UD1qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGfA2-005zgY-25;
	Fri, 22 Dec 2023 13:01:54 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGf9x-005zfO-2z
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 13:01:51 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3333b46f26aso1571398f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 05:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703250108; x=1703854908; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=FAKcdCIV9jq0RxtVPf3LkmBbtZl5P74L5Yu+RWMQ1xzGkFEqFuMRthUXzAWm7clF6q
         PziNkkGKvNDHdRWAS9AOjaF8UCH3XI6PdGMvb9T0E6U2WRa7yt858Ch7SGi0ximkNKDA
         HGRGd3PsMGyo8/mXsM0p+lboKVXj9CJ8uraqT7EkAdYL5dgmeOSrzUTvpBDLOJNozzVr
         jr8ihy6ktu91tlSBeTmSAC24xaGjlHj6EazyT43CZ0lk8yPAGk+bfavCcuVMwgrhow/B
         ciOHIIT5h0QvYzcIKGNCqw8/T7krr0EIehcBiYcQ2BktSYebl5009zpOFxUmEX3xbPk8
         Idfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703250108; x=1703854908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=HaHZr9pUSm0Y9eDZ8mR/eAfMG3oVg/VHzWNhYeRjlN4WbrgUyvz/cWCGxwIlBe0ToY
         X8sPdJFza43SD8NLKpCzO179QTepECJAvQUe5eK515Go9u+EVw18PXyhbSnakJDZn9iO
         bhUYK7Yhs4rQEP/QReOfecWvBttrEBvHQQVcUlGRBaLxW7MnopNJqpqKk3YSbTsq2oXf
         OXZZiKJ1L7h+uHmhKBDEB96hEGMl7nHrbQ4zb6dNyz98uVsSf7UYZGL6B8r/m8Rx5Ft6
         PyEjIEEHqRSPYsS1R9YVrTnAWA5Xt3U5sg3tygipnnEycHAaqBxSxjmbHUOQp6624SEC
         EFTg==
X-Gm-Message-State: AOJu0Yy9L/dItHbjICvOJHXaTQdLnZ3ha3GmDzg2X2p0H17b1Snqa2Nx
	1LpPcTJHHlcZE5K9iX8yZN9Y9ZLZmD2iyQ==
X-Google-Smtp-Source: AGHT+IGsEXvrlwNcqAyZkLieozWSlT5FA+a/oVszUAchky4spis3eLBHjwu1NDeqr4UGtWFkRjdCXQ==
X-Received: by 2002:a05:600c:245:b0:40d:2765:d8c0 with SMTP id 5-20020a05600c024500b0040d2765d8c0mr690457wmj.10.1703250107987;
        Fri, 22 Dec 2023 05:01:47 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c350100b0040d3f4b1c8esm5375631wmq.36.2023.12.22.05.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 05:01:47 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 22 Dec 2023 15:01:31 +0200
Subject: [PATCH v2 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
MIME-Version: 1.0
Message-Id: <20231222-x1e80100-phy-edp-compatible-refactor-v2-1-ab5786c2359f@linaro.org>
References: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
In-Reply-To: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhYi2kGCVeVr3XIct1HNI8/yl9StFcLZLAqZa2
 L8xEEaGIAGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYWItgAKCRAbX0TJAJUV
 VmxnD/4nG9MSB7dv3spF3zt/AlT/w1o53NEUjsHuXJTglSAQ1hH0b1+HkrHEwFtkhmBB7N/x1fd
 AeuC+9VOtcFmHNo+INgFTNXhhjgVLoAvjt5Lsb83TiaxcxOpYUDY+C7B21gGrgfkSkKkW5tBtNO
 YLpCMyapigNSLLsCPacsvXtsX0mrnx0mS2CgBF7zXRTiKVr2aiAdG5wwY/f6Xy3JG/dUu4G8skw
 sJlFUdB0DVemy4S0Swr+kISNxnqbEYFMGswpfmZlzd66FdR4oH2ogdsU0PAG3jsjNNPU0P1dB9S
 H1C2tFcIPAYO5Act71nK/TWlca3NsNRCbXTLq6Max+7F5rtexvEQ7sdMwM3XMeuHcni0GgDe96L
 6OI2GFDOaQfWCuN2t/9dIp4X56NulfWmLWVUL/uE75yOXYN3+0sCQptI2j+qQhOTccrz7SV9YA7
 6DilWe8D50kQk3ood0H7E0n4oN7ilgNnV02sJ/U9tMEfBB0hIHbAW67ggnIQDNos8qe/gN9jUQ9
 uUb93v/GUaZbKuwa/LZ6n2aG9TdKDnojqPiika6s5NvNL8jY8nn4Jll71BRBIY9C6CxgQrGqqK4
 84E6aW0rgqgx6N4ZLNmjU/G0vbRi8Q5+kYtl7JZzr8sVKschncVvr7DNpTmMPun67SKMJmcpdHr
 ZxWTUYmxWHGkovw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_050149_963952_6F2D0254 
X-CRM114-Status: UNSURE (   9.44  )
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

In some cases, a DP PHY needs to be configured to work in eDP mode.
So add submodes for both DP and eDP so they can be used by the
controllers for specifying the mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy-dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy/phy-dp.h b/include/linux/phy/phy-dp.h
index 18cad23642cd..9cce5766bc0b 100644
--- a/include/linux/phy/phy-dp.h
+++ b/include/linux/phy/phy-dp.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define PHY_SUBMODE_DP	0
+#define PHY_SUBMODE_EDP	1
+
 /**
  * struct phy_configure_opts_dp - DisplayPort PHY configuration set
  *

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
