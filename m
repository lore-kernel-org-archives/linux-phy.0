Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B54D58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xip4Td5GeXxBh+RqfBffyEMTzeEEBSZhmMM3hBUg1XU=; b=ktXshVB6Zyth3v
	uEwn+QcSh00k0aKIDf8kJqBByIr3z1euZ5xPeEf3cId5zWmUQksjw5IjSDVRhVRYjkMOKlVGeSS6+
	v+QPK0jaJs2RaCACk/FBg+y83fUCYiCVXpGURVQlB+e0v8q5o1a4vdMG3UB86AGA/17u2inp+La6N
	TVB2buNkolcar7sogSXRqTn/jWAA1itA3voZTJdpKC7AsrJv2oymvXE//0AAmMOAJggqwdBL2AW6O
	2nptYCRC/O8Iucup/F0v2HimO8g01Ot2hwZAvLRqJCDoomK6O8XBl9hfGT4jOekINiV4IAbIE6/Q0
	uLP/wOejDe7Y8b+y06Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVV-0000000FsIB-03K7;
	Mon, 23 Mar 2026 01:55:05 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVT-0000000FsH7-0QaG
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:55:04 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-2c0ea57fea7so4332854eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230902; x=1774835702; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPoVYlhKSTxPQorecgbDpnVbncz+dhf8Hr/jKiyeXpk=;
        b=eHHxrBSjD4EGFwb+BoLoi4FN6PqKTLkuHztynWkH+pyIc9KHbNlTNYEblVYT/e1ttY
         PtvcDtUFHxmTK7EZYaS/1FqFOdAVqQik4JY4ib71uXxEfAn0let7zmYtyfcDQOatjw/p
         t80mHgcOvUGMxjKFGqivKBWaBAJ7w7EvnaCrVpS3xyKBSG3FUmj9w/cysDwk9BechrY8
         bSMHsNBRN+IKTMXxam5k/I8k9/GYkEujrudRY8Z/8QMdJbIm9Qmt7SC5pOxLEB4VkALs
         7UxJinC1VYoWqaDlK92HpqTZ32mTX8BXc4geKg1Knx8usrHqF4uVsATcXVHX4900uNAE
         Gsgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230902; x=1774835702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QPoVYlhKSTxPQorecgbDpnVbncz+dhf8Hr/jKiyeXpk=;
        b=rPDRAz42AUNGcp+xFmBIVVSNEOYxp7VDCqItt0GkNmtzZ3vS+Aj4WKLmM+7JePrDzS
         KFRg/iivbqwZ2yl6AeMWQ15eHKFi6h6Bz/k+H/QvLRasnAcdDjG8NBhjbzAHFSivVlch
         WCmsrOsdotohhtPGMTJQkZIvg9NVLAbJFRW0xm9LIEFOnWCj3slbNN/JFaPGT/1ISC/C
         Og5DeN1S8FixYNi5ELZMbAvIs/XfQX+87xe6ltk/jiNkQzczUkAjD5vqQkJ0l3es+7l1
         iz398to9ntwJhc+Qp2PEyDWBTWZ2+7XMAiJUllDMoY/F3P/1QEpf3XuSgcem3eLgK6/5
         Bc2g==
X-Forwarded-Encrypted: i=1; AJvYcCWZrnE2URJ2M6lJ2zUAdAiS0N6J8ONyTDnbV+tAPNlE88fLBexwYwZJ4iFHP/8mErbqTUi8/O0hl+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJ27EmX1lIdN7oJvRZvfWJPR0seQX7iFk/CAHGHhLv0C5XMqua
	iYBly98/nAlYjTFtWsC08oDm44YJrbfn+BP/NPUyUnADLgmJZf8Xeedp
X-Gm-Gg: ATEYQzyRdxA/a3SOBsicxdXaJ1o4xP+GPmhP7DhxRikfDawRYWCfAPJEgMfYNy9DaID
	9cFZwmlnb+hqVtQ5AMoWmhyD6R8+f+bSjR1o6RjSylOxVdv7QCR4R9Xs/CBtbKZrL0ZzEEwRw45
	TEO7w9+9FbXGG3ZucmhmwvVd1X3wHX+UoTlhx7s7BpIg+cP1zfV3S9GHjjnlW2Do32XQvDV/EcK
	Vbm5H1P3QaCl0JVWOtsLex7hHhiDgYbR+FO0vnkwn2yJVIrx/pZPpZGeQlbUcnmSPFC0Hg0eRHe
	lopYYXMHV/lAVV5eeYH0As0F0hsITfipuCe0u1gFdm18vFZU6rEzTQzheL6+ERjnnaDP/icJheL
	pt3OWiQM0j7e0iUpb/uNyzqMGDcodmVdTDJmWzRrj5/SAGzCDggdCzVX8urh3dtaVpPvV9bD3kW
	/MyvUCOFar4HGszK7uXfmFmW6y9yz5qjPwPvsU17lRkY/cbZTSedJeMP4NtR1n2fsPRZZzpvNHO
	hrHQM52EDcD4aA=
X-Received: by 2002:a05:7301:3d1a:b0:2ba:6978:2b4 with SMTP id 5a478bee46e88-2c1097533admr4453382eec.20.1774230902218;
        Sun, 22 Mar 2026 18:55:02 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:55:01 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	driver-core@lists.linux.dev
Subject: [PATCH 10/10] driver core: class: remove class_find_device_by_of_node()
Date: Sun, 22 Mar 2026 18:54:28 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-10-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185503_144340_46C55B5C 
X-CRM114-Status: GOOD (  11.05  )
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

All users of class_find_device_by_of_node() have been converted to
using class_find_device_by_fwnode(). Remove the former.

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 include/linux/device/class.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/include/linux/device/class.h b/include/linux/device/class.h
index 2079239a5aa5..e6ad009ce70b 100644
--- a/include/linux/device/class.h
+++ b/include/linux/device/class.h
@@ -107,18 +107,6 @@ static inline struct device *class_find_device_by_name(const struct class *class
 	return class_find_device(class, NULL, name, device_match_name);
 }
 
-/**
- * class_find_device_by_of_node : device iterator for locating a particular device
- * matching the of_node.
- * @class: class type
- * @np: of_node of the device to match.
- */
-static inline struct device *class_find_device_by_of_node(const struct class *class,
-							  const struct device_node *np)
-{
-	return class_find_device(class, NULL, np, device_match_of_node);
-}
-
 /**
  * class_find_device_by_fwnode : device iterator for locating a particular device
  * matching the fwnode.

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
