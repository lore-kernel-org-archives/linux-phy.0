Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7810FCAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOLuJJmV941pRK/5A29Qre/Ye/ws9LFWzwkr5XlcfTs=; b=V3ZeRb+/nO/Lkf
	odlmaQ2Cqqoh9s+zVmr+zLeJx4cFgRTdDDxZv0J9qhpWwqVXfLQkrgfYzdu7U3GGn1GZBDa8UW3pl
	0P23BGIW9jfQUcHjLh3z7VqPO699cMWN+uOSgSjcuwGAmxCPS0BQ08z5/w2mPNAp8GIPbRW3TIrVR
	NsKu6zj2u3ovTWCsuBT1ral2OccykIKEoQoDP5CgsCE1HpNa5/9ITrrXKXOa2FvrLWQ1DeyD24mwg
	nzAMG1EjKaN5okHpqOSzsBziYDnp72WNH9PGzWMqPN0vNlk4Ne0MO52C+qmdpARggon/6mnVImu74
	BJWiv+jnLDW5JZ/rVUJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYY-00000003eDW-0yYN;
	Thu, 11 Sep 2025 14:45:50 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYV-00000003eBk-3MEX
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:45:48 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b04abcc1356so120364166b.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601945; x=1758206745; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZvfZ8Qsgh+4iuPHesI9UycLWEQBcekeYQGNlzH84XAw=;
        b=Ne50yY/sAz6MPmTDQLN2cjK54SC8wxnsJ5py+PTZeegKyPRX2YqL0a++1K8N7JbDda
         aKEtaD0RyR9m2+Zcwy7c30dL92GqOIyolfdmHcv21tHfj9T4xj4zNnCNFxNQBdJ/NSZD
         ztAOS0QpV+8NLCTz49kuWdPgyRRBQHKaRrKnZLWfjy/WGc/jA5tin/Px8JW6vzdq3Ikv
         XyjndDV5xjs6fvrw5hs9zjVlrSbDR/qBeyih1TjzJbUXnSkbR9xNCt/VUhvXnrIAC/Cf
         Ea2YTo5FBtl9YDOCtDsBtw7TXbuWkGSpEcLZBf3V7Y3ENpD4+MTU3cK5JJQaKxnFZ25m
         g5ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601945; x=1758206745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZvfZ8Qsgh+4iuPHesI9UycLWEQBcekeYQGNlzH84XAw=;
        b=ZAvE+rmtWuO6yavg3mAH6/cLmECo1bQGBnoX/eDbydbQvBSTRvp9ADtHqBCW1i0DXb
         Vty7z7Bl5a5HeRbnrgf8VrI/J7HtiOytpvwwjC7wMArCsHJuaX8oa71dqs0QredhuFnn
         Vcx1Nzr2x7rXiaBQJs2LsMWQmCEKYZwf5qg13crMx25068mSezX1QCu8qN0HFtsgACHs
         AIXWbvYGE424XNLshPxFnifgsCY6eCUS+6EZXFGFmgMH9fYEKRvQf0t6bBUulfk+1g7s
         whNZ54PilDEZ7KvC3cyk+jTXsnJJ5y9ZOmmfxDxgAxKovnSe0pLcbshEJXWicWunCgxV
         4RBA==
X-Forwarded-Encrypted: i=1; AJvYcCWKP0TEmU20cj6SO3lPZnjhycumSKGuWQZtQo5AsRYMP+atbFJjTDADXde3FxsGwpBofIT7jSVLoQI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7Q5/w6+oQx++NR0dNvd08YhPd3XuQ9QgyyF/9IrzimHgRxbPu
	y83GsKtucXwiTXu5z83pLHpVT6JdQyxj2YV8gDNwmK26RtKGM3rPC6B9XOZjMDEZrWBujhM8KGZ
	jiS0l
X-Gm-Gg: ASbGncskoGxXYZQsmVSbapXZom+B2YjNMpd9rcT9eaDFZmbflMgN7xPlfh+u4H7b+ov
	fYzmvXY8iL5oO/Ff1KR4FTv3KM4oddOeiWXWVPZBCrJzhWd0xI1yUNf/PwUP9iDBS6nms+Aaodi
	UJ1vENAVt4ABIX8o42TdSGgDTxvGSuPLBbIl364bIx028Ze9ltg9aeOR2l6sojsYU1q/snK+yy0
	FegxAb42aYMzSxgNB3JoZsZr38g4N3uFZHdVWF6LdarTZHN93pXJ+IJZkzEYMgfA2fAljD5VUev
	wGsQrIS+PLzdL/9fhfx0qRrFYJt3Y0rd6XHYVZK0KAH8V4AqKP4oYYb4zyXtb5a7Eyf23fzqAic
	+VgH0Uj+q4yd4ayF9bzANmDs=
X-Google-Smtp-Source: AGHT+IHGnXEifVquqv/KZPf9m6Jh8pdEXvXherPbOAmrvLY1GZz5C+RIz5Z2dfGTZ2NzWEPIu90quA==
X-Received: by 2002:a17:907:72d2:b0:b04:24b1:83ed with SMTP id a640c23a62f3a-b04b14e274amr2268211266b.27.1757601945489;
        Thu, 11 Sep 2025 07:45:45 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 17:45:23 +0300
Subject: [PATCH v3 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
MIME-Version: 1.0
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-2-1c8514313a16@linaro.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=prBRws9AKyD86wZTW+eWIKYLz5knWj5rzAD98i9R9I0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCQPM+Rd9X5/h99qNDUNk50u0Miuhv61KVFv
 qAuYfAscYKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgkAAKCRAbX0TJAJUV
 VsYLD/wJga5xVmz5zQrZUWdEoATC/hv+sJzmIYC/96casS6hAXEDgHBUZ9WLkH0d6YWBGz7JGWW
 XfcFOuOvQl2qQkIsR4/p0VdBut4EQJGaPvtIIJdZfjOgytjdTmOsFFACZ4SZQJQhqtG1/qjBe2g
 wYp9VgjSeAaJVrAXsCf9qzkLnLQdDxZcKFWUk40nSZ+/GbMpld7tyEhYRK4015eTCZiC0mZhRAG
 /Aw3sWUg4g6fZpH5pT4dSqNKyiUPtEJiZ/9Sjz20WpMPr8b9DejLyXM7rnpVQaItSfjkgEGDAlC
 jMdlgd7pi+cxtpUcxAXBkYVGu3njNGJpc3ujtZlGIJ8yx/4OE4XScyT0E1YFeFFATIYB0r1K0al
 J/SjVtP5slJlIVw1V0n+G8gpzU2424qemAsOpX6s6O6yn6AxrbCw9KFfDJN9UEAGvEogmTgkNWT
 9uxUR0YLa/2SDRYjKDPQNxzUMnZSYGfbBx/fNxIMbTywLyZVQ/KU1LNy2QTKRIypezjNa43rTPA
 4QaZwZ8kDolfJZuoEEdyFOXPxDxQa8pjHj3D2CAMV5qOwBxEkSbCRhfnTvUbkyhLjHiBA+VDs2Y
 6G2zx+MY+Uzn/8GJBKC0L40TUcyj2bYSB2ygZp1GBuGgL2HiIjoFQOGY+oXv0f6ehOK6GZ3lnd9
 rQ9MWOt4zShBoLg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_074547_859548_D7D6938D 
X-CRM114-Status: GOOD (  11.28  )
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

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..7b642742412e63149442e4befeb095307ec38173 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
