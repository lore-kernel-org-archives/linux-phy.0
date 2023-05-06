Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 027E3C77B73
	for <linux-phy@archiver.kernel.org>; Sat,  6 May 2023 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BffhN8Xc53AbZNHntlVAov9HrEvJptRsT5pc+2HgiFE=; b=4X67hrqQTULmD4
	CQn7RcXlGH1h/ksrH7ROnoilbugJXdDNIwkzC42E6Pouud1j3GzYY337nyrQRxfwr9Oteo1PWgyBh
	xusYVw7jOy6FRcie0VzUXItVD2aAGC8OXxza0NF23LzPAHx6XkiIaZWezBOI0TI0ptH3okMgEtPYy
	sveVCGSzT0zss6m8FyJ7wK6hneegR6iKl76FKiFZ0vZFMD6/2oHBlNTJcSdJS0QJUng/+Rfk8dVlQ
	oi6BQGnFPRp9ieEtjmjqVdTSuLA1rCUjAisGpx9Kv14xd3nHPPo4gLuvSE2EGK8m4zJX90fLrp8cA
	ubeS+d38C4mIuWjbhWSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFlr-00DGvp-22;
	Sat, 06 May 2023 11:08:11 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFlp-00DGvA-05
	for linux-phy@lists.infradead.org;
	Sat, 06 May 2023 11:08:10 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-559eae63801so41244177b3.2
        for <linux-phy@lists.infradead.org>; Sat, 06 May 2023 04:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683371287; x=1685963287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j5XlcbqFrzQXxIYxdf0VxKIx0ZoUFzqDbvv5tK0E9jE=;
        b=cNdP/pr/9KcytvLHAV2KR7Egci52zCTCKkiPfBelrMkxfVg2Xrji0fuF9zAV7yv3vg
         hs5EOpYp+wSYnwJCPDcDdrTmBGWmO+CHCoMHp4mo6VBaFvPm+y/NSFnT6bXajfjMmtuz
         ojWMmcXun5Fqk94LvGIUcYHfYQRLtXQ2YhVZpXjl9MQmB4w/DAPX0TWFS+tqEs+VIwDQ
         RVGBIjOgPqNOSXkXTNs7ThOqqZv3rPNZjJhrH6weBkHpICKta7n9r15dF/DsuyhmJoUf
         2e+2Uqg53HIDmIXS5+OpDq139GlOVBHCnD+yI1MrIu9gCpsjL57l1AKEN7e5JbFRUk+q
         zNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683371287; x=1685963287;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5XlcbqFrzQXxIYxdf0VxKIx0ZoUFzqDbvv5tK0E9jE=;
        b=eXPwYefrLsxkMxmm+mAl2hUyxzb3N+wA6flZhba6MNHaMk7FgaqDRAUK4RgtsL1h0S
         E+gtwK1h8PN4+4KwOJz2eaiNwg5gQl2k53SWSQQHStyytRL2kDU0sT+EVRIEYwHrt0Xs
         dkFbz8rNOOSgsv4FDiXE8PnoI+qx9KIrgvNzVWQQdAzRx+UHRhWZuVpf4De3DRwfSR8u
         I4lljRjgRV0CsIUqnTg9TW/Ds6oebhejmTVX1lSgCzJPxza7Ol3AuEkpP5LIl9N/9uq/
         32WXFtwEzMh5aPn6wj7ots+np4crWEiRj4Iqok67J6yEHwH652Npq8LO4F7ceRKyccv9
         VZhQ==
X-Gm-Message-State: AC+VfDzLbiG6BnvnldrFtTgZScyRmnDNSp1d6tQwpDBAJDYApubgrOKO
	Q0CtFxLWUPNDz8D+Gd1kfpMPBQqZjBlSGycPUfI8WQ==
X-Google-Smtp-Source: ACHHUZ6iGINkfuXu3mA7YpSLZ0z+S5X733K8fJ48YS7ZTvxkCFk9w0Uq/7dKFQuiu1WU6SIM6RHjU1LUAVNNM2nfp/M=
X-Received: by 2002:a0d:cc09:0:b0:55a:5870:3d47 with SMTP id
 o9-20020a0dcc09000000b0055a58703d47mr4375122ywd.26.1683371286931; Sat, 06 May
 2023 04:08:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com> <958fec66-2978-1d45-baad-c735fab85108@linaro.org>
In-Reply-To: <958fec66-2978-1d45-baad-c735fab85108@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 6 May 2023 14:07:56 +0300
Message-ID: <CAA8EJpqEk=dQkChFh3HaTuTpO3wsebS8_p4RH-1_JrWoS_HbeQ@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230506_040809_072058_3414C0C8 
X-CRM114-Status: GOOD (  20.26  )
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

On Fri, 5 May 2023 at 22:26, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 5.05.2023 11:29, Dmitry Baryshkov wrote:
> > On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> >>
> >> Add LDO regulator node
> >
> > As this LDO is provided by the PMIC, it would be nice to know why it
> > is modelled as an always-on regulator instead of the proper PMIC
> > regulator. Up to now we were doing this only for the outstanding power
> > rails like CX/MX or EBI.
> (which we then stopped registering as regulators and started
> to manage through rpm(h)pd drivers and the genpd framework)

I mean having regulator-fixed s4a on sm8250 in addition to the CX
genpd, because some of the parts really expect to have a regulator.
But anyway, we are getting away from the subj. Let's wait for the
answer from Varadarajan.

>
> Konrad
> >
> >>
> >> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >> ---
> >>  Changes in v10:
> >>         - Add LDO regulator node
> >> ---
> >>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> >> index bdc1434..1f5d14f 100644
> >> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> >> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> >> @@ -60,6 +60,13 @@
> >>                         regulator-min-microvolt = <725000>;
> >>                         regulator-max-microvolt = <1075000>;
> >>                 };
> >> +
> >> +               mp5496_l2: l2 {
> >> +                       regulator-min-microvolt = <1800000>;
> >> +                       regulator-max-microvolt = <1800000>;
> >> +                       regulator-boot-on;
> >> +                       regulator-always-on;
> >> +               };
> >>         };
> >>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
