Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D090C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4S6LLZcD6yF5XsrDJ+WJCTRtovVxU0/AL0lG5NrqWR0=; b=ZCXmVzXCwBaZGF
	q0Lr7BB7E6vZ7pb0o5hyZMph4ja12i6RPxHhgY9aDGTUrDRJQ4ZD70K5tAgX35d6MUBbTCKC+buAA
	wo043Kx7wWmzlLLOV5Sz67Ozo4mCHNckQR+HjrkEMRRU5Da1CQS0MKnM5tjtCnOsVu/F9ZZMx7lp1
	hnwR/IdAq6VgzgivIbb5w7WJyIDHYko/7P25/Q7jYqeS8qxc/s72h7rrR8n3+EH9aFixsb7KnK8fT
	hJy3QmB2EVoBPRBUONQnJ/rNfTW7wTTluETP94s4ZtqdNBlJ12odq8Vii2UArcFnUIEl5xrFUirbf
	BexJTxEKKmwMgET85Zwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqUE-002KOr-S4; Thu, 29 Sep 2022 10:09:46 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqU3-002KMo-1c
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:09:36 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-346cd4c3d7aso9401307b3.8
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=L4CXyRkfDdqPzt4BDFbLVWgyf8dxhN++1/fR935b4BQ=;
        b=wsISCwsZ0H8bKDjajGftebLWZNGGdoT9cLT63qtRubzwDoqQUAtgoYSNb1CNeAc4bW
         IM5SjCraUo6yCElCeuqfKdy6UZmhq7aAZeIPu2b6UEpaMW5UdG5gtHU9nBaCY+nLRuzU
         bWFhs43Q3lKzkRqa9mIm8xZiz6Aq/WL2w+uiue24kCbrZXyA+CIrbwVBMo5CAdBg6OkX
         11IgAsinAl7IUR0l/p1B8xpMZMkOa4rE+w5laUij9hdRFEEfUVl/dxBLsg7jBc97rt9M
         x++H04UOxn5rw65+XTGFrVohnQrEM5vme6wrGOZg7TjPZd3t9S1f6TOflh1o/e7aMPkw
         VfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=L4CXyRkfDdqPzt4BDFbLVWgyf8dxhN++1/fR935b4BQ=;
        b=7htVIiHwQ4+OpTbPhnc8Uuaxt0REtCVISzpFebz7CZYoFGMGdSt3aaERUYpNen+cFy
         EOMNwuCreYnop6g1HlQ3Sd2c/4kOyEAiqDf626aYfYHF7+sUg7PVgPMkeojqfmV3xSQ3
         1pHCgMZd5qTBztrElRU/tdg2SHz1QHsVONnrfkiBu2JkO924Nby0tbkfDtOUlRfpFMKy
         qzWj5iOYfUZHToN/DclCL/j+7DF/arWVUf95ogti9EkBU/CjJSJnfbJUNNLrnyxvNMli
         seYQi2A7Za7vAZ/iKhcXiFn3TDhZtGOKKPcc6YhUUgebVPBpF9VgbfsXQJKksyF6IghG
         DZ1g==
X-Gm-Message-State: ACrzQf3JJfQtzyhZSvC6Sd09+xluyK7z05+WIicKoSDxhHg5raugajft
	rOrMt+D2GqbemeLqYgeX2ugGE0PD7kaJoGIFSDy6qA==
X-Google-Smtp-Source: AMsMyM5Vk0BM+zVXvmz4Nb+GXJ9MIX2/6TtCfL1z6+EU/Ex+OQgPrqVXc/ab/Afwe0pHg5NyVpdqnXqSD1Kuzt2pAmA=
X-Received: by 2002:a81:b40f:0:b0:352:477a:659e with SMTP id
 h15-20020a81b40f000000b00352477a659emr2358745ywi.127.1664446173543; Thu, 29
 Sep 2022 03:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-10-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:09:22 +0300
Message-ID: <CAA8EJppu162mrfdEv7zb0hC3n-2dWKafGe7iEt5NhXLrV_9FZQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] phy: qcom-qmp-usb: clean up power-down handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030935_103886_0FF2C079 
X-CRM114-Status: UNSURE (   6.51  )
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
> the v2 (and v3) offset during power on and power off.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
