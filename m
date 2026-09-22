Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67B4C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suc0UtyJE3pUJDUy72/P1Lhm3iCzBVJzc2FE2A0maaE=; b=1bFMMCiisdpFBj
	WclBxbklMoKbQQcpR4MivmVuRMJSfcqClxNmof2jMbaEg2jMigoRE7GIMkGdepbY6kaszxjvnvOsc
	ekCeSRA0Lt+Vq1U3DS9Syl+LTm1iKZvRe1bXkskzWzxIvMbVsQtiGgHBHol3uI3vCjBL8NCn5q9bs
	pw9b/DgVP1Y+HwNAHgMYPm35vrO0Pq1HYtGlvW08Ot5pnmcTFLl+AXUYinB/RVnMwoFRrpur9YjC+
	ho+Ho7q9IYLc0UKL8MPPMEWUy3PYPL9iMkl0S0bmPmSFZtWE4NrGPNIttzoHWnQ9FFtHmVyHaIxap
	i5YUjE+y7JSku/O0On/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYc-000000041cc-1MSL;
	Tue, 22 Sep 2026 02:48:34 +0000
Received: from mail-pz2-x0d.google.com ([2607:f8b0:4864:3b::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYZ-000000041c1-3f74
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:32 +0000
Received: by mail-pz2-x0d.google.com with SMTP id d2e1a72fcca58-85469d249c4so3240596b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045311; x=1790650111; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5WX6Mfh4l0Vw/8UzDpK6UHvwa+BQE0w9TDFZftgIIYk=;
        b=ZIstpCLwkEEqf1MNJ4tdFHAqCzGpD7kmTAmlUpG3cC46wE/tkCab2cSa50rDUsvauv
         wfcOSXj8AGDTXsnz5Mtwwir7cakCmWVnjKSu4/Cta4vRvr1CxNtQAZ8o9OJJqZ8Lp9uH
         daQPEz9z1slLR6usUTzj/WpyiAFJffU8KbED8sNWo25YtD3ys4mEpDhLD2TGtVQFhd4H
         y0K7OH/w7IdzXFJlpkez1pJYSCN0B8qte+f2Bht7szPoNZ/TE62OCc8ndbEohIC5h8pc
         SLVzjZkLajnnAjQdSqvAoRYqqrIdo+DV0w31cAK462aIyilOaHJpgr/8mg99zFXIILV6
         SAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045311; x=1790650111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5WX6Mfh4l0Vw/8UzDpK6UHvwa+BQE0w9TDFZftgIIYk=;
        b=MDalN9DOi0vLmuu9w34hO31Rpi8JGqLMsVpNWdTnjj6JmUBHx362C1iRAQP8KTyI0m
         7bI8VH9TQPeQDyAvzNki0iSah2P+uuZQ8CWLGuVFS9JC0vHhrO0XSwsW5Yc3eQCcZUqj
         uG9DKkmFJkgbSV85tXV8fvLCXUMHCfQcjYnqsuF5Kb6bNOvTsofI0OdEBgL/NUF+RIMd
         DekhKvctXADSU136SzkmARl9W9/sRwH1sdac8lGPew/4l9N3cvNR2U377ODRDcXeWp1X
         arfR7eGI8jah5khUKCYOcEaUn9t1gqZuTBwsm7IdTySA46DTtN8Yj9g9+SGuVYFNujU4
         8fmw==
X-Forwarded-Encrypted: i=1; AKwUvBx14fAS9RUyvC1XvH9YVjXpXgdNERy16yY9KGKkwXmiqqsi5p6HUkEVyTvVL95y5QzPftlHHIaUT24=@lists.infradead.org
X-Gm-Message-State: AFuF++ngasdA9ljVRwQv8O20bDihqcx6P9VDZOH41EofCpLLyu3Z95QQ
	AutnUOrWE0/2sZ0LLWaA4YsTbi8iSvTemDMjJMyhwyUUo8jmMLiNRqKI
X-Gm-Gg: AYBFou25bQHAHePOqecuG86wjIOhPLhoDPcYoZIE2kIt5LZvU7MEUImkMS+7VuhLY+n
	eB/NSd80wUL1RuaZN0nJP1Ex/AZ0hY6gIkgt/5otJ+vAVJxaBdEa/Pz1j3UWOGzL3r2lPcQpljv
	RML4eDAHkQ7ccyyr5agpFFEvhCE9uPYN4VTLfIiHLMDysU5a8zVp4UBZbEJKH4vLm3ihtSn/2OE
	0oTCSvTJivE9ggjl7N7u/5P35R7TDkFpFDof6Md6czlbb3r5lda50lH4X+OL4yH38NAsqOaF14t
	fItly5TGkFMxphC4SdCbHmmwOx+8UP0P1kRxqjwR1b1xmtTZqlcuUnexbVlAVMKqsj0zHd9Brp5
	WbEVS7qXpHWSMFY2qkSjsYRR1Y53FI15S4lBGdOzQJYOzjZi1Swos/Q8L8iVXTJCR//uAKCAhQL
	Wh7Z/HIDjPeWT8gCOKtU4O6EoJ5aPa4UpMxRMfsXZhDNeKH3Hhfmx/lRPLJ96dKSWN6eLW
X-Received: by 2002:a05:6a00:278d:b0:879:ffd9:126d with SMTP id d2e1a72fcca58-879ffd91ae4mr6025072b3a.15.1790045311312;
        Mon, 21 Sep 2026 19:48:31 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-87c336aba96sm112998b3a.61.2026.09.21.19.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:31 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Hans de Goede <hansg@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [RFC PATCH 3/5] usb: dwc2: Adapt the return value changed for disabled blob
Date: Tue, 22 Sep 2026 10:47:18 +0800
Message-ID: <20260922024724.191412-4-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260922024724.191412-1-inochiama@gmail.com>
References: <20260922024724.191412-1-inochiama@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194831_917677_4D1A17D7 
X-CRM114-Status: GOOD (  11.44  )
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

Check EOPNOTSUPP for disabled helper function as the change in phy core.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 drivers/usb/dwc2/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index ef0d73077034..62b663ef1504 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -243,7 +243,7 @@ static int dwc2_lowlevel_hw_init(struct dwc2_hsotg *hsotg)
 		ret = PTR_ERR(hsotg->phy);
 		switch (ret) {
 		case -ENODEV:
-		case -ENOSYS:
+		case -EOPNOTSUPP:
 			hsotg->phy = NULL;
 			break;
 		default:
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
