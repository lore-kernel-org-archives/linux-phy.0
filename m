Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA238C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z/b2F1CibjFKHekLSdZDEySjMuu1Drw8VTn2ESMMJ2Y=; b=HjXovNjhdGmq0a
	VBbG70vXXdrq1jiee+UrA1jXwENCCaP94ua+5h/X57kHeibgU7RIj2fsujS6t3XsT3HeBt+A5YsnK
	7rbRiERXx0T3mBHXipb9irP4fJnu2QcRyNqy/VoN6ouWzmZ/dHlqsFhgM6+vwBBqfWQTSYe49wbL4
	aImExB+BzopChPiWgpQFyjKHkbj5meceZSSLbEOUlNlNCB3CmSpV86yk7ITnIqyf4APcnZhQ1TEck
	hGt7FlHTQmdcMyubQM61fpiud9mmSsthnGBM0VZDg9hKchVqCU/Hk+jWhAvkkGdDTfofmjVd+6TPf
	w/vrTkzaYVVpOrP/7v5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRf-000000086sR-1eBn;
	Fri, 07 Aug 2026 13:17:07 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKRc-000000086re-3l7l
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 13:17:06 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-38d489b6b71so3260580a91.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 06:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786108623; x=1786713423; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=aMfij/WpmebSJQAumpWhu4x8ObI27lDJNWJqgdwwVPc=;
        b=EszafXg8C/7VI5Q5gI6tVdnlMkXaHkd8PiFBDQvxsBjryz4T06lv7TnUeWf9pYic+2
         ibIt8mVRwO5ahkaZEaJ3mrVE9mz3Wmtf/ScuifJkzYtf/uBjboGxLxhxZfh/kbY359/z
         fwCpb0cSp47qekutF79sAc1c4L2FmtttcSBfhV2h6Ap9qR8nVhTW/F7HlrGp6YNdYn1Y
         VdGrQ2pwpofqGsAVFFw2TYXhrSN7+Gd+75qqLCl/o9yJxiaKVNcgk0wZqCwws8ewShJ9
         HbcRL/E2r1AKPUg0yatz2G5ggsMKJAu1t2zzMzhZRW7By7J5ooqYW4MbzAlTOVEL+QyZ
         jIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786108623; x=1786713423;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aMfij/WpmebSJQAumpWhu4x8ObI27lDJNWJqgdwwVPc=;
        b=WKe0bzGWJBaUbdMRQuVxxjpnhBNDBK3cyX5eVtHfj9Zci7bQZmJYRm6ALBvXxA21eC
         elZ0P4YMW8UVaUPwtckGpl1iz/GORZ4I5JfH9t5LjjOLmosb/klhCEhQo1FxtPVmLvNl
         iY9d4a0fsHoOB0IGfgsl+6WwQMM4HH3hrQHrUNmWhoTJoeCxacl8cIy1sgqUnGfP5uax
         ARC0ILfN0vn+P/DWHMDovW8SfPpHRZu4HGHmvxohtLZlwPZ0Z+R0UQO+Nr45nS3Ub3Ct
         pN+Gr7L7sH+iQriGQBv4Ka1L0/nxwiEA6nhL1m5J54ilyq7L9rLiDZD1pqBtg7HkaObi
         YZgA==
X-Forwarded-Encrypted: i=1; AHgh+RrzVL8pQbGv+cM3aK8k9wGhz0s9AaEWwgHCNcHtXZqhKbfMdq2Uqmpk2qw1J+kxuLBZ+AJjwPlViZc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqUhu6nRYgHzAFjJj51xarVSNDdtNsQ0HoGEUwp6zkNEuMTmHB
	wagJzj19/QP3T8PG0VZ2ySTmj/yrNreVKZR4BM6lLhPyqtW3eKLOWUct
X-Gm-Gg: AR+sD13mciPi7HJfbN21t9dvQiAnqWXiF91/0cJTZB3YCJE3mmKdrfavrd/wzi1TjSF
	YciJ8QlddBAGO6sBzAurrtpwaPc+wDQJr4EwgipCB2ifBVqvJ9lCZ35W9PjCkrlaicbFr5YJPCG
	fQ4779DSBP/AIpK1SDZ0y+BL/M6yhk96WzYmUSdN23nvSVq/4HQFyIsdl4FksBPdYgzEeUJP8pW
	XqoxhRHUkoDLvxHOsxvlAGb4SvqAV2YHLtfB7eHmbKpDO6XcpRyKH3M8X7BJlDboT6HT5rXgGpP
	+QB0Mpqaqk2pw5pT2Vk//wrjX3dsbLGEwYbMK683EAZ5M2w1I4KZXogplB9qgYKj3BIDeDZcluv
	z/N5qw+CRcb17T9XIaORBcT8mKj4OE7VQr5G10ue+kDvJIsizwib2PxLb03L9U4ZBFMheDLMIMa
	aW7KCA9sq5gI2vzgvJDYhn+QtoolhEM+YN9HiQvWxWU76+7ClJe0VhweR82R9eYPuILGrMyWdNC
	pwejsHiHhk/50K8ZlSHuZo6FW7L1Hz7uIr6fqLzX0vV5AvsCq/TDnCY
X-Received: by 2002:a17:90b:1c84:b0:38f:1e1a:515e with SMTP id 98e67ed59e1d1-3903c5b1688mr19852310a91.14.1786108623154;
        Fri, 07 Aug 2026 06:17:03 -0700 (PDT)
Received: from junjungu-PC.localdomain ([223.166.246.74])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-390b33225e0sm1300528a91.4.2026.08.07.06.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 06:17:02 -0700 (PDT)
From: Felix Gu <ustc.gu@gmail.com>
Subject: [PATCH v2 0/2] phy: sunplus: fix two issues in update_disc_vol()
Date: Fri, 07 Aug 2026 21:16:58 +0800
Message-Id: <20260807-sunplus-v2-0-d5379c664dfc@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMradWoC/2WNQQ6CMBBFr0JmbU07WlBW3sOwoKXAGCikA0RDu
 LsFly5f8v77K7AL5BjyZIXgFmIafAQ8JWDb0jdOUBUZUGIqb/IqePZjN7PQlzIzRhlbZQjRHoO
 r6X2UnsWPeTYvZ6d9vhst8TSEz3G1qN37ry5KKJHda42IqTVaPpq+pO5shx6Kbdu+7ZATS7AAA
 AA=
X-Change-ID: 20260804-sunplus-53a7bb1bcd72
To: Vincent Shih <vincent.sunplus@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786108621; l=908;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=rO5YBsrlcaAWHGgIeMaKVTjiJ6YF7fWpkrc4LZ2vRUc=;
 b=+2Ztve4OQkQfcHZFfdMZ3NKzZz1dWAzQTCz2gjctrcplPo4cdCbI2pL4OE/OoPaUZNs5aOTL0
 ylxVaq7YYsfD6f67niC94vem1IW6hU4BOfu8kiMUKNtRZcDlxegwWvz
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_061704_939723_B93C1A22 
X-CRM114-Status: UNSURE (   7.29  )
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

Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
Changes in v2:
- Fix Vinod's comments.
- Split the commit into two patches, one for memory leak, one for error
  pointer deference.
- Link to v1: https://patch.msgid.link/20260804-sunplus-v1-1-79f52226cb50@gmail.com

To: Vincent Shih <vincent.sunplus@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Felix Gu (2):
      phy: sunplus: fix memory leak in update_disc_vol()
      phy: sunplus: fix ERR_PTR deref in update_disc_vol()

 drivers/phy/sunplus/phy-sunplus-usb2.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)
---
base-commit: 9a4cdc958dd79fc6c3b20b51a10debec6ca09fec
change-id: 20260804-sunplus-53a7bb1bcd72

Best regards,
--  
Felix Gu <ustc.gu@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
