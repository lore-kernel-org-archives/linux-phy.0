Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68673C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 19:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJjEmesX1KxDHOHq4TwDEferLd8HLMvpX0BKdEweGV0=; b=wAD0bs9kjPQxtR
	487gm8FY8jzkNQ435sQhJ5D4UfSRLDSBIrEOhsz5HqxaE/0uDdMX+ramysLTh7w3A6UYbdAtxT3Kq
	1RMSFQDqjGySscIoB6iU3ISWofOUwkACo9jKp2zfc2vlEVQdhS3XG8H7W+pbIwBD7Xbvmk04UgVKp
	A7WdmVDs2DJX77JpH6lJvXy39c6qCONT/G+hRrnwBQw0a4vwfek1chOUdtzXEm008M9YFjrIJ9Nxe
	oyfSPySWn9QmZ2M5Fb+mv8ym2+sa76arujFE8f//mthvD2mK/Ol1Q6phAA6t9gvB0n+CYkZctCd6G
	lQNB4FU107+kXn0nNeDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwZq-00000001ZLM-0MMs;
	Wed, 06 Mar 2024 19:05:18 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwZm-00000001ZKo-1jgY
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 19:05:16 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-dd02fb9a31cso4315302276.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Mar 2024 11:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709751913; x=1710356713; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q9Dz5IweVp7u5AkiGYK4q5oZtWjMI5V6f9hbtIZbpnw=;
        b=wqGhnRASm8JzK4PJX4bzVeb8rfUluttmVC8nGCQdudfzci876SuGlhp+OIBT/ygUd4
         UC919TVa+LWtLMAHhM/hHI/3YHEX/JrSgvDjhb5MTRHN7gz//mwcovIcLuAX7RrvFcVJ
         IsZRh/tD3KdNC5463aPC5CrX4azk1wu7yzPxxaReydENLx0Z//ZO/1gIS7gHWIJ9l3Db
         sYTGusSpyf92izFGYZXcrXPKZNU7GljnvfStbL0y476ff3M0jVf6+vwpUo5+mPC/wN96
         jYo7vztv4zjW3qMLY7GDzUiWc0COHOxnW+tjrN95Yuko7+smOoG7iJBhxXU2/Ntw3Hzk
         WYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709751913; x=1710356713;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9Dz5IweVp7u5AkiGYK4q5oZtWjMI5V6f9hbtIZbpnw=;
        b=eepKpz9D6RqeNJ5HAwNbo1lhVWl6vc6/HGODimNW22wC6wl+D7by7sPaC8K4jFm72s
         AzlLPCfs3JMmlU/PmtGyy9lKoLtbXSBzzRhF2f2AZMJEyb1/qYl/G8XjzSZ7FwAVp43Y
         e30CqfJMFEaJ9ZYafZjR3Lqmmx54g1yNZV/ma+TMk3Fa23EGOJzsMPkGkIjRYTP4k55s
         Pkf+zkgfLRbTazMFlHPYVwKxx+BALcseVWmRJMAGRpdjYqXw0VxkifokIkEgHq2cQcNz
         KcSRD1llZGbRhnOTAspV2UZiJ7HOD/dGX+5Gy2IjpF+c8ut6bTJN8fng/ptcm4bphqch
         CAGA==
X-Forwarded-Encrypted: i=1; AJvYcCWaw4d8JjZfQNLkyPkybGzF1y1MqY/ReqXAiogv5Nlf1r7kshnT1v8qWSjFZ4Qci3+J6HXwcZtw/iwhHVl2LrWlcbISnjXpZAmKIwoR4g==
X-Gm-Message-State: AOJu0YxwZ8Bsgo500wfy+cr4FGZE8OM//2QI7KREX6p40Q6y+ub3OlsP
	URiMy8UfZVZ7kv+7eu2xchPFWaBx0WP4kn0wZId4oR7p36q8AE3KZ8kgw9GvYBn/oHHy+zFIgd9
	kDm1DwrQfmZYjtQZW9iRe/2fpo2m7K/xd/vrxZw==
X-Google-Smtp-Source: AGHT+IFC+4YdX9W/XnW+sn+ulzfAedByNbzUijQDRlwBizUg8UJ0PuL6UYp9q1eWBsfhKNGKnuSCWJkwn3BXptbDTO4=
X-Received: by 2002:a25:df11:0:b0:dcc:245b:690e with SMTP id
 w17-20020a25df11000000b00dcc245b690emr10217316ybg.40.1709751912731; Wed, 06
 Mar 2024 11:05:12 -0800 (PST)
MIME-Version: 1.0
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-3-git-send-email-quic_sriramd@quicinc.com>
 <CAA8EJpoi0T-riqxbTzVymHwZmBHg5xO_Rwqy0ck-7cvGy291_A@mail.gmail.com> <935cdd47-ce71-4095-8cb5-e0f03fb30959@quicinc.com>
In-Reply-To: <935cdd47-ce71-4095-8cb5-e0f03fb30959@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 21:05:01 +0200
Message-ID: <CAA8EJpp4pYCx5hVwrmb0gs2PaRnxUapHqAhksDocEugBsOECbQ@mail.gmail.com>
Subject: Re: [RFC 2/3] USB: dwc3: qcom: Add support for firmware managed resources
To: Sriram Dash <quic_sriramd@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_wcheng@quicinc.com, 
	Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, quic_psodagud@quicinc.com, quic_nkela@quicinc.com, 
	manivannan.sadhasivam@linaro.org, ulf.hansson@linaro.org, 
	sudeep.holla@arm.com, quic_shazhuss@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_110514_637823_42610CC7 
X-CRM114-Status: GOOD (  23.65  )
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

On Wed, 6 Mar 2024 at 18:53, Sriram Dash <quic_sriramd@quicinc.com> wrote:
>
> On 3/6/2024 2:15 PM, Dmitry Baryshkov wrote:
> > On Tue, 5 Mar 2024 at 18:59, Sriram Dash <quic_sriramd@quicinc.com> wrote:
> >>
> >> Some target systems allow multiple resources to be managed by firmware.
> >> On these targets, tasks related to clocks, regulators, resets, and
> >> interconnects can be delegated to the firmware, while the remaining
> >> responsibilities are handled by Linux.
> >>
> >> The driver is responsible for managing multiple power domains and
> >> linking them to consumers as needed. Incase there is only single
> >> power domain, it is considered to be a standard GDSC hooked on to
> >> the qcom dt node which is read and assigned to device structure
> >> (by genpd framework) before the driver probe even begins.
> >>
> >> This differentiation logic allows the driver to determine whether
> >> device resources are managed by Linux or firmware, ensuring
> >> backward compatibility.
> >>
> >> Furthermore, minor cleanup is performed for the private data of
> >> the SNPS Femto PHY. However, ACPI handling is omitted due to the
> >> absence of clients on the ACPI side.
> >>
> >> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 290 ++++++++++++++++++++------
> >>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 213 +++++++++++++++----
> >>   drivers/usb/dwc3/dwc3-qcom.c                  | 259 +++++++++++++++++------

[skipped]

> >> @@ -2165,9 +2305,11 @@ static int qmp_usb_probe(struct platform_device *pdev)
> >>           */
> >>          pm_runtime_forbid(dev);
> >>
> >> -       ret = phy_pipe_clk_register(qmp, np);
> >> -       if (ret)
> >> -               goto err_node_put;
> >> +       if (!qmp->fw_managed) {
> >> +               ret = phy_pipe_clk_register(qmp, np);
> >> +               if (ret)
> >> +                       goto err_node_put;
> >
> > pipe_clk is an input to the GCC. If you are not registering it here,
> > how would GCC get it?
> >
>
> The pipe clk will be managed by the firmware.

Which pipe clk? Coming from the PHY to GCC or from GCC back to the PHY?

Anyway, you can not drop this, this will break the ABI. The rule of
thumb: existing DTB files MUST continue to work.

> >> +       }
> >>
> >>          qmp->phy = devm_phy_create(dev, np, &qmp_usb_phy_ops);
> >>          if (IS_ERR(qmp->phy)) {

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
