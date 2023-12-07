Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EDEFC10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V8WNtQpH0eg3gyQPYy6PKkDF2twhyZKijbCFQcU+/ZA=; b=TI1+2pMVGQdS+4
	rTRn/dMzfH4vD2j4XiEJg1ehek2TrpGrwcJ3LfwO9hhHGGjlPlG80m5aBhTcnAM1dkyZvTYHVx3Pm
	JlpoorS2Q9+ZC94FFZvFGIm9kkMJw5poAMnxmtfhzRcG3i4T78ryEw1Jr38wHQ1Ydi/flDHJIkZYG
	m8xRjU3pXuj3iYfimnJ2bS2WwUxvlBZhgVwjzWTqTSMsqOsfVqv/d+AqIhD403icBcXJfXxfbY95f
	GJWPTYBcylFcahDnuIpKg6J/so6eMzjExJOlHJfEuDBLAVOGoomPc2eEOlJO2X1kTvRjArBRoUepr
	Pj0ix1Oa6N/2SBAiupcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLy-00ClbT-2l;
	Thu, 07 Dec 2023 12:19:42 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLw-00ClZD-1g
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:41 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1ca24776c3so395035366b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951575; x=1702556375; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UkIHYUvRBALFNq0yZBkoDW4A6Xngi3bw5KTNzzylyoM=;
        b=vpjyMiFLcmFU5roXh9lhTItsDBpEMalLjsfCVydranTAoBJpnevzsFRfZFwRzpWAP0
         kocxwYd1gbomGu9EFFq36MPEyJd8gCUrtKKsoRdsGdHQ2J/8xEWgPtAbPorntqUDbOVW
         PKSLAbgMyTKRcevAP+GZtlix1PoJVtEKkEG/84L+nwy2AW8Sc+Q5hvgfC1elsQn7jE4i
         YTcgWwDOk+8/9xjPrAgL9IdY6CIodFXRlBKRGObzhjVoJoHguWRKPaF0qskLJuLxNR54
         GnBe39yZLNZ3sG/ft4aIE6H8mTnW52zMS1qQKYdLC94GXVqk9zvwhrpFt2gdfrw78283
         /pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951575; x=1702556375;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UkIHYUvRBALFNq0yZBkoDW4A6Xngi3bw5KTNzzylyoM=;
        b=nkfAcxFrxnekJjsY5IhhAxgKNEf356BxGA8oqaeuPjz2tprQxSzpgDAZMek7ExEg6G
         RD5jXf2f2c6oabm0MXl5GmjtGR7fF7+fzXAtMT72HxuwuuK49WqlCQEI+KtjgZFIMXrK
         Ff8G5lXGgJ0DKmhjlHnhsBnVcGIG7iYCE89GepBmUGqS434m1Cr0joYi+JDz1jidRrCH
         IiMLRRbhzgy5QaWDxU7/L8kGNa/lJVs4i44mbjAmu1k39CuKcWywDpqFi+ppDWPI9AhX
         E4SJlqFYDO7nb25u5+DIs1oyO5kZC46qpuLlNe9hty+gxizELQjoGnPR2cc0WSdo8OBi
         V3nQ==
X-Gm-Message-State: AOJu0YxWEr9NF0eY3ucWXZLFpJ0TE+SfcQXfIa6un88ffPvb6nhfSUn5
	0PN9atAksyZfqsBQOBQ/YvEGsQ==
X-Google-Smtp-Source: AGHT+IHrRLkmfjjGTvklEAKWkf38LirPV0giNGNAsHn5IyN6dVCAR5UtmjCFlV7drVANhwFQBhbaCA==
X-Received: by 2002:a17:906:5353:b0:a1e:842d:ccd5 with SMTP id j19-20020a170906535300b00a1e842dccd5mr1177133ejo.48.1701951575192;
        Thu, 07 Dec 2023 04:19:35 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/7] phy: qcom: Add register offsets for v6 and v7
Date: Thu, 07 Dec 2023 14:19:09 +0200
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD24cWUC/52OQQ7CIBBFr2JYOwaGFltX3sO4QDq1JC1UaFFje
 nepO5eazOb9xXvzYpGCpcgOmxcLlGy03mWQ2w0znXZXAttkZshRCoEIY/eE26x744cBkloPOaQ
 9OLqDb9tIU4SSmhIrU1WtQpZVFx0JLkE702WZm/s+j2Og1j4+7dM5c2fj5MPz80oS6/pjNQng0
 NSy4I1UqFRx7K3Twe98uLK1kPAfK2YrirpUmrgpjfyyLsvyBg6EhRJEAQAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2422; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mB2W6KYDvq8TrXhXBcEaJwg/nTqyORBrvBrPqSlnHwc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhFn9IOc3pVcyuGjmrlGfBAO41cuSuXYY+e/
 kDSOqEnaSOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4RQAKCRAbX0TJAJUV
 VkGCEACCWpfyOZB/VhvyT92GwvmniwF/RQJMjhbj1qMeLzfBGwuI9cJ+/sm0wH/R4gRRXIiJLsY
 Kz46ZiBdPtR8pgVzaWVK3cYVZVOJmXhlss0ZjJOdi1+UY0oFx1HAmeJ3q+4bcOmT+UoyHODnVjA
 /1F25IKfz1e2YZ+MEGV0bJbmptJC2+KIJOQihyePXu9MHhAunqUKhjCxjlUczEWlX8XOCLDZsVw
 LYoHQGPpXJ73S7XNzyhT6arWIE59loKhyhzbvp2vpryWcNnQKFMfBRg6FGbfLkIppl0ldAgSllr
 iC6dh1fufpjj6lf3qeIswJo8iqqkWbZHczgXwnQyOfKKtuxr2db/719oie57VUZxovMCCYqjysC
 jGwR7vjlhbhDq/YuG1g6aFoVa/zJaZMRcpGEqCQjJ4JkOHalCYagNbi7QrOIXT85HZV9INaFe/Y
 GY+uE7Ph4tz9MioGJc05IAarGZXiZzi2087AVdk4/rA3mqRjP8LwTbalumnbIc6QcGyIy5+aOT+
 jIFuNQZOUF/2P3MZBtk3grQrosioOniHe1Y0+1bQESS74opmJaboHf2m1NtPvKM+rnoA9lvJCwB
 1+hS6obOkSE7TYF+MKbQPjz9Rfjxrf90ZNgT//+2Pi9WKkZKUcOB3mZ6TzngWjNaNmxZbrluH+V
 ElxjR7Lbf71dLug==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041940_564540_3726AEA8 
X-CRM114-Status: UNSURE (   8.14  )
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

This patchset adds some missing register offsets for the v6 and v6.20,
as well as the new v7 ones. These register offsets are used by the
new Qualcomm Snapdragon X Elite (X1E80100) platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Added in some more missing v7 register offsets (needed by the usb3 uni phy driver)
- Added Dmitry's R-b tag to patch 7
- Link to v2: https://lore.kernel.org/r/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org

Changes in v2:
- added Dmitry's R-b tag to patches no. 1, 2 and 6
- dropped the duplicates of PCS v7 offsets from USB PCS v7 header, like Dmitry suggested
- fixed comment to suggest v7 (instead of v6) in qserdes com v7 and pcs
  v7 header files, like Dmitry suggested
- renamed PCS v7 RX_CONFIG to CDR_RESET_TIME, which is the correct name
- dropped the "_USB" substring from the include guard of phy-qcom-qmp-qserdes-txrx-v7.h
- reordered the SO_GAIN_RATE_2 offset in the phy-qcom-qmp-qserdes-txrx-v6_20.h 
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org

---
Abel Vesa (7):
      phy: qcom-qmp: qserdes-com: Add some more v6 register offsets
      phy: qcom-qmp: qserdes-txrx: Add some more v6.20 register offsets
      phy: qcom-qmp: pcs: Add v7 register offsets
      phy: qcom-qmp: pcs-usb: Add v7 register offsets
      phy: qcom-qmp: qserdes-com: Add v7 register offsets
      phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v7 register offsets

 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h     | 17 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         | 32 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  5 ++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 87 ++++++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |  1 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 +++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  6 ++
 9 files changed, 281 insertions(+)
---
base-commit: 629a3b49f3f957e975253c54846090b8d5ed2e9b
change-id: 20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-5ed528c88f62

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
