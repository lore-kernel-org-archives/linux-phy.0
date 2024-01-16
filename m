Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF49C4706C
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 12:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7bFbrCDTvBX/IgjdZDfcPFn4e0OSFLNFC1lsFK3nDU=; b=CcCCCtzh6Kexa/
	+eSzaCTbmV56UVlIX1QnmazA105JxStT+C+6qt1AqhJdSJlKraXIp3kxRr1vSMe1K1DMB/4arKk3b
	o1VsQV8JJxKEdXF02gmMEPMisExlWbp08e2ad60i91KrjekZer2CMKOBEFl3Z0hRetX0rJcruQvfl
	gZl5v7XbMRSj9ShNFvWCvSp1N7Ga0Glj1JHrkPobN0fTiRLqlrSNoJxhrAROTr1UUr+6+kwI5Ap0u
	3IiuWJnP/PttxS9vDqW9eGU6TZGnY81SsHATP0sqHOtPo5rd2jEqeap+Ec0ySd/J+sQQDUZDUTJ1b
	WexmSQJIyl6HeTHUvoOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPizW-00C6tn-2w;
	Tue, 16 Jan 2024 12:56:30 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPizU-00C6s4-1S
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 12:56:29 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5ebca94cf74so93474247b3.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Jan 2024 04:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705409782; x=1706014582; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qPvAzx+acIKZbhCoWwT8OSWs5JRbg5iaUFTYttPLGXE=;
        b=SbKkxH4vQQ+xqD1GjsEJVCo3YRR56JYuJx674Ddpt705EKagRpMr39cRXt1rndrSvX
         5pG60jf3UKDwQkyDMpwgFDwSZj93fqQEG5mohoeiBEoiWZ93zfPfEnmS2PzUn10HzMnb
         DwIEv5at3U2VMURTVAv/yY1UEkQwoXI0WaWa4kjLFcGn9QCb/mWmrT0XZdKrQfyFumsq
         DVomINOYZ+L1598ATqUjG/bOGMMAB6bqVAJQveYENIj+JpKi72A4zKNpnaZXghhmdebE
         GIh0GFGq0mkSfmEff6aqDCIakk9Uzr7Sy8sdFW7ueyUVVLHmbLwi2oxs0YN8CUkcG6ER
         RYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705409782; x=1706014582;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qPvAzx+acIKZbhCoWwT8OSWs5JRbg5iaUFTYttPLGXE=;
        b=S3sUinu7S1Paz5+btgpk9wH3E8C3ToAWgqOonCWtaG9qdfUaoEBbW46Tcs6bcNzAQa
         sK7wZguHmN1DM6V5gPtpNlGLApzYuLztB4ykk5JwUI1Jlu2XcOLhzhvXUZ46aqciE0Ko
         yu5yjiS6IKg+xI6V5kQq6HS+kvfeZtpjMhsoTU5oDPnaxH8imgAkj6d4N2AV55AxtFCy
         I5D9i3F9KUyKH0XQE68ASD9dW3oNvH+Y8qHUZFh933ae6ee5Bha6KjC01y70AzqyG0my
         F5FYNlkTH85UDfNFLKzlt4wT9Bus6zULFsbnzE4H3a/2hsNv+zFjzjiuM4DpwRURBkR1
         u8aQ==
X-Gm-Message-State: AOJu0YwjFCgtGyjYqjO69H1zl4CTXsP6iySTt0tC6iIkbbYzZsadPtzE
	mxXqTK/E4+cIFbgNLV3ZJ8QpuBDp9/CeHMu4EpjNBkG3T8MhLQ==
X-Google-Smtp-Source: AGHT+IGjE5GhtOos1P0amM4JQFu3eKw1tqmWIYnsnq3XqIvhlz9Y2t2oFk9YyYvvD1PT7sgkLdzkQK3eFQUVOOf4dFk=
X-Received: by 2002:a05:690c:b98:b0:5fc:d36f:b9a0 with SMTP id
 ck24-20020a05690c0b9800b005fcd36fb9a0mr2829729ywb.80.1705409781910; Tue, 16
 Jan 2024 04:56:21 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org> <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
In-Reply-To: <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 14:56:11 +0200
Message-ID: <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_045628_488046_655B6199 
X-CRM114-Status: GOOD (  11.91  )
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

On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > The PMI632 PMIC support Type-C port handling, but lacks USB
> > PowerDelivery support. The TCPM requires all callbacks to be provided
> > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > implementation to enable the PMI632 support.
> >
> > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> Still not a fan of stubby stubs :/

Me too. If there are better suggestions, I'll be pleased to implement
them. Greg, Heikki?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
