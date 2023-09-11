Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5CEEE57DF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r+KI/AXt4ltxIff58mnygM6ii1M4k0T5NqfGEJQwLF8=; b=PbrW7T+WbHCXkq
	zDv3e8ndpJ2s/EkpdajuncWIBdgTDqWreQuF4OfNMBEP/W5jtwTT9cFC0O3Dj5XSTHOyJHA9gpJbw
	E5rr8dH1GEH7QXZA9COKsXINHxX7ysBp8flfSceEmTgbkAjV9Yk3YYk3n5vGOxAds8zrwGNU3/s88
	Lv4UKmaSpfg1FJVAV37GweUjjm72gMrk1tarhIUMaX5DDdws5mLycd1lPut6DAgYFeffOjhzIZnRX
	EkC/HJSy0is8AHQe6UDVCl44IMrx+/iOAPt2H+l08ZDHHn7tqjLq7ZN0BEy/+PoaDwZxHKfV2Pcj0
	fBWxUy//zq9Zhqj/sHXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmeY-001CmN-1T;
	Mon, 11 Sep 2023 19:32:58 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfmeV-001ClX-2E
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 19:32:57 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52e828ad46bso6319238a12.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 12:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694460773; x=1695065573; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5UMn+F1EegjHCQSiGIpyYjyy5ijgml80Jw1Zt5EbFAY=;
        b=h5muCV4yzjoV5P2GB+BoDk2S5D9TylVRfjHiOwXjXaq3rA+TJa5Gv4k3Fbopmb3/7K
         Rf1sbv6ELeZMT7Y/wheGsow24yppl4o9sWJyYVMLi3VKQmEgUBkI2+sblOznEhOOk5T+
         G5PYcDS4QYjZOLwijQrfZXzIqUCIrCdBVJFtSMvGddEMb7+wnbGDlU1/NQzBbyzCcJCa
         uvQcafO3V1Qoru72IeQNg3yASaMlMo37bgPaw8SAd4xwmeCGrM9fWUdx7aVM0kxKOrYa
         oD1NycXOeYXZ+yFAVVT+YA+KcSiPxAjK4iFixzT+mPDBbQw39znferf6r/QAt131XbMg
         6hfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694460773; x=1695065573;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5UMn+F1EegjHCQSiGIpyYjyy5ijgml80Jw1Zt5EbFAY=;
        b=KMPDquTH3pTxtkv6oNB7bFRH1X7RqjOfv/c0uz4kKTBGYNTTSmOGlyni+jDAOwzuC/
         Cqwzfd5C8+/oTN4GJOh3dkKYqbEyOfMRAsL62vW1xRqUaoivg+sZb/Zyit8GPjccnMg+
         qGeWGVt7lkpKh4rUdAqqW/QxK0Doa1tzySU+E738rw2xzKX2lHgrjOQZTv0bltXG0SsF
         AsOs7x801ZcEES8uX3oc9kMXVdwP6JoYZxylYY5J0PnnuPWkjMKKT0AlhnsalaYZO+rx
         9KiLCqCpEBzusaOkg+oWlC+kczjJi4u5+pHVCLV2nOktZCUV+J0l70wi7/yduOz9EXqu
         XoLw==
X-Gm-Message-State: AOJu0Yyl4JyVsxSB7bUekRpq3RM9t5hA2ygD8/FywB4i22dn/j7Tfhn0
	kHTrs6mVMpZVQiTG2P3AVHIfbA==
X-Google-Smtp-Source: AGHT+IEN5RIi2xcSnwPNjVQSja3SRb0xD2tJCeAWxHBcwbpnLaq6G6YhG1w4oLwsBjzDuJ/UWy83rg==
X-Received: by 2002:a17:906:2d1:b0:9ad:7d5b:dc11 with SMTP id 17-20020a17090602d100b009ad7d5bdc11mr296841ejk.33.1694460773048;
        Mon, 11 Sep 2023 12:32:53 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id j4-20020a170906410400b0099cc402d3ddsm5698607ejk.202.2023.09.11.12.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 12:32:52 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/2] 8550 USB QMPPHY fixups
Date: Mon, 11 Sep 2023 21:32:47 +0200
Message-Id: <20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF9r/2QC/32NQQqDMBAAvyJ7bkqM1Zqe+o8iJdHVLEgiG5WK+
 PemPqDHGRhmh4hMGOGR7cC4UqTgE6hLBq0zfkBBXWJQUhWyVlrMYaJW1GUp30u0k9tEpfO+qO5
 W2wIhddZEFJaNb10q/TKOSU6MPX3O0atJ7CjOgbfzu+Y/+2+x5kKKUuuus72R+maeI3nD4Rp4g
 OY4ji8cU/RZyAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694460770; l=919;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=gGhpM1D6PVCOQ2pV5FmkVKUb1CkrT+N170vl0E9tfxI=;
 b=Ha/wnW7hzeLkLBHibTEtEvqo8nAhkwUGnW0MVSw09JpsRyfBQ1RXCS1a48fZi0rmDT7C0iKNk
 iDxD9HO0T14BqbGIJWT/oxlVa0Ro+6WNo8FEByr/DZfxjWvpbMqMJEG
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_123255_735783_6D2FDFAD 
X-CRM114-Status: UNSURE (   6.11  )
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

Inspired by [1] I went over the 8550 QMPPHY init sequences and found
some inconsistencies. This series attempts to fix them.

[1] https://lore.kernel.org/linux-arm-msm/20230828152353.16529-1-athierry@redhat.com/

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Pick up tags
- "Q6" -> "V6"
- Link to v1: https://lore.kernel.org/r/20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org

---
Konrad Dybcio (2):
      phy: qcom-qmp-combo: Square out 8550 POWER_STATE_CONFIG1
      phy: qcom-qmp-combo: initialize PCS_USB registers

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 6 +++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)
---
base-commit: 7bc675554773f09d88101bf1ccfc8537dc7c0be9
change-id: 20230829-topic-8550_usbphy-691f367b9b3e

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
