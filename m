Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD42C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 15:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+uHW2AkWHl4AHrZhXEd6DuUIsnSIekKGBMYY256R/Kc=; b=ZWrz9dj/2v7dn+
	BFkaUt7MXS1ViZlwqF3C21MWOKVFzoK0TZHcuQ9B8Sl3cawO/Z01Pad7Z8ExK1iSMKF6bVn2fU/y1
	bR2DXiJ0FY0lE8BYgC6tJZxwRdGaFtVvFh+nCREv6L8hIVLFcuQRAkm6cW5UmHRpNxlEczRe9nqJT
	4Pzk0Z163204kS/7bdSmVuU1FhXbzA0yFn1DLeC2iqvjd32ZgPJofKaBmC+u0+Y7fCwor+CwdNjz0
	1UAFSU+2IXYkcHXKHqlEqPkgTLq/uHYEP+qH2wOPOXIwmI+9wF1slRj84yzV5IPh7SLpLHBHOYdxB
	ToSljl4NkVZNBDh3IetQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk31L-000000013wT-0rPK;
	Thu, 07 Aug 2025 15:59:11 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2zq-000000013mH-2QMJ
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 15:57:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3b792b0b829so963968f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754582257; x=1755187057; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YDm7xuzZ3WZp2L951p3V77ZXofZpPOxg0/UTfDzrt5o=;
        b=V7jVSld6krwtYT9iC/H5cXW+zjwoaCCMM5NnxxYKFFas3YpLA/IsdUwqvPGEWSiYnL
         PzWeQCIsxnIT95iE2sYjMZFgAg+KtPnWQ3nj+q3OQQTtBRxH5FBzt+kY4N0KI4bmu0b1
         Y73/HQNYt1foHmB+40YH15VY7c3cj+5sfrA2dDWbyvK0t/HAsyWrKZSSjcRo4yFD+Gc7
         AsxcEaGbcoQeloRyy4sqagGQfcTA5GcT+3zoDj9mVj22rE0jJEh3hRI3+qq53lOwXZOo
         tiCCOx7braltrFKTcAQ4j0fKGbANjLXc9G7wh0JsjNwScsQxm8GKucf7OoZnyuwen7kk
         MwLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754582257; x=1755187057;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YDm7xuzZ3WZp2L951p3V77ZXofZpPOxg0/UTfDzrt5o=;
        b=Cw+yzOSBXIWvZ7Q+0l72WH6qwuof+gBt0HFaEnO+CmvO5Bd9mFKLDlOnU6EDXoAz1s
         sBUGFXPd7hkbCagpWNbdDNEvkErN4cw3otWvQ6liOjM7COPn+nKgvU6JrHH5c70o6/w+
         CVddrDqdL6OKC44t4HPh/XipRhR5FPMgRUkvthjaAe0JJyXJbVc/ieEUQZMX4ATMGLXy
         pJ5YYc/P1TSIPIYejtMScSDS7eMyUjx8xEgg75JrCMx5k+PhULM2Zi7ZscoTkOcVGEOT
         j/QBwG25F6X/t1drcN6A8YDKdg6t5IISdIUw9QRgS80icT34kJy0KehiFEqF1EQGcrDj
         z3xA==
X-Gm-Message-State: AOJu0YyAfmKvcPYG/LHDVwmpr5XfT0z7Mq0ka8vLCE8YibqES5tNpuGF
	swPmbGGoatO8r3HPrxYQx13Eeskka1iuzoctKHB1c8/Xn3DOmU9+XlwOAm2XHim66EdTmFnkF8m
	FKqoC
X-Gm-Gg: ASbGnct6m1rqnSrz0Yj6TeCfzDuJsvTP2Fb05sI6KjndQ74iUItCgOVW+W4DgXHPMUv
	caPEJwkuQ/vOeObTA2ZB4gjSRm2JbxxPV88U3ZhFttPv963Vc8FZ+QGfq1i3NvitKGvINHtZ47I
	SUnYBL0bwjzybWu+LTrQWUWH2e5i0VO9WObKDEnap8mlmR0imZTKlrdSRYxDDqpMqTmElo0sHck
	7nwhfaZO6CZYSLim5c1w1eo7Lpqn0rgulE6UclALMMyRYvrL0PxPrTOqTRVUf1ywUBujy+/xcRG
	7EztiVk4irpe1wKEsQyZpzAB8Ow9tNf5SFL5otpXIw6kErwVp0+v/T2D6fsVu2ZVRwiRDt2S5AN
	xqLHFa24aJg0LB/Xz9bOjYuDToB8=
X-Google-Smtp-Source: AGHT+IGGmIep/WNOn8LW1LvCG7k8OybAdQVUUYFpu7r+RJ5bwDlSAJYYfM3DwIHfura7dsAo7NSisg==
X-Received: by 2002:a05:6000:210e:b0:3b7:825e:2d28 with SMTP id ffacd0b85a97d-3b8f48cd052mr5287825f8f.9.1754582256890;
        Thu, 07 Aug 2025 08:57:36 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3b79c469319sm26699851f8f.54.2025.08.07.08.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 08:57:35 -0700 (PDT)
Date: Thu, 7 Aug 2025 18:57:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Vincent Shih <vincent.sunplus@gmail.com>,
	Srinivas Kandagatla <srini@kernel.org>
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: usb: Add USB2.0 phy driver for Sunplus SP7021
Message-ID: <aJTM7MTRPQunUvzt@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085738_620720_053452BD 
X-CRM114-Status: UNSURE (   9.01  )
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

Hello Vincent Shih,

Commit 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus
SP7021") from Jul 25, 2022 (linux-next), leads to the following
Smatch static checker warning:

	drivers/phy/sunplus/phy-sunplus-usb2.c:92 update_disc_vol()
	error: 'cell' dereferencing possible ERR_PTR()

drivers/phy/sunplus/phy-sunplus-usb2.c
    78 static int update_disc_vol(struct sp_usbphy *usbphy)
    79 {
    80         struct nvmem_cell *cell;
    81         char *disc_name = "disc_vol";
    82         ssize_t otp_l = 0;
    83         char *otp_v;
    84         u32 val, set;
    85 
    86         cell = nvmem_cell_get(usbphy->dev, disc_name);
    87         if (IS_ERR_OR_NULL(cell)) {
    88                 if (PTR_ERR(cell) == -EPROBE_DEFER)
    89                         return -EPROBE_DEFER;

I don't love the if if (IS_ERR_OR_NULL(cell)) check.  The
nvmem_cell_get() function can't actually return NULL.  The normal thing
would be to make it return NULL if CONFIG_NVMEM wasn't set.  Even then
we would still only check for:

	if (IS_ERR(cell))
		return PTR_ERR(cell);

I have written a longer explanation here:
https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

Can PHY_SUNPLUS_USB really work without CONFIG_NVMEM?  If not then we
could just add that as a depend in the Kconfig.  The other way to fix
this would be:

	if (IS_ERR(cell) && PTR_ERR(cell) != -EOPNOTSUPP)
		return PTR_ERR(cell);

    90         }
    91 
--> 92         otp_v = nvmem_cell_read(cell, &otp_l);
                                       ^^^^
This will crash if the nvmem_cell_get() has an error.

    93         nvmem_cell_put(cell);
    94 
    95         if (!IS_ERR(otp_v)) {
    96                 set = *(otp_v + 1);
    97                 set = (set << (sizeof(char) * 8)) | *otp_v;
    98                 set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
    99         }
    100 
    101         if (IS_ERR(otp_v) || set == 0)
    102                 set = OTP_DISC_LEVEL_DEFAULT;
    103 
    104         val = readl(usbphy->phy_regs + CONFIG7);
    105         val = (val & ~J_DISC) | set;
    106         writel(val, usbphy->phy_regs + CONFIG7);
    107 
    108         return 0;
    109 }

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
