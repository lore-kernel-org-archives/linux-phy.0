Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DF2CC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 02:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZTHZr+8aHfWILHCkJ3u1CBGhZASq+zI8p413Ed2D2w=; b=JdHabXcmIqTw9k
	EUYVFNwTuwETFHbbOIi2XjqUqRrrNx7w/5sWozIdQE35Q8Q11ykrW64DEHJME27j1xf4l6Bw61og9
	D+MY3V4dEHmHhhAUbF0U7NiLpH+khyZ37n5onrDp0kBOerJSYziy9IuBwEnaBmXb8mL0n71Opxzgb
	KxL8c5WZb/MFQckJeolIavAhlZIM+KAcad6u7CFOTan41nLskjPzk896R0doqqIYSa0mbVQDaXRlh
	YJrt/Ws+OO7m9iLTiO8IqzZRPLlIC8R6I5CMOsfBXc0S7RsvxyIvzq6oi0ASb7lLbaTbxH7bzYu+Z
	B++HIfKDM0AEDn08YYjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGp5m-0000000ENsM-0I9x;
	Wed, 14 Oct 2026 02:51:48 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGp5i-0000000ENs2-45ot
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 02:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ci
	6lwH7Wlf5uolwLWEhz1tMpvPXE5t0FdSARax8LoT8=; b=GCS0FuDwBl3yq1Hua4
	y1Q3fmf0QcxS/JH+v1IOl2TFzWR1vTnzfFxqpmfCEXxcyiZBP9k2cDGR1YTP4Dwp
	csgoq5rPvj3Rpz0WDxWH1HszpLHjuyMKJ0pUjdJyihVvMkK417ctiFAIvd5jzxa0
	KjGq7PZgk1UdlaOCvRfl3J6OU=
Received: from localhost.localdomain (unknown [])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgD3H9kt7s5qJrRlEA--.21370S2;
	Wed, 14 Oct 2026 10:51:26 +0800 (CST)
From: Pengpeng Hou <hppiscas@163.com>
To: konrad.dybcio@oss.qualcomm.com
Cc: robert.marko@sartura.hr,
	luka.perkov@sartura.hr,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hppiscas@163.com
Subject: Re: [RFC PATCH] phy: qcom: ipq4019-usb: Propagate reset operation failures
Date: Wed, 14 Oct 2026 10:51:24 +0800
Message-ID: <20261014025124.81874-1-hppiscas@163.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <f6f632b9-cc2a-4966-a43b-c474a05da7ca@oss.qualcomm.com>
References: <20260828091857.8581-1-pengpeng@iscas.ac.cn> <f6f632b9-cc2a-4966-a43b-c474a05da7ca@oss.qualcomm.com>
MIME-Version: 1.0
X-CM-TRANSID: PSgvCgD3H9kt7s5qJrRlEA--.21370S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrJry3Ar43JF4UZrW8Gr13CFg_yoWxWrb_u3
	4Skw17Aw4kta1UtF4UKr43tF9IgrWDAr1rW395ta13t348JrsrWFWDAry5uayrAF4aqr93
	Gr1Uu34fuwnrZjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7VUjahF7UUUUU==
X-CM-SenderInfo: 5kssx2xfdvqiywtou0bp/xtbC7g4V3WrO7i67vwAA3I
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_195143_418538_E4536EE0 
X-CRM114-Status: UNSURE (   5.56  )
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

Hi Konrad,

Your comments on the declaration layout and unchecked rollback return
are valid. Rechecking the provider exposed a more fundamental limitation
in the RFC's premise: the in-tree IPQ4019 DT uses GCC resets, and
qcom_reset_set_assert() returns zero after the regmap operations.

I therefore do not have evidence that the hardware-failure case described
in the RFC is reported through this provider. Generic reset API errors
alone do not establish that case on this platform.

Please keep this RFC on hold. I will not respin it as a demonstrated
IPQ4019 bug fix based only on the local return-value checks.

Thanks,
Pengpeng


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
