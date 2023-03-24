Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8216BC6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 12:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teh1Y5pbaaelWLCjrTHy/DzDZXdkMCr3rcIx5/NKAhI=; b=e+bABgZ3K2H+uo
	uR5OLPApW72k9SmlGDHeJrBCJt9Iqrv3Pn7JgIO7wlEqVF/xlqV8nX31qJ+6H450WxzDlGNaAG1/x
	m53GEKobo2ftq+kx3z+xnnFsoXXi41JTkCGRnRmNMDP4feZGlJm91nm43yEnSe73SDCoHWovTgVh8
	uxbsN5caHRSqzYDlaH4vxmBfQD0cx2dJOeFJWjFB87KxzVDdFneEOmkBYYR5g4YQb0cY662VZMNaK
	ZJuS8JgU5J4xpEdrkI5/m26v8gKf32iFqdGijwqYMNAUf6V4yNNdqPbzFgA8scZn0JhkLFddrXUl3
	TIqktNthXeafUow1fk+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgOD-004KlH-0b;
	Fri, 24 Mar 2023 12:19:25 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgOA-004KkO-3A
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 12:19:24 +0000
Received: by mail-yb1-xb32.google.com with SMTP id p203so1839369ybb.13
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 05:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679660362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8TOoc2P/covbfEozOoPRNxWEkdDXKymUtV6P3HpaZvk=;
        b=ht+mL8EDec/L3PgDQ5WMUMfMXgKm8odJ+OzDgyfYiOoXEy8XBPiVTnSp+WVCW4X2Ap
         35K6HOOdLs59nnKMwYLejnHGaNwrS+n8JbEU5EotRm/XQvonvv9OwR4Akq//IHeIiM6B
         4kavnz0ThZwp5B30FYt58rsUJ+dYFCCS4vN3YtBPebFVGhsVWHqjASsw4Sin8a3PVe0k
         z9QFwbmF2bBDzVUzqg7loSIwNC6jycplQlQTswwTmpPtZV7HJq0iinV1PYIl1VMXiXsZ
         3f426k7bYjpsBrAN/JfPmTD7t0l72usDeAHCc/m4yVVYh1uwg3uf/3reMPqKyH0xiBoU
         XpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679660362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8TOoc2P/covbfEozOoPRNxWEkdDXKymUtV6P3HpaZvk=;
        b=q/cZaV3twcZwaeXU/KkAglzAGlBDrZ6MEVw0awAMCxsGLv7SRXs0xgVD4L2iDz6l92
         mkuT44TePy9Qe238b9m2ixFc9hAR+1r3oBQz4CEE9NkZsPAlvzmRrJ6yqOnzoy/c6EFh
         LmmcDczpyp2jOrJGOvy3OtP91GhKI78YeG8wiWamGtIDkVwcZUC9WCRNZwpjW5FUrrfP
         J0hU815NABGBSn2sFC/LMgLSIh53hNEOhSk41WPGxNPuRowjYpwF5Hr1HKH/Js1t9me/
         eNyDpX5AwdWGzNzh6AdBcJPcbI8TYlKSeUMamk1M5fytM84olbvl+wa2PKZTp19otFba
         jxKA==
X-Gm-Message-State: AAQBX9d/1sWhKABcPCEmzz34ZWgcRQHHaiacKam3YrOzKI/xn+5+yvun
	bK+DU7k5MqlKTVyXiV31j9bZFXMOrpSqTZXONcRRDNRdqYwHGBrfUVc=
X-Google-Smtp-Source: AKy350bGXLauoWAYWG/zSrBryz9Djw/9sFVdv4WxZI3ju9VN2EJ4JlLNZj1dNeRAti5yNPn+RQ/ueE++oNMsNk7PyT8=
X-Received: by 2002:a05:6902:102b:b0:b46:4a5e:3651 with SMTP id
 x11-20020a056902102b00b00b464a5e3651mr1171972ybt.9.1679660362119; Fri, 24 Mar
 2023 05:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
 <20230324001752.1768505-2-dmitry.baryshkov@linaro.org> <ZB1P7h0FdT66k/LG@hovoldconsulting.com>
In-Reply-To: <ZB1P7h0FdT66k/LG@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Mar 2023 14:19:10 +0200
Message-ID: <CAA8EJprw0kPZtbO22-TcMYy+cqyUZCbJdMvUoiXWbcWDPCe0Aw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: sc8180x PCIe PHY has 2 lanes
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051923_023771_31E20DB4 
X-CRM114-Status: GOOD (  19.68  )
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

On Fri, 24 Mar 2023 at 09:23, Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Mar 24, 2023 at 03:17:52AM +0300, Dmitry Baryshkov wrote:
> > All PCIe PHYs on sc8180x platform have 2 lanes, so change the number of
> > lanes to 2.
> >
> > Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")
>
> This is not the right fixes tag either. This should have been
>
> Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")
>
> Should this also be backported (i.e. should you add a stable tag)?

Maybe, but it's not that important. We don't have corresponding DT
bits, so it seems not that urgent.

>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index d580f3d3e221..c95bf7ec2abe 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -2193,7 +2193,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
> >  };
> >
> >  static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
> > -     .lanes                  = 1,
> > +     .lanes                  = 2,
> >
> >       .tbls = {
> >               .serdes         = sc8180x_qmp_pcie_serdes_tbl,
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
