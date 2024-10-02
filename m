Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88696CF31BA
	for <linux-phy@archiver.kernel.org>; Wed,  2 Oct 2024 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NRqtU5zkhrYRG92H9jY+RPlTyGdxEbJAinrqamcx2ck=; b=fbcay4xFXBAdT5
	S5NKYuain2F/dUj3rDV+/LTBncqZsOHkRPDCBQJ1kuOI3bggq36SCgBoTjUaSPz7AeiT3RuSxDqKE
	rMyOZEctrceisfQvhIRliFsb4Rd2OKSJjx3vb1Ncjzsrzi3jNZgKOCyHyT6T6pUbVRLJmtU4G7/Hk
	2Ucbtic9DWNyo0rCR05xphb0pP+q/6wcahuJTWOOx35eQ6eMg/oa2GIZ9+xVM9vGYdFgBKGuOEwJ8
	9ytxEWKiY7oM31QX73u4vPfa1xoKdDVpZiHH9i/r+EhQqkRsBWgLv/lcG+7R1EPMbsa8bXnpNo+4F
	7dnuJMw6XZqCwKkqH9CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5mv-00000007O0R-168m;
	Wed, 02 Oct 2024 20:17:33 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw5le-00000007NnS-0txK
	for linux-phy@lists.infradead.org;
	Wed, 02 Oct 2024 20:16:16 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-37cd26c6dd1so202221f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Oct 2024 13:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727900172; x=1728504972; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2gY7cgnLDjYMtByivBu9ewLraOBL1gPfpCgKRNDFNVo=;
        b=psHaZ3U7u6uVBQ5Kn/EaQpWftiTSk4W9oQvUH7/welZYV6SbSlw3+ECwnmowaIhpUQ
         O6p64BIJzCl+goIkyZ/ENrgNoctgwAn8zefwX4qGWTpQC3uVPUljVMrbIi7EfcLQBL9B
         EaY33lj8fdWeNbtqwlpJGqj6+SuE/IvhFzIqPoOodeKVntAFa8NQcxyUG5lb4uOWUdlw
         N4HPX+SmDB9QLGj8+PP7IfpjN923SuyiIYPP0W+SDWN1JO3sn4tx2dWORT1k/VkgAH18
         fMjVWu2ITqyjMpXeBOD9EcKxMOcZCh+Tx95Uj+zh3cvPtfc+DPrWvey2AY58k5ouoYnU
         F+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727900172; x=1728504972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2gY7cgnLDjYMtByivBu9ewLraOBL1gPfpCgKRNDFNVo=;
        b=mOB66ARyXkSPGVB8F/dNihcj5IlPkzI+TE6WWuWSerEsit8zRrY474NKHkdfn9RBrv
         Lylt3NMo/kkKApLJOBZi/XIhBTZFg9dSPxrrcXZPAXfxKOGUnQmrUW3j65nFoJ+dTzbp
         /4KMT54UmAUgypgJKxmXWRWRlO0VbJFhYVKIl/WhBzDN/59lbc194xRRAGLtJPgrwB3R
         oDNc0CxYkytgRAneQNon/61KYy9w5/75KzbkXBqCkRhCD1EifDAid9oIfampublaatb5
         4Oj7sPLhnsoz8dfDLylJIMRX4vbU0I15hTKiVeXuKoox3kHUdUEU0vZK5pXRdJGdrd2n
         04/Q==
X-Forwarded-Encrypted: i=1; AJvYcCV9ZCiYQg/DuddGF/4UDC4QnfqcS2UdLnBEYvpwNg/Jdx6O/iliTLnwVygYIKAUAOml4BneBb5xwYE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgarRJFYWrTAIbSNNPnWaZE2iPlbEv23u1MJi26q3xHH968bAI
	nJbdbU2bT3wUSik6IlrDW+KikpDeSa4JjVnoTgpAKsZdhi6f26vaRW7sddOSoHc=
X-Google-Smtp-Source: AGHT+IGhYj/A27bQGsUEOm42j2NO+1J21Z92LR4K77UI/ry3eizF8aKxTBJVM0F6v5v89gUQbiJYYA==
X-Received: by 2002:a5d:4603:0:b0:374:c3cd:73de with SMTP id ffacd0b85a97d-37cfb9d4418mr3809189f8f.35.1727900171931;
        Wed, 02 Oct 2024 13:16:11 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.66.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd564d2e8sm14850600f8f.18.2024.10.02.13.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 13:16:11 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/3]  Add phy support for hibern8 enter & exit on gs101
Date: Wed,  2 Oct 2024 21:15:52 +0100
Message-ID: <20241002201555.3332138-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_131614_298160_9DD2360E 
X-CRM114-Status: GOOD (  10.81  )
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

Hi Vinod,

This series adds two new phy modes to support UFS HIBERN8_ENTER and
HIBERN8_EXIT.

This is used for UFS phys that need to program specific values when entering
and exiting from ufs hibern8 state. Once such platform that needs to do this is
gs101 SoC found on Pixel 6.

phy-gs101-ufs is also updated to include these hibern8 enter/exit specific tuning
values.

Note: a separate series will be sent for ufs-exynos driver that makes use of
this new UFS phy functionality.

regards,

Peter

Peter Griffin (3):
  phy: Add UFS phy hibernate modes
  phy: samsung-ufs: add support for HIBERN8_ENTER and HIBERN8_EXIT
  phy: samsung: gs101-ufs: Add hibern8 enter and exit specific tuning
    values

 drivers/phy/samsung/phy-gs101-ufs.c   | 31 ++++++++++++++++++++++++---
 drivers/phy/samsung/phy-samsung-ufs.c | 18 ++++++++++++++--
 drivers/phy/samsung/phy-samsung-ufs.h |  2 ++
 include/linux/phy/phy.h               |  4 +++-
 4 files changed, 49 insertions(+), 6 deletions(-)

-- 
2.46.1.824.gd892dcdcdd-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
