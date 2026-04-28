Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47CEDFF885A
	for <linux-phy@archiver.kernel.org>; Tue, 28 Apr 2026 19:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qtUlPJ7+pjQ6+letHr6XJ9sGJA7zkHfiBIxRw/VsjHI=; b=JCTqsfcBaruZEP
	2fFNRaC7zFWoIRTEE7Z7NgTsEEFFdvXRT7O6e1nIPujY7CL1bvb7bFGB/Lz6NzfZacJNsWlurRB/I
	1Ew+RqYpt3bqA55u/z6LqLEUv945mw7KF2TE4QnmP+T0npDyX+6FiW5ke54yFZ2jCIdifZpW3Jxl+
	PIeajg4OWB4SNwb8ZJpr9YikoPJ/iz5JEs66maIpmQuloO0ARgjktsP5i+GokfmCdP40ColtteZbB
	3V/0h/sFc88rwnLwOYM82/zz0ByPSgkaO3avKnGyEjsV8tudsNsG0x6uFMHFXY/uCNM96ujrEW+i1
	qGwtqYldF2DfOXMFqL/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoDR-00000002ALl-09bT;
	Tue, 28 Apr 2026 19:35:29 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoDP-00000002AL5-1oT6
	for linux-phy@lists.infradead.org;
	Tue, 28 Apr 2026 19:35:28 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-35d965648a2so10588277a91.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Apr 2026 12:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777404926; x=1778009726; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=koTQxkk4qv7km4iNuMHAOJaf/k281r1LMbxMyjh/No8=;
        b=pFyxJ+ANu0akK+vFzfNcCAEYUTSY/bs1y7EX6ZlMEmeRFDncddznc3BB0RkCHuyRlB
         tfZJvFhFDzHDi4o/4vTuirQFv+pOnRTb/Hirkcr3kpxfuHYfDMvO1qKNAsXRjos9dXRy
         yW0Rix1guNSFYeIq7/6ryfNO/q70S+Lx6ettQWfeChyLhzwv8k1JiOHadLQb6sw6t0xw
         8jW9mlGRcD3n0Nim7EZZiNDdNiDvF87zmHfE5FJk2xUXN6djdiuD+ETCa7x7cfhuWvPT
         QjzY6KJWNfcxWufHELjqNwSvARvk15jiSMIEanCHywyg5hjVtX2FpDS3BadXyL48YcHw
         GKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777404926; x=1778009726;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=koTQxkk4qv7km4iNuMHAOJaf/k281r1LMbxMyjh/No8=;
        b=Wng9RAFZmQI6eCkOuththY9hrYjons3HtP+uC7iqIA/Y7Jitz2mcwB2ErH0SmIBP/c
         mqkT7rN/Fujkqgj8FI9GMgSXwSL3evKZmZh930DknRYwrOtwys8vXaTfWsr1xmv4sXqb
         zK8r5c6SOOPYtXUTdnDq4WLT+JZccUjDzeJVFuH+SRsWGxQ86uo+Cn9uCD741NlsuH8o
         5WIGlUv+QO05LhKrNwRPn5LtLV/a/sCEckLBQPJscbXO+Gu6icXF6oYxP2xgKWOiW1jn
         yQSPEkm+kCi/iIZQlp+G0kFHNEV3lLFM6o8Ra7j6kBa+BcdMm9Fq33D6puO5n+CWRbbn
         uO5w==
X-Forwarded-Encrypted: i=1; AFNElJ/3BCwGR+t80q3zKtshnALEGSe1ZYzsxSrFrnxxlZSf8x4H5FTAq/L0jr1KZsLivJRPmmL68Sub8I8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3XXMg2odzvExy5D7QjiJNAoeCk+kAJhizvTFL8Yb6kGf76B0d
	zgtNAh9J+wEZvEw9svF9Xk7PqAKYU/2BjVqGXj8OC3jG5FynAIENiKYA
X-Gm-Gg: AeBDieskbun5BzkL6W/M15BgzZqPa54TZgd4AkMAJcgtq+n+fZ/k/wyJ7eGbKu4UKtJ
	dg5+3Vw1sbTd/9/bQuK9tR6RupKwaUdh1M7eo9blnbFEoFMKDFOO+F4phEuMDzrMHlwYxmRmKDb
	4ExRhBUsaUWEpq5gA9Vu+F4L3i6L28WLVM8sO1Ys+RmidN0QOpRa/zb28FUJMMgNOcvM0mCbszq
	YLaDWdiyyqtjb5AlP5jDpfP3S9Q0+xm81QWM5h4stMk2nHhrt8IAyHq33gRS+DUwajibNH7nCm7
	MKIORP+iYXrbR84ODLmvAWDeQNBkc4ZkHYVcknb2fDGE9YXEb2zoBF9zrWBMNqp8j/CXvhvQ7Gh
	5MNHeDgoEW0snBSrWctFUkTqH0Ia5etRRlLdmcStGHGiUApp2wRbe15oUfZLrLrkenPhdz1jKPa
	/5ZwWPJrI5sQGAiKZbBL6GPpfE3gllJ40Yk7qKczonSiU6Qt69D40sGLDdBw==
X-Received: by 2002:a17:90b:3506:b0:35f:b784:d3bf with SMTP id 98e67ed59e1d1-364a0ade6f9mr721896a91.1.1777404925971;
        Tue, 28 Apr 2026 12:35:25 -0700 (PDT)
Received: from LAPTOP-N4V2OTAG.localdomain ([49.36.186.79])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7fc29b40aasm3196706a12.12.2026.04.28.12.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 12:35:25 -0700 (PDT)
From: Aditya Dabhade <aditya.dabhade066@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Aditya Dabhade <aditya.dabhade066@gmail.com>
Subject: [PATCH] phy: airoha: use C-style SPDX comment for header file
Date: Wed, 29 Apr 2026 01:04:59 +0530
Message-Id: <20260428193459.5865-1-aditya.dabhade066@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_123527_494678_0AD31452 
X-CRM114-Status: GOOD (  10.46  )
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

checkpatch reports an improper SPDX comment style for this header:

    WARNING: Improper SPDX comment style for
    'drivers/phy/phy-airoha-pcie-regs.h', please use '/*' instead

Per Documentation/process/license-rules.rst, C header files must use the
'/* SPDX-License-Identifier: ...  */' form instead of the '// ....' form
used in C source files. Fix it.

Signed-off-by: Aditya Dabhade <aditya.dabhade066@gmail.com>
---
 drivers/phy/phy-airoha-pcie-regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/phy-airoha-pcie-regs.h
index b938a7b468f..58572c79372 100644
--- a/drivers/phy/phy-airoha-pcie-regs.h
+++ b/drivers/phy/phy-airoha-pcie-regs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Copyright (c) 2024 AIROHA Inc
  * Author: Lorenzo Bianconi <lorenzo@kernel.org>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
