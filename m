Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBFD5C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 11:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQEX9cED20VVnuRc8DtqsaMUYhA2bKodBxD94YtuZrI=; b=nUPqXHsX+mgYPb
	EaqxbQbncSAUfq8k3dm695RV1/TsWImgQqYAi76SEZQniRvfHjbGJfj0sPrR2a85orihRQ/MjyuYy
	bsqKsfHJ9KqyyQQqktN6HDU11hLT1odK17X9zaMT7nizn+SmKMuTkoNMPtbc4u3RUOemtQQPB32z8
	Sh8G+KhFPwtkL3UOEi2hcXRY+0tWnPT/3aSYBFqxBNzQxqv4lXx9g4mB33hyiKIMchVJYooE/E87V
	HgBIyzkSIYcylXxHTco02ufOhSNNxhnKF1RSRo9IJWGnxGgOAAluD/jnGZLcEDieIAu4sPx1w7jq/
	4rrEQan0Ig4vqUPuxUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ods4g-002kqW-UY; Thu, 29 Sep 2022 11:51:30 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ods4d-002knE-24
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 11:51:28 +0000
Received: by mail-qk1-x733.google.com with SMTP id x18so634538qkn.6
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 04:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=YNi1Y8KkMaCeP2/kUJouKfJubCMsxZA/yuBkgPD+92Q=;
        b=GlYsZmIc5Z78NCseds4axXfmzpXbAZhfqOkfCQrQIrzs05RISK+xEZlE0R6svYTB6O
         6tj1+xLWGis2ILrgW8CAIV9Qn5t9Bdwc0YR1Tr89Bo9vx/yhC4YYwvrvK9NnYQkUsoCL
         pOgACZP4gb2IJ5MgxFx+awLHKv4Gh+zwTvXROxAbDDYgPQvgNYL7SZfBe8cMNcdjoKc8
         TSSc3Pc31gtYO34YY7f0i/mBSiGJAefmeP+5kqlR4+hJsBsHf6zGCkxyfqfTxCHB9Zff
         QBd9EKFzqvqOpe5qPOXbAgf2N7Cn2w9yMavhH5Z0LbfRCGGWngAAMTeorfEtKdA++UCN
         iqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=YNi1Y8KkMaCeP2/kUJouKfJubCMsxZA/yuBkgPD+92Q=;
        b=EXOVEqXC/VD6evx+U8B8auueBlR3ndiY+i7FhNJ7OEhYgaAOh/SiiWV8h6kvU5Gn61
         PajfFU27s9knZCB9wbcha+zAxDeo4NUQgn03dUsiFbR/bHtggSn3yj5l6NpOh/OlKtL5
         GDYY5kfiCfB18vcdBlBqpccOghoOyy/WgJm5G/kDg9Q/sfPBwB49TAVtdY55S7WJ5ZAM
         ACg8BX+Zm0lL/KjbkIc4LQLPGoHDj6JENAPiKe3D4s53fw27XEMMOrZdEWr7VbdZe1g9
         b0f251zC82YA2V/5Iy2ZCvpkPOlfI2aL4VYoDrDa9c/8hFs3+HUMLz9YsXwozrp8gLmQ
         i7hg==
X-Gm-Message-State: ACrzQf0G04NHZQv5Anbqa0zm5NHs1/enoBsCaKizjRSVNN7AmEVgFj/I
	3sZvhQAQaKEgiHorckFwEU0fDkPGgmgaG9sacBc=
X-Google-Smtp-Source: AMsMyM4HbSoCaywYT71OgasH0p8EEJn0zsWFWjGld3Z6YEbpnVohgiUlf1FECOYitm4Td/I1VYvFOVPfyhSIlPaq4E0=
X-Received: by 2002:a37:ad0a:0:b0:6ce:1769:6f51 with SMTP id
 f10-20020a37ad0a000000b006ce17696f51mr1833026qkm.522.1664452284408; Thu, 29
 Sep 2022 04:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <75bb4a68-f47d-1de1-a900-789e365be41e@linaro.org>
In-Reply-To: <75bb4a68-f47d-1de1-a900-789e365be41e@linaro.org>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 29 Sep 2022 13:51:13 +0200
Message-ID: <CAOX2RU79tLBVDPtHdfKx_pj1qb9F3sic0rN45fXtUPc-DryxPg@mail.gmail.com>
Subject: Re: ipq8074 USB PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_045127_163111_245837B4 
X-CRM114-Status: GOOD (  13.96  )
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

On Thu, 29 Sept 2022 at 13:26, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Hi Robert, Baruch,
>
> We have been looking onto the QMP PHY programming in the upstream
> kernels. I noticed that the ipq8074_usb3phy_cfg uses usb3phy_regs_layout
> for the regs layout, however the Qualcomm's kernel ([1]) defines offsets
> which correspond to qmp_v3_usb3phy_regs_layout. As you seem to be
> working with this platform, could you please doublecheck which of
> layouts is correct? Thank you.

Hi Dmitry,
Unfortunately, I dont really have a way of for sure knowing which one
is correct as I dont
have any register docs.
However, QCA-s 5.4 kernel has been using usb3phy_regs_layout from the
start, that is how
QCA upstreamed it as well and so far USB3 has been working fine on
multiple boards I have
access to.

4.4 tree was kind of full of broken stuff that mostly got fixed in 5.4.

Regards,
Robert
>
> [1]
> https://source.codeaurora.org/quic/qsdk/oss/kernel/linux-msm/tree/arch/arm64/boot/dts/qcom/qcom-ipq807x-soc.dtsi?h=NHSS.QSDK.9.0.2&id=894e56082ca89638c68b7cee039ac1b2a6cb4863#n1237
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
