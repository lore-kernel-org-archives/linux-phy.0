Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C97FC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6EzcaIrUl98kbHOIByP0FGR6D5MywGrmPrCyYxQqqg=; b=TRZ0rHrBagN46L
	IL8JqtxNQ2vpub250f1hPIPnyUDjfMutbK6yGcVrjTfuCGE0vxjBCDGhInKNTKam0tVtSL+i/sHvO
	ZOCv++ieHkxajfp8TzGT4oNE0GbvNbJfKSP6AsxEm2NS3g3fuerSKZwtjuK2d8Pi5jNUerLeTuUIU
	NceJP6A1fpXrBnF2ba3+EqfnNHLzAIRm3HD0SYPHlJz/4qMPFkDrdDaH534xzyVV9GemNsm63KE9y
	tDI1YcMKp4N1kslNBxZYA6AUPvZKKbeM5TZ+WEnmMHlgaDHC1DSoR1jeyk3ctOlVhpfv7Ddy50yNM
	gy2lK+tyhFHnFKwP/pUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqUS-002KTj-K8; Thu, 29 Sep 2022 10:10:00 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqUQ-002KSD-2E
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:09:59 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 135so939451ybl.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=jeUTM7DFBoz7PLwWwa1BeBsJ9kV5jVLDyMertW/d5ig=;
        b=L26P3SIm2tTN+4cZIEP7GWktPtbGxaDqPIOtWOnPexIMm1BzN7s2ww4bKoklpELEt5
         PRACvw5LeLKzuv1qpmH8eohoe0p1cyYOaENVN4oWAodjV56aMndZKZ6N4fQpySMItlnn
         YPf40QjO4wSU967BIT+Gkqes/LUNwNqakoDkR+n2MR8iify0sQSQuJW1UztwLmRSkuKv
         wCglpgfleEFP/mi5p322f+kPlyhonQQMZ4W2FdBNTywCFUIDBPoD0k4r9xHnXq7zZKdy
         bezkD774RY9+iHR2uikw7sASBiv/kTBR+ojBiZuSRKy1Ch8qFyeb+asHpUEuwBD1nD2r
         /GCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=jeUTM7DFBoz7PLwWwa1BeBsJ9kV5jVLDyMertW/d5ig=;
        b=hDdzxQ+5S3GR74R7FZ21Hg1oJxTT5oLdN8DUeUECwHjfpN7ZMu1c3OIuLWlxoWmkL3
         b8qxgyR90DgNIF93muLZ1bluRSWRBW5RO4oFjKqJs23j3MklZmN57+5Wx8wQ18furcAC
         qaXvBnHe2rq17A4pbXiUzo+Jhpg0jUkXGKd5R7mhQFAMymbc/gCJvplAnKKjvNh3Ikan
         L9OFem4ePPnD1egyWMR5L/zpVQL1t6XQcpnw9GE0cFNHeY/J+gyDbstnacT/s5Qg2NCi
         LCA9CyCZBA0xWm8dy9WNNHIhu1dxoOH9Benoy7COal1cMe8XVf/p2k/kfxvov0NE3p4E
         I5JA==
X-Gm-Message-State: ACrzQf2wDUPa+IZUJh/J3ugTFCVDaz5B48Xf9+zHHp810CRzQKc4Rrs+
	CX58YEgge1DpTfnH3CubxMBAO625RpdmTXeJqv2D3A==
X-Google-Smtp-Source: AMsMyM7bGcje56QfT0SiahpE0KKI3Eo9XTeAq2kxH8gsm/VHDTd9kGNI7Sw9FFyYjfuxfH4/EiUYyV+VRFb0PjHoRFk=
X-Received: by 2002:a25:2e4e:0:b0:6bc:ac92:a4df with SMTP id
 b14-20020a252e4e000000b006bcac92a4dfmr2385840ybn.153.1664446197322; Thu, 29
 Sep 2022 03:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-5-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-5-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:09:46 +0300
Message-ID: <CAA8EJpo9U-vYU1tJ5FGw1gM9kE3tb==nno+N+QaAqEQyWX9Ozw@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] phy: qcom-qmp-pcie: clean up power-down handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030958_122220_396BEA59 
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

On Thu, 29 Sept 2022 at 12:29, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 offset during power on and power off.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++--------------
>  1 file changed, 7 insertions(+), 14 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
