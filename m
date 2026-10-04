Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 787FBCA5FCE
	for <linux-phy@archiver.kernel.org>; Sun,  4 Oct 2026 10:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrjTNID6X8e0YrilqYMsTUmAqH7/0SAf0mE94OprC1A=; b=TWXUkDJ25bLFrq
	xttnf2cg6kE4V5IV+YGIddax1QKJTKp51N5lW6SwQr6l/XF1HT2avU8iHWkaC9x0I6gnebSW8O3ij
	xI6bP4SpYJvPho907E7BPZ9Y1QgjwSyuEMkaxun6IInrp1jCJyXE2u5faFXapqkTEW4xZgKI/GaWE
	apB27M8BHGEFPk9y2WEGGlK1eUvuYq6OEm3jaeoq4+Lt8icBrjeu5go5KonshQwPu62wSEo5i2ZN3
	7qYn2J9ceDxCXsCnoOGSAeV50I7yR9Ihas/pHERLeV3rkgGbLZhlHpAh4MSyOmeu34TNLLylPC4rc
	VuHDZQYZMQozi8SV3yMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDJ6K-0000000Ee18-3zwh;
	Sun, 04 Oct 2026 10:05:48 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDJ6I-0000000Ee0n-2DFR
	for linux-phy@lists.infradead.org;
	Sun, 04 Oct 2026 10:05:47 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49ccf3ca626so6261795e9.0
        for <linux-phy@lists.infradead.org>; Sun, 04 Oct 2026 03:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791108344; x=1791713144; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=C7dO0Rcfru0/bHBYtaY5qQl2mBgYh6+npZqhA24Mb2E=;
        b=FM+POSE12XzjUv3DyKqvImbRnuwEuWuEX8YdcH47zF1KwBGOpbwA1TSkeffJ6J7HJd
         GfH53bJ2XZagwZ71t0ay+4O0HGnYEQ8cLot/sY9FrqL/TIl/1o+I7LzzXFmIa/2Zl16e
         39ehpFIQbphpkNC5En5x13EUZKLkrRkseXatUQTIzonrgWp0EDgHtwT+Gs09hFiI3LYq
         Z+iUnEeNH8+HD0So3B6cGkh4WTqvx9rtywFi6kq/gq+xUHwXljMPat9neX2z842E8A+2
         BfER5+pikZ6YUdlPI57MZQAtwkva4uE39kZ+uT+Zro8sd16TMEKdL/1Ru+1Y6CeZJ1+b
         k8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791108344; x=1791713144;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C7dO0Rcfru0/bHBYtaY5qQl2mBgYh6+npZqhA24Mb2E=;
        b=RLy7NJYwLwyH/LYd2y6yUn4iOLrhPhSAcdsNvAB09xxN/VoAh6ZI0TWBHFtDOMzHvj
         KwZqFfMyMr1GReISAvbVMQtyredKKF6eAbxHXzVMQDCGM7+2AUJEhSgcGKlBJKyd8/WJ
         venHBsBm+GCQrBp9HTH4Jg4aIrHML5rGYtioTs44HduYZgrYeRUuS4Cp5GB6vQoa1FWq
         WX7I8+wVVyFxisC5o3pfBE8+RQ7Fa/5xMyQR2EXP9kqhZyLMr14vRJ2/nmT+LbGAwm4z
         kI26t0FAsWDZXyyag90/IFYaAR55HUFXBQlK0Epcdi68JgJkEU4U3gtfPKTP+AgBTzBJ
         temg==
X-Forwarded-Encrypted: i=1; AKwUvBzF7IsEubKxAs/Ujj6BbJbgrxfwKiTLQuN2AOAHK7gPZ2Rh7AAKrFqmQTEBttY1CX9E+rgOW5QMwFY=@lists.infradead.org
X-Gm-Message-State: AFuF++kuyGR8htVgZ6I60TaKzSQbUkV3wRjWJSWrqd2QOdD7PX9PPyYV
	emE53DRZ56sqzBDRxkZkNjF+S3kAYt/EQdfd8P3hjJ2OvFVxN2ktP+p3
X-Gm-Gg: AYBFou3DbH65mmfxhpY6UkttSe7aRNccAg3bjxsvb6pR/YSqgPidlHXnYmiflMOCPmM
	Pbcf0Zvtl6WmE0xi0gp/AeI/67Vw+hY+YF7nZFAWHahwRlBF1+evFsJ/fbalfF4+MY84S/iUlHw
	fHM/2SQPe/1eOckiKliy/kv/dNEiCu/hPOr2il6Eyw2IcrEU4GvSH98rCTmzw+JnLs5dnprF+Xv
	24rbrHyQxVrISOjPQPpgmXR0ty+xJB7x3nz2ZUXmtF4ohm2PRLkYojAY7z9k8czwiKUO1wCbQLW
	Gbkyz7bD3IEEkCnYgPrlERzHs0NLWDXFR2pCORROM/13YsspJLuUBaYfkvqAX6/DhyabsOGPe1S
	u6/UGr1wR2YCVxHbmK/K916YYgGm2BRN2JrbF2f+SP/lWXA+UdffMZIGwtddzFfcTXh6X+WWo0P
	zzCHGpx4QESDTPkDruxsXc6wAwex03njdA4jPkVaXjjyfIbvseZfHDhA+EV7+EV1otXBWcNM1x0
	+dSDQ==
X-Received: by 2002:a05:600c:620c:b0:49c:fa20:cbfd with SMTP id 5b1f17b1804b1-4a027583fb0mr131735445e9.20.1791108344053;
        Sun, 04 Oct 2026 03:05:44 -0700 (PDT)
Received: from localhost.localdomain ([94.252.75.11])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a02770e8f2sm215687755e9.6.2026.10.04.03.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 03:05:43 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 2/4] drm/msm/dp: clear force_link_train flag when link training succeeds
Date: Sun,  4 Oct 2026 12:04:59 +0200
Message-ID: <179110829900.3315.15040287408420454805@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <8b45dfc1-5350-4a63-9213-a1160478683d@oss.qualcomm.com>
References: <8b45dfc1-5350-4a63-9213-a1160478683d@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_030546_592904_A0C6AB56 
X-CRM114-Status: UNSURE (   8.74  )
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

On Mon, Sep 07, 2026, Saurabh Anand wrote:
> Yes, agreed. I will update it in the next version.

Any updates?

This is not limited to Type-C. On a Lenovo Yoga Slim 7x Gen 11 (Glymur)
the eDP panel sometimes stays dark at boot without this patch, since
msm_dp_display_prepare_link() is shared with eDP. The only training
error in the log is the forced second retrain:

[    1.839032] [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #2 on phy 0 failed. ret=-110
[    1.839043] [drm:msm_dp_ctrl_setup_main_link] *ERROR* link training on sink failed. ret=-110

msm_dp_ctrl_on_link() succeeded just before, but the retrain from
msm_dp_ctrl_prepare_stream_on() is not retried and its return value is
ignored, so the link is left untrained. I'll test v2 when it is out.

Oleg

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
