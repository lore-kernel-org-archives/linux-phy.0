Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8EEC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUVcHykLxKhgxDKtd5VGt7GHs8JkZgSbRwuJ+0UwVfE=; b=NDgGs+Sesrxgnt
	uDj3o4E0bBD/hiG9wfEBVY6zZXzuCHm8iYHLYs65qYm4lvjsHndhq2/XsdQHMLXkSgF/lQ6OvT9oT
	TWrLNoeYsEfv+4y8QUAWbyPcRug3eXGjF7PFk4dZWxUeGGt0s639nMD3v75Ix5wuCImWqemg55nqd
	QwH/LGOKYqRUS0ZIDcb9TiBCAeruX3+6+a6gMhV+yyMoRUkul5huWTyY2/MYlx3PvRl/7h6XxV1gY
	JeKGyW8+/sunB+gd2wywDfcsgUL9qMAYCSQt/RDA4TH0Rxw5M5PxOtggblOLdwq5MGehIYWPU8onP
	XiyVeSj5zTN1yIj/t3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jfl-006wJm-LI; Tue, 21 Jun 2022 19:36:25 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jd8-006urM-GN
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:33:43 +0000
Received: by mail-qv1-xf30.google.com with SMTP id t16so16932898qvh.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qaXL7s//rVlnXZvWoUbeILDkx4WluVd6U+rQ7ap3Bnk=;
        b=yP47wRsHGkiNU3IV7Dih1uaEcTaUBKR5kzfzkdP0X9LqiUqMe4ZR+rVfeTYijH+eHi
         40R4d1IPfEBNLqHQeANwLlnUb/Ds/M6WeXRq8e82mPd20In+a7ZmdIJT4UlWAFAhBwhQ
         aTCp0jY6LwR9kcy+nF4MTHyDS1NESUd8wMF9x8Gwv7++rsvrHpBgWauUVT90Jhi8fqTg
         s4rptHUaJtfeasJW6NwFD/m+nUBBe439/+oouQWQgeyJ5uwqDbFhal4VJCzSr92lr72V
         NxS9ahg82893Daal2Mcv+xvQpxZg8kfUysep/Gjr6uc1giBfDezbkA4p/jLaZGvt9ayq
         CzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qaXL7s//rVlnXZvWoUbeILDkx4WluVd6U+rQ7ap3Bnk=;
        b=Q4OBnswist6d4xPy2QSKkv0/F96tJHeit4p0V4SMD8TPtaMEGVL+cvevIzIkLWvMo6
         feRVh7PUviLO2DM8/GhODC8/n6XgtEecH+P1hSmWEmS1Y/cVcvd8o/9XESMjPCobVuRh
         3oxABc8uGbGwA8eSz8S+BSL92CjA+V0ZcboHXLjM33veyOo1wHUrG6syHjZ9jU10nA9d
         YznsAd7+nRTMFL0GpTPx6tZxrnxfXGOeVCKWzhOl3LNInQDbxtEFDgF198qv351Q5qd0
         /wtOtxRZ8aPuNigqxmOFFEoIz1rbx0kmFnQa7CPU32GtPQUqQ+RhO1NUe6bFlQk47pBX
         PaFw==
X-Gm-Message-State: AJIora/ys07Qcxfk8VxmH55DauxqNFxMJ/bNIynvLJPTHKKlyWI6O1zA
	3h8P+YotxgPQvU3uZzPxLyrZc52AJiIck9nT7NQp/Q==
X-Google-Smtp-Source: AGRyM1sS4Zs3vUyy3sj5jGfkZw3IH+lZcdapUzHfbkrrK5JAVMTxGbpJY5BEqB+0uClu8/Pfz//oVo9V/eqVPXL9kSM=
X-Received: by 2002:a05:6214:d8d:b0:464:51cc:a552 with SMTP id
 e13-20020a0562140d8d00b0046451cca552mr24582230qve.122.1655840020152; Tue, 21
 Jun 2022 12:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220621193020.1630180-1-robimarko@gmail.com> <20220621193020.1630180-3-robimarko@gmail.com>
In-Reply-To: <20220621193020.1630180-3-robimarko@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Jun 2022 22:33:29 +0300
Message-ID: <CAA8EJprq9tt_i1ufjKKRbB=Fj28MDZB-rUnNfP9F9Qj_4S40Zg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com, 
	vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_123342_583192_287A428B 
X-CRM114-Status: GOOD (  10.56  )
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

On Tue, 21 Jun 2022 at 22:30, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 has 2 different single lane PCIe PHY-s, one Gen2 and one Gen3.
> Gen2 one is already supported, so add the support for the Gen3 one.
> It uses the same register layout as IPQ6018.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> Changes in v3:
> * Remove parsing QMP pipe clock rate from DT, and instead use the rate
> as set in the PHY config
>
> Changes in v2:
> * Rebase onto next-20220621 to apply on the refactored driver
> * Remove non existant has_phy_com_ctrl and has_lane_rst

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
