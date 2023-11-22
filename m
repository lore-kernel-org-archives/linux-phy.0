Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7192C61D97
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XTIKnkPWAPYbHHjgO+5sIkqG1t7F+RGCXKnIjh9gGjA=; b=rhrXjG3BpG6PeN
	fnR+KmJZW0xjMG/O6rcQ+dn0APB4K9fOaGz0VoEhBMX0/KgBYMezTLv45dXKSzwjDjcGtamryRpex
	nhX3Les3B/453VGh4gzpCYSfhmiXCwQ+nixFk2gmCY3LPQsv3FQJrRLEHtsNs3FZi1LMw0MtPGykd
	eUM5hrtsaKkV7I5W7MKYSRanXcGLpZIHxZJ9CDF+3e7VMHQrDf+sHhx+qBwltnFx2h4YlJjVpR1tT
	x6l9ZsxMcCgk59ohTEb8o8bZ1rrenjdlcTZl4mH8fwxIHsWhrZIJBZpGlE04PB/M09etCrLwJ2LaS
	VPQPWo/0kgYmTZv29ZDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kT9-001Qzu-1v;
	Wed, 22 Nov 2023 10:28:31 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kT6-001QzH-18
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:28:29 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-548d1f8b38bso4329520a12.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648907; x=1701253707; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Y2cUlQznNW/NqXaTn6bVdOB9INVybAfZi1QfoSjsZc=;
        b=eZPmD2/gRThye0opA2LVmKSjzWb+rwcVdckDP81+1E6yzHuGz51GQBBa93MVRTGgw7
         YtplPogWE7fYorD9AJrLEJ/oe8YbWSc7HM62uO10wUO7yrL+fvhtM8v8PBLidQvxTX85
         O0s04QH0s9isVn4I+M8Dt/BwOSmszEWAiaYXFgsmMJLxtNXT+dB639N2SZaP3DxGOLg7
         BzO/LatxBHrsoquot5m0stVZrKO60U6H1lAWqOHhO1qIcQH/2pxxNXSwVu19pVQouP6z
         lU4Ewfpl/2MC4C/XGx7nzwFv2P9C1xIdYpa7aRbPZGlc7KhiV+a2nqR41enQaPPP2mRY
         oygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648907; x=1701253707;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Y2cUlQznNW/NqXaTn6bVdOB9INVybAfZi1QfoSjsZc=;
        b=sGhKi6eMR6wQaL8E/oPl3Ttxf6DlGPm37CO6bP3MyM7w2Ht6Rl+bvZd1hnC91gKX3D
         7Zgz6ZY8KGVG8unLNgKU7vLxRPLb4V1NtLb1Ijgh4Rut4/df4Jn2w1uByzGWpYW2qrjy
         o8DTJBZwmYL8DiuuwtrFCAW53clAcDQ07AiEO5LCwkvpdLAZiiIswA8t9LxonqmhQCLW
         vuhIhOdeT80L1g0JbchOlU6IW7baOros3qntTFB7ML6Rw49bx2lREyi8CU2E5S+4JwmO
         5T9TurqmBoKJmqW9jxjRH6cXC7aOlPjACbSh4YSVo5ZcOwZx9xLdjH7Fi4YKhs2vyrQg
         6DeQ==
X-Gm-Message-State: AOJu0Yw4E/nJLtBrakeVGvtVCz7ZwaflnrzSUjsbA0cOTd8foZqKipsd
	1DRG81PWeUmZIUGstlA77EWPcQ==
X-Google-Smtp-Source: AGHT+IExHtT9eA+AUjQnA0C6usQk8pMh0voscLo0x/seu47pClk183lky4qcxkdaGB4Sp57tpqrDhQ==
X-Received: by 2002:aa7:da15:0:b0:53e:b8e2:1d58 with SMTP id r21-20020aa7da15000000b0053eb8e21d58mr1461950eds.13.1700648906678;
        Wed, 22 Nov 2023 02:28:26 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id e1-20020a50fb81000000b005488a15b25asm4325139edq.70.2023.11.22.02.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:28:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] phy: qcom: snps-eusb2: Add support for X1E80100
Date: Wed, 22 Nov 2023 12:28:07 +0200
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALfXXWUC/x2NQQrDIBAAvxL23AXd0BL6ldLDqpsqGJO6WFJC/
 l7pceYwc4BKTaJwHw6o8kma1tLBXgbwkctLMIXOQIZGa4lwi198N85+XRaUpo5wtzIZawyOt8C
 e3TSHK0EvOFZBV7n42Bul5dzlVmVO+3/5eJ7nD/aHoeGCAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=642; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4wqZFUCMLyo/q2U0vpCyW8hEFCWYvI1+WaIALg7qp7c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdfCjfvLyEDAwU+2vONS4aHPrdHnSiV3uyzRx
 qwLgmI8+g2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3XwgAKCRAbX0TJAJUV
 Vg9bD/9hbHqp2GelxBmOmtRUGivYdjz2sBkc63n2PGOWmWhhMNG/Dpc1XbJnQOYp3sTMQFvC8/9
 xwdFhG5WOlgsUnJBO3KEW7OM5Vm7Io8B2PqI/IC3QUOvaUjJvkpoI4GJe4o2kB8NKB/6lDYA7s/
 ll4wONv64w3kKrAVBanc4KlRp9UqpTxHOzGlkv4Xow5y+/ApbuywHsc5iIBfdxfB3pd5HtOGaGX
 ffFatLUkCeXteTNQoFmhXXuIl7qlzHAJUNTRzB3hZPwp08bqe5bt4Zj571zzUsgbZbBGvrO0ckE
 lwd/JK0Xp1RPBGkwHF2K4Mwgs41qlyhwY/g13MIMipbuQkhAYay8BTlJbMwxsn2VuPQaX5XGtvk
 /Gwn35NMi0WF3jbYu0bAzt32dOu6uY2qE0dWmxAIM8/Ok1AHnvYrstQnG8TkyN35ZvSZToyVv+D
 tAOVK0vlrwYwX8LR4mvbjXiT7mHWKyhhdwOpPELGZs9IcvqnGc4hmI45wlLuKgUeEkw56EYEF9G
 nUXIPNpU8Lh0eeABUD7HgPS0rw+hwngiDJoXUhg2Op61lka8tk5wicb44dFUU0X5TaNF4agskuI
 yM4Tk5SWEBhW2wc4lT5G8GmrX0YOtpdoGjtTYYjDjbJlFUwEUW3pJlxN08GutIA+l7IBOEHmwt/
 j25xKnbDe5xGbmg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_022828_394023_8E5366DD 
X-CRM114-Status: UNSURE (   5.57  )
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

This patchset adds the compatible (and documents it) for the X1E80100
eUSB2 PHY.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      dt-bindings: phy: qcom: snps-eusb2: Document the X1E80100 compatible
      phy: qcom: snps-eusb2: Add X1E80100 Compatible

 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c                     | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231122-phy-qualcomm-eusb2-x1e80100-36dacab8fd52

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
