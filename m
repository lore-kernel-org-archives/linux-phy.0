Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5FCC25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ew4ntCYDcZLBGewBh7tgZk34k9C+9emI0Tid8ECYP0=; b=2sYM0gxxcEwTEM
	3uvOENmaH2GPM8o0BREGbbn2g6KGuLIez3Tl/0aAS4mQykJOPjaHNUoL6PtQ+NIuuH//u8/mKFbng
	e2QdPs0npnqPW3uSLR1JIdE/nkkZA4QQT2vvL1yZPpALYIpqZR+LoV0F2CDTx3AJBud7eFwNa25jE
	uJIT5hMIkA9OPQZ28x/GDCSz9DQv0NuHxD8P3Cbd6x3TRHNcBDa87y/EnxTzfs/LZCICRnBhC6fd2
	LkW4ercIy31rWH5T957mvJkf/fS9nnfbk0trbPRWYVvCs5VwowPuw1VE2svGi6jmbTTjTgexe0Pix
	mr8LND7nYHsaILuCkNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPZ-00Baas-02;
	Wed, 25 Oct 2023 07:34:41 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPW-00BaYJ-01
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:39 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-508126afc88so1300562e87.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219276; x=1698824076; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AtjaGI0OyZ0EdBdBaBOQ95CjdQNQsAj7+ZgWxWLoVvg=;
        b=qLwvY0AIkqTwA4YQgwV9/yaFOOXntVSn9V534Hv2TGXe6GvuTcfKtuxBKFBTy+JQDq
         Ze5kNz+YPALPA/ERwh08EiN72HcQPwVk+tJ7I9g29FJ4ghrp6eOvOF3Xwvg+2aQd3nxb
         K7zX8wJNxQHKW/InhX3xV8L+1AvS6HqS6ZnUcakz+tbRKU5LBY3++qtDl624yJJURmc6
         cLGIW/WhvUQK05gnHRA2gMyEHv1PiNWT8XKLyljtPXwGFW6dyLkTkDc+8i625RkYClls
         1mdKvTz09yF3hbFjwrNB2j3v30dwBAbzX8drpcTLovsAit4ez8BdafQNitKomKL+h7eq
         PM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219276; x=1698824076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AtjaGI0OyZ0EdBdBaBOQ95CjdQNQsAj7+ZgWxWLoVvg=;
        b=gXy0EXj5Q6MbtBffY8gxHKWDedSeGsbIAY1nHjuOTI0IkvIDOAI1eJGp2xpSlCN7Gs
         utoiGhy7fjO4IvrPxzqUQgZqWhpdULAyGtuziOvgcb+2/1KqPC5+rFxKSeyCKtDYbTcs
         JEE2a1Mx3/jCJjMRlgq4hBbHVLY42tdznyZ1j2tfXvY5ZBXwRZhv3zpoSDgpUnFIkk3O
         DQgv8gSV3R0YsTy8JOCszGrHsxfRHPrMfM5ZoBRcKWL1xcGH+/gA4ZMidgNM9txwpjlr
         Fcy/ww872AWKG97i2zJ5off0pkZIss21gAWc8FvFQ/VXy4jOVg/8at48a7WkdjcuY7ap
         nv2w==
X-Gm-Message-State: AOJu0YyTBoCf9mYejshv5dk4zyliBXTkG8I44jPYIi21HY5jAE55xqdR
	7y5bStfA+dZ4V1qeOIErfZ3HfA==
X-Google-Smtp-Source: AGHT+IFQsTBGCIGYdIut4TnKmQ7+1s7MRU+V9MiBwh5l0roqJyWvvI7W3PZkHF29aPNrYRNBhuIeig==
X-Received: by 2002:a05:6512:230b:b0:504:4165:54ab with SMTP id o11-20020a056512230b00b00504416554abmr8851305lfu.56.1698219276654;
        Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:29 +0200
Subject: [PATCH 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for
 SM8650
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-7-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=807;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=lzyoKSoE9NysNHXkw5ojcFxOZnDU8btJV0S4+yaPrc4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUE6/wWF47zAPcf5y0QfZFn3laEFazck+MdQEkn
 D8z70yqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFBAAKCRB33NvayMhJ0TyBD/
 4x3g+f80Xi5iM5qDvn+GND3eMDlSKsxpYY4HC4yXI+oLNDgDl+kFY+J5uNEUTA1l3DxUkXMD5R1S8C
 KnemxaDns3r7sbVLYjf7gb6ziAVY0qGwa1Va5Nxb36gCH6E2lfJeYmCYQFfdrg2gg57T5N86lWBwuJ
 mCtTj/4i5ArczZ/W8vPJXl/mp4eF0WA5vVcB3LjmkIbYXEePSDP42mYU2C6b1lB53ZQbbjl6UHtXuA
 tiOJ3lX97M7pbhHIMvEGV1w1Ag/6xm02gA0u0O0qbPrvg+Di9VwcA48pshHEaLWgv2QcMAVui03BeF
 jvOwcZqouKlHzik+czRaI9w0R1/dAp79jJfwMtwsAVJESsp5J3wGYTD4cGqoa5q4d/ejgDNtsULITF
 PMeYLtQCFE7wYnxRz9Z+y///qh8IaIXIQECNtT2cB2Q0NKNgvpia9MwJgwOChs/HvJLvPZ74Bn2ELX
 RYJRDSYe4N06MWqYJBpSkmvx1rWrsMglXcT83fiz8WTIeiMJdqSZ8mnLreNfwMig+9tkK8rA2QeVK0
 x67dcgzgGg0ltdvlAK0oLpKdCCMs5iUj1spGzyyF7UNxcQrlgHh1Obw6A93aBldFyoDmJ1DRGnC3Bv
 yPwdWtfDTRoR4r4IdGx+MUdaDsCsn8p2oOeUr5z+IhcBP39LuqTO9CKB1USQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003438_069430_DA731C08 
X-CRM114-Status: UNSURE (   9.33  )
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

Add QMP USB3/DP Combo PHY support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c87845c78ec..0417856b8e7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3558,6 +3558,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm8550-qmp-usb3-dp-phy",
 		.data = &sm8550_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
+		.data = &sm8550_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
