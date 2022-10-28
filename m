Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 213FBC38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhOTilWXzaSd3qfYCIk0bUNRa1ckh6mWH8JjaunZPZk=; b=33GmDofNWfZ84u
	UNczR1cyKRdFukSno07U2PARBWhMZsS4EzdZoJWGns2EKFJgBSE5l5Va/lOlKe9AD1TKxuc81DMts
	FdlYelon1lmODjAmYtQfvIZ6Lbc7DSPfuBrFcY5yS6zYm3JsuPdHg9MvIlUio5+GRpXi1vS/wBJZ7
	TXGdL1CxB0b0ehn9iDi+ZB7ciQ3zrFZlYerc+NzW9wNzz8Dcv4v5iKR66asZ0iHwogsTNq6MS+vxy
	fr7IC9J0NB3cuaw+3u4RPmGtqaUB+lr25gz+MM5l/1blxB3NrtkCAahLTFxJWO6hsKyzMxi5T8Vx1
	F4UNckhe4zgQ5m6qJI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPsf-00HUqN-IB; Fri, 28 Oct 2022 13:58:41 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPsd-00HUpn-EE
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:58:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4F6DEB82A78
	for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 13:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04713C433D6
	for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 13:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666965516;
	bh=rQJmDiZBQTvN+g8AYTpf+XHiQUInYFOXGygbIqa2AsU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Af0m17xuZbTwWJqFBcBchtYBwTX/56llbV2SIn2WSNwl1mLoC8OdZ7+E7NFVcWUN4
	 kHU3nx14HQnf5PEdu9K4vQTHTrZwof0mBKZqzA2PJrA5M3LJ5wEDwELVZBu2mcGZLv
	 xwf3IOJcEm2W3WCPVKz/zUBSUsF7AqmfQW2WnpH/ZbwnG15NywL4edG6GDGloQ1sRw
	 4U1ky9Ba50lOevZ24IP1+Si/TUH8EUty3RPLufXJxaL5IsUBS3MViTbbNcRU8uI526
	 g6YSHEmWIlO5Mab9VeNE/f+XGytiTDzFWxFiYfNQF0PLMPAJhU9ope6ucNvD85B+/N
	 7fL+SHtZiCMWw==
Received: by mail-lf1-f41.google.com with SMTP id o12so8407567lfq.9
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 06:58:35 -0700 (PDT)
X-Gm-Message-State: ACrzQf0/snqmOa3epE2JuQANHagSNx7FXyfFDKEOIIvVPP4tp0cugT6w
	h6eXuRm6noygNT3rwWCPopfJBoRVK1K578R8TA==
X-Google-Smtp-Source: AMsMyM5SqS8RL4UBDJ7wHzAgyFAfsN0Ga0Spzui6yy/w0QIc3g13LZNL9RwHD1TAhaNWFBTshMh260o1G1EYejE0xgA=
X-Received: by 2002:a05:6512:3e10:b0:4a2:48c1:8794 with SMTP id
 i16-20020a0565123e1000b004a248c18794mr19546204lfv.17.1666965514048; Fri, 28
 Oct 2022 06:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <20221028134407.19300-1-johan+linaro@kernel.org> <20221028134407.19300-12-johan+linaro@kernel.org>
In-Reply-To: <20221028134407.19300-12-johan+linaro@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 28 Oct 2022 08:58:24 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL+8OXb_0qE20wA-+Dkjqx1UjDTXiWG2CKp7=GkKeis0A@mail.gmail.com>
Message-ID: <CAL_JsqL+8OXb_0qE20wA-+Dkjqx1UjDTXiWG2CKp7=GkKeis0A@mail.gmail.com>
Subject: Re: [PATCH v2 11/13] dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_065839_660354_3295C1E8 
X-CRM114-Status: UNSURE (   9.00  )
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

On Fri, Oct 28, 2022 at 8:44 AM Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The current QMP USB PHY bindings are based on the original MSM8996 PCIe
> PHY binding which provided multiple PHYs per IP block and these in turn
> were described by child nodes.

Missing the DT list, so checks don't run and it's not in my review queue.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
