Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A509C7EE22
	for <linux-phy@archiver.kernel.org>; Sat,  6 May 2023 11:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kU7YiEVeOys3cBgYNroEZoGLvziGvp4lGeOmlbHKYy4=; b=wOzA7OAwHcBy3/
	gKW7eUB4Z5rHoDpTBgTrGThH7XSgHieqdghXqzXcL1dsWiZLEFuUAmSt2O8gvFky+G+UnQPbpfdWG
	AHYq3l96S7oKqMTgzhsal6GV3IJ95io8/7rV/d7NpWcZ1RyAde8Bn+L/s2k7hpCBDeIyrdlkJMVmi
	yFTpiZMHyemSr5aTb+fzGn8R+XIcMFIM0zvJZfbSfQAnFgFhSlw9WWAO0lHvEjVdNYLeOPD9eZdxT
	ZT4suROx0NoZS2q/d1COMaYFRQAjTUzxRmSh9NkfmTgOW/RpXzzLDx5+nWiBLtiLJ4ZikPo8QtQKg
	y87nAbVZ6S0A4+rPEjbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvGAI-00DJHf-1c;
	Sat, 06 May 2023 11:33:26 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvGAF-00DJGx-28
	for linux-phy@lists.infradead.org;
	Sat, 06 May 2023 11:33:25 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-55a44a2637bso41528147b3.2
        for <linux-phy@lists.infradead.org>; Sat, 06 May 2023 04:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683372802; x=1685964802;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MrqXLh+CItgFF8Zvf5m1YwKEXaRzb+PkDECyM11LKHc=;
        b=MkpaBYkwpacXiQBX9wyxjvYYFhGVLUxRS4ZMAZXGcRR4Luhc/XHR5TCixlZ+4iPdcy
         08I6/h04LJUx9ANZTDKYso31rEC8zHUN+eWh+w+zXvWsSdzKFKAU44kGggGZ3ExZA3Em
         hPJvpUvN4N8e7S2oceXGmbgHY9t0KQ+c68+WTq6CDPrcNFWg4BSOETxEi1jkXITVOOlS
         NkiUIK1GH5LidQIvdm85bwzlz4aDpBuInpuGoeFMEwpoeHcvvUAEaQpIK7srb9HUbuES
         z+AxvQh6HxFy6TgIntSemLXYwPHU6pgBJtGyWoKpdgptPTpJ1WivKjv7FfWwJ9dMWhf2
         W/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683372802; x=1685964802;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MrqXLh+CItgFF8Zvf5m1YwKEXaRzb+PkDECyM11LKHc=;
        b=T80/ItkLxVCEuHBQj/1aHZG40bzaxhuS0QFcu4k3197vKFl0aTWmrqd3CErl2g9Ass
         hbr4c+Lb0o/a9IBdhk0XO/ksF8I7TiYoQk9V56rRUM1VUCQx20DaP3F1xh1OPT8EMJli
         rr+Ao2bnyM+QhE+QocLgc9ooU8mo9z6ACZRs0FIQfGr3UQe6jXp+5K6QOVVuW5I5kwg4
         gNq0qIz6JpJ9obLyrQaQGEF3B32IV7XeSy9a7ll5KdNQGBn1oa31oSvaXpnaRVPrWr8U
         J4YsqWS8f660HnoV8wjwWXKkBrfyd2P+v6yH7xnPMpiFIYBy2iqyg/4FVva2uSpDZk7h
         Xj1w==
X-Gm-Message-State: AC+VfDz8mAqUbziFCuRcaPxrTJg7w6Jrmu3lcOfsLqcgmnkS+eX/sLcP
	krpbt3kPt7GvRNvZBXy1+ktlaffkzJ4DdSJy2ZaxZw==
X-Google-Smtp-Source: ACHHUZ7fly9ZcKfeuDxgPgDWv+YnXLTE4ah466Q9irFBlHZd5XhcGu/UinZknE20fN8kbaJnxJSwuRR/WUWwRP2VVzc=
X-Received: by 2002:a0d:d487:0:b0:55a:5dce:aa19 with SMTP id
 w129-20020a0dd487000000b0055a5dceaa19mr4648937ywd.51.1683372802023; Sat, 06
 May 2023 04:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
 <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com> <20230506110918.GC10918@varda-linux.qualcomm.com>
In-Reply-To: <20230506110918.GC10918@varda-linux.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 6 May 2023 14:33:11 +0300
Message-ID: <CAA8EJpqg2htfa2QZ7q6SP58N5YAABa8knBn4c5eYqYOU6HQNiA@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230506_043323_842690_5E347C23 
X-CRM114-Status: GOOD (  23.51  )
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

On Sat, 6 May 2023 at 14:09, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Fri, May 05, 2023 at 12:29:54PM +0300, Dmitry Baryshkov wrote:
> > On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > Add LDO regulator node
> >
> > As this LDO is provided by the PMIC, it would be nice to know why it
> > is modelled as an always-on regulator instead of the proper PMIC
> > regulator. Up to now we were doing this only for the outstanding power
> > rails like CX/MX or EBI.
>
> These are always ON because USB phy doesn't support power
> collapse, and there is a chance that other IP blocks might be
> sharing the rail.

You are describing the software side here. From the hardware point of
view, it is an I2C regulator, which is probably also exported as an
SMD_RPM regulator. Unless you have a good reason not to do so, there
should be a node under rpm-requests, which describes mp5496 regulators
exported via RPM. then USB should refer to those regulators.

>
> Thanks
> Varada
>
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > >  Changes in v10:
> > >         - Add LDO regulator node
> > > ---
> > >  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > index bdc1434..1f5d14f 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> > > @@ -60,6 +60,13 @@
> > >                         regulator-min-microvolt = <725000>;
> > >                         regulator-max-microvolt = <1075000>;
> > >                 };
> > > +
> > > +               mp5496_l2: l2 {
> > > +                       regulator-min-microvolt = <1800000>;
> > > +                       regulator-max-microvolt = <1800000>;
> > > +                       regulator-boot-on;
> > > +                       regulator-always-on;
> > > +               };
> > >         };
> > >  };
> > >
> > > --
> > > 2.7.4
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
