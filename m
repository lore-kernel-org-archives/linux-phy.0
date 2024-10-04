Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F35AECFA745
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 03:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=15Umia2zbSD7MYCtThPNPPIgz2o7h6luiK/vEC9fiqE=; b=j3hCWr2Vf6CQL0
	G3YopwmJqO0sj7EdlUl4RBWGpL0y8t8hWKqQ7n5SPwQ7H+us+YIHwJYqxyf+oBDEkvYd5O9ofkgWE
	jAPBAnWSQHOeevsfkw7W2HoxHbcQVdMRkY+3uWE6Bgh6TXJmQPQFhPOIsm1UlbNpW+Xi8dUV6/8/V
	gEQEJiRJT5t0ZlD4aCh5DsY+FP9uknqfb3S+WAsvN6pJlGLPOjlljeo2+xe/Ak3kg0gH00NfkVPiT
	ofb7253t95qDa9Lg4GwXLg58y1hD9vwpknS0h4Y56uTSNF2vLjPg69bjG/h0F1V4CH9S7Wy7sjfKM
	5nOqkkEoFUBKylCMBgoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swZDD-0000000AxKu-25b3;
	Fri, 04 Oct 2024 03:42:39 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swZDA-0000000AxJy-07AN
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 03:42:37 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-20bb610be6aso18886065ad.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Oct 2024 20:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728013355; x=1728618155; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/k4t1X9HW0gv4C4rJatY6CF+LcH2LmAGsSgjwSUDdNc=;
        b=Ks2xf0T5hc29MNi4xmDPoeV85UoBif66CBjpFA3lxVtjLqeaPtC/t/lMAMW3RgXIHc
         SjPNlZla1znkreu7K/29qbY64Qfx4bvShNUItThyOhTWwLg4So9bq9hyGhEcj/VkYHGw
         f33iD+4eL8Un0CKvYw+2Yw37+Sb1Qd99FnOl8zM6eiineKPWGf0dKdcNLbZ+E1Xm6MGh
         BMZc1jYCNLBpS5ddPJeBIhF/IJ95WyrkoaLvaAf/3EPeXil4Fms70WX2RCNprO6A4EeM
         dTed4Cwrq1lwIFdyKoiTbFHG3275ynO5jp2yeYGNJ69I7/xZPsXdZsSf4cM2NenhEMb4
         SAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728013355; x=1728618155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/k4t1X9HW0gv4C4rJatY6CF+LcH2LmAGsSgjwSUDdNc=;
        b=vdGZhSHzn9PkbCDI0rhUkcN27/Y9zGTS3vHtM9fQfZKTrBR8l6Koe/iQnDX1nDN3s1
         t/nD8wU/M7HSJOIdIkzUvn2smvoEhzZ1NBfZ0H0lCoqzhJE1AEpBrCvtOWDK91i6Ykrj
         PaPDyEn9GX0aNhOUcRYG7SfX3TZ0LqqSRSrSXiLPJTpoRwHafy7HloHCYXGxGv3mdyGW
         oTCYoHe0XkYqXsx3kB52uXzelcnS36oI5KTz39Hq9rssWE+ux+b5g8Ix6P7nRcDt0qRh
         mkJJ6V8BTxh29+dTpUd7MQTNAa23eVUHXJ5mZLsYOmXlNNb3DCfrji4ATeP0sh7WJeQ9
         dlqA==
X-Forwarded-Encrypted: i=1; AJvYcCUHGS4g/c+iPVyXGGteYDlRxOLioIo8n2uT1PRVCMWcbcEtyW6EMJdhY+bA3IVDsKu+V80l/V/Y33s=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpEOmW8dc1uuBYy1dn/Blmcl7mtPlFt57dzctH/lXVCZ2mWQgt
	jOUxTdYXXN9WgM5/y7I6dt+eg6xW+1Sk+iAEGQvSZdX6s6NqaCIZ
X-Google-Smtp-Source: AGHT+IE4/oISY4qUDHtc5QkLC3khS3w3EkerY6i0U7q2FWl9om080gyDNLKdFV++fvUqPoIs07gpDQ==
X-Received: by 2002:a17:902:f68f:b0:20b:54cc:b34e with SMTP id d9443c01a7336-20bfee34d54mr19636205ad.51.1728013354988;
        Thu, 03 Oct 2024 20:42:34 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00:b8ac:3fa:437b:85fa])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beef8ec6bsm15806365ad.158.2024.10.03.20.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 20:42:34 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH v2 0/2] phy: usb: Broadcom BCM4908 USB init fixes
Date: Thu,  3 Oct 2024 20:41:29 -0700
Message-ID: <20241004034131.1363813-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_204236_092196_2DBCCABD 
X-CRM114-Status: UNSURE (   8.13  )
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

Greetings list,

This is v2 of my previous patch [1] targeted at resolving a crash-on-boot on
the BCM4908 family due to a missized table.

Changes v1->v2:
- Florian requested this change be broken into an immediate bugfix (w/ the
  'fixes' tag) and a second patch containing the coding change aimed at
  preventing this problem from happening again

Best,
Sam

[1]: https://lore.kernel.org/lkml/20241003211720.1339468-1-CFSworks@gmail.com/T/

Sam Edwards (2):
  phy: usb: Fix missing elements in BCM4908 USB init array
  phy: usb: update Broadcom driver table to use designated initializers

 drivers/phy/broadcom/phy-brcm-usb-init.c | 433 +++++++++++------------
 1 file changed, 215 insertions(+), 218 deletions(-)

-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
