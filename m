Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98756C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 13:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2nIuBxglib9qHxsO7SesgNVRxt4bojXI3SGdZgvFxWo=; b=hrfisjSG0gBR/J
	jqz7HKunEtUR3KkFTokfLaqE4GRWzXDmCaTgGz970eCuE5uSEAcXJU4hv/qqIYD3T5EqHiDC69ll7
	1nwLE8mi5PxRA30iYyJud4fULkv34D7qnd15qkDZKyeDrao6+5V7CmG0qS9bXnRX1YCaOVYxtNmzK
	QUUmxC7rbzDBNvTBo63aRCVJfrlusxKlZg5mDSHQlEla5ULZDJfRMySxnc3NJEbrIeObNECOXJGdR
	hSQHBndRBi56qvoD0zx7DL5lt3Lbt51YRanA34dxhYREHUrKJcnu3atry3ejD4bv+4CpkzDZ0hxp9
	SjhM7ZieyUGh/cK9dDdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGfA0-005zgD-0x;
	Fri, 22 Dec 2023 13:01:52 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGf9w-005zfN-23
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 13:01:50 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c29f7b068so18471835e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 05:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703250107; x=1703854907; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JWmdonR8NpARXjfe3qqartT0mhGrBDRLU87EB6urV1M=;
        b=dxtZbZPnstxVloBlu6cNIsaNLmhpoK6CJt4P2l1PRnEZqQurBaLtSvfSgXvhfu5ynZ
         k84x3Kt8dV7bzrQ/NCFI49ne3WXrCiFniE5wvqB7KjOgYfDfnCLJUr4rI/YuyKS9sZtJ
         RH4+nsa1AH5D10p6R+PocWVkpGRRMPij9OBDL2nVGu6YGEeSVz8dHm/X6kOKiUNcikzQ
         KqygzGYgs6ZJweyP7WazLYV5hw2lYbSgxaWvEgudLRJa5QhMa2fSvrQ+0D3DPuDXBJHV
         xsfikJE3T1ZdnqSaEk8uPcz69GUY3fhyTrab1wkFq+T61G2pi+VrGXS8tDlyZAgKixIC
         nnow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703250107; x=1703854907;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWmdonR8NpARXjfe3qqartT0mhGrBDRLU87EB6urV1M=;
        b=qnXQyGR7wxtLslcbXahrR+4mRDUSy0+oY5sdhM1o8a0joOhQKfnuPvqsrwiXgC02w+
         QnnrcQro38/P3i/pBEhACJAGt6iYePHYnwrf1AcXT+xjV2udcdbCZvEDkps/uDiuKuU5
         f/CWddO7BW4aoGPhr8GZVPom0ywi5dE0pSTMYhotpqBqxJFI5uazvpeshoWnhtp0JyjU
         srwf8L8t0iIbwUjW35t6ZcCVt2d2fV+Jw6cH0YcZ+w0uVO7EoTaKohc5CaUSMYRqWrvI
         jv5VetaY8vlLX0cJK4+QDmVHSHj3r9JYMFwICYi5WeRjYC5OOlLa3V9xYPv5JGSQ1tNr
         IQjA==
X-Gm-Message-State: AOJu0Yxxk6Xmgq0L9MdLYLBUhmt6LVYmnaGMunq2Cy+JfwaokNXI097K
	xO0qHeDolSfuun+dejDcK0mSYE7lC3dRMw==
X-Google-Smtp-Source: AGHT+IEoyA67rBN4hpcEFYo6S+igZ3ct0M4Huc2ATJHcWr0tSVPEJyqU9rE5tmgTRM8HN9IfSSXvXg==
X-Received: by 2002:a05:600c:1c9d:b0:40d:38c6:7cfd with SMTP id k29-20020a05600c1c9d00b0040d38c67cfdmr774026wms.35.1703250106701;
        Fri, 22 Dec 2023 05:01:46 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c350100b0040d3f4b1c8esm5375631wmq.36.2023.12.22.05.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 05:01:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Fri, 22 Dec 2023 15:01:30 +0200
Message-Id: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKqIhWUC/5WNTQqDMBCFryKz7pT8INGueo/iIk1GHbAmJCKKe
 Pem3qDL773H+w7IlJgyPKoDEq2cOcwF1K0CN9p5IGRfGJRQWirZ4iapEVIIjOOO5CO68Il24fd
 EmKi3bgkJG6M1OWuc8xbKVSwNb5fm1RUeOZfZfllX+Uv/FKwSBfYtGWNq1dbaPyeebQr3kAboz
 vP8AgKA0MrZAAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1717; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=cDX+OTRf4Doi1u/l+84vE/tm+BZU4P6g8JGruDSER80=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhYixD+yv7XbZuCNQkxvgIpsKAib9ot+pgK9dZ
 ftlCviPpdKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYWIsQAKCRAbX0TJAJUV
 VqK3EACPWP40VmX3w6tO2nMIW+Yhud4GatWzn2ZY79z2bMwGc3M3DCL36ntk9c3LUEqGAEH84e/
 Bcb6Ftjeyqg0qOXTmrXIxpg2NAo8K5M4JQe72PH581cZNCTa4SJlaSnlzaHLr5EJaa9xp/SJrT+
 ddP5UrbWhyaPHMAPxo8QewHyYRYBnBED0GZ/Uf62g34M0MRg3VXEtmPwKLLOnbR8fO19Ag7oxEf
 Zi2cxEHQkEbdQLlMBaMcxIvUJWPqe/gppHbKVXnlKb/a0sYoaZdYhYBg0TRYYyzuqYCePcJQ77u
 AnxxJEa/81oJClfHA2MndDvPLkg0qEciRm+ICpPIIfCrPj5DyglyqL/yeFEW4y8kEeX6+6gTz7d
 CoPpiatJmQPrB1q7K7vAoamc/dxMk6gjbbdHqj0FI8CnBqBw04FGkCc1z39YkD5orNqfVJb1VK+
 88t1tkXvdS0hSW19xcUSCmD9CV8l0esR0JtKtXS0tkyj2YdevYzyoPnXyQ/W5MSithZmqKZqYpK
 zrcpw2/42vRFFejm1+O14OMKzulceLQJG2xcI9CjdhAnoM1EJKFl4Gl58GY/jZrVhgzOmLr9lCe
 +pl7qrFpfWVwM/w+i4PAq0vt8gEjC8n9b4ZtwYFWlxp5ywwOHQWUjFGEI0vFOe+lYg688PFmM32
 +paxeYaKrLfKmTQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_050148_712510_CB1EA3DE 
X-CRM114-Status: GOOD (  10.27  )
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

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the mode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 90 ++++++++++++++++++++++++++++---------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 72 insertions(+), 21 deletions(-)
---
base-commit: 8a9be2a3cb673dba9d22311beb74be261f0b3f15
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
