Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CBD5D68B11
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 13:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjQJULnDPavPeqcPBhLA9jd2QlZDIogFWrH60AzQI2s=; b=rIKbjqwVowTHnq
	22nBg4NY7x3SfiIk2KnqL39wqMt5Nsru9BjfiGbNgd8XM66qUUzlSQH2vr+VFqlqZAJG7s+56Jw8W
	bgvGvz1VbIPLdu8NShWjZhtNwQ0XQIitheuXDw56UcTltDLysa7n0kM9qNQFmQ55omdLYEwQ8i9fQ
	eZRBY9qO+azx35HBi5n8q5Yg29m1IIvgaPmdpMBPph9aBx3hUlrxqsf0VWg6U8sKf+HXAJK74gxu4
	2dkNKFOcYj6eMC0swpa9poNBLxWOk9rsMt6jBglOwZonPmPxP223qYgIcV0qk7xW2hyWxJB0LFcW4
	y0nVb1GpC8+vI3nZDSww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZry-0000000A31B-330I;
	Thu, 14 Nov 2024 13:26:46 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZrw-0000000A30l-0g2X
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 13:26:45 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-6ea7c26e195so6835637b3.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 05:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731590803; x=1732195603; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=44Uknm2sw9kBbdVK3KPiUzPorxfNwDSfI3ZnmRNP3ac=;
        b=W096HyuoX8vTwt2Igw9nQn6fwNt9RZP7AR/VzDUMgfkhRRzpcgepUN+S9y6+mhzlx4
         MoTP3gkulxiwi0bJWidlsTtD01oZ9KcszZQxNNGTUJZZFQABhJQccrryT69TdnDs81Sq
         Uc6oLP5iIs2NYL59t3WfsRkvKUQ7P2AyOVY4WW1geMHunqTBX+NEraMsIYWYQjpNlLZD
         P8h2Wt7Vm/2B4gAQV4lPDJ+U6CMsnhy0DPIgZ6w5a7S+JL6hi6hfpKq1naqA1gS2pLf0
         A+rs9X7/ZCiREH7zAbFnswUzhxgV93raWz1h0zptb3zTrxitC6LIHAw+ZdOP8GmiB6kt
         /UkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731590803; x=1732195603;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44Uknm2sw9kBbdVK3KPiUzPorxfNwDSfI3ZnmRNP3ac=;
        b=tFpsle2QurVyG7LXWIYdKsuv4iStgVZXxGHbGHbGbDK4eD/t7eARLDany5dSanFeDA
         +hwY/B3iJkc1J3dse0jC5gAkVzhSKfAfQ9KRI5jOR0TVC/H1LnKBfMYo9pjeyWnTbQmd
         uQFP8tJsjs4+hc61IxdNg0mriIKGakrj/AAc+aBp5/c18nSAzM9RVuUbSNJILv45W8s5
         4/1cas+vGXS0P4zLM1LI5RnYCBdATkB62UORY/BTUozF8lj4RkBcHhZbKuz02fuQsFRa
         f2KJax6DE8mrs/o2uOd4HZof51n2ZFlawJipNUl1VgXTIWOpywzDy2hMb3lSHCvnCwes
         rDyg==
X-Forwarded-Encrypted: i=1; AJvYcCVfdRyBmOyfcLeKqkCJzSuSwLoJmDxFkEB6YV+REEF6N4zQuqqhoQJ68gfwriv2fHkhRTlC9D9XtBA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxi2A9X9UittTB5um38X++KWIgKTydoGuCzO38B0DTvuEk4+IOg
	dsphJunVsrd7Enhfm/UX4cJzObXzpFEiwmrBzvwVj8fsNlomunpqeuQEmg1aS3+i3YpEQonIG5s
	kgrhplq3H+ISlsHjrg7PcfnpiW0DqY9CF2fhjUQ==
X-Google-Smtp-Source: AGHT+IFwf8z1mFNYgsE8PD3lTDBZomFAHFwSNm4/O3SWdpkSZXwgnQCoA5dTaVPjasFbh6e4N903GF7+1g2FDtRLHK4=
X-Received: by 2002:a05:690c:4482:b0:6ee:3f5e:1c18 with SMTP id
 00721157ae682-6ee3f5e2b1amr33209767b3.4.1731590802836; Thu, 14 Nov 2024
 05:26:42 -0800 (PST)
MIME-Version: 1.0
References: <20241114074722.4085319-1-quic_varada@quicinc.com>
 <20241114074722.4085319-5-quic_varada@quicinc.com> <7e293d68-73c1-425d-ae52-e0893c8e0a61@oss.qualcomm.com>
In-Reply-To: <7e293d68-73c1-425d-ae52-e0893c8e0a61@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Nov 2024 15:26:32 +0200
Message-ID: <CAA8EJprqOxcm9NPdNZkA0XzCbv1E+MXicTcqx72sgCpZoE2sUg@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] phy: qcom: qmp: Enable IPQ5424 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, andersson@kernel.org, konradybcio@kernel.org, 
	mantas@8devices.com, quic_kbajaj@quicinc.com, quic_kriskura@quicinc.com, 
	quic_rohiagar@quicinc.com, abel.vesa@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_052644_238037_B9DBF5E1 
X-CRM114-Status: GOOD (  16.66  )
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

On Thu, 14 Nov 2024 at 14:47, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 14.11.2024 8:47 AM, Varadarajan Narayanan wrote:
> > Enable QMP USB3 phy support for IPQ5424 SoC.
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v2: Add 'Reviewed-by: Dmitry Baryshkov'
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > index acd6075bf6d9..f43823539a3b 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > @@ -2298,6 +2298,9 @@ static int qmp_usb_probe(struct platform_device *pdev)
> >
> >  static const struct of_device_id qmp_usb_of_match_table[] = {
> >       {
> > +             .compatible = "qcom,ipq5424-qmp-usb3-phy",
> > +             .data = &ipq9574_usb3phy_cfg,
> > +     }, {
>
> If the software interface is the same, can this just use ipq9574 as a
> fallback compatible?

Generally I'd agree here, but as PHY tables include not just setup
values, but also platform and chip-specific tunes, I think it's better
to have multiple entries rather than having to cope with the possible
issues. The only "fallback" compatibles that we have are qcs615-ufs ->
sm6115-ufs and qcs8300-ufs -> sa8775p-ufs. Thus I think it's better to
stay within the single-compat model.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
