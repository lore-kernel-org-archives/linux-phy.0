Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E17C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 22:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnnQyFZjy3Kyvrtl1HwUsw+J1eIpTDikpkdTy+pctyA=; b=XFZEEdECH8yH6W
	Y258O9dZyTEIay1UXau6L4bR9eT6ShO/xtfN/Q5mftgcwoxVcXEzKzEnheqvq45cghVUoaANaZC9U
	9kNakxZK8bX8jK1RI0A81lt+ir8t1qN/wkvbwOuCYDPb1vgXTvBOxvhm5nNNxlKN7pQ2N584ubrUd
	52xi6XUXixZBYLcTviCNJ6lQ35NQZt4WYmI+vOMS+DO4yiYdRMrNKwGOmmMFDdtQzloL9aakkt26P
	NVI4C64nBAjqNUNnBGM/caBK6q+IHCOxkKnBHu88hhWbiEjkl5J6iUbdfpYnbFeSUfxJrHzIYif0S
	JSgLnAnPonu2Uk2dK60Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz05M-00000001eFo-3X7x;
	Tue, 25 Aug 2026 22:57:40 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz05L-00000001eF0-0ABZ
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 22:57:40 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-47fde295992so260362f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 15:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787698657; x=1788303457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z1BNZfeSpsImXxyWM4Nros6L3ghk7bEqIIZ7T7oPkLY=;
        b=kV9wg91hrNYmLpL5tejtqJozqZirzwduSyHbhtny9E11GnK4Fv4kyMRfH5ng3rBmqw
         eDxqTJqjbjGB4zMA7MOua26skUwoxiGIf8wMruRnJBRXnM7EDwzVYOw9R9Q7Frj4tHs+
         qhCYv14oznFO2/bQPLr5Il5w/VJ8CBK39aqBGlNVprheAV6DyZUboA3URexXjeuTsPNX
         f88OiRWHjAqgYBI11PI0NB+3Vdcfv4a1g8nhZ4HQ1h1vPdynEPgl/QM19/0Js0kgVwd5
         0AobzBgSPGr8fz8h70vIVmN/tt2BVm9RNJocznNn1X/Vetq2aD+kTo09jOJmuNby8f8S
         tdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787698657; x=1788303457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Z1BNZfeSpsImXxyWM4Nros6L3ghk7bEqIIZ7T7oPkLY=;
        b=fgoEUwuuBlbd6UF6Qz66WFaokimZ/jVFk5+h1Cu51MgzZUphrUhCBxCart45mact8j
         Z0v1pg1z2i8GJV5dIcmWkQHATQ/WiO3drxF+unT+zy7hwoRg9EYuV0CmU70vL1ITGWdv
         gIaC49HugNcTxhHldbKl2o6HGX1kuQSiStzAudaYsLRyjtgUEDNcZPlhieS5yTB50AMP
         BaLrJJT9/edHw/vvtYt8x1K2WF3Yxg9dw2v13rGrUx12nDhUKZozqHgrT8LKNKHz7kB3
         YC5d92x8eGTZotX61igJQJcuaf8EgdPHoxHuH1+WfxJ7w/cT67Jxvh9Wo/VPxaQmLM1C
         XVhA==
X-Forwarded-Encrypted: i=1; AHgh+Rq0YYp+QtVWaR3D5u2saZnPAooVQjjBzCutji7DdjFFXbEJjfVxoCzHwR1tYytLbxCT6L0dzOtX+1I=@lists.infradead.org
X-Gm-Message-State: AFuF++lh57XCwIlN5T6Ro6/pz5Z+8ny9CP83vKrIck7jrjfKAAsxzl/W
	Wex5cTof9ofwV3wYjGpu3syh13bqFe7vpBnInnFBAjmJBRF+4lX5WxQz
X-Gm-Gg: AR+sD12ze2w1EQnjnL7C/LPnu1j21BAf4bZGkOdiNuwCwYEzRxv5uAD4GABY/sOla5c
	YbAcYV7XfFnHhHjW5cw61uO3XWYEcJJpncFwYCbdIZ3r/XfYN50soa4rpkzO6OI8HrMYD/FpWj8
	DToxboXTShKI2k2HQH/Ym09uL8MVNwqv08J1iMp9n3lzof/tO+yjIkLrYp0UvynLB7eCEBZZkhO
	OCed1XsQL1XNGFrlGZEvZ4aXuSc2W5C9vujwACy43iWfznMXwP8fYKj3nKlGk1YwoVSFMZAQoCY
	aL/dZNrhpwVYy93HqipKi0HhEO+/w7Q05Xn3bXyLP+Z13zaNt37hIYfh7OartdAjfmumUADQoIr
	xGzBnA3VNhKUW7S3zCkonVLTO5oRE3fxpdj9ecXEiEyiDhBNapXpAlAwoL5owqmCIGp10uRWPcj
	QX8B09BvbHGA7blmXfrxthJGRwcYB2CJdFzDdJjszf+FbQfbcPFOyg5/UmBz6zQ0hcqh5Bfq0HJ
	Yqbp79p1LgX7zHQ6dB/FteI7L7d89Je10AwQtEfJv/kVeM5
X-Received: by 2002:a05:6000:2f89:b0:47f:ece1:1eca with SMTP id ffacd0b85a97d-482e267646bmr2331968f8f.1.1787698656959;
        Tue, 25 Aug 2026 15:57:36 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e28f6917sm782658f8f.35.2026.08.25.15.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 15:57:35 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	qiang.yu@oss.qualcomm.com,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	krishna.chundru@oss.qualcomm.com,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	David Carlier <devnexen@gmail.com>
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Check clock-output-names count in the multi-PHY driver
Date: Tue, 25 Aug 2026 23:57:29 +0100
Message-ID: <20260825225729.230493-2-devnexen@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825225729.230493-1-devnexen@gmail.com>
References: <20260825225729.230493-1-devnexen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_155739_082860_65E349CB 
X-CRM114-Status: GOOD (  11.78  )
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

of_property_count_strings() returns a negative errno when the property
is missing or malformed. The value was passed straight to
devm_kcalloc(), whose overflow check rejected it, turning a device tree
problem into a bogus -ENOMEM with no diagnostic.

Fixes: 1781be3c8a5d ("phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver")
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
index e93cba4369fb..e747ff9c3e5d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
@@ -555,6 +555,9 @@ static int qmp_pcie_multiphy_register_clocks(struct device *dev,
 	int i, ret;
 
 	num_pipe_outputs = of_property_count_strings(np, "clock-output-names");
+	if (num_pipe_outputs < 0)
+		return dev_err_probe(dev, num_pipe_outputs,
+				     "failed to read clock-output-names\n");
 
 	qmp_data->num_pipe_outputs = num_pipe_outputs;
 	qmp_data->pipe_out_clks = devm_kcalloc(dev, num_pipe_outputs,
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
