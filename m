Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B20AD68BFA
	for <linux-phy@archiver.kernel.org>; Sun, 17 Nov 2024 12:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8IIukaklk8LKrCRW+V+PzpCfxNRziQhSS1ZpORM6b4=; b=zWXz9r6ta9Jx0H
	5HuQU/zJzvrByzVhbyGElzvaLz6hsvt2iS1PgyKq1bmUK4cTGROLyGiBtuntBSZV+CagZPIhqghql
	PLUk3zsm5lkwrf8QDzgpbgfFQeVTKwFEo6k0OK3rBb+8cC5Otgx5RYnCDV8lInl5KDvAxusBHGHF1
	M+wGC0IJRcajh8Jcmduta/SZeMtIkB2b2DjMNhWkC2ijr2fo/nBBQR65rd7pJfvanAlO6QaWCNdmc
	2NRWS1eAu822AG+WVe0D5qJOSClSoUTHaPDGXKkpQEg6Euj3EKWKqSUPCBJYBJZaqsHxyeu1s3Hbh
	295nKW+dfoDnPY0bSUrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCeqC-00000007LJU-2b0A;
	Sun, 17 Nov 2024 12:57:24 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCeqA-00000007LJ8-0WkO
	for linux-phy@lists.infradead.org;
	Sun, 17 Nov 2024 12:57:23 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6eb0e90b729so10417047b3.1
        for <linux-phy@lists.infradead.org>; Sun, 17 Nov 2024 04:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731848240; x=1732453040; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NodmpFT+qxaaF/PGLm9mRIZsGR/VQH6X8ujv94bXnj0=;
        b=MhmxtVSORHnTNmfk9qGlKBcU2C7X4M6D2YZDwJ1+fM/Dp8vfIxuiZh9NhSKQNbPIA0
         ezM14YGV1CETpGfVDgUuvyHgFIupt0ENJpPNbQPBKlJvvcnT91bHNlbgBci3y3odh6Zf
         5Jir+PIwMQqRf9G9PppI4RnR8wypxZ0JHz5lG3tb1OhASkAlbg2bbzYI/8isZX+DbaJX
         24QIYLZoYbSlt9fbbPpvRciMunvZ+UFO8WD7tfzs5FqcoUwWVfguetcdFXusSupVxoMs
         ceQ4dfGGrd8opf/eGak6083Eh1D+Eoi+XnaI/IJEvCUKVZ/dawcwra8aWzMFTmmAinCE
         gaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731848240; x=1732453040;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NodmpFT+qxaaF/PGLm9mRIZsGR/VQH6X8ujv94bXnj0=;
        b=OIZcaobY5RQW7K6RzRufjaoXOMdnZA+beK9DqO2VIcwtHwrw5TCLlXEpYE3ah7TYRS
         2zzSqba3jPcWJEhpdx7s3Gq38+23lGGwiVwv7lEGfb46VDrbOYoUmEPbSEkw+ZIzNXwj
         9mMDlXIVC0au4o8saiC5Mal4ZKSGDkyYuTHByy6YayBKgScSGyfZ5EdypBzesZn0/8mB
         w1XalLHJ3rxDbA4IVZgEJbeKz9eszfqZ2TwWk21y3GOMIL7g2mvO8Zd/UiM1mHy9gJSH
         FvYcp361m4ue5KLJnYB825dZcEuXTIPs+pP31icJzCZNB+1aP+YYX05/siGFdQ+5/OjD
         8O7g==
X-Forwarded-Encrypted: i=1; AJvYcCVEj9rTvF7BtKbppc6UPISLag7sE93DiyWCEHOteoEhqXDhqiWlKfV/jWYqjst+dAZEVQcUeMpKbl0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBUcgPChqYYyXUK/8utcgX6sRalefohRIOtvnbjUQ7kFlAqf8w
	180k3gCcMxwifMQnOYhcT986TLaWHHW85eN1vT5MFchVgcxCssdp3gaB20Ufkk6H7TZHUZgwS1h
	ivUojWpHFfViYg9331RfHcRFK0ASWM4ntFAbl+g==
X-Google-Smtp-Source: AGHT+IGHhP6z6uzaMe/SjD7VuC2yupm/LLWj/hEg1VYAOasj1HmGbygRyNh0RqshUk1xmkg0eGSyb+eZTIFDMSpJNeg=
X-Received: by 2002:a05:690c:4b86:b0:6e3:2361:df8c with SMTP id
 00721157ae682-6ee55f1c99dmr80383367b3.42.1731848240497; Sun, 17 Nov 2024
 04:57:20 -0800 (PST)
MIME-Version: 1.0
References: <20241115091545.2358156-1-quic_kriskura@quicinc.com>
 <ibh3n7gl5qcawpiyjgxy2yum6jsmfv5lpfefuun3m2ktldcswl@odhjnmkj5jre> <51f7cfa8-3362-46e3-a9e5-e43d585d4ac0@quicinc.com>
In-Reply-To: <51f7cfa8-3362-46e3-a9e5-e43d585d4ac0@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 17 Nov 2024 14:57:09 +0200
Message-ID: <CAA8EJpoxzEdJ5d8RtEb7a6=NHvCVhnisK7QLpqpp8EBHAvsBhw@mail.gmail.com>
Subject: Re: [PATCH 5.15.y] phy: qcom: qmp: Fix NULL pointer dereference for
 USB Uni PHYs
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Andy Gross <agross@kernel.org>, Stephen Boyd <swboyd@chromium.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_045722_194749_F3999A68 
X-CRM114-Status: GOOD (  27.62  )
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

On Sun, 17 Nov 2024 at 13:51, Krishna Kurapati
<quic_kriskura@quicinc.com> wrote:
>
>
>
> On 11/15/2024 9:29 PM, Dmitry Baryshkov wrote:
> > On Fri, Nov 15, 2024 at 02:45:45PM +0530, Krishna Kurapati wrote:
> >> Commit [1] introduced DP support to QMP driver. While doing so, the
> >> dp and usb configuration structures were added to a combo_phy_cfg
> >> structure. During probe, the match data is used to parse and identify the
> >> dp and usb configs separately. While doing so, the usb_cfg variable
> >> represents the configuration parameters for USB part of the phy (whether
> >> it is DP-Cobo or Uni). during probe, one corner case of parsing usb_cfg
> >> for Uni PHYs is left incomplete and it is left as NULL. This NULL variable
> >> further percolates down to qmp_phy_create() call essentially getting
> >> de-referenced and causing a crash.
> >
> > The UNI PHY platforms don't have usb3-phy subnode. As such the usb_cfg
> > variable should not be used in the for_each_available_child_of_node()
> > loop.
> >
> > Please provide details for the platform on which you observe the crash
> > and the backtrace.
> >
>
> I got this error when I started working on multiport support (begining
> of 2023). Initially I tried testing on my code on 5.15, hence this patch
> was raised on the same.
>
> The 2 qmp phys on sa8195 and sa8295 (based on sc8280xp) are uni phy and
> the following was the DT node that worked out for me on 5.15 codebase:
>
>
>         usb_1_qmpphy: ssphy@88eb000 {
>                 compatible = "qcom,sm8150-qmp-usb3-uni-phy";
>                 reg = <0x088eb000 0x200>;
>                 #address-cells = <1>;
>                 #size-cells = <1>;
>                 ranges;
>                 //status = "disabled";
>                 clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
>                          <&rpmhcc RPMH_CXO_CLK>,
>                          <&gcc GCC_USB3_SEC_CLKREF_CLK>,
>                          <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>;
>                 clock-names = "aux", "ref_clk_src", "ref", "com_aux";
>
>                 resets = <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>,
>                          <&gcc GCC_USB3_UNIPHY_MP0_BCR>;
>                 reset-names = "phy", "common";
>
>                 //vdda-phy-supply = <&L3C>;
>                 vdda-pll-supply = <&L5E>;
>
>                 usb_1_ssphy: usb3-phy@88eb200 {

As this is a UNI PHY and not a combo PHY, the child node should be
just phy@, not usb3-phy@. See
Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml

>                         reg = <0x088eb200 0x200>,
>                               <0x088eb400 0x200>,
>                               <0x088eb800 0x800>,
>                               <0x088eb600 0x200>;
>                         #clock-cells = <0>;
>                         #phy-cells = <0>;
>                         clocks = <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
>                         clock-names = "pipe0";
>                         clock-output-names = "usb3_uni_phy_pipe_clk_src";
>                 };
>         };
>
>
> I was hitting the bug when I write the DT above way on top of 5.15 baseline.
>
> In 5.15.y, the SM8150 usb_2_qmpphy dT is as follows:
>
>                  usb_2_qmpphy: phy@88eb000 {
>                          compatible = "qcom,sm8150-qmp-usb3-uni-phy";
>                          reg = <0 0x088eb000 0 0x200>;
>                          status = "disabled";
>                          #address-cells = <2>;
>                          #size-cells = <2>;
>                          ranges;
>
>                          clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
>                                   <&rpmhcc RPMH_CXO_CLK>,
>                                   <&gcc GCC_USB3_SEC_CLKREF_CLK>,
>                                   <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
>                          clock-names = "aux", "ref_clk_src", "ref",
> "com_aux";
>
>                          resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
>                                   <&gcc GCC_USB3_PHY_SEC_BCR>;
>                          reset-names = "phy", "common";
>
>                          usb_2_ssphy: phy@88eb200 {

Just as I wrote, this one correctly uses phy@

>                                  reg = <0 0x088eb200 0 0x200>,
>                                        <0 0x088eb400 0 0x200>,
>                                        <0 0x088eb800 0 0x800>,
>                                        <0 0x088eb600 0 0x200>;
>                                  #clock-cells = <0>;
>                                  #phy-cells = <0>;
>                                  clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
>                                  clock-names = "pipe0";
>                                  clock-output-names =
> "usb3_uni_phy_pipe_clk_src";
>                          };
>                  };
>
> IIRC, when I tried using the above sm8150 dt on 5.15.y, the phy_create
> was (either not getting called) or crashing. Probably because
> "of_node_name_eq()" didn't find either "dp-phy" or "usb3-phy" and cfg
> variable was NULL.

Unless somebody backported some patch in an incorrect way, the SM8150
DT entry is correct, while SA8xxx is not,

>
> I can try reproducing the issue and get back again in a week.

Yes, please.

>
> Apologies if I have misunderstood something and this patch doesn't make
> sense. Let me know if I have made any mistake anywhere (either in my DT)
> or in understanding.
>
> Regards,
> Krishna,



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
